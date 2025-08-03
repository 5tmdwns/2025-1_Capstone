// motor_controller_center_aligned.v
// This is a modified version of the original motor_controller module.
// Only the S_PWMA, D_PWMA, and D_PWMB sections have been changed to use
// a center-aligned PWM approach based on an integer counter with prescaling.
// All other logic (steer_active, direction control, STBY control, etc.) remains unchanged.

module motor_controller (
    input  wire        clk,           // 100 MHz system clock
    input  wire        rst_n,         // active-low reset

    // === Steering Control ===
    input  wire        steer_stby,    // steering standby (enable/disable PWM)
    input  wire [1:0]  steer_dir,     // steering direction: LEFT = 2'b10, RIGHT = 2'b01
    input  wire [7:0]  steer_duty,    // steering duty cycle (0–255)
    input  wire [20:0] steer_time,    // steering active time (scaled below)
    input  wire        steer_trigger, // rising edge triggers steer_start

    // === Drive Control ===
    input  wire        drive_stby,    // drive standby (enable/disable PWM)
    input  wire [1:0]  drive_dir_a,   // motor A direction: FORWARD = 2'b10, BACKWARD = 2'b01
    input  wire [7:0]  drive_duty_a,  // motor A duty cycle (0–255)
    input  wire [7:0]  drive_duty_b,  // motor B duty cycle (0–255)
    input  wire [1:0]  drive_dir_b,   // motor B direction: FORWARD = 2'b10, BACKWARD = 2'b01

    // === Output pins (connected to motor drivers) ===
    output reg         S_STBY,        // steering standby pin
    output reg         S_PWMA,        // steering PWM output
    output reg         S_AIN1,        // steering direction bit 1
    output reg         S_AIN2,        // steering direction bit 2
    output reg         D_STBY,        // drive standby pin
    output reg         D_PWMA,        // drive PWM for motor A
    output reg         D_AIN1,        // drive motor A direction bit 1
    output reg         D_AIN2,        // drive motor A direction bit 2
    output reg         D_PWMB,        // drive PWM for motor B
    output reg         D_BIN1,        // drive motor B direction bit 1
    output reg         D_BIN2         // drive motor B direction bit 2
);

   // --------------------------------------------------------------------------
   // 1) Global Clock Cycle Counter (unchanged)
   // --------------------------------------------------------------------------
   reg [28:0] global_cnt;
   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         global_cnt <= 28'd0;
      else
         global_cnt <= global_cnt + 28'd1;
   end

   // --------------------------------------------------------------------------
   // 2) Steering Active Logic (unchanged)
   // --------------------------------------------------------------------------
   reg [28:0] steer_start;
   reg        steer_enable;
   wire [28:0] actual_time = steer_time << 7;    // steer_time * 2^7
   wire        steer_active = steer_enable && ((global_cnt - steer_start) < actual_time);

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         steer_start  <= 28'd0;
         steer_enable <= 1'b0;
      end else begin
         if (steer_trigger) begin
            steer_start  <= global_cnt;
            steer_enable <= 1'b1;
         end 
			else if ((global_cnt - steer_start) >= actual_time) begin
            steer_enable <= 1'b0;
         end
      end
   end

   // --------------------------------------------------------------------------
   // 3) Center-aligned PWM Generator
   //    - Uses an 8-bit signed counter that cycles from -128 to +127
   //    - A prescaler divides the 100 MHz clock so that one full cycle
   //      (256 steps) spans PRESCALE * 256 clock ticks.
   //
   //    PRESCALE examples:
   //      PRESCALE = 20 → 100e6 / (256 * 20) ≈ 19.53 kHz
   //      PRESCALE = 10 → 100e6 / (256 * 10) ≈ 39.06 kHz
   //      PRESCALE = 5  → 100e6 / (256 * 5)  ≈ 78.12 kHz
   //
   //    The counter_signed register goes from -128 to +127 and wraps.
   //    The prescale_cnt register counts from 0 to (PRESCALE-1).
   // --------------------------------------------------------------------------
   localparam integer PRESCALE = 5;  // Adjust this parameter to set PWM frequency

   reg [7:0] prescale_cnt;    // prescaler counter (0 … PRESCALE-1)
   integer   counter_signed;  // signed counter, ranges -128 … +127

   // Prescaler and signed counter update
	// Add an asynchronous reset to the prescaler + signed‐counter update block
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			// On reset, clear the prescaler and reinitialize the signed counter
			prescale_cnt   <= 8'd0;
			counter_signed <= -128;
		end 
		else begin
			// Increment prescaler
			if (prescale_cnt == (PRESCALE - 1)) begin
				prescale_cnt <= 8'd0;

				// Update signed counter: -128 → +127 → -128
				counter_signed <= counter_signed + 1;
            if (counter_signed >= 127)
                counter_signed <= -128;
			end 
			else begin
				prescale_cnt <= prescale_cnt + 1;
			end
		end
	end

   // --------------------------------------------------------------------------
   // 4) Steering PWM (center-aligned comparison)
   //    - steer_duty ∈ [0..255]
   //    - counter_signed ∈ [-128..+127]
   //    - Output HIGH when counter_signed is in [-duty/2 .. +duty/2)
   // --------------------------------------------------------------------------
   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         S_PWMA <= 1'b0;
      end 
		else if (steer_active) begin
         // Perform signed comparison to generate center-aligned PWM
         if ((counter_signed >= ($signed({8'b0, steer_duty}) / -2)) &&
             (counter_signed <  ($signed({8'b0, steer_duty}) /  2)))
            S_PWMA <= 1'b1;
         else
            S_PWMA <= 1'b0;
      end 
		else begin
         S_PWMA <= 1'b0;
      end
   end

   // --------------------------------------------------------------------------
   // 5) Steering Direction Control (unchanged)
   // --------------------------------------------------------------------------
   localparam LEFT  = 2'b10;
   localparam RIGHT = 2'b01;

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         S_AIN1 <= 1'b0;
         S_AIN2 <= 1'b0;
      end else if (steer_active) begin
         case (steer_dir)
            LEFT: begin
               S_AIN1 <= 1'b0;
               S_AIN2 <= 1'b1;
            end
            RIGHT: begin
               S_AIN1 <= 1'b1;
               S_AIN2 <= 1'b0;
            end
            default: begin
               S_AIN1 <= 1'b0;
               S_AIN2 <= 1'b0;
            end
         endcase
      end else begin
         S_AIN1 <= 1'b0;
         S_AIN2 <= 1'b0;
      end
   end

   // --------------------------------------------------------------------------
   // 6) Drive PWM (center-aligned comparison)
   //    - drive_duty_a, drive_duty_b ∈ [0..255]
   // --------------------------------------------------------------------------
   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         D_PWMA <= 1'b0;
         D_PWMB <= 1'b0;
      end else if (drive_stby) begin
         // Motor A PWM generation
         if ((counter_signed >= ($signed({8'b0, drive_duty_a}) / -2)) &&
             (counter_signed <  ($signed({8'b0, drive_duty_a}) /  2)))
            D_PWMA <= 1'b1;
         else
            D_PWMA <= 1'b0;

         // Motor B PWM generation
         if ((counter_signed >= ($signed({8'b0, drive_duty_b}) / -2)) &&
             (counter_signed <  ($signed({8'b0, drive_duty_b}) /  2)))
            D_PWMB <= 1'b1;
         else
            D_PWMB <= 1'b0;
      end else begin
         D_PWMA <= 1'b0;
         D_PWMB <= 1'b0;
      end
   end

   // --------------------------------------------------------------------------
   // 7) Drive Direction Control (unchanged)
   // --------------------------------------------------------------------------
   localparam FORWARD  = 2'b10;
   localparam BACKWARD = 2'b01;

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         D_AIN1 <= 1'b0;
         D_AIN2 <= 1'b0;
         D_BIN1 <= 1'b0;
         D_BIN2 <= 1'b0;
      end else if (drive_stby) begin
         // Motor A direction control
         case (drive_dir_a)
            FORWARD: begin
               D_AIN1 <= 1'b0;
               D_AIN2 <= 1'b1;
            end
            BACKWARD: begin
               D_AIN1 <= 1'b1;
               D_AIN2 <= 1'b0;
            end
            default: begin
               D_AIN1 <= 1'b0;
               D_AIN2 <= 1'b0;
            end
         endcase

         // Motor B direction control
         case (drive_dir_b)
            FORWARD: begin
               D_BIN1 <= 1'b1;
               D_BIN2 <= 1'b0;
            end
            BACKWARD: begin
               D_BIN1 <= 1'b0;
               D_BIN2 <= 1'b1;
            end
            default: begin
               D_BIN1 <= 1'b0;
               D_BIN2 <= 1'b0;
            end
         endcase
      end else begin
         D_AIN1 <= 1'b0;
         D_AIN2 <= 1'b0;
         D_BIN1 <= 1'b0;
         D_BIN2 <= 1'b0;
      end
   end

   // --------------------------------------------------------------------------
   // 8) STBY Control (unchanged)
   // --------------------------------------------------------------------------
   always @(*) begin
      S_STBY = steer_stby;
      D_STBY = drive_stby;
   end

endmodule

