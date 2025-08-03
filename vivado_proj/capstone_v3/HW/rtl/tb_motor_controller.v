`timescale 1ns / 1ps

module tb_motor_controller;

    reg clk;
    reg rst_n;

    // Inputs
    reg steer_stby;
    reg [1:0] steer_dir;
    reg [7:0] steer_duty;
    reg [20:0] steer_time;
	 reg steer_trigger;

    reg drive_stby;
    reg [1:0] drive_dir_a;
    reg [7:0] drive_duty_a;
    reg [7:0] drive_duty_b;
    reg [1:0] drive_dir_b;

    // Outputs
    wire S_STBY, S_PWMA, S_AIN1, S_AIN2;
    wire D_STBY, D_PWMA, D_AIN1, D_AIN2, D_PWMB, D_BIN1, D_BIN2;

    // Instantiate the motor controller
    motor_controller uut (
        .clk(clk),
        .rst_n(rst_n),
        .steer_stby(steer_stby),
        .steer_dir(steer_dir),
        .steer_duty(steer_duty),
        .steer_time(steer_time),
		  .steer_trigger(steer_trigger),
        .drive_stby(drive_stby),
        .drive_dir_a(drive_dir_a),
        .drive_duty_a(drive_duty_a),
        .drive_duty_b(drive_duty_b),
        .drive_dir_b(drive_dir_b),
        .S_STBY(S_STBY),
        .S_PWMA(S_PWMA),
        .S_AIN1(S_AIN1),
        .S_AIN2(S_AIN2),
        .D_STBY(D_STBY),
        .D_PWMA(D_PWMA),
        .D_AIN1(D_AIN1),
        .D_AIN2(D_AIN2),
        .D_PWMB(D_PWMB),
        .D_BIN1(D_BIN1),
        .D_BIN2(D_BIN2)
    );

    // Clock generation
    always #5 clk = ~clk; // 100MHz clock (10ns period)

    initial begin
        // Initialize inputs
        clk = 0;
        rst_n = 0;
        steer_stby = 0;
        steer_dir = 2'b00;
        steer_duty = 8'd0;
        steer_time = 21'd0;
		  steer_trigger = 1'b0;
        drive_stby = 0;
        drive_dir_a = 2'b00;
        drive_duty_a = 8'd0;
        drive_duty_b = 8'd0;
        drive_dir_b = 2'b00;

        // Reset
        #100;
        rst_n = 1;

        // === Steering Test ===
        #50;
        steer_dir = 2'b01; // RIGHT
        steer_duty = 8'd128; // 50%
        steer_time = 21'd78125; // 0.1 Seconds
        steer_stby = 1'b1;
		  steer_trigger = 1'b1;
		  
		  #10;
		  steer_trigger = 1'b0;

        #20000; // 2ms

        // === Drive Test ===
        #1000;
        drive_stby = 1;
        drive_dir_a = 2'b10; // FORWARD
        drive_duty_a = 8'd100;
        drive_dir_b = 2'b01; // BACKWARD
        drive_duty_b = 8'd150;

        #1000000000;

        drive_stby = 0;

        #1000;
        $finish;
    end

endmodule

