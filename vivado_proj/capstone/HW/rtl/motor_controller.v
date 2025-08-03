module motor_controller (
    input wire        clk,
    input wire        rst_n,

    // === Steering Control ===
    input wire        steer_stby,
    input wire [1:0]  steer_dir,
    input wire [7:0]  steer_duty,   // 8-bit duty (0~255)
    input wire [20:0] steer_time,
    input wire        steer_trigger,

    // === Drive Control ===
    input wire        drive_stby,
    input wire [1:0]  drive_dir_a,
    input wire [7:0]  drive_duty_a,
    input wire [7:0]  drive_duty_b,
    input wire [1:0]  drive_dir_b,

    // === Output pins (connected to motor drivers) ===
    output reg        S_STBY,
    output reg        S_PWMA,
    output reg        S_AIN1,
    output reg        S_AIN2,
    output reg        D_STBY,
    output reg        D_PWMA,
    output reg        D_AIN1,
    output reg        D_AIN2,
    output reg        D_PWMB,
    output reg        D_BIN1,
    output reg        D_BIN2
);

// === Global Clock Cycle Counter ===
reg [28:0] global_cnt;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        global_cnt <= 28'd0;
    else
        global_cnt <= global_cnt + 28'd1;
end

// === Original PWM counter (used for Drive PWM only) ===
reg [7:0] pwm_cnt;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        pwm_cnt <= 8'd0;
    else
        pwm_cnt <= pwm_cnt + 8'd1;
end

// === Steering Active Logic ===
reg [28:0] steer_start;
reg        steer_enable;
wire [28:0] actual_time = steer_time << 7; // steer_time × 2^7
wire        steer_active = steer_enable && ((global_cnt - steer_start) < actual_time);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        steer_start  <= 28'd0;
        steer_enable <= 1'b0;
    end else begin
        if (steer_trigger) begin
            steer_start  <= global_cnt;
            steer_enable <= 1'b1;
        end else if ((global_cnt - steer_start) >= actual_time) begin
            steer_enable <= 1'b0;
        end
    end
end

// === Steering PWM counter for 12.8 μs period ===
// Count from 0 to 1279 (total 1280 cycles @100MHz = 12.8μs), then wrap.
reg [10:0] steer_pwm_cnt;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        steer_pwm_cnt <= 11'd0;
    else if (steer_pwm_cnt == 11'd1279)
        steer_pwm_cnt <= 11'd0;
    else
        steer_pwm_cnt <= steer_pwm_cnt + 11'd1;
end

// === Scale 8-bit duty (0~255) to 11-bit range (0~1279) ===
// Use steer_duty * 5 (max 255*5 = 1275)
wire [10:0] steer_duty_count;
assign steer_duty_count = ({steer_duty,2'd0} + steer_duty); // steer_duty*4 + steer_duty = steer_duty*5

// === Steering PWM (12.8 μs period) ===
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        S_PWMA <= 1'b0;
    else if (steer_active)
        S_PWMA <= (steer_pwm_cnt < steer_duty_count) ? 1'b1 : 1'b0;
    else
        S_PWMA <= 1'b0;
end

// === Steering direction control ===
localparam LEFT  = 2'b10;
localparam RIGHT = 2'b01;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        S_AIN1 <= 1'b0;
        S_AIN2 <= 1'b0;
    end else if (steer_active) begin
        case (steer_dir)
            LEFT  : begin
                S_AIN1 <= 1'b0; S_AIN2 <= 1'b1;
            end
            RIGHT : begin
                S_AIN1 <= 1'b1; S_AIN2 <= 1'b0;
            end
            default: begin
                S_AIN1 <= 1'b0; S_AIN2 <= 1'b0;
            end
        endcase
    end else begin
        S_AIN1 <= 1'b0;
        S_AIN2 <= 1'b0;
    end
end

// === Drive PWM ===
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        D_PWMA <= 1'b0;
        D_PWMB <= 1'b0;
    end else if (drive_stby) begin
        D_PWMA <= (pwm_cnt < drive_duty_a) ? 1'b1 : 1'b0;
        D_PWMB <= (pwm_cnt < drive_duty_b) ? 1'b1 : 1'b0;
    end else begin
        D_PWMA <= 1'b0;
        D_PWMB <= 1'b0;
    end
end

// === Drive Direction Control ===
localparam FORWARD  = 2'b10;
localparam BACKWARD = 2'b01;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        D_AIN1 <= 1'b0;
        D_AIN2 <= 1'b0;
        D_BIN1 <= 1'b0;
        D_BIN2 <= 1'b0;
    end else if (drive_stby) begin
        // Motor A Direction Control
        case (drive_dir_a)
            FORWARD : begin
                D_AIN1 <= 1'b0; D_AIN2 <= 1'b1;
            end
            BACKWARD: begin
                D_AIN1 <= 1'b1; D_AIN2 <= 1'b0;
            end
            default : begin
                D_AIN1 <= 1'b0; D_AIN2 <= 1'b0;
            end
        endcase
        // Motor B Direction Control
        case (drive_dir_b)
            FORWARD : begin
                D_BIN1 <= 1'b1; D_BIN2 <= 1'b0;
            end
            BACKWARD: begin
                D_BIN1 <= 1'b0; D_BIN2 <= 1'b1;
            end
            default : begin
                D_BIN1 <= 1'b0; D_BIN2 <= 1'b0;
            end
        endcase
    end else begin
        D_AIN1 <= 1'b0;
        D_AIN2 <= 1'b0;
        D_BIN1 <= 1'b0;
        D_BIN2 <= 1'b0;
    end
end

// === STBY control ===
always @(*) begin
    S_STBY = steer_stby;
    D_STBY = drive_stby;
end

endmodule

