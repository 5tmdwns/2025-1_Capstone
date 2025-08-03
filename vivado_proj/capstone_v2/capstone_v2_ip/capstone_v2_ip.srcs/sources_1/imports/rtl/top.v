module top #
  (
   // Users to add parameters here

   // User parameters ends
   // Do not modify the parameters beyond this line


   // Parameters of Axi Slave Bus Interface S00_AXI
   parameter integer C_S00_AXI_DATA_WIDTH = 32,
   parameter integer C_S00_AXI_ADDR_WIDTH = 4
   )
   (

    // Users to add ports here
    output 					S_STBY,
    output 					S_PWMA,
    output 					S_AIN1,
    output 					S_AIN2,
    output 					D_STBY,
    output 					D_PWMA,
    output 					D_AIN1,
    output 					D_AIN2,
    output 					D_PWMB,
    output 					D_BIN1,
    output 					D_BIN2,
    // User ports ends
    // Do not modify the ports beyond this line


    // Ports of Axi Slave Bus Interface S00_AXI
    input wire 					s00_axi_aclk,
    input wire 					s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] 	s00_axi_awaddr,
    input wire [2 : 0] 				s00_axi_awprot,
    input wire 					s00_axi_awvalid,
    output wire 				s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] 	s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire 					s00_axi_wvalid,
    output wire 				s00_axi_wready,
    output wire [1 : 0] 			s00_axi_bresp,
    output wire 				s00_axi_bvalid,
    input wire 					s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] 	s00_axi_araddr,
    input wire [2 : 0] 				s00_axi_arprot,
    input wire 					s00_axi_arvalid,
    output wire 				s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] 	s00_axi_rdata,
    output wire [1 : 0] 			s00_axi_rresp,
    output wire 				s00_axi_rvalid,
    input wire 					s00_axi_rready
    /*AUTOARG*/);

   wire 					steer_stby;
   wire [1:0] 					steer_dir;
   wire [7:0] 					steer_duty;
   wire [20:0] 					steer_time;
	wire					steer_trigger;
   wire 					drive_stby;
   wire [1:0] 					drive_dir_a;
   wire [7:0] 					drive_duty_a;
   wire [7:0] 					drive_duty_b;
   wire [1:0] 					drive_dir_b;

   capstone_axi4l_ip_v1_0 #(
			    .C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
			    .C_S00_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
			    ) capstone_axi4l_ip_v1_0_inst (/*AUTOINST*/
							   // Outputs
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

							   .s00_axi_awready	(s00_axi_awready),
							   .s00_axi_wready	(s00_axi_wready),
							   .s00_axi_bresp	(s00_axi_bresp[1:0]),
							   .s00_axi_bvalid	(s00_axi_bvalid),
							   .s00_axi_arready	(s00_axi_arready),
							   .s00_axi_rdata	(s00_axi_rdata[C_S00_AXI_DATA_WIDTH-1:0]),
							   .s00_axi_rresp	(s00_axi_rresp[1:0]),
							   .s00_axi_rvalid	(s00_axi_rvalid),
							   // Inputs
							   .s00_axi_aclk	(s00_axi_aclk),
							   .s00_axi_aresetn	(s00_axi_aresetn),
							   .s00_axi_awaddr	(s00_axi_awaddr[C_S00_AXI_ADDR_WIDTH-1:0]),
							   .s00_axi_awprot	(s00_axi_awprot[2:0]),
							   .s00_axi_awvalid	(s00_axi_awvalid),
							   .s00_axi_wdata	(s00_axi_wdata[C_S00_AXI_DATA_WIDTH-1:0]),
							   .s00_axi_wstrb	(s00_axi_wstrb[(C_S00_AXI_DATA_WIDTH/8)-1:0]),
							   .s00_axi_wvalid	(s00_axi_wvalid),
							   .s00_axi_bready	(s00_axi_bready),
							   .s00_axi_araddr	(s00_axi_araddr[C_S00_AXI_ADDR_WIDTH-1:0]),
							   .s00_axi_arprot	(s00_axi_arprot[2:0]),
							   .s00_axi_arvalid	(s00_axi_arvalid),
							   .s00_axi_rready	(s00_axi_rready));


   motor_controller
     motor_controller_inst (/*AUTOINST*/
			    // Outputs
			    .S_STBY		(S_STBY),
			    .S_PWMA		(S_PWMA),
			    .S_AIN1		(S_AIN1),
			    .S_AIN2		(S_AIN2),
			    .D_STBY		(D_STBY),
			    .D_PWMA		(D_PWMA),
			    .D_AIN1		(D_AIN1),
			    .D_AIN2		(D_AIN2),
			    .D_PWMB		(D_PWMB),
			    .D_BIN1		(D_BIN1),
			    .D_BIN2		(D_BIN2),
			    // Inputs
			    .clk		(s00_axi_aclk),
			    .rst_n		(s00_axi_aresetn),
			    .steer_stby(steer_stby),
			    .steer_dir(steer_dir),
			    .steer_duty(steer_duty),
			    .steer_time(steer_time),
				 .steer_trigger(steer_trigger),
			    .drive_stby(drive_stby),
			    .drive_dir_a(drive_dir_a),
			    .drive_duty_a(drive_duty_a),
			    .drive_duty_b(drive_duty_b),
			    .drive_dir_b(drive_dir_b));
   

endmodule
