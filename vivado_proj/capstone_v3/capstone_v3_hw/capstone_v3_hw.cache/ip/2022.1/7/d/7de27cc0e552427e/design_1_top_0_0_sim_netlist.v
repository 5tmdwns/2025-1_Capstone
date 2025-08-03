// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun Jun  1 10:05:31 2025
// Host        : Tmdwns running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_capstone_axi4l_ip_v1_0
   (axi_awready_reg,
    SR,
    axi_wready_reg,
    E,
    axi_arready_reg,
    s00_axi_bvalid,
    s00_axi_rvalid,
    DI,
    Q,
    S,
    \slv_reg0_reg[28] ,
    \slv_reg0_reg[28]_0 ,
    \slv_reg0_reg[28]_1 ,
    \slv_reg0_reg[28]_2 ,
    \slv_reg0_reg[28]_3 ,
    \slv_reg1_reg[28] ,
    \slv_reg1_reg[31] ,
    \slv_reg1_reg[28]_0 ,
    \slv_reg1_reg[28]_1 ,
    \slv_reg1_reg[28]_2 ,
    \slv_reg1_reg[28]_3 ,
    \slv_reg1_reg[28]_4 ,
    \slv_reg1_reg[9] ,
    \slv_reg1_reg[9]_0 ,
    \slv_reg1_reg[9]_1 ,
    \slv_reg1_reg[9]_2 ,
    \slv_reg1_reg[9]_3 ,
    \slv_reg1_reg[9]_4 ,
    S_AIN19_out,
    S_AIN27_out,
    D_AIN14_out,
    D_AIN23_out,
    D_BIN11_out,
    D_BIN20_out,
    \counter_signed_reg[7] ,
    \slv_reg1_reg[28]_5 ,
    \slv_reg1_reg[9]_5 ,
    \slv_reg1_reg[8] ,
    \slv_reg1_reg[27] ,
    \slv_reg0_reg[28]_4 ,
    \slv_reg1_reg[9]_6 ,
    \slv_reg1_reg[28]_6 ,
    \slv_reg0_reg[14] ,
    \slv_reg0_reg[20] ,
    \slv_reg1_reg[26] ,
    \slv_reg1_reg[7] ,
    \slv_reg1_reg[31]_0 ,
    \slv_reg1_reg[31]_1 ,
    s00_axi_rdata,
    s00_axi_aclk,
    steer_enable1,
    counter_signed_reg,
    CO,
    steer_enable,
    s00_axi_aresetn,
    D_PWMA_reg,
    D_PWMA_reg_0,
    D_PWMB_reg,
    D_PWMB_reg_0,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg;
  output [0:0]SR;
  output axi_wready_reg;
  output [0:0]E;
  output axi_arready_reg;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [3:0]DI;
  output [28:0]Q;
  output [3:0]S;
  output [3:0]\slv_reg0_reg[28] ;
  output [3:0]\slv_reg0_reg[28]_0 ;
  output [3:0]\slv_reg0_reg[28]_1 ;
  output [3:0]\slv_reg0_reg[28]_2 ;
  output [3:0]\slv_reg0_reg[28]_3 ;
  output [3:0]\slv_reg1_reg[28] ;
  output [6:0]\slv_reg1_reg[31] ;
  output [3:0]\slv_reg1_reg[28]_0 ;
  output [3:0]\slv_reg1_reg[28]_1 ;
  output [3:0]\slv_reg1_reg[28]_2 ;
  output [3:0]\slv_reg1_reg[28]_3 ;
  output [3:0]\slv_reg1_reg[28]_4 ;
  output [3:0]\slv_reg1_reg[9] ;
  output [3:0]\slv_reg1_reg[9]_0 ;
  output [3:0]\slv_reg1_reg[9]_1 ;
  output [3:0]\slv_reg1_reg[9]_2 ;
  output [3:0]\slv_reg1_reg[9]_3 ;
  output [3:0]\slv_reg1_reg[9]_4 ;
  output S_AIN19_out;
  output S_AIN27_out;
  output D_AIN14_out;
  output D_AIN23_out;
  output D_BIN11_out;
  output D_BIN20_out;
  output [3:0]\counter_signed_reg[7] ;
  output [3:0]\slv_reg1_reg[28]_5 ;
  output [3:0]\slv_reg1_reg[9]_5 ;
  output [2:0]\slv_reg1_reg[8] ;
  output [2:0]\slv_reg1_reg[27] ;
  output [2:0]\slv_reg0_reg[28]_4 ;
  output [2:0]\slv_reg1_reg[9]_6 ;
  output [2:0]\slv_reg1_reg[28]_6 ;
  output [3:0]\slv_reg0_reg[14] ;
  output [2:0]\slv_reg0_reg[20] ;
  output [1:0]\slv_reg1_reg[26] ;
  output [1:0]\slv_reg1_reg[7] ;
  output \slv_reg1_reg[31]_0 ;
  output \slv_reg1_reg[31]_1 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [20:0]steer_enable1;
  input [31:0]counter_signed_reg;
  input [0:0]CO;
  input steer_enable;
  input s00_axi_aresetn;
  input [0:0]D_PWMA_reg;
  input [0:0]D_PWMA_reg_0;
  input [0:0]D_PWMB_reg;
  input [0:0]D_PWMB_reg_0;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire [3:0]DI;
  wire D_AIN14_out;
  wire D_AIN23_out;
  wire D_BIN11_out;
  wire D_BIN20_out;
  wire [0:0]D_PWMA_reg;
  wire [0:0]D_PWMA_reg_0;
  wire [0:0]D_PWMB_reg;
  wire [0:0]D_PWMB_reg_0;
  wire [0:0]E;
  wire [28:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AIN19_out;
  wire S_AIN27_out;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire [31:0]counter_signed_reg;
  wire [3:0]\counter_signed_reg[7] ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]\slv_reg0_reg[14] ;
  wire [2:0]\slv_reg0_reg[20] ;
  wire [3:0]\slv_reg0_reg[28] ;
  wire [3:0]\slv_reg0_reg[28]_0 ;
  wire [3:0]\slv_reg0_reg[28]_1 ;
  wire [3:0]\slv_reg0_reg[28]_2 ;
  wire [3:0]\slv_reg0_reg[28]_3 ;
  wire [2:0]\slv_reg0_reg[28]_4 ;
  wire [1:0]\slv_reg1_reg[26] ;
  wire [2:0]\slv_reg1_reg[27] ;
  wire [3:0]\slv_reg1_reg[28] ;
  wire [3:0]\slv_reg1_reg[28]_0 ;
  wire [3:0]\slv_reg1_reg[28]_1 ;
  wire [3:0]\slv_reg1_reg[28]_2 ;
  wire [3:0]\slv_reg1_reg[28]_3 ;
  wire [3:0]\slv_reg1_reg[28]_4 ;
  wire [3:0]\slv_reg1_reg[28]_5 ;
  wire [2:0]\slv_reg1_reg[28]_6 ;
  wire [6:0]\slv_reg1_reg[31] ;
  wire \slv_reg1_reg[31]_0 ;
  wire \slv_reg1_reg[31]_1 ;
  wire [1:0]\slv_reg1_reg[7] ;
  wire [2:0]\slv_reg1_reg[8] ;
  wire [3:0]\slv_reg1_reg[9] ;
  wire [3:0]\slv_reg1_reg[9]_0 ;
  wire [3:0]\slv_reg1_reg[9]_1 ;
  wire [3:0]\slv_reg1_reg[9]_2 ;
  wire [3:0]\slv_reg1_reg[9]_3 ;
  wire [3:0]\slv_reg1_reg[9]_4 ;
  wire [3:0]\slv_reg1_reg[9]_5 ;
  wire [2:0]\slv_reg1_reg[9]_6 ;
  wire steer_enable;
  wire [20:0]steer_enable1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_capstone_axi4l_ip_v1_0_S00_AXI capstone_axi4l_ip_v1_0_S00_AXI_inst
       (.CO(CO),
        .DI(DI),
        .D_AIN14_out(D_AIN14_out),
        .D_AIN23_out(D_AIN23_out),
        .D_BIN11_out(D_BIN11_out),
        .D_BIN20_out(D_BIN20_out),
        .D_PWMA_reg(D_PWMA_reg),
        .D_PWMA_reg_0(D_PWMA_reg_0),
        .D_PWMB_reg(D_PWMB_reg),
        .D_PWMB_reg_0(D_PWMB_reg_0),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .S_AIN19_out(S_AIN19_out),
        .S_AIN27_out(S_AIN27_out),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .counter_signed_reg(counter_signed_reg),
        .\counter_signed_reg[7] (\counter_signed_reg[7] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[14]_0 (\slv_reg0_reg[14] ),
        .\slv_reg0_reg[20]_0 (\slv_reg0_reg[20] ),
        .\slv_reg0_reg[28]_0 (\slv_reg0_reg[28] ),
        .\slv_reg0_reg[28]_1 (\slv_reg0_reg[28]_0 ),
        .\slv_reg0_reg[28]_2 (\slv_reg0_reg[28]_1 ),
        .\slv_reg0_reg[28]_3 (\slv_reg0_reg[28]_2 ),
        .\slv_reg0_reg[28]_4 (\slv_reg0_reg[28]_3 ),
        .\slv_reg0_reg[28]_5 (\slv_reg0_reg[28]_4 ),
        .\slv_reg1_reg[26]_0 (\slv_reg1_reg[26] ),
        .\slv_reg1_reg[27]_0 (\slv_reg1_reg[27] ),
        .\slv_reg1_reg[28]_0 (\slv_reg1_reg[28] ),
        .\slv_reg1_reg[28]_1 (\slv_reg1_reg[28]_0 ),
        .\slv_reg1_reg[28]_2 (\slv_reg1_reg[28]_1 ),
        .\slv_reg1_reg[28]_3 (\slv_reg1_reg[28]_2 ),
        .\slv_reg1_reg[28]_4 (\slv_reg1_reg[28]_3 ),
        .\slv_reg1_reg[28]_5 (\slv_reg1_reg[28]_4 ),
        .\slv_reg1_reg[28]_6 (\slv_reg1_reg[28]_5 ),
        .\slv_reg1_reg[28]_7 (\slv_reg1_reg[28]_6 ),
        .\slv_reg1_reg[31]_0 (\slv_reg1_reg[31] ),
        .\slv_reg1_reg[31]_1 (\slv_reg1_reg[31]_0 ),
        .\slv_reg1_reg[31]_2 (\slv_reg1_reg[31]_1 ),
        .\slv_reg1_reg[7]_0 (\slv_reg1_reg[7] ),
        .\slv_reg1_reg[8]_0 (\slv_reg1_reg[8] ),
        .\slv_reg1_reg[9]_0 (\slv_reg1_reg[9] ),
        .\slv_reg1_reg[9]_1 (\slv_reg1_reg[9]_0 ),
        .\slv_reg1_reg[9]_2 (\slv_reg1_reg[9]_1 ),
        .\slv_reg1_reg[9]_3 (\slv_reg1_reg[9]_2 ),
        .\slv_reg1_reg[9]_4 (\slv_reg1_reg[9]_3 ),
        .\slv_reg1_reg[9]_5 (\slv_reg1_reg[9]_4 ),
        .\slv_reg1_reg[9]_6 (\slv_reg1_reg[9]_5 ),
        .\slv_reg1_reg[9]_7 (\slv_reg1_reg[9]_6 ),
        .steer_enable(steer_enable),
        .steer_enable1(steer_enable1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_capstone_axi4l_ip_v1_0_S00_AXI
   (axi_awready_reg_0,
    SR,
    axi_wready_reg_0,
    E,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    DI,
    Q,
    S,
    \slv_reg0_reg[28]_0 ,
    \slv_reg0_reg[28]_1 ,
    \slv_reg0_reg[28]_2 ,
    \slv_reg0_reg[28]_3 ,
    \slv_reg0_reg[28]_4 ,
    \slv_reg1_reg[28]_0 ,
    \slv_reg1_reg[31]_0 ,
    \slv_reg1_reg[28]_1 ,
    \slv_reg1_reg[28]_2 ,
    \slv_reg1_reg[28]_3 ,
    \slv_reg1_reg[28]_4 ,
    \slv_reg1_reg[28]_5 ,
    \slv_reg1_reg[9]_0 ,
    \slv_reg1_reg[9]_1 ,
    \slv_reg1_reg[9]_2 ,
    \slv_reg1_reg[9]_3 ,
    \slv_reg1_reg[9]_4 ,
    \slv_reg1_reg[9]_5 ,
    S_AIN19_out,
    S_AIN27_out,
    D_AIN14_out,
    D_AIN23_out,
    D_BIN11_out,
    D_BIN20_out,
    \counter_signed_reg[7] ,
    \slv_reg1_reg[28]_6 ,
    \slv_reg1_reg[9]_6 ,
    \slv_reg1_reg[8]_0 ,
    \slv_reg1_reg[27]_0 ,
    \slv_reg0_reg[28]_5 ,
    \slv_reg1_reg[9]_7 ,
    \slv_reg1_reg[28]_7 ,
    \slv_reg0_reg[14]_0 ,
    \slv_reg0_reg[20]_0 ,
    \slv_reg1_reg[26]_0 ,
    \slv_reg1_reg[7]_0 ,
    \slv_reg1_reg[31]_1 ,
    \slv_reg1_reg[31]_2 ,
    s00_axi_rdata,
    s00_axi_aclk,
    steer_enable1,
    counter_signed_reg,
    CO,
    steer_enable,
    s00_axi_aresetn,
    D_PWMA_reg,
    D_PWMA_reg_0,
    D_PWMB_reg,
    D_PWMB_reg_0,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output [0:0]SR;
  output axi_wready_reg_0;
  output [0:0]E;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [3:0]DI;
  output [28:0]Q;
  output [3:0]S;
  output [3:0]\slv_reg0_reg[28]_0 ;
  output [3:0]\slv_reg0_reg[28]_1 ;
  output [3:0]\slv_reg0_reg[28]_2 ;
  output [3:0]\slv_reg0_reg[28]_3 ;
  output [3:0]\slv_reg0_reg[28]_4 ;
  output [3:0]\slv_reg1_reg[28]_0 ;
  output [6:0]\slv_reg1_reg[31]_0 ;
  output [3:0]\slv_reg1_reg[28]_1 ;
  output [3:0]\slv_reg1_reg[28]_2 ;
  output [3:0]\slv_reg1_reg[28]_3 ;
  output [3:0]\slv_reg1_reg[28]_4 ;
  output [3:0]\slv_reg1_reg[28]_5 ;
  output [3:0]\slv_reg1_reg[9]_0 ;
  output [3:0]\slv_reg1_reg[9]_1 ;
  output [3:0]\slv_reg1_reg[9]_2 ;
  output [3:0]\slv_reg1_reg[9]_3 ;
  output [3:0]\slv_reg1_reg[9]_4 ;
  output [3:0]\slv_reg1_reg[9]_5 ;
  output S_AIN19_out;
  output S_AIN27_out;
  output D_AIN14_out;
  output D_AIN23_out;
  output D_BIN11_out;
  output D_BIN20_out;
  output [3:0]\counter_signed_reg[7] ;
  output [3:0]\slv_reg1_reg[28]_6 ;
  output [3:0]\slv_reg1_reg[9]_6 ;
  output [2:0]\slv_reg1_reg[8]_0 ;
  output [2:0]\slv_reg1_reg[27]_0 ;
  output [2:0]\slv_reg0_reg[28]_5 ;
  output [2:0]\slv_reg1_reg[9]_7 ;
  output [2:0]\slv_reg1_reg[28]_7 ;
  output [3:0]\slv_reg0_reg[14]_0 ;
  output [2:0]\slv_reg0_reg[20]_0 ;
  output [1:0]\slv_reg1_reg[26]_0 ;
  output [1:0]\slv_reg1_reg[7]_0 ;
  output \slv_reg1_reg[31]_1 ;
  output \slv_reg1_reg[31]_2 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [20:0]steer_enable1;
  input [31:0]counter_signed_reg;
  input [0:0]CO;
  input steer_enable;
  input s00_axi_aresetn;
  input [0:0]D_PWMA_reg;
  input [0:0]D_PWMA_reg_0;
  input [0:0]D_PWMB_reg;
  input [0:0]D_PWMB_reg_0;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire [3:0]DI;
  wire D_AIN14_out;
  wire D_AIN23_out;
  wire D_BIN11_out;
  wire D_BIN20_out;
  wire [0:0]D_PWMA_reg;
  wire [0:0]D_PWMA_reg_0;
  wire [0:0]D_PWMB_reg;
  wire [0:0]D_PWMB_reg_0;
  wire [0:0]E;
  wire [28:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AIN19_out;
  wire S_AIN27_out;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [31:0]counter_signed_reg;
  wire [3:0]\counter_signed_reg[7] ;
  wire [1:0]drive_dir_a;
  wire [1:0]drive_dir_b;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_10__1_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_9__0_n_0;
  wire i__carry_i_9__1_n_0;
  wire i__carry_i_9_n_0;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]\slv_reg0_reg[14]_0 ;
  wire [2:0]\slv_reg0_reg[20]_0 ;
  wire [3:0]\slv_reg0_reg[28]_0 ;
  wire [3:0]\slv_reg0_reg[28]_1 ;
  wire [3:0]\slv_reg0_reg[28]_2 ;
  wire [3:0]\slv_reg0_reg[28]_3 ;
  wire [3:0]\slv_reg0_reg[28]_4 ;
  wire [2:0]\slv_reg0_reg[28]_5 ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire slv_reg0_wen;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [1:0]\slv_reg1_reg[26]_0 ;
  wire [2:0]\slv_reg1_reg[27]_0 ;
  wire [3:0]\slv_reg1_reg[28]_0 ;
  wire [3:0]\slv_reg1_reg[28]_1 ;
  wire [3:0]\slv_reg1_reg[28]_2 ;
  wire [3:0]\slv_reg1_reg[28]_3 ;
  wire [3:0]\slv_reg1_reg[28]_4 ;
  wire [3:0]\slv_reg1_reg[28]_5 ;
  wire [3:0]\slv_reg1_reg[28]_6 ;
  wire [2:0]\slv_reg1_reg[28]_7 ;
  wire [6:0]\slv_reg1_reg[31]_0 ;
  wire \slv_reg1_reg[31]_1 ;
  wire \slv_reg1_reg[31]_2 ;
  wire [1:0]\slv_reg1_reg[7]_0 ;
  wire [2:0]\slv_reg1_reg[8]_0 ;
  wire [3:0]\slv_reg1_reg[9]_0 ;
  wire [3:0]\slv_reg1_reg[9]_1 ;
  wire [3:0]\slv_reg1_reg[9]_2 ;
  wire [3:0]\slv_reg1_reg[9]_3 ;
  wire [3:0]\slv_reg1_reg[9]_4 ;
  wire [3:0]\slv_reg1_reg[9]_5 ;
  wire [3:0]\slv_reg1_reg[9]_6 ;
  wire [2:0]\slv_reg1_reg[9]_7 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire [1:0]steer_dir;
  wire steer_enable;
  wire [20:0]steer_enable1;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    D_AIN1_i_1
       (.I0(drive_dir_a[1]),
        .I1(\slv_reg1_reg[31]_0 [6]),
        .I2(drive_dir_a[0]),
        .O(D_AIN14_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    D_AIN2_i_1
       (.I0(\slv_reg1_reg[31]_0 [6]),
        .I1(drive_dir_a[1]),
        .I2(drive_dir_a[0]),
        .O(D_AIN23_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    D_BIN1_i_1
       (.I0(\slv_reg1_reg[31]_0 [6]),
        .I1(drive_dir_b[1]),
        .I2(drive_dir_b[0]),
        .O(D_BIN11_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    D_BIN2_i_1
       (.I0(drive_dir_b[1]),
        .I1(\slv_reg1_reg[31]_0 [6]),
        .I2(drive_dir_b[0]),
        .O(D_BIN20_out));
  LUT4 #(
    .INIT(16'h2B0A)) 
    D_PWMA1_carry_i_2
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(counter_signed_reg[4]),
        .I2(counter_signed_reg[5]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .O(\slv_reg1_reg[27]_0 [2]));
  LUT4 #(
    .INIT(16'h2B0A)) 
    D_PWMA1_carry_i_3
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(counter_signed_reg[2]),
        .I2(counter_signed_reg[3]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .O(\slv_reg1_reg[27]_0 [1]));
  LUT4 #(
    .INIT(16'h2B0A)) 
    D_PWMA1_carry_i_4
       (.I0(\slv_reg1_reg[31]_0 [4]),
        .I1(counter_signed_reg[0]),
        .I2(counter_signed_reg[1]),
        .I3(\slv_reg1_reg[31]_0 [3]),
        .O(\slv_reg1_reg[27]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    D_PWMA1_carry_i_6
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(counter_signed_reg[4]),
        .I2(\slv_reg1_reg_n_0_[27] ),
        .I3(counter_signed_reg[5]),
        .O(\slv_reg1_reg[26]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    D_PWMA1_carry_i_7
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(counter_signed_reg[2]),
        .I2(\slv_reg1_reg_n_0_[25] ),
        .I3(counter_signed_reg[3]),
        .O(\slv_reg1_reg[26]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    D_PWMA_i_1
       (.I0(\slv_reg1_reg[31]_0 [6]),
        .I1(D_PWMA_reg),
        .I2(D_PWMA_reg_0),
        .O(\slv_reg1_reg[31]_1 ));
  LUT4 #(
    .INIT(16'h2B0A)) 
    D_PWMB1_carry_i_2
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(counter_signed_reg[4]),
        .I2(counter_signed_reg[5]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .O(\slv_reg1_reg[8]_0 [2]));
  LUT4 #(
    .INIT(16'h2B0A)) 
    D_PWMB1_carry_i_3
       (.I0(\slv_reg1_reg_n_0_[6] ),
        .I1(counter_signed_reg[2]),
        .I2(counter_signed_reg[3]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .O(\slv_reg1_reg[8]_0 [1]));
  LUT4 #(
    .INIT(16'h2B0A)) 
    D_PWMB1_carry_i_4
       (.I0(\slv_reg1_reg[31]_0 [1]),
        .I1(counter_signed_reg[0]),
        .I2(counter_signed_reg[1]),
        .I3(\slv_reg1_reg[31]_0 [0]),
        .O(\slv_reg1_reg[8]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    D_PWMB1_carry_i_6
       (.I0(\slv_reg1_reg_n_0_[7] ),
        .I1(counter_signed_reg[4]),
        .I2(\slv_reg1_reg_n_0_[8] ),
        .I3(counter_signed_reg[5]),
        .O(\slv_reg1_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    D_PWMB1_carry_i_7
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(counter_signed_reg[2]),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .I3(counter_signed_reg[3]),
        .O(\slv_reg1_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    D_PWMB_i_1
       (.I0(\slv_reg1_reg[31]_0 [6]),
        .I1(D_PWMB_reg),
        .I2(D_PWMB_reg_0),
        .O(\slv_reg1_reg[31]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    S_AIN1_i_1
       (.I0(steer_dir[1]),
        .I1(steer_dir[0]),
        .I2(CO),
        .I3(steer_enable),
        .O(S_AIN19_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    S_AIN2_i_1
       (.I0(steer_dir[0]),
        .I1(steer_dir[1]),
        .I2(CO),
        .I3(steer_enable),
        .O(S_AIN27_out));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(axi_awready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(axi_awready_reg_0),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[0]),
        .I4(Q[0]),
        .I5(drive_dir_b[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[10]),
        .I4(Q[10]),
        .I5(\slv_reg1_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[11]),
        .I4(Q[11]),
        .I5(\slv_reg1_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[12]),
        .I4(Q[12]),
        .I5(\slv_reg1_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[13]),
        .I4(Q[13]),
        .I5(\slv_reg1_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[14]),
        .I4(Q[14]),
        .I5(\slv_reg1_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[15]),
        .I4(Q[15]),
        .I5(\slv_reg1_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[16]),
        .I4(Q[16]),
        .I5(\slv_reg1_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[17]),
        .I4(Q[17]),
        .I5(\slv_reg1_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[18]),
        .I4(Q[18]),
        .I5(\slv_reg1_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[19]),
        .I4(Q[19]),
        .I5(\slv_reg1_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[1]),
        .I4(Q[1]),
        .I5(drive_dir_b[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[20]),
        .I4(Q[20]),
        .I5(\slv_reg1_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[21]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .I5(\slv_reg1_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[22]),
        .I4(Q[21]),
        .I5(\slv_reg1_reg[31]_0 [3]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[23]),
        .I4(Q[22]),
        .I5(\slv_reg1_reg[31]_0 [4]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[24]),
        .I4(Q[23]),
        .I5(\slv_reg1_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[25]),
        .I4(Q[24]),
        .I5(\slv_reg1_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[26]),
        .I4(Q[25]),
        .I5(\slv_reg1_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[27]),
        .I4(Q[26]),
        .I5(\slv_reg1_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[28]),
        .I4(Q[27]),
        .I5(\slv_reg1_reg[31]_0 [5]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[29]),
        .I4(steer_dir[0]),
        .I5(drive_dir_a[0]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[2]),
        .I4(Q[2]),
        .I5(\slv_reg1_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[30]),
        .I4(steer_dir[1]),
        .I5(drive_dir_a[1]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[31]),
        .I4(Q[28]),
        .I5(\slv_reg1_reg[31]_0 [6]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[3]),
        .I4(Q[3]),
        .I5(\slv_reg1_reg[31]_0 [0]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[4]),
        .I4(Q[4]),
        .I5(\slv_reg1_reg[31]_0 [1]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[5]),
        .I4(Q[5]),
        .I5(\slv_reg1_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[6]),
        .I4(Q[6]),
        .I5(\slv_reg1_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[7]),
        .I4(Q[7]),
        .I5(\slv_reg1_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[8]),
        .I4(Q[8]),
        .I5(\slv_reg1_reg_n_0_[8] ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hBF8FBC8CB383B080)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[9]),
        .I4(Q[9]),
        .I5(\slv_reg1_reg[31]_0 [2]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_1
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[15]),
        .I3(counter_signed_reg[14]),
        .O(\slv_reg0_reg[28]_4 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_1__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[15]),
        .I3(counter_signed_reg[14]),
        .O(\slv_reg1_reg[28]_5 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_1__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[15]),
        .I3(counter_signed_reg[14]),
        .O(\slv_reg1_reg[9]_5 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_2
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[13]),
        .I3(counter_signed_reg[12]),
        .O(\slv_reg0_reg[28]_4 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_2__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[13]),
        .I3(counter_signed_reg[12]),
        .O(\slv_reg1_reg[28]_5 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_2__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[13]),
        .I3(counter_signed_reg[12]),
        .O(\slv_reg1_reg[9]_5 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_3
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[11]),
        .I3(counter_signed_reg[10]),
        .O(\slv_reg0_reg[28]_4 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_3__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[11]),
        .I3(counter_signed_reg[10]),
        .O(\slv_reg1_reg[28]_5 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_3__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[11]),
        .I3(counter_signed_reg[10]),
        .O(\slv_reg1_reg[9]_5 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_4
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[9]),
        .I3(counter_signed_reg[8]),
        .O(\slv_reg0_reg[28]_4 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_4__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[9]),
        .I3(counter_signed_reg[8]),
        .O(\slv_reg1_reg[28]_5 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__0_i_4__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[9]),
        .I3(counter_signed_reg[8]),
        .O(\slv_reg1_reg[9]_5 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_5
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[14]),
        .I3(counter_signed_reg[15]),
        .O(\slv_reg0_reg[28]_3 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_5__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[14]),
        .I3(counter_signed_reg[15]),
        .O(\slv_reg1_reg[28]_4 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_5__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[14]),
        .I3(counter_signed_reg[15]),
        .O(\slv_reg1_reg[9]_4 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_6
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[12]),
        .I3(counter_signed_reg[13]),
        .O(\slv_reg0_reg[28]_3 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_6__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[12]),
        .I3(counter_signed_reg[13]),
        .O(\slv_reg1_reg[28]_4 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_6__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[12]),
        .I3(counter_signed_reg[13]),
        .O(\slv_reg1_reg[9]_4 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_7
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[10]),
        .I3(counter_signed_reg[11]),
        .O(\slv_reg0_reg[28]_3 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_7__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[10]),
        .I3(counter_signed_reg[11]),
        .O(\slv_reg1_reg[28]_4 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_7__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[10]),
        .I3(counter_signed_reg[11]),
        .O(\slv_reg1_reg[9]_4 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_8
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[8]),
        .I3(counter_signed_reg[9]),
        .O(\slv_reg0_reg[28]_3 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_8__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[8]),
        .I3(counter_signed_reg[9]),
        .O(\slv_reg1_reg[28]_4 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__0_i_8__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[8]),
        .I3(counter_signed_reg[9]),
        .O(\slv_reg1_reg[9]_4 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_1
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[23]),
        .I3(counter_signed_reg[22]),
        .O(\slv_reg0_reg[28]_2 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_1__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[23]),
        .I3(counter_signed_reg[22]),
        .O(\slv_reg1_reg[28]_3 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_1__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[23]),
        .I3(counter_signed_reg[22]),
        .O(\slv_reg1_reg[9]_3 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_2
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[21]),
        .I3(counter_signed_reg[20]),
        .O(\slv_reg0_reg[28]_2 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_2__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[21]),
        .I3(counter_signed_reg[20]),
        .O(\slv_reg1_reg[28]_3 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_2__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[21]),
        .I3(counter_signed_reg[20]),
        .O(\slv_reg1_reg[9]_3 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_3
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[19]),
        .I3(counter_signed_reg[18]),
        .O(\slv_reg0_reg[28]_2 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_3__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[19]),
        .I3(counter_signed_reg[18]),
        .O(\slv_reg1_reg[28]_3 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_3__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[19]),
        .I3(counter_signed_reg[18]),
        .O(\slv_reg1_reg[9]_3 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_4
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[17]),
        .I3(counter_signed_reg[16]),
        .O(\slv_reg0_reg[28]_2 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_4__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[17]),
        .I3(counter_signed_reg[16]),
        .O(\slv_reg1_reg[28]_3 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__1_i_4__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[17]),
        .I3(counter_signed_reg[16]),
        .O(\slv_reg1_reg[9]_3 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_5
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[22]),
        .I3(counter_signed_reg[23]),
        .O(\slv_reg0_reg[28]_1 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_5__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[22]),
        .I3(counter_signed_reg[23]),
        .O(\slv_reg1_reg[28]_2 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_5__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[22]),
        .I3(counter_signed_reg[23]),
        .O(\slv_reg1_reg[9]_2 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_6
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[20]),
        .I3(counter_signed_reg[21]),
        .O(\slv_reg0_reg[28]_1 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_6__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[20]),
        .I3(counter_signed_reg[21]),
        .O(\slv_reg1_reg[28]_2 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_6__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[20]),
        .I3(counter_signed_reg[21]),
        .O(\slv_reg1_reg[9]_2 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_7
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[18]),
        .I3(counter_signed_reg[19]),
        .O(\slv_reg0_reg[28]_1 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_7__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[18]),
        .I3(counter_signed_reg[19]),
        .O(\slv_reg1_reg[28]_2 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_7__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[18]),
        .I3(counter_signed_reg[19]),
        .O(\slv_reg1_reg[9]_2 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_8
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[16]),
        .I3(counter_signed_reg[17]),
        .O(\slv_reg0_reg[28]_1 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_8__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[16]),
        .I3(counter_signed_reg[17]),
        .O(\slv_reg1_reg[28]_2 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__1_i_8__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[16]),
        .I3(counter_signed_reg[17]),
        .O(\slv_reg1_reg[9]_2 [0]));
  LUT4 #(
    .INIT(16'h0F0E)) 
    i__carry__2_i_1
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[31]),
        .I3(counter_signed_reg[30]),
        .O(\slv_reg0_reg[28]_0 [3]));
  LUT4 #(
    .INIT(16'h0F0E)) 
    i__carry__2_i_1__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[31]),
        .I3(counter_signed_reg[30]),
        .O(\slv_reg1_reg[28]_1 [3]));
  LUT4 #(
    .INIT(16'h0F0E)) 
    i__carry__2_i_1__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[31]),
        .I3(counter_signed_reg[30]),
        .O(\slv_reg1_reg[9]_1 [3]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_2
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[29]),
        .I3(counter_signed_reg[28]),
        .O(\slv_reg0_reg[28]_0 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_2__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[29]),
        .I3(counter_signed_reg[28]),
        .O(\slv_reg1_reg[28]_1 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_2__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[29]),
        .I3(counter_signed_reg[28]),
        .O(\slv_reg1_reg[9]_1 [2]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_3
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[27]),
        .I3(counter_signed_reg[26]),
        .O(\slv_reg0_reg[28]_0 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_3__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[27]),
        .I3(counter_signed_reg[26]),
        .O(\slv_reg1_reg[28]_1 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_3__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[27]),
        .I3(counter_signed_reg[26]),
        .O(\slv_reg1_reg[9]_1 [1]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_4
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[25]),
        .I3(counter_signed_reg[24]),
        .O(\slv_reg0_reg[28]_0 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_4__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[25]),
        .I3(counter_signed_reg[24]),
        .O(\slv_reg1_reg[28]_1 [0]));
  LUT4 #(
    .INIT(16'h1110)) 
    i__carry__2_i_4__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[25]),
        .I3(counter_signed_reg[24]),
        .O(\slv_reg1_reg[9]_1 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_5
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[30]),
        .I3(counter_signed_reg[31]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_5__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[30]),
        .I3(counter_signed_reg[31]),
        .O(\slv_reg1_reg[28]_0 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_5__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[30]),
        .I3(counter_signed_reg[31]),
        .O(\slv_reg1_reg[9]_0 [3]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_6
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[28]),
        .I3(counter_signed_reg[29]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_6__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[28]),
        .I3(counter_signed_reg[29]),
        .O(\slv_reg1_reg[28]_0 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_6__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[28]),
        .I3(counter_signed_reg[29]),
        .O(\slv_reg1_reg[9]_0 [2]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_7
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[26]),
        .I3(counter_signed_reg[27]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_7__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[26]),
        .I3(counter_signed_reg[27]),
        .O(\slv_reg1_reg[28]_0 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_7__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[26]),
        .I3(counter_signed_reg[27]),
        .O(\slv_reg1_reg[9]_0 [1]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_8
       (.I0(i__carry_i_9_n_0),
        .I1(Q[27]),
        .I2(counter_signed_reg[24]),
        .I3(counter_signed_reg[25]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_8__0
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[24]),
        .I3(counter_signed_reg[25]),
        .O(\slv_reg1_reg[28]_0 [0]));
  LUT4 #(
    .INIT(16'hE001)) 
    i__carry__2_i_8__1
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[24]),
        .I3(counter_signed_reg[25]),
        .O(\slv_reg1_reg[9]_0 [0]));
  LUT4 #(
    .INIT(16'h8054)) 
    i__carry_i_1
       (.I0(i__carry_i_9_n_0),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .I3(Q[27]),
        .O(\counter_signed_reg[7] [3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_10
       (.I0(Q[23]),
        .I1(Q[21]),
        .I2(Q[22]),
        .I3(Q[24]),
        .O(i__carry_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_10__0
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(\slv_reg1_reg[31]_0 [3]),
        .I2(\slv_reg1_reg[31]_0 [4]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .O(i__carry_i_10__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_10__1
       (.I0(\slv_reg1_reg_n_0_[5] ),
        .I1(\slv_reg1_reg[31]_0 [0]),
        .I2(\slv_reg1_reg[31]_0 [1]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .O(i__carry_i_10__1_n_0));
  LUT4 #(
    .INIT(16'h9110)) 
    i__carry_i_1__0
       (.I0(i__carry_i_9__1_n_0),
        .I1(\slv_reg1_reg[31]_0 [2]),
        .I2(counter_signed_reg[6]),
        .I3(counter_signed_reg[7]),
        .O(\slv_reg1_reg[9]_6 [3]));
  LUT4 #(
    .INIT(16'h9110)) 
    i__carry_i_1__1
       (.I0(i__carry_i_9__0_n_0),
        .I1(\slv_reg1_reg[31]_0 [5]),
        .I2(counter_signed_reg[6]),
        .I3(counter_signed_reg[7]),
        .O(\slv_reg1_reg[28]_6 [3]));
  LUT5 #(
    .INIT(32'hF9E18100)) 
    i__carry_i_2
       (.I0(Q[25]),
        .I1(i__carry_i_10_n_0),
        .I2(Q[26]),
        .I3(counter_signed_reg[4]),
        .I4(counter_signed_reg[5]),
        .O(\counter_signed_reg[7] [2]));
  LUT5 #(
    .INIT(32'hF9E18100)) 
    i__carry_i_2__0
       (.I0(i__carry_i_10__0_n_0),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(\slv_reg1_reg_n_0_[27] ),
        .I3(counter_signed_reg[4]),
        .I4(counter_signed_reg[5]),
        .O(\slv_reg1_reg[28]_6 [2]));
  LUT5 #(
    .INIT(32'hF9E18100)) 
    i__carry_i_2__1
       (.I0(i__carry_i_10__1_n_0),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .I2(\slv_reg1_reg_n_0_[8] ),
        .I3(counter_signed_reg[4]),
        .I4(counter_signed_reg[5]),
        .O(\slv_reg1_reg[9]_6 [2]));
  LUT6 #(
    .INIT(64'hFFA9FE01A8010000)) 
    i__carry_i_3
       (.I0(Q[23]),
        .I1(Q[21]),
        .I2(Q[22]),
        .I3(Q[24]),
        .I4(counter_signed_reg[2]),
        .I5(counter_signed_reg[3]),
        .O(\counter_signed_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFFE1FE01E0010000)) 
    i__carry_i_3__0
       (.I0(\slv_reg1_reg[31]_0 [4]),
        .I1(\slv_reg1_reg[31]_0 [3]),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(counter_signed_reg[2]),
        .I5(counter_signed_reg[3]),
        .O(\slv_reg1_reg[28]_6 [1]));
  LUT6 #(
    .INIT(64'hFFE1FE01E0010000)) 
    i__carry_i_3__1
       (.I0(\slv_reg1_reg[31]_0 [1]),
        .I1(\slv_reg1_reg[31]_0 [0]),
        .I2(\slv_reg1_reg_n_0_[5] ),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(counter_signed_reg[2]),
        .I5(counter_signed_reg[3]),
        .O(\slv_reg1_reg[9]_6 [1]));
  LUT4 #(
    .INIT(16'hD910)) 
    i__carry_i_4
       (.I0(Q[21]),
        .I1(Q[22]),
        .I2(counter_signed_reg[0]),
        .I3(counter_signed_reg[1]),
        .O(\counter_signed_reg[7] [0]));
  LUT4 #(
    .INIT(16'hD910)) 
    i__carry_i_4__0
       (.I0(\slv_reg1_reg[31]_0 [3]),
        .I1(\slv_reg1_reg[31]_0 [4]),
        .I2(counter_signed_reg[0]),
        .I3(counter_signed_reg[1]),
        .O(\slv_reg1_reg[28]_6 [0]));
  LUT4 #(
    .INIT(16'hD910)) 
    i__carry_i_4__1
       (.I0(\slv_reg1_reg[31]_0 [0]),
        .I1(\slv_reg1_reg[31]_0 [1]),
        .I2(counter_signed_reg[0]),
        .I3(counter_signed_reg[1]),
        .O(\slv_reg1_reg[9]_6 [0]));
  LUT4 #(
    .INIT(16'h6081)) 
    i__carry_i_5
       (.I0(Q[27]),
        .I1(counter_signed_reg[6]),
        .I2(counter_signed_reg[7]),
        .I3(i__carry_i_9_n_0),
        .O(\slv_reg0_reg[28]_5 [2]));
  LUT4 #(
    .INIT(16'h6081)) 
    i__carry_i_5__0
       (.I0(\slv_reg1_reg[31]_0 [2]),
        .I1(counter_signed_reg[6]),
        .I2(counter_signed_reg[7]),
        .I3(i__carry_i_9__1_n_0),
        .O(\slv_reg1_reg[9]_7 [2]));
  LUT4 #(
    .INIT(16'h6081)) 
    i__carry_i_5__1
       (.I0(\slv_reg1_reg[31]_0 [5]),
        .I1(counter_signed_reg[6]),
        .I2(counter_signed_reg[7]),
        .I3(i__carry_i_9__0_n_0),
        .O(\slv_reg1_reg[28]_7 [2]));
  LUT5 #(
    .INIT(32'h14282841)) 
    i__carry_i_6
       (.I0(i__carry_i_10_n_0),
        .I1(counter_signed_reg[5]),
        .I2(Q[26]),
        .I3(counter_signed_reg[4]),
        .I4(Q[25]),
        .O(\slv_reg0_reg[28]_5 [1]));
  LUT5 #(
    .INIT(32'h14282841)) 
    i__carry_i_6__0
       (.I0(i__carry_i_10__1_n_0),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .I2(counter_signed_reg[5]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(counter_signed_reg[4]),
        .O(\slv_reg1_reg[9]_7 [1]));
  LUT5 #(
    .INIT(32'h14282841)) 
    i__carry_i_6__1
       (.I0(i__carry_i_10__0_n_0),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(counter_signed_reg[5]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(counter_signed_reg[4]),
        .O(\slv_reg1_reg[28]_7 [1]));
  LUT6 #(
    .INIT(64'h0006666066600009)) 
    i__carry_i_7
       (.I0(Q[24]),
        .I1(counter_signed_reg[3]),
        .I2(Q[22]),
        .I3(Q[21]),
        .I4(counter_signed_reg[2]),
        .I5(Q[23]),
        .O(\slv_reg0_reg[28]_5 [0]));
  LUT6 #(
    .INIT(64'h0006666066600009)) 
    i__carry_i_7__0
       (.I0(counter_signed_reg[3]),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .I2(\slv_reg1_reg[31]_0 [1]),
        .I3(\slv_reg1_reg[31]_0 [0]),
        .I4(\slv_reg1_reg_n_0_[5] ),
        .I5(counter_signed_reg[2]),
        .O(\slv_reg1_reg[9]_7 [0]));
  LUT6 #(
    .INIT(64'h0006666066600009)) 
    i__carry_i_7__1
       (.I0(counter_signed_reg[3]),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(\slv_reg1_reg[31]_0 [4]),
        .I3(\slv_reg1_reg[31]_0 [3]),
        .I4(\slv_reg1_reg_n_0_[24] ),
        .I5(counter_signed_reg[2]),
        .O(\slv_reg1_reg[28]_7 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_9
       (.I0(Q[25]),
        .I1(Q[23]),
        .I2(Q[21]),
        .I3(Q[22]),
        .I4(Q[24]),
        .I5(Q[26]),
        .O(i__carry_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_9__0
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(\slv_reg1_reg[31]_0 [3]),
        .I3(\slv_reg1_reg[31]_0 [4]),
        .I4(\slv_reg1_reg_n_0_[25] ),
        .I5(\slv_reg1_reg_n_0_[27] ),
        .O(i__carry_i_9__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_9__1
       (.I0(\slv_reg1_reg_n_0_[7] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(\slv_reg1_reg[31]_0 [0]),
        .I3(\slv_reg1_reg[31]_0 [1]),
        .I4(\slv_reg1_reg_n_0_[6] ),
        .I5(\slv_reg1_reg_n_0_[8] ),
        .O(i__carry_i_9__1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[31]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_2 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_3 
       (.I0(s00_axi_awvalid),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(Q[21]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(Q[22]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(Q[23]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(Q[24]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(Q[25]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(Q[26]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(Q[27]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(steer_dir[0]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(steer_dir[1]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(Q[28]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(drive_dir_b[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(drive_dir_b[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg[31]_0 [3]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg[31]_0 [4]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg[31]_0 [5]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(drive_dir_a[0]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(drive_dir_a[1]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg[31]_0 [6]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg[31]_0 [0]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg[31]_0 [1]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg[31]_0 [2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__0_i_1
       (.I0(Q[14]),
        .I1(steer_enable1[14]),
        .I2(Q[13]),
        .I3(steer_enable1[13]),
        .O(\slv_reg0_reg[14]_0 [3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__0_i_2
       (.I0(Q[12]),
        .I1(steer_enable1[12]),
        .I2(Q[11]),
        .I3(steer_enable1[11]),
        .O(\slv_reg0_reg[14]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__0_i_3
       (.I0(Q[10]),
        .I1(steer_enable1[10]),
        .I2(Q[9]),
        .I3(steer_enable1[9]),
        .O(\slv_reg0_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__0_i_4
       (.I0(Q[8]),
        .I1(steer_enable1[8]),
        .I2(Q[7]),
        .I3(steer_enable1[7]),
        .O(\slv_reg0_reg[14]_0 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__1_i_1
       (.I0(Q[20]),
        .I1(steer_enable1[20]),
        .I2(Q[19]),
        .I3(steer_enable1[19]),
        .O(\slv_reg0_reg[20]_0 [2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__1_i_2
       (.I0(Q[18]),
        .I1(steer_enable1[18]),
        .I2(Q[17]),
        .I3(steer_enable1[17]),
        .O(\slv_reg0_reg[20]_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry__1_i_3
       (.I0(Q[16]),
        .I1(steer_enable1[16]),
        .I2(Q[15]),
        .I3(steer_enable1[15]),
        .O(\slv_reg0_reg[20]_0 [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry_i_1
       (.I0(Q[6]),
        .I1(steer_enable1[6]),
        .I2(Q[5]),
        .I3(steer_enable1[5]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry_i_2
       (.I0(Q[4]),
        .I1(steer_enable1[4]),
        .I2(Q[3]),
        .I3(steer_enable1[3]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    steer_active0_carry_i_3
       (.I0(Q[2]),
        .I1(steer_enable1[2]),
        .I2(Q[1]),
        .I3(steer_enable1[1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h2)) 
    steer_active0_carry_i_4
       (.I0(Q[0]),
        .I1(steer_enable1[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    steer_trigger_i_1
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .I5(s00_axi_awvalid),
        .O(slv_reg0_wen));
  FDRE steer_trigger_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_reg0_wen),
        .Q(E),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "top,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_STBY,
    S_PWMA,
    S_AIN1,
    S_AIN2,
    D_STBY,
    D_PWMA,
    D_AIN1,
    D_AIN2,
    D_PWMB,
    D_BIN1,
    D_BIN2,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output S_STBY;
  output S_PWMA;
  output S_AIN1;
  output S_AIN2;
  output D_STBY;
  output D_PWMA;
  output D_AIN1;
  output D_AIN2;
  output D_PWMB;
  output D_BIN1;
  output D_BIN2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire D_AIN1;
  wire D_AIN2;
  wire D_BIN1;
  wire D_BIN2;
  wire D_PWMA;
  wire D_PWMB;
  wire D_STBY;
  wire S_AIN1;
  wire S_AIN2;
  wire S_PWMA;
  wire S_STBY;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top inst
       (.D_AIN1(D_AIN1),
        .D_AIN2(D_AIN2),
        .D_BIN1(D_BIN1),
        .D_BIN2(D_BIN2),
        .D_PWMA(D_PWMA),
        .D_PWMB(D_PWMB),
        .Q(D_STBY),
        .S_AIN1(S_AIN1),
        .S_AIN2(S_AIN2),
        .S_PWMA(S_PWMA),
        .S_STBY(S_STBY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_controller
   (S_PWMA,
    S_AIN1,
    S_AIN2,
    D_PWMA,
    D_AIN1,
    D_AIN2,
    D_PWMB,
    D_BIN1,
    D_BIN2,
    counter_signed_reg,
    \global_cnt_reg[27]_0 ,
    CO,
    \counter_signed_reg[31]_0 ,
    \slv_reg1_reg[28] ,
    \counter_signed_reg[31]_1 ,
    \slv_reg1_reg[9] ,
    steer_enable,
    s00_axi_aclk,
    SR,
    S_AIN19_out,
    S_AIN27_out,
    D_PWMA_reg_0,
    D_AIN14_out,
    D_AIN23_out,
    D_PWMB_reg_0,
    D_BIN11_out,
    D_BIN20_out,
    \S_PWMA1_inferred__0/i__carry__0_0 ,
    \S_PWMA1_inferred__0/i__carry__0_1 ,
    \S_PWMA1_inferred__0/i__carry__1_0 ,
    \S_PWMA1_inferred__0/i__carry__1_1 ,
    \S_PWMA1_inferred__0/i__carry__2_0 ,
    \S_PWMA1_inferred__0/i__carry__2_1 ,
    S_PWMA_reg_0,
    S,
    DI,
    steer_active0_carry__1_0,
    steer_enable_reg_0,
    D_PWMA1_carry__0_0,
    D_PWMA1_carry__0_1,
    \D_PWMA1_inferred__0/i__carry__0_0 ,
    \D_PWMA1_inferred__0/i__carry__0_1 ,
    \D_PWMA1_inferred__0/i__carry__1_0 ,
    \D_PWMA1_inferred__0/i__carry__1_1 ,
    \D_PWMA1_inferred__0/i__carry__2_0 ,
    \D_PWMA1_inferred__0/i__carry__2_1 ,
    D_PWMA_reg_1,
    D_PWMA_reg_2,
    D_PWMB1_carry__0_0,
    D_PWMB1_carry__0_1,
    \D_PWMB1_inferred__0/i__carry__0_0 ,
    \D_PWMB1_inferred__0/i__carry__0_1 ,
    \D_PWMB1_inferred__0/i__carry__1_0 ,
    \D_PWMB1_inferred__0/i__carry__1_1 ,
    \D_PWMB1_inferred__0/i__carry__2_0 ,
    \D_PWMB1_inferred__0/i__carry__2_1 ,
    D_PWMB_reg_1,
    D_PWMB_reg_2,
    Q,
    D_PWMA1_carry_0,
    E);
  output S_PWMA;
  output S_AIN1;
  output S_AIN2;
  output D_PWMA;
  output D_AIN1;
  output D_AIN2;
  output D_PWMB;
  output D_BIN1;
  output D_BIN2;
  output [31:0]counter_signed_reg;
  output [20:0]\global_cnt_reg[27]_0 ;
  output [0:0]CO;
  output [0:0]\counter_signed_reg[31]_0 ;
  output [0:0]\slv_reg1_reg[28] ;
  output [0:0]\counter_signed_reg[31]_1 ;
  output [0:0]\slv_reg1_reg[9] ;
  output steer_enable;
  input s00_axi_aclk;
  input [0:0]SR;
  input S_AIN19_out;
  input S_AIN27_out;
  input D_PWMA_reg_0;
  input D_AIN14_out;
  input D_AIN23_out;
  input D_PWMB_reg_0;
  input D_BIN11_out;
  input D_BIN20_out;
  input [3:0]\S_PWMA1_inferred__0/i__carry__0_0 ;
  input [2:0]\S_PWMA1_inferred__0/i__carry__0_1 ;
  input [3:0]\S_PWMA1_inferred__0/i__carry__1_0 ;
  input [3:0]\S_PWMA1_inferred__0/i__carry__1_1 ;
  input [3:0]\S_PWMA1_inferred__0/i__carry__2_0 ;
  input [3:0]\S_PWMA1_inferred__0/i__carry__2_1 ;
  input [3:0]S_PWMA_reg_0;
  input [3:0]S;
  input [3:0]DI;
  input [3:0]steer_active0_carry__1_0;
  input [2:0]steer_enable_reg_0;
  input [2:0]D_PWMA1_carry__0_0;
  input [1:0]D_PWMA1_carry__0_1;
  input [3:0]\D_PWMA1_inferred__0/i__carry__0_0 ;
  input [2:0]\D_PWMA1_inferred__0/i__carry__0_1 ;
  input [3:0]\D_PWMA1_inferred__0/i__carry__1_0 ;
  input [3:0]\D_PWMA1_inferred__0/i__carry__1_1 ;
  input [3:0]\D_PWMA1_inferred__0/i__carry__2_0 ;
  input [3:0]\D_PWMA1_inferred__0/i__carry__2_1 ;
  input [3:0]D_PWMA_reg_1;
  input [3:0]D_PWMA_reg_2;
  input [2:0]D_PWMB1_carry__0_0;
  input [1:0]D_PWMB1_carry__0_1;
  input [3:0]\D_PWMB1_inferred__0/i__carry__0_0 ;
  input [2:0]\D_PWMB1_inferred__0/i__carry__0_1 ;
  input [3:0]\D_PWMB1_inferred__0/i__carry__1_0 ;
  input [3:0]\D_PWMB1_inferred__0/i__carry__1_1 ;
  input [3:0]\D_PWMB1_inferred__0/i__carry__2_0 ;
  input [3:0]\D_PWMB1_inferred__0/i__carry__2_1 ;
  input [3:0]D_PWMB_reg_1;
  input [3:0]D_PWMB_reg_2;
  input [27:0]Q;
  input [5:0]D_PWMA1_carry_0;
  input [0:0]E;

  wire [0:0]CO;
  wire [3:0]DI;
  wire D_AIN1;
  wire D_AIN14_out;
  wire D_AIN2;
  wire D_AIN23_out;
  wire D_BIN1;
  wire D_BIN11_out;
  wire D_BIN2;
  wire D_BIN20_out;
  wire D_PWMA;
  wire [5:0]D_PWMA1_carry_0;
  wire [2:0]D_PWMA1_carry__0_0;
  wire [1:0]D_PWMA1_carry__0_1;
  wire D_PWMA1_carry__0_i_1_n_0;
  wire D_PWMA1_carry__0_i_2_n_0;
  wire D_PWMA1_carry__0_i_3_n_0;
  wire D_PWMA1_carry__0_i_4_n_0;
  wire D_PWMA1_carry__0_n_0;
  wire D_PWMA1_carry__0_n_1;
  wire D_PWMA1_carry__0_n_2;
  wire D_PWMA1_carry__0_n_3;
  wire D_PWMA1_carry__1_i_1_n_0;
  wire D_PWMA1_carry__1_i_2_n_0;
  wire D_PWMA1_carry__1_i_3_n_0;
  wire D_PWMA1_carry__1_i_4_n_0;
  wire D_PWMA1_carry__1_n_0;
  wire D_PWMA1_carry__1_n_1;
  wire D_PWMA1_carry__1_n_2;
  wire D_PWMA1_carry__1_n_3;
  wire D_PWMA1_carry__2_i_1_n_0;
  wire D_PWMA1_carry__2_i_2_n_0;
  wire D_PWMA1_carry__2_i_3_n_0;
  wire D_PWMA1_carry__2_i_4_n_0;
  wire D_PWMA1_carry__2_n_1;
  wire D_PWMA1_carry__2_n_2;
  wire D_PWMA1_carry__2_n_3;
  wire D_PWMA1_carry_i_1_n_0;
  wire D_PWMA1_carry_i_5_n_0;
  wire D_PWMA1_carry_i_8_n_0;
  wire D_PWMA1_carry_n_0;
  wire D_PWMA1_carry_n_1;
  wire D_PWMA1_carry_n_2;
  wire D_PWMA1_carry_n_3;
  wire [3:0]\D_PWMA1_inferred__0/i__carry__0_0 ;
  wire [2:0]\D_PWMA1_inferred__0/i__carry__0_1 ;
  wire \D_PWMA1_inferred__0/i__carry__0_n_0 ;
  wire \D_PWMA1_inferred__0/i__carry__0_n_1 ;
  wire \D_PWMA1_inferred__0/i__carry__0_n_2 ;
  wire \D_PWMA1_inferred__0/i__carry__0_n_3 ;
  wire [3:0]\D_PWMA1_inferred__0/i__carry__1_0 ;
  wire [3:0]\D_PWMA1_inferred__0/i__carry__1_1 ;
  wire \D_PWMA1_inferred__0/i__carry__1_n_0 ;
  wire \D_PWMA1_inferred__0/i__carry__1_n_1 ;
  wire \D_PWMA1_inferred__0/i__carry__1_n_2 ;
  wire \D_PWMA1_inferred__0/i__carry__1_n_3 ;
  wire [3:0]\D_PWMA1_inferred__0/i__carry__2_0 ;
  wire [3:0]\D_PWMA1_inferred__0/i__carry__2_1 ;
  wire \D_PWMA1_inferred__0/i__carry__2_n_1 ;
  wire \D_PWMA1_inferred__0/i__carry__2_n_2 ;
  wire \D_PWMA1_inferred__0/i__carry__2_n_3 ;
  wire \D_PWMA1_inferred__0/i__carry_n_0 ;
  wire \D_PWMA1_inferred__0/i__carry_n_1 ;
  wire \D_PWMA1_inferred__0/i__carry_n_2 ;
  wire \D_PWMA1_inferred__0/i__carry_n_3 ;
  wire D_PWMA_reg_0;
  wire [3:0]D_PWMA_reg_1;
  wire [3:0]D_PWMA_reg_2;
  wire D_PWMB;
  wire [2:0]D_PWMB1_carry__0_0;
  wire [1:0]D_PWMB1_carry__0_1;
  wire D_PWMB1_carry__0_i_1_n_0;
  wire D_PWMB1_carry__0_i_2_n_0;
  wire D_PWMB1_carry__0_i_3_n_0;
  wire D_PWMB1_carry__0_i_4_n_0;
  wire D_PWMB1_carry__0_n_0;
  wire D_PWMB1_carry__0_n_1;
  wire D_PWMB1_carry__0_n_2;
  wire D_PWMB1_carry__0_n_3;
  wire D_PWMB1_carry__1_i_1_n_0;
  wire D_PWMB1_carry__1_i_2_n_0;
  wire D_PWMB1_carry__1_i_3_n_0;
  wire D_PWMB1_carry__1_i_4_n_0;
  wire D_PWMB1_carry__1_n_0;
  wire D_PWMB1_carry__1_n_1;
  wire D_PWMB1_carry__1_n_2;
  wire D_PWMB1_carry__1_n_3;
  wire D_PWMB1_carry__2_i_1_n_0;
  wire D_PWMB1_carry__2_i_2_n_0;
  wire D_PWMB1_carry__2_i_3_n_0;
  wire D_PWMB1_carry__2_i_4_n_0;
  wire D_PWMB1_carry__2_n_1;
  wire D_PWMB1_carry__2_n_2;
  wire D_PWMB1_carry__2_n_3;
  wire D_PWMB1_carry_i_1_n_0;
  wire D_PWMB1_carry_i_5_n_0;
  wire D_PWMB1_carry_i_8_n_0;
  wire D_PWMB1_carry_n_0;
  wire D_PWMB1_carry_n_1;
  wire D_PWMB1_carry_n_2;
  wire D_PWMB1_carry_n_3;
  wire [3:0]\D_PWMB1_inferred__0/i__carry__0_0 ;
  wire [2:0]\D_PWMB1_inferred__0/i__carry__0_1 ;
  wire \D_PWMB1_inferred__0/i__carry__0_n_0 ;
  wire \D_PWMB1_inferred__0/i__carry__0_n_1 ;
  wire \D_PWMB1_inferred__0/i__carry__0_n_2 ;
  wire \D_PWMB1_inferred__0/i__carry__0_n_3 ;
  wire [3:0]\D_PWMB1_inferred__0/i__carry__1_0 ;
  wire [3:0]\D_PWMB1_inferred__0/i__carry__1_1 ;
  wire \D_PWMB1_inferred__0/i__carry__1_n_0 ;
  wire \D_PWMB1_inferred__0/i__carry__1_n_1 ;
  wire \D_PWMB1_inferred__0/i__carry__1_n_2 ;
  wire \D_PWMB1_inferred__0/i__carry__1_n_3 ;
  wire [3:0]\D_PWMB1_inferred__0/i__carry__2_0 ;
  wire [3:0]\D_PWMB1_inferred__0/i__carry__2_1 ;
  wire \D_PWMB1_inferred__0/i__carry__2_n_1 ;
  wire \D_PWMB1_inferred__0/i__carry__2_n_2 ;
  wire \D_PWMB1_inferred__0/i__carry__2_n_3 ;
  wire \D_PWMB1_inferred__0/i__carry_n_0 ;
  wire \D_PWMB1_inferred__0/i__carry_n_1 ;
  wire \D_PWMB1_inferred__0/i__carry_n_2 ;
  wire \D_PWMB1_inferred__0/i__carry_n_3 ;
  wire D_PWMB_reg_0;
  wire [3:0]D_PWMB_reg_1;
  wire [3:0]D_PWMB_reg_2;
  wire [0:0]E;
  wire [27:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire S_AIN1;
  wire S_AIN19_out;
  wire S_AIN2;
  wire S_AIN27_out;
  wire S_PWMA;
  wire S_PWMA1;
  wire S_PWMA110_in;
  wire S_PWMA1_carry__0_i_1_n_0;
  wire S_PWMA1_carry__0_i_2_n_0;
  wire S_PWMA1_carry__0_i_3_n_0;
  wire S_PWMA1_carry__0_i_4_n_0;
  wire S_PWMA1_carry__0_n_0;
  wire S_PWMA1_carry__0_n_1;
  wire S_PWMA1_carry__0_n_2;
  wire S_PWMA1_carry__0_n_3;
  wire S_PWMA1_carry__1_i_1_n_0;
  wire S_PWMA1_carry__1_i_2_n_0;
  wire S_PWMA1_carry__1_i_3_n_0;
  wire S_PWMA1_carry__1_i_4_n_0;
  wire S_PWMA1_carry__1_n_0;
  wire S_PWMA1_carry__1_n_1;
  wire S_PWMA1_carry__1_n_2;
  wire S_PWMA1_carry__1_n_3;
  wire S_PWMA1_carry__2_i_1_n_0;
  wire S_PWMA1_carry__2_i_2_n_0;
  wire S_PWMA1_carry__2_i_3_n_0;
  wire S_PWMA1_carry__2_i_4_n_0;
  wire S_PWMA1_carry__2_n_1;
  wire S_PWMA1_carry__2_n_2;
  wire S_PWMA1_carry__2_n_3;
  wire S_PWMA1_carry_i_1_n_0;
  wire S_PWMA1_carry_i_2_n_0;
  wire S_PWMA1_carry_i_3_n_0;
  wire S_PWMA1_carry_i_4_n_0;
  wire S_PWMA1_carry_i_5_n_0;
  wire S_PWMA1_carry_i_6_n_0;
  wire S_PWMA1_carry_i_7_n_0;
  wire S_PWMA1_carry_i_8_n_0;
  wire S_PWMA1_carry_n_0;
  wire S_PWMA1_carry_n_1;
  wire S_PWMA1_carry_n_2;
  wire S_PWMA1_carry_n_3;
  wire [3:0]\S_PWMA1_inferred__0/i__carry__0_0 ;
  wire [2:0]\S_PWMA1_inferred__0/i__carry__0_1 ;
  wire \S_PWMA1_inferred__0/i__carry__0_n_0 ;
  wire \S_PWMA1_inferred__0/i__carry__0_n_1 ;
  wire \S_PWMA1_inferred__0/i__carry__0_n_2 ;
  wire \S_PWMA1_inferred__0/i__carry__0_n_3 ;
  wire [3:0]\S_PWMA1_inferred__0/i__carry__1_0 ;
  wire [3:0]\S_PWMA1_inferred__0/i__carry__1_1 ;
  wire \S_PWMA1_inferred__0/i__carry__1_n_0 ;
  wire \S_PWMA1_inferred__0/i__carry__1_n_1 ;
  wire \S_PWMA1_inferred__0/i__carry__1_n_2 ;
  wire \S_PWMA1_inferred__0/i__carry__1_n_3 ;
  wire [3:0]\S_PWMA1_inferred__0/i__carry__2_0 ;
  wire [3:0]\S_PWMA1_inferred__0/i__carry__2_1 ;
  wire \S_PWMA1_inferred__0/i__carry__2_n_1 ;
  wire \S_PWMA1_inferred__0/i__carry__2_n_2 ;
  wire \S_PWMA1_inferred__0/i__carry__2_n_3 ;
  wire \S_PWMA1_inferred__0/i__carry_n_0 ;
  wire \S_PWMA1_inferred__0/i__carry_n_1 ;
  wire \S_PWMA1_inferred__0/i__carry_n_2 ;
  wire \S_PWMA1_inferred__0/i__carry_n_3 ;
  wire S_PWMA_i_1_n_0;
  wire [3:0]S_PWMA_reg_0;
  wire counter_signed;
  wire counter_signed1_carry__0_i_1_n_0;
  wire counter_signed1_carry__0_i_2_n_0;
  wire counter_signed1_carry__0_i_3_n_0;
  wire counter_signed1_carry__0_i_4_n_0;
  wire counter_signed1_carry__0_i_5_n_0;
  wire counter_signed1_carry__0_i_6_n_0;
  wire counter_signed1_carry__0_i_7_n_0;
  wire counter_signed1_carry__0_i_8_n_0;
  wire counter_signed1_carry__0_n_0;
  wire counter_signed1_carry__0_n_1;
  wire counter_signed1_carry__0_n_2;
  wire counter_signed1_carry__0_n_3;
  wire counter_signed1_carry__1_i_1_n_0;
  wire counter_signed1_carry__1_i_2_n_0;
  wire counter_signed1_carry__1_i_3_n_0;
  wire counter_signed1_carry__1_i_4_n_0;
  wire counter_signed1_carry__1_i_5_n_0;
  wire counter_signed1_carry__1_i_6_n_0;
  wire counter_signed1_carry__1_i_7_n_0;
  wire counter_signed1_carry__1_i_8_n_0;
  wire counter_signed1_carry__1_n_0;
  wire counter_signed1_carry__1_n_1;
  wire counter_signed1_carry__1_n_2;
  wire counter_signed1_carry__1_n_3;
  wire counter_signed1_carry__2_i_1_n_0;
  wire counter_signed1_carry__2_i_2_n_0;
  wire counter_signed1_carry__2_i_3_n_0;
  wire counter_signed1_carry__2_i_4_n_0;
  wire counter_signed1_carry__2_i_5_n_0;
  wire counter_signed1_carry__2_i_6_n_0;
  wire counter_signed1_carry__2_n_2;
  wire counter_signed1_carry__2_n_3;
  wire counter_signed1_carry_i_1_n_0;
  wire counter_signed1_carry_i_2_n_0;
  wire counter_signed1_carry_i_3_n_0;
  wire counter_signed1_carry_i_4_n_0;
  wire counter_signed1_carry_i_5_n_0;
  wire counter_signed1_carry_i_6_n_0;
  wire counter_signed1_carry_n_0;
  wire counter_signed1_carry_n_1;
  wire counter_signed1_carry_n_2;
  wire counter_signed1_carry_n_3;
  wire \counter_signed[0]_i_3_n_0 ;
  wire \counter_signed[0]_i_4_n_0 ;
  wire \counter_signed[0]_i_5_n_0 ;
  wire \counter_signed[0]_i_6_n_0 ;
  wire \counter_signed[0]_i_7_n_0 ;
  wire \counter_signed[12]_i_2_n_0 ;
  wire \counter_signed[12]_i_3_n_0 ;
  wire \counter_signed[12]_i_4_n_0 ;
  wire \counter_signed[12]_i_5_n_0 ;
  wire \counter_signed[16]_i_2_n_0 ;
  wire \counter_signed[16]_i_3_n_0 ;
  wire \counter_signed[16]_i_4_n_0 ;
  wire \counter_signed[16]_i_5_n_0 ;
  wire \counter_signed[20]_i_2_n_0 ;
  wire \counter_signed[20]_i_3_n_0 ;
  wire \counter_signed[20]_i_4_n_0 ;
  wire \counter_signed[20]_i_5_n_0 ;
  wire \counter_signed[24]_i_2_n_0 ;
  wire \counter_signed[24]_i_3_n_0 ;
  wire \counter_signed[24]_i_4_n_0 ;
  wire \counter_signed[24]_i_5_n_0 ;
  wire \counter_signed[28]_i_2_n_0 ;
  wire \counter_signed[28]_i_3_n_0 ;
  wire \counter_signed[28]_i_4_n_0 ;
  wire \counter_signed[28]_i_5_n_0 ;
  wire \counter_signed[4]_i_2_n_0 ;
  wire \counter_signed[4]_i_3_n_0 ;
  wire \counter_signed[4]_i_4_n_0 ;
  wire \counter_signed[4]_i_5_n_0 ;
  wire \counter_signed[8]_i_2_n_0 ;
  wire \counter_signed[8]_i_3_n_0 ;
  wire \counter_signed[8]_i_4_n_0 ;
  wire \counter_signed[8]_i_5_n_0 ;
  wire [31:0]counter_signed_reg;
  wire \counter_signed_reg[0]_i_2_n_0 ;
  wire \counter_signed_reg[0]_i_2_n_1 ;
  wire \counter_signed_reg[0]_i_2_n_2 ;
  wire \counter_signed_reg[0]_i_2_n_3 ;
  wire \counter_signed_reg[0]_i_2_n_4 ;
  wire \counter_signed_reg[0]_i_2_n_5 ;
  wire \counter_signed_reg[0]_i_2_n_6 ;
  wire \counter_signed_reg[0]_i_2_n_7 ;
  wire \counter_signed_reg[12]_i_1_n_0 ;
  wire \counter_signed_reg[12]_i_1_n_1 ;
  wire \counter_signed_reg[12]_i_1_n_2 ;
  wire \counter_signed_reg[12]_i_1_n_3 ;
  wire \counter_signed_reg[12]_i_1_n_4 ;
  wire \counter_signed_reg[12]_i_1_n_5 ;
  wire \counter_signed_reg[12]_i_1_n_6 ;
  wire \counter_signed_reg[12]_i_1_n_7 ;
  wire \counter_signed_reg[16]_i_1_n_0 ;
  wire \counter_signed_reg[16]_i_1_n_1 ;
  wire \counter_signed_reg[16]_i_1_n_2 ;
  wire \counter_signed_reg[16]_i_1_n_3 ;
  wire \counter_signed_reg[16]_i_1_n_4 ;
  wire \counter_signed_reg[16]_i_1_n_5 ;
  wire \counter_signed_reg[16]_i_1_n_6 ;
  wire \counter_signed_reg[16]_i_1_n_7 ;
  wire \counter_signed_reg[20]_i_1_n_0 ;
  wire \counter_signed_reg[20]_i_1_n_1 ;
  wire \counter_signed_reg[20]_i_1_n_2 ;
  wire \counter_signed_reg[20]_i_1_n_3 ;
  wire \counter_signed_reg[20]_i_1_n_4 ;
  wire \counter_signed_reg[20]_i_1_n_5 ;
  wire \counter_signed_reg[20]_i_1_n_6 ;
  wire \counter_signed_reg[20]_i_1_n_7 ;
  wire \counter_signed_reg[24]_i_1_n_0 ;
  wire \counter_signed_reg[24]_i_1_n_1 ;
  wire \counter_signed_reg[24]_i_1_n_2 ;
  wire \counter_signed_reg[24]_i_1_n_3 ;
  wire \counter_signed_reg[24]_i_1_n_4 ;
  wire \counter_signed_reg[24]_i_1_n_5 ;
  wire \counter_signed_reg[24]_i_1_n_6 ;
  wire \counter_signed_reg[24]_i_1_n_7 ;
  wire \counter_signed_reg[28]_i_1_n_1 ;
  wire \counter_signed_reg[28]_i_1_n_2 ;
  wire \counter_signed_reg[28]_i_1_n_3 ;
  wire \counter_signed_reg[28]_i_1_n_4 ;
  wire \counter_signed_reg[28]_i_1_n_5 ;
  wire \counter_signed_reg[28]_i_1_n_6 ;
  wire \counter_signed_reg[28]_i_1_n_7 ;
  wire [0:0]\counter_signed_reg[31]_0 ;
  wire [0:0]\counter_signed_reg[31]_1 ;
  wire \counter_signed_reg[4]_i_1_n_0 ;
  wire \counter_signed_reg[4]_i_1_n_1 ;
  wire \counter_signed_reg[4]_i_1_n_2 ;
  wire \counter_signed_reg[4]_i_1_n_3 ;
  wire \counter_signed_reg[4]_i_1_n_4 ;
  wire \counter_signed_reg[4]_i_1_n_5 ;
  wire \counter_signed_reg[4]_i_1_n_6 ;
  wire \counter_signed_reg[4]_i_1_n_7 ;
  wire \counter_signed_reg[8]_i_1_n_0 ;
  wire \counter_signed_reg[8]_i_1_n_1 ;
  wire \counter_signed_reg[8]_i_1_n_2 ;
  wire \counter_signed_reg[8]_i_1_n_3 ;
  wire \counter_signed_reg[8]_i_1_n_4 ;
  wire \counter_signed_reg[8]_i_1_n_5 ;
  wire \counter_signed_reg[8]_i_1_n_6 ;
  wire \counter_signed_reg[8]_i_1_n_7 ;
  wire \global_cnt[0]_i_2_n_0 ;
  wire [28:0]global_cnt_reg;
  wire \global_cnt_reg[0]_i_1_n_0 ;
  wire \global_cnt_reg[0]_i_1_n_1 ;
  wire \global_cnt_reg[0]_i_1_n_2 ;
  wire \global_cnt_reg[0]_i_1_n_3 ;
  wire \global_cnt_reg[0]_i_1_n_4 ;
  wire \global_cnt_reg[0]_i_1_n_5 ;
  wire \global_cnt_reg[0]_i_1_n_6 ;
  wire \global_cnt_reg[0]_i_1_n_7 ;
  wire \global_cnt_reg[12]_i_1_n_0 ;
  wire \global_cnt_reg[12]_i_1_n_1 ;
  wire \global_cnt_reg[12]_i_1_n_2 ;
  wire \global_cnt_reg[12]_i_1_n_3 ;
  wire \global_cnt_reg[12]_i_1_n_4 ;
  wire \global_cnt_reg[12]_i_1_n_5 ;
  wire \global_cnt_reg[12]_i_1_n_6 ;
  wire \global_cnt_reg[12]_i_1_n_7 ;
  wire \global_cnt_reg[16]_i_1_n_0 ;
  wire \global_cnt_reg[16]_i_1_n_1 ;
  wire \global_cnt_reg[16]_i_1_n_2 ;
  wire \global_cnt_reg[16]_i_1_n_3 ;
  wire \global_cnt_reg[16]_i_1_n_4 ;
  wire \global_cnt_reg[16]_i_1_n_5 ;
  wire \global_cnt_reg[16]_i_1_n_6 ;
  wire \global_cnt_reg[16]_i_1_n_7 ;
  wire \global_cnt_reg[20]_i_1_n_0 ;
  wire \global_cnt_reg[20]_i_1_n_1 ;
  wire \global_cnt_reg[20]_i_1_n_2 ;
  wire \global_cnt_reg[20]_i_1_n_3 ;
  wire \global_cnt_reg[20]_i_1_n_4 ;
  wire \global_cnt_reg[20]_i_1_n_5 ;
  wire \global_cnt_reg[20]_i_1_n_6 ;
  wire \global_cnt_reg[20]_i_1_n_7 ;
  wire \global_cnt_reg[24]_i_1_n_0 ;
  wire \global_cnt_reg[24]_i_1_n_1 ;
  wire \global_cnt_reg[24]_i_1_n_2 ;
  wire \global_cnt_reg[24]_i_1_n_3 ;
  wire \global_cnt_reg[24]_i_1_n_4 ;
  wire \global_cnt_reg[24]_i_1_n_5 ;
  wire \global_cnt_reg[24]_i_1_n_6 ;
  wire \global_cnt_reg[24]_i_1_n_7 ;
  wire [20:0]\global_cnt_reg[27]_0 ;
  wire \global_cnt_reg[28]_i_1_n_7 ;
  wire \global_cnt_reg[4]_i_1_n_0 ;
  wire \global_cnt_reg[4]_i_1_n_1 ;
  wire \global_cnt_reg[4]_i_1_n_2 ;
  wire \global_cnt_reg[4]_i_1_n_3 ;
  wire \global_cnt_reg[4]_i_1_n_4 ;
  wire \global_cnt_reg[4]_i_1_n_5 ;
  wire \global_cnt_reg[4]_i_1_n_6 ;
  wire \global_cnt_reg[4]_i_1_n_7 ;
  wire \global_cnt_reg[8]_i_1_n_0 ;
  wire \global_cnt_reg[8]_i_1_n_1 ;
  wire \global_cnt_reg[8]_i_1_n_2 ;
  wire \global_cnt_reg[8]_i_1_n_3 ;
  wire \global_cnt_reg[8]_i_1_n_4 ;
  wire \global_cnt_reg[8]_i_1_n_5 ;
  wire \global_cnt_reg[8]_i_1_n_6 ;
  wire \global_cnt_reg[8]_i_1_n_7 ;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8_n_0;
  wire load;
  wire [7:0]prescale_cnt;
  wire \prescale_cnt[2]_i_2_n_0 ;
  wire \prescale_cnt[7]_i_2_n_0 ;
  wire [7:0]prescale_cnt_0;
  wire s00_axi_aclk;
  wire [0:0]\slv_reg1_reg[28] ;
  wire [0:0]\slv_reg1_reg[9] ;
  wire steer_active0_carry__0_i_5_n_0;
  wire steer_active0_carry__0_i_6_n_0;
  wire steer_active0_carry__0_i_7_n_0;
  wire steer_active0_carry__0_i_8_n_0;
  wire steer_active0_carry__0_n_0;
  wire steer_active0_carry__0_n_1;
  wire steer_active0_carry__0_n_2;
  wire steer_active0_carry__0_n_3;
  wire [3:0]steer_active0_carry__1_0;
  wire steer_active0_carry__1_i_4_n_0;
  wire steer_active0_carry__1_i_5_n_0;
  wire steer_active0_carry__1_i_6_n_0;
  wire steer_active0_carry__1_i_7_n_0;
  wire steer_active0_carry__1_n_1;
  wire steer_active0_carry__1_n_2;
  wire steer_active0_carry__1_n_3;
  wire steer_active0_carry_i_5_n_0;
  wire steer_active0_carry_i_6_n_0;
  wire steer_active0_carry_i_7_n_0;
  wire steer_active0_carry_i_8_n_0;
  wire steer_active0_carry_n_0;
  wire steer_active0_carry_n_1;
  wire steer_active0_carry_n_2;
  wire steer_active0_carry_n_3;
  wire steer_enable;
  wire [28:6]steer_enable1;
  wire steer_enable1_carry__0_i_1_n_0;
  wire steer_enable1_carry__0_i_2_n_0;
  wire steer_enable1_carry__0_i_3_n_0;
  wire steer_enable1_carry__0_i_4_n_0;
  wire steer_enable1_carry__0_n_0;
  wire steer_enable1_carry__0_n_1;
  wire steer_enable1_carry__0_n_2;
  wire steer_enable1_carry__0_n_3;
  wire steer_enable1_carry__1_i_1_n_0;
  wire steer_enable1_carry__1_i_2_n_0;
  wire steer_enable1_carry__1_i_3_n_0;
  wire steer_enable1_carry__1_i_4_n_0;
  wire steer_enable1_carry__1_n_0;
  wire steer_enable1_carry__1_n_1;
  wire steer_enable1_carry__1_n_2;
  wire steer_enable1_carry__1_n_3;
  wire steer_enable1_carry__2_i_1_n_0;
  wire steer_enable1_carry__2_i_2_n_0;
  wire steer_enable1_carry__2_i_3_n_0;
  wire steer_enable1_carry__2_i_4_n_0;
  wire steer_enable1_carry__2_n_0;
  wire steer_enable1_carry__2_n_1;
  wire steer_enable1_carry__2_n_2;
  wire steer_enable1_carry__2_n_3;
  wire steer_enable1_carry__3_i_1_n_0;
  wire steer_enable1_carry__3_i_2_n_0;
  wire steer_enable1_carry__3_i_3_n_0;
  wire steer_enable1_carry__3_i_4_n_0;
  wire steer_enable1_carry__3_n_0;
  wire steer_enable1_carry__3_n_1;
  wire steer_enable1_carry__3_n_2;
  wire steer_enable1_carry__3_n_3;
  wire steer_enable1_carry__4_i_1_n_0;
  wire steer_enable1_carry__4_i_2_n_0;
  wire steer_enable1_carry__4_i_3_n_0;
  wire steer_enable1_carry__4_i_4_n_0;
  wire steer_enable1_carry__4_n_0;
  wire steer_enable1_carry__4_n_1;
  wire steer_enable1_carry__4_n_2;
  wire steer_enable1_carry__4_n_3;
  wire steer_enable1_carry__5_i_1_n_0;
  wire steer_enable1_carry__5_i_2_n_0;
  wire steer_enable1_carry__5_i_3_n_0;
  wire steer_enable1_carry__5_i_4_n_0;
  wire steer_enable1_carry__5_n_0;
  wire steer_enable1_carry__5_n_1;
  wire steer_enable1_carry__5_n_2;
  wire steer_enable1_carry__5_n_3;
  wire steer_enable1_carry__6_i_1_n_0;
  wire steer_enable1_carry_i_1_n_0;
  wire steer_enable1_carry_i_2_n_0;
  wire steer_enable1_carry_i_3_n_0;
  wire steer_enable1_carry_i_4_n_0;
  wire steer_enable1_carry_n_0;
  wire steer_enable1_carry_n_1;
  wire steer_enable1_carry_n_2;
  wire steer_enable1_carry_n_3;
  wire steer_enable_i_1_n_0;
  wire [2:0]steer_enable_reg_0;
  wire [28:0]steer_start;
  wire [3:0]NLW_D_PWMA1_carry_O_UNCONNECTED;
  wire [3:0]NLW_D_PWMA1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_D_PWMA1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_D_PWMA1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_D_PWMA1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_D_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_D_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_D_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_D_PWMB1_carry_O_UNCONNECTED;
  wire [3:0]NLW_D_PWMB1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_D_PWMB1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_D_PWMB1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_D_PWMB1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_D_PWMB1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_D_PWMB1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_D_PWMB1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_S_PWMA1_carry_O_UNCONNECTED;
  wire [3:0]NLW_S_PWMA1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_S_PWMA1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_S_PWMA1_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_S_PWMA1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_S_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_S_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_S_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]NLW_counter_signed1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter_signed1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter_signed1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_counter_signed1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter_signed1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_counter_signed_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_global_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_global_cnt_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_steer_active0_carry_O_UNCONNECTED;
  wire [3:0]NLW_steer_active0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_steer_active0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_steer_enable1_carry_O_UNCONNECTED;
  wire [1:0]NLW_steer_enable1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_steer_enable1_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_steer_enable1_carry__6_O_UNCONNECTED;

  FDCE D_AIN1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(D_AIN14_out),
        .Q(D_AIN1));
  FDCE D_AIN2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(D_AIN23_out),
        .Q(D_AIN2));
  FDCE D_BIN1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(D_BIN11_out),
        .Q(D_BIN1));
  FDCE D_BIN2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(D_BIN20_out),
        .Q(D_BIN2));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMA1_carry
       (.CI(1'b0),
        .CO({D_PWMA1_carry_n_0,D_PWMA1_carry_n_1,D_PWMA1_carry_n_2,D_PWMA1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({D_PWMA1_carry_i_1_n_0,D_PWMA1_carry__0_0}),
        .O(NLW_D_PWMA1_carry_O_UNCONNECTED[3:0]),
        .S({D_PWMA1_carry_i_5_n_0,D_PWMA1_carry__0_1,D_PWMA1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMA1_carry__0
       (.CI(D_PWMA1_carry_n_0),
        .CO({D_PWMA1_carry__0_n_0,D_PWMA1_carry__0_n_1,D_PWMA1_carry__0_n_2,D_PWMA1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_D_PWMA1_carry__0_O_UNCONNECTED[3:0]),
        .S({D_PWMA1_carry__0_i_1_n_0,D_PWMA1_carry__0_i_2_n_0,D_PWMA1_carry__0_i_3_n_0,D_PWMA1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__0_i_1
       (.I0(counter_signed_reg[15]),
        .I1(counter_signed_reg[14]),
        .O(D_PWMA1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__0_i_2
       (.I0(counter_signed_reg[13]),
        .I1(counter_signed_reg[12]),
        .O(D_PWMA1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__0_i_3
       (.I0(counter_signed_reg[11]),
        .I1(counter_signed_reg[10]),
        .O(D_PWMA1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__0_i_4
       (.I0(counter_signed_reg[9]),
        .I1(counter_signed_reg[8]),
        .O(D_PWMA1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMA1_carry__1
       (.CI(D_PWMA1_carry__0_n_0),
        .CO({D_PWMA1_carry__1_n_0,D_PWMA1_carry__1_n_1,D_PWMA1_carry__1_n_2,D_PWMA1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_D_PWMA1_carry__1_O_UNCONNECTED[3:0]),
        .S({D_PWMA1_carry__1_i_1_n_0,D_PWMA1_carry__1_i_2_n_0,D_PWMA1_carry__1_i_3_n_0,D_PWMA1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__1_i_1
       (.I0(counter_signed_reg[23]),
        .I1(counter_signed_reg[22]),
        .O(D_PWMA1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__1_i_2
       (.I0(counter_signed_reg[21]),
        .I1(counter_signed_reg[20]),
        .O(D_PWMA1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__1_i_3
       (.I0(counter_signed_reg[19]),
        .I1(counter_signed_reg[18]),
        .O(D_PWMA1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__1_i_4
       (.I0(counter_signed_reg[17]),
        .I1(counter_signed_reg[16]),
        .O(D_PWMA1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMA1_carry__2
       (.CI(D_PWMA1_carry__1_n_0),
        .CO({\counter_signed_reg[31]_0 ,D_PWMA1_carry__2_n_1,D_PWMA1_carry__2_n_2,D_PWMA1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counter_signed_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_D_PWMA1_carry__2_O_UNCONNECTED[3:0]),
        .S({D_PWMA1_carry__2_i_1_n_0,D_PWMA1_carry__2_i_2_n_0,D_PWMA1_carry__2_i_3_n_0,D_PWMA1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__2_i_1
       (.I0(counter_signed_reg[30]),
        .I1(counter_signed_reg[31]),
        .O(D_PWMA1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__2_i_2
       (.I0(counter_signed_reg[29]),
        .I1(counter_signed_reg[28]),
        .O(D_PWMA1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__2_i_3
       (.I0(counter_signed_reg[27]),
        .I1(counter_signed_reg[26]),
        .O(D_PWMA1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMA1_carry__2_i_4
       (.I0(counter_signed_reg[25]),
        .I1(counter_signed_reg[24]),
        .O(D_PWMA1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    D_PWMA1_carry_i_1
       (.I0(D_PWMA1_carry_0[5]),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .O(D_PWMA1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    D_PWMA1_carry_i_5
       (.I0(D_PWMA1_carry_0[5]),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .O(D_PWMA1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    D_PWMA1_carry_i_8
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .I2(D_PWMA1_carry_0[3]),
        .I3(D_PWMA1_carry_0[4]),
        .O(D_PWMA1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMA1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\D_PWMA1_inferred__0/i__carry_n_0 ,\D_PWMA1_inferred__0/i__carry_n_1 ,\D_PWMA1_inferred__0/i__carry_n_2 ,\D_PWMA1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\D_PWMA1_inferred__0/i__carry__0_0 ),
        .O(\NLW_D_PWMA1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({\D_PWMA1_inferred__0/i__carry__0_1 ,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMA1_inferred__0/i__carry__0 
       (.CI(\D_PWMA1_inferred__0/i__carry_n_0 ),
        .CO({\D_PWMA1_inferred__0/i__carry__0_n_0 ,\D_PWMA1_inferred__0/i__carry__0_n_1 ,\D_PWMA1_inferred__0/i__carry__0_n_2 ,\D_PWMA1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\D_PWMA1_inferred__0/i__carry__1_0 ),
        .O(\NLW_D_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\D_PWMA1_inferred__0/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMA1_inferred__0/i__carry__1 
       (.CI(\D_PWMA1_inferred__0/i__carry__0_n_0 ),
        .CO({\D_PWMA1_inferred__0/i__carry__1_n_0 ,\D_PWMA1_inferred__0/i__carry__1_n_1 ,\D_PWMA1_inferred__0/i__carry__1_n_2 ,\D_PWMA1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\D_PWMA1_inferred__0/i__carry__2_0 ),
        .O(\NLW_D_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\D_PWMA1_inferred__0/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMA1_inferred__0/i__carry__2 
       (.CI(\D_PWMA1_inferred__0/i__carry__1_n_0 ),
        .CO({\slv_reg1_reg[28] ,\D_PWMA1_inferred__0/i__carry__2_n_1 ,\D_PWMA1_inferred__0/i__carry__2_n_2 ,\D_PWMA1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(D_PWMA_reg_1),
        .O(\NLW_D_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S(D_PWMA_reg_2));
  FDCE D_PWMA_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(D_PWMA_reg_0),
        .Q(D_PWMA));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMB1_carry
       (.CI(1'b0),
        .CO({D_PWMB1_carry_n_0,D_PWMB1_carry_n_1,D_PWMB1_carry_n_2,D_PWMB1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({D_PWMB1_carry_i_1_n_0,D_PWMB1_carry__0_0}),
        .O(NLW_D_PWMB1_carry_O_UNCONNECTED[3:0]),
        .S({D_PWMB1_carry_i_5_n_0,D_PWMB1_carry__0_1,D_PWMB1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMB1_carry__0
       (.CI(D_PWMB1_carry_n_0),
        .CO({D_PWMB1_carry__0_n_0,D_PWMB1_carry__0_n_1,D_PWMB1_carry__0_n_2,D_PWMB1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_D_PWMB1_carry__0_O_UNCONNECTED[3:0]),
        .S({D_PWMB1_carry__0_i_1_n_0,D_PWMB1_carry__0_i_2_n_0,D_PWMB1_carry__0_i_3_n_0,D_PWMB1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__0_i_1
       (.I0(counter_signed_reg[15]),
        .I1(counter_signed_reg[14]),
        .O(D_PWMB1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__0_i_2
       (.I0(counter_signed_reg[13]),
        .I1(counter_signed_reg[12]),
        .O(D_PWMB1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__0_i_3
       (.I0(counter_signed_reg[11]),
        .I1(counter_signed_reg[10]),
        .O(D_PWMB1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__0_i_4
       (.I0(counter_signed_reg[9]),
        .I1(counter_signed_reg[8]),
        .O(D_PWMB1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMB1_carry__1
       (.CI(D_PWMB1_carry__0_n_0),
        .CO({D_PWMB1_carry__1_n_0,D_PWMB1_carry__1_n_1,D_PWMB1_carry__1_n_2,D_PWMB1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_D_PWMB1_carry__1_O_UNCONNECTED[3:0]),
        .S({D_PWMB1_carry__1_i_1_n_0,D_PWMB1_carry__1_i_2_n_0,D_PWMB1_carry__1_i_3_n_0,D_PWMB1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__1_i_1
       (.I0(counter_signed_reg[23]),
        .I1(counter_signed_reg[22]),
        .O(D_PWMB1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__1_i_2
       (.I0(counter_signed_reg[21]),
        .I1(counter_signed_reg[20]),
        .O(D_PWMB1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__1_i_3
       (.I0(counter_signed_reg[19]),
        .I1(counter_signed_reg[18]),
        .O(D_PWMB1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__1_i_4
       (.I0(counter_signed_reg[17]),
        .I1(counter_signed_reg[16]),
        .O(D_PWMB1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 D_PWMB1_carry__2
       (.CI(D_PWMB1_carry__1_n_0),
        .CO({\counter_signed_reg[31]_1 ,D_PWMB1_carry__2_n_1,D_PWMB1_carry__2_n_2,D_PWMB1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counter_signed_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_D_PWMB1_carry__2_O_UNCONNECTED[3:0]),
        .S({D_PWMB1_carry__2_i_1_n_0,D_PWMB1_carry__2_i_2_n_0,D_PWMB1_carry__2_i_3_n_0,D_PWMB1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__2_i_1
       (.I0(counter_signed_reg[30]),
        .I1(counter_signed_reg[31]),
        .O(D_PWMB1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__2_i_2
       (.I0(counter_signed_reg[29]),
        .I1(counter_signed_reg[28]),
        .O(D_PWMB1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__2_i_3
       (.I0(counter_signed_reg[27]),
        .I1(counter_signed_reg[26]),
        .O(D_PWMB1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    D_PWMB1_carry__2_i_4
       (.I0(counter_signed_reg[25]),
        .I1(counter_signed_reg[24]),
        .O(D_PWMB1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    D_PWMB1_carry_i_1
       (.I0(D_PWMA1_carry_0[2]),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .O(D_PWMB1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    D_PWMB1_carry_i_5
       (.I0(D_PWMA1_carry_0[2]),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .O(D_PWMB1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    D_PWMB1_carry_i_8
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .I2(D_PWMA1_carry_0[0]),
        .I3(D_PWMA1_carry_0[1]),
        .O(D_PWMB1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMB1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\D_PWMB1_inferred__0/i__carry_n_0 ,\D_PWMB1_inferred__0/i__carry_n_1 ,\D_PWMB1_inferred__0/i__carry_n_2 ,\D_PWMB1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\D_PWMB1_inferred__0/i__carry__0_0 ),
        .O(\NLW_D_PWMB1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({\D_PWMB1_inferred__0/i__carry__0_1 ,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMB1_inferred__0/i__carry__0 
       (.CI(\D_PWMB1_inferred__0/i__carry_n_0 ),
        .CO({\D_PWMB1_inferred__0/i__carry__0_n_0 ,\D_PWMB1_inferred__0/i__carry__0_n_1 ,\D_PWMB1_inferred__0/i__carry__0_n_2 ,\D_PWMB1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\D_PWMB1_inferred__0/i__carry__1_0 ),
        .O(\NLW_D_PWMB1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\D_PWMB1_inferred__0/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMB1_inferred__0/i__carry__1 
       (.CI(\D_PWMB1_inferred__0/i__carry__0_n_0 ),
        .CO({\D_PWMB1_inferred__0/i__carry__1_n_0 ,\D_PWMB1_inferred__0/i__carry__1_n_1 ,\D_PWMB1_inferred__0/i__carry__1_n_2 ,\D_PWMB1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\D_PWMB1_inferred__0/i__carry__2_0 ),
        .O(\NLW_D_PWMB1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\D_PWMB1_inferred__0/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \D_PWMB1_inferred__0/i__carry__2 
       (.CI(\D_PWMB1_inferred__0/i__carry__1_n_0 ),
        .CO({\slv_reg1_reg[9] ,\D_PWMB1_inferred__0/i__carry__2_n_1 ,\D_PWMB1_inferred__0/i__carry__2_n_2 ,\D_PWMB1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(D_PWMB_reg_1),
        .O(\NLW_D_PWMB1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S(D_PWMB_reg_2));
  FDCE D_PWMB_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(D_PWMB_reg_0),
        .Q(D_PWMB));
  FDCE S_AIN1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(S_AIN19_out),
        .Q(S_AIN1));
  FDCE S_AIN2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(S_AIN27_out),
        .Q(S_AIN2));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_PWMA1_carry
       (.CI(1'b0),
        .CO({S_PWMA1_carry_n_0,S_PWMA1_carry_n_1,S_PWMA1_carry_n_2,S_PWMA1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({S_PWMA1_carry_i_1_n_0,S_PWMA1_carry_i_2_n_0,S_PWMA1_carry_i_3_n_0,S_PWMA1_carry_i_4_n_0}),
        .O(NLW_S_PWMA1_carry_O_UNCONNECTED[3:0]),
        .S({S_PWMA1_carry_i_5_n_0,S_PWMA1_carry_i_6_n_0,S_PWMA1_carry_i_7_n_0,S_PWMA1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_PWMA1_carry__0
       (.CI(S_PWMA1_carry_n_0),
        .CO({S_PWMA1_carry__0_n_0,S_PWMA1_carry__0_n_1,S_PWMA1_carry__0_n_2,S_PWMA1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_S_PWMA1_carry__0_O_UNCONNECTED[3:0]),
        .S({S_PWMA1_carry__0_i_1_n_0,S_PWMA1_carry__0_i_2_n_0,S_PWMA1_carry__0_i_3_n_0,S_PWMA1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__0_i_1
       (.I0(counter_signed_reg[15]),
        .I1(counter_signed_reg[14]),
        .O(S_PWMA1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__0_i_2
       (.I0(counter_signed_reg[13]),
        .I1(counter_signed_reg[12]),
        .O(S_PWMA1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__0_i_3
       (.I0(counter_signed_reg[11]),
        .I1(counter_signed_reg[10]),
        .O(S_PWMA1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__0_i_4
       (.I0(counter_signed_reg[9]),
        .I1(counter_signed_reg[8]),
        .O(S_PWMA1_carry__0_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_PWMA1_carry__1
       (.CI(S_PWMA1_carry__0_n_0),
        .CO({S_PWMA1_carry__1_n_0,S_PWMA1_carry__1_n_1,S_PWMA1_carry__1_n_2,S_PWMA1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_S_PWMA1_carry__1_O_UNCONNECTED[3:0]),
        .S({S_PWMA1_carry__1_i_1_n_0,S_PWMA1_carry__1_i_2_n_0,S_PWMA1_carry__1_i_3_n_0,S_PWMA1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__1_i_1
       (.I0(counter_signed_reg[23]),
        .I1(counter_signed_reg[22]),
        .O(S_PWMA1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__1_i_2
       (.I0(counter_signed_reg[21]),
        .I1(counter_signed_reg[20]),
        .O(S_PWMA1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__1_i_3
       (.I0(counter_signed_reg[19]),
        .I1(counter_signed_reg[18]),
        .O(S_PWMA1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__1_i_4
       (.I0(counter_signed_reg[17]),
        .I1(counter_signed_reg[16]),
        .O(S_PWMA1_carry__1_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_PWMA1_carry__2
       (.CI(S_PWMA1_carry__1_n_0),
        .CO({S_PWMA1,S_PWMA1_carry__2_n_1,S_PWMA1_carry__2_n_2,S_PWMA1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({counter_signed_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_S_PWMA1_carry__2_O_UNCONNECTED[3:0]),
        .S({S_PWMA1_carry__2_i_1_n_0,S_PWMA1_carry__2_i_2_n_0,S_PWMA1_carry__2_i_3_n_0,S_PWMA1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__2_i_1
       (.I0(counter_signed_reg[30]),
        .I1(counter_signed_reg[31]),
        .O(S_PWMA1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__2_i_2
       (.I0(counter_signed_reg[29]),
        .I1(counter_signed_reg[28]),
        .O(S_PWMA1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__2_i_3
       (.I0(counter_signed_reg[27]),
        .I1(counter_signed_reg[26]),
        .O(S_PWMA1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    S_PWMA1_carry__2_i_4
       (.I0(counter_signed_reg[25]),
        .I1(counter_signed_reg[24]),
        .O(S_PWMA1_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    S_PWMA1_carry_i_1
       (.I0(Q[27]),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .O(S_PWMA1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    S_PWMA1_carry_i_2
       (.I0(counter_signed_reg[5]),
        .I1(Q[25]),
        .I2(Q[26]),
        .I3(counter_signed_reg[4]),
        .O(S_PWMA1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h50D4)) 
    S_PWMA1_carry_i_3
       (.I0(counter_signed_reg[3]),
        .I1(Q[23]),
        .I2(Q[24]),
        .I3(counter_signed_reg[2]),
        .O(S_PWMA1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    S_PWMA1_carry_i_4
       (.I0(counter_signed_reg[1]),
        .I1(counter_signed_reg[0]),
        .I2(Q[21]),
        .I3(Q[22]),
        .O(S_PWMA1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    S_PWMA1_carry_i_5
       (.I0(Q[27]),
        .I1(counter_signed_reg[7]),
        .I2(counter_signed_reg[6]),
        .O(S_PWMA1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_PWMA1_carry_i_6
       (.I0(counter_signed_reg[4]),
        .I1(Q[25]),
        .I2(counter_signed_reg[5]),
        .I3(Q[26]),
        .O(S_PWMA1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_PWMA1_carry_i_7
       (.I0(counter_signed_reg[2]),
        .I1(Q[23]),
        .I2(counter_signed_reg[3]),
        .I3(Q[24]),
        .O(S_PWMA1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    S_PWMA1_carry_i_8
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .I2(Q[21]),
        .I3(Q[22]),
        .O(S_PWMA1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \S_PWMA1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\S_PWMA1_inferred__0/i__carry_n_0 ,\S_PWMA1_inferred__0/i__carry_n_1 ,\S_PWMA1_inferred__0/i__carry_n_2 ,\S_PWMA1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\S_PWMA1_inferred__0/i__carry__0_0 ),
        .O(\NLW_S_PWMA1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({\S_PWMA1_inferred__0/i__carry__0_1 ,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \S_PWMA1_inferred__0/i__carry__0 
       (.CI(\S_PWMA1_inferred__0/i__carry_n_0 ),
        .CO({\S_PWMA1_inferred__0/i__carry__0_n_0 ,\S_PWMA1_inferred__0/i__carry__0_n_1 ,\S_PWMA1_inferred__0/i__carry__0_n_2 ,\S_PWMA1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\S_PWMA1_inferred__0/i__carry__1_0 ),
        .O(\NLW_S_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\S_PWMA1_inferred__0/i__carry__1_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \S_PWMA1_inferred__0/i__carry__1 
       (.CI(\S_PWMA1_inferred__0/i__carry__0_n_0 ),
        .CO({\S_PWMA1_inferred__0/i__carry__1_n_0 ,\S_PWMA1_inferred__0/i__carry__1_n_1 ,\S_PWMA1_inferred__0/i__carry__1_n_2 ,\S_PWMA1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(\S_PWMA1_inferred__0/i__carry__2_0 ),
        .O(\NLW_S_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S(\S_PWMA1_inferred__0/i__carry__2_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \S_PWMA1_inferred__0/i__carry__2 
       (.CI(\S_PWMA1_inferred__0/i__carry__1_n_0 ),
        .CO({S_PWMA110_in,\S_PWMA1_inferred__0/i__carry__2_n_1 ,\S_PWMA1_inferred__0/i__carry__2_n_2 ,\S_PWMA1_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(S_PWMA_reg_0),
        .O(\NLW_S_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S(S));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    S_PWMA_i_1
       (.I0(S_PWMA1),
        .I1(S_PWMA110_in),
        .I2(CO),
        .I3(steer_enable),
        .O(S_PWMA_i_1_n_0));
  FDCE S_PWMA_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(S_PWMA_i_1_n_0),
        .Q(S_PWMA));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_signed1_carry
       (.CI(1'b0),
        .CO({counter_signed1_carry_n_0,counter_signed1_carry_n_1,counter_signed1_carry_n_2,counter_signed1_carry_n_3}),
        .CYINIT(counter_signed1_carry_i_1_n_0),
        .DI({counter_signed1_carry_i_2_n_0,counter_signed_reg[7],1'b0,1'b0}),
        .O(NLW_counter_signed1_carry_O_UNCONNECTED[3:0]),
        .S({counter_signed1_carry_i_3_n_0,counter_signed1_carry_i_4_n_0,counter_signed1_carry_i_5_n_0,counter_signed1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_signed1_carry__0
       (.CI(counter_signed1_carry_n_0),
        .CO({counter_signed1_carry__0_n_0,counter_signed1_carry__0_n_1,counter_signed1_carry__0_n_2,counter_signed1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({counter_signed1_carry__0_i_1_n_0,counter_signed1_carry__0_i_2_n_0,counter_signed1_carry__0_i_3_n_0,counter_signed1_carry__0_i_4_n_0}),
        .O(NLW_counter_signed1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter_signed1_carry__0_i_5_n_0,counter_signed1_carry__0_i_6_n_0,counter_signed1_carry__0_i_7_n_0,counter_signed1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__0_i_1
       (.I0(counter_signed_reg[16]),
        .I1(counter_signed_reg[17]),
        .O(counter_signed1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__0_i_2
       (.I0(counter_signed_reg[14]),
        .I1(counter_signed_reg[15]),
        .O(counter_signed1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__0_i_3
       (.I0(counter_signed_reg[12]),
        .I1(counter_signed_reg[13]),
        .O(counter_signed1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__0_i_4
       (.I0(counter_signed_reg[10]),
        .I1(counter_signed_reg[11]),
        .O(counter_signed1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__0_i_5
       (.I0(counter_signed_reg[17]),
        .I1(counter_signed_reg[16]),
        .O(counter_signed1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__0_i_6
       (.I0(counter_signed_reg[15]),
        .I1(counter_signed_reg[14]),
        .O(counter_signed1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__0_i_7
       (.I0(counter_signed_reg[13]),
        .I1(counter_signed_reg[12]),
        .O(counter_signed1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__0_i_8
       (.I0(counter_signed_reg[11]),
        .I1(counter_signed_reg[10]),
        .O(counter_signed1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_signed1_carry__1
       (.CI(counter_signed1_carry__0_n_0),
        .CO({counter_signed1_carry__1_n_0,counter_signed1_carry__1_n_1,counter_signed1_carry__1_n_2,counter_signed1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({counter_signed1_carry__1_i_1_n_0,counter_signed1_carry__1_i_2_n_0,counter_signed1_carry__1_i_3_n_0,counter_signed1_carry__1_i_4_n_0}),
        .O(NLW_counter_signed1_carry__1_O_UNCONNECTED[3:0]),
        .S({counter_signed1_carry__1_i_5_n_0,counter_signed1_carry__1_i_6_n_0,counter_signed1_carry__1_i_7_n_0,counter_signed1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__1_i_1
       (.I0(counter_signed_reg[24]),
        .I1(counter_signed_reg[25]),
        .O(counter_signed1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__1_i_2
       (.I0(counter_signed_reg[22]),
        .I1(counter_signed_reg[23]),
        .O(counter_signed1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__1_i_3
       (.I0(counter_signed_reg[20]),
        .I1(counter_signed_reg[21]),
        .O(counter_signed1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__1_i_4
       (.I0(counter_signed_reg[18]),
        .I1(counter_signed_reg[19]),
        .O(counter_signed1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__1_i_5
       (.I0(counter_signed_reg[25]),
        .I1(counter_signed_reg[24]),
        .O(counter_signed1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__1_i_6
       (.I0(counter_signed_reg[23]),
        .I1(counter_signed_reg[22]),
        .O(counter_signed1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__1_i_7
       (.I0(counter_signed_reg[21]),
        .I1(counter_signed_reg[20]),
        .O(counter_signed1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__1_i_8
       (.I0(counter_signed_reg[19]),
        .I1(counter_signed_reg[18]),
        .O(counter_signed1_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 counter_signed1_carry__2
       (.CI(counter_signed1_carry__1_n_0),
        .CO({NLW_counter_signed1_carry__2_CO_UNCONNECTED[3],load,counter_signed1_carry__2_n_2,counter_signed1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_signed1_carry__2_i_1_n_0,counter_signed1_carry__2_i_2_n_0,counter_signed1_carry__2_i_3_n_0}),
        .O(NLW_counter_signed1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,counter_signed1_carry__2_i_4_n_0,counter_signed1_carry__2_i_5_n_0,counter_signed1_carry__2_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    counter_signed1_carry__2_i_1
       (.I0(counter_signed_reg[30]),
        .I1(counter_signed_reg[31]),
        .O(counter_signed1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__2_i_2
       (.I0(counter_signed_reg[28]),
        .I1(counter_signed_reg[29]),
        .O(counter_signed1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry__2_i_3
       (.I0(counter_signed_reg[26]),
        .I1(counter_signed_reg[27]),
        .O(counter_signed1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__2_i_4
       (.I0(counter_signed_reg[30]),
        .I1(counter_signed_reg[31]),
        .O(counter_signed1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__2_i_5
       (.I0(counter_signed_reg[29]),
        .I1(counter_signed_reg[28]),
        .O(counter_signed1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry__2_i_6
       (.I0(counter_signed_reg[27]),
        .I1(counter_signed_reg[26]),
        .O(counter_signed1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter_signed1_carry_i_1
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .O(counter_signed1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    counter_signed1_carry_i_2
       (.I0(counter_signed_reg[8]),
        .I1(counter_signed_reg[9]),
        .O(counter_signed1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    counter_signed1_carry_i_3
       (.I0(counter_signed_reg[9]),
        .I1(counter_signed_reg[8]),
        .O(counter_signed1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    counter_signed1_carry_i_4
       (.I0(counter_signed_reg[6]),
        .I1(counter_signed_reg[7]),
        .O(counter_signed1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter_signed1_carry_i_5
       (.I0(counter_signed_reg[4]),
        .I1(counter_signed_reg[5]),
        .O(counter_signed1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    counter_signed1_carry_i_6
       (.I0(counter_signed_reg[2]),
        .I1(counter_signed_reg[3]),
        .O(counter_signed1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    \counter_signed[0]_i_1 
       (.I0(\prescale_cnt[2]_i_2_n_0 ),
        .I1(prescale_cnt[1]),
        .I2(prescale_cnt[2]),
        .I3(prescale_cnt[0]),
        .O(counter_signed));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_signed[0]_i_3 
       (.I0(load),
        .O(\counter_signed[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_signed[0]_i_4 
       (.I0(counter_signed_reg[3]),
        .I1(load),
        .O(\counter_signed[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_signed[0]_i_5 
       (.I0(counter_signed_reg[2]),
        .I1(load),
        .O(\counter_signed[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_signed[0]_i_6 
       (.I0(counter_signed_reg[1]),
        .I1(load),
        .O(\counter_signed[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter_signed[0]_i_7 
       (.I0(counter_signed_reg[0]),
        .I1(load),
        .O(\counter_signed[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[12]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[15]),
        .O(\counter_signed[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[12]_i_3 
       (.I0(load),
        .I1(counter_signed_reg[14]),
        .O(\counter_signed[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[12]_i_4 
       (.I0(load),
        .I1(counter_signed_reg[13]),
        .O(\counter_signed[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[12]_i_5 
       (.I0(load),
        .I1(counter_signed_reg[12]),
        .O(\counter_signed[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[16]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[19]),
        .O(\counter_signed[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[16]_i_3 
       (.I0(load),
        .I1(counter_signed_reg[18]),
        .O(\counter_signed[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[16]_i_4 
       (.I0(load),
        .I1(counter_signed_reg[17]),
        .O(\counter_signed[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[16]_i_5 
       (.I0(load),
        .I1(counter_signed_reg[16]),
        .O(\counter_signed[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[20]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[23]),
        .O(\counter_signed[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[20]_i_3 
       (.I0(load),
        .I1(counter_signed_reg[22]),
        .O(\counter_signed[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[20]_i_4 
       (.I0(load),
        .I1(counter_signed_reg[21]),
        .O(\counter_signed[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[20]_i_5 
       (.I0(load),
        .I1(counter_signed_reg[20]),
        .O(\counter_signed[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[24]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[27]),
        .O(\counter_signed[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[24]_i_3 
       (.I0(load),
        .I1(counter_signed_reg[26]),
        .O(\counter_signed[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[24]_i_4 
       (.I0(load),
        .I1(counter_signed_reg[25]),
        .O(\counter_signed[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[24]_i_5 
       (.I0(load),
        .I1(counter_signed_reg[24]),
        .O(\counter_signed[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[28]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[31]),
        .O(\counter_signed[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[28]_i_3 
       (.I0(load),
        .I1(counter_signed_reg[30]),
        .O(\counter_signed[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[28]_i_4 
       (.I0(load),
        .I1(counter_signed_reg[29]),
        .O(\counter_signed[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[28]_i_5 
       (.I0(load),
        .I1(counter_signed_reg[28]),
        .O(\counter_signed[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[4]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[7]),
        .O(\counter_signed[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_signed[4]_i_3 
       (.I0(counter_signed_reg[6]),
        .I1(load),
        .O(\counter_signed[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_signed[4]_i_4 
       (.I0(counter_signed_reg[5]),
        .I1(load),
        .O(\counter_signed[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_signed[4]_i_5 
       (.I0(counter_signed_reg[4]),
        .I1(load),
        .O(\counter_signed[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[8]_i_2 
       (.I0(load),
        .I1(counter_signed_reg[11]),
        .O(\counter_signed[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[8]_i_3 
       (.I0(load),
        .I1(counter_signed_reg[10]),
        .O(\counter_signed[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[8]_i_4 
       (.I0(load),
        .I1(counter_signed_reg[9]),
        .O(\counter_signed[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_signed[8]_i_5 
       (.I0(load),
        .I1(counter_signed_reg[8]),
        .O(\counter_signed[8]_i_5_n_0 ));
  FDCE \counter_signed_reg[0] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[0]_i_2_n_7 ),
        .Q(counter_signed_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_signed_reg[0]_i_2_n_0 ,\counter_signed_reg[0]_i_2_n_1 ,\counter_signed_reg[0]_i_2_n_2 ,\counter_signed_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_signed[0]_i_3_n_0 }),
        .O({\counter_signed_reg[0]_i_2_n_4 ,\counter_signed_reg[0]_i_2_n_5 ,\counter_signed_reg[0]_i_2_n_6 ,\counter_signed_reg[0]_i_2_n_7 }),
        .S({\counter_signed[0]_i_4_n_0 ,\counter_signed[0]_i_5_n_0 ,\counter_signed[0]_i_6_n_0 ,\counter_signed[0]_i_7_n_0 }));
  FDPE \counter_signed_reg[10] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[8]_i_1_n_5 ),
        .PRE(SR),
        .Q(counter_signed_reg[10]));
  FDPE \counter_signed_reg[11] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[8]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[11]));
  FDPE \counter_signed_reg[12] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[12]_i_1_n_7 ),
        .PRE(SR),
        .Q(counter_signed_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[12]_i_1 
       (.CI(\counter_signed_reg[8]_i_1_n_0 ),
        .CO({\counter_signed_reg[12]_i_1_n_0 ,\counter_signed_reg[12]_i_1_n_1 ,\counter_signed_reg[12]_i_1_n_2 ,\counter_signed_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[12]_i_1_n_4 ,\counter_signed_reg[12]_i_1_n_5 ,\counter_signed_reg[12]_i_1_n_6 ,\counter_signed_reg[12]_i_1_n_7 }),
        .S({\counter_signed[12]_i_2_n_0 ,\counter_signed[12]_i_3_n_0 ,\counter_signed[12]_i_4_n_0 ,\counter_signed[12]_i_5_n_0 }));
  FDPE \counter_signed_reg[13] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[12]_i_1_n_6 ),
        .PRE(SR),
        .Q(counter_signed_reg[13]));
  FDPE \counter_signed_reg[14] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[12]_i_1_n_5 ),
        .PRE(SR),
        .Q(counter_signed_reg[14]));
  FDPE \counter_signed_reg[15] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[12]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[15]));
  FDPE \counter_signed_reg[16] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[16]_i_1_n_7 ),
        .PRE(SR),
        .Q(counter_signed_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[16]_i_1 
       (.CI(\counter_signed_reg[12]_i_1_n_0 ),
        .CO({\counter_signed_reg[16]_i_1_n_0 ,\counter_signed_reg[16]_i_1_n_1 ,\counter_signed_reg[16]_i_1_n_2 ,\counter_signed_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[16]_i_1_n_4 ,\counter_signed_reg[16]_i_1_n_5 ,\counter_signed_reg[16]_i_1_n_6 ,\counter_signed_reg[16]_i_1_n_7 }),
        .S({\counter_signed[16]_i_2_n_0 ,\counter_signed[16]_i_3_n_0 ,\counter_signed[16]_i_4_n_0 ,\counter_signed[16]_i_5_n_0 }));
  FDPE \counter_signed_reg[17] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[16]_i_1_n_6 ),
        .PRE(SR),
        .Q(counter_signed_reg[17]));
  FDPE \counter_signed_reg[18] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[16]_i_1_n_5 ),
        .PRE(SR),
        .Q(counter_signed_reg[18]));
  FDPE \counter_signed_reg[19] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[16]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[19]));
  FDCE \counter_signed_reg[1] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[0]_i_2_n_6 ),
        .Q(counter_signed_reg[1]));
  FDPE \counter_signed_reg[20] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[20]_i_1_n_7 ),
        .PRE(SR),
        .Q(counter_signed_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[20]_i_1 
       (.CI(\counter_signed_reg[16]_i_1_n_0 ),
        .CO({\counter_signed_reg[20]_i_1_n_0 ,\counter_signed_reg[20]_i_1_n_1 ,\counter_signed_reg[20]_i_1_n_2 ,\counter_signed_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[20]_i_1_n_4 ,\counter_signed_reg[20]_i_1_n_5 ,\counter_signed_reg[20]_i_1_n_6 ,\counter_signed_reg[20]_i_1_n_7 }),
        .S({\counter_signed[20]_i_2_n_0 ,\counter_signed[20]_i_3_n_0 ,\counter_signed[20]_i_4_n_0 ,\counter_signed[20]_i_5_n_0 }));
  FDPE \counter_signed_reg[21] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[20]_i_1_n_6 ),
        .PRE(SR),
        .Q(counter_signed_reg[21]));
  FDPE \counter_signed_reg[22] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[20]_i_1_n_5 ),
        .PRE(SR),
        .Q(counter_signed_reg[22]));
  FDPE \counter_signed_reg[23] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[20]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[23]));
  FDPE \counter_signed_reg[24] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[24]_i_1_n_7 ),
        .PRE(SR),
        .Q(counter_signed_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[24]_i_1 
       (.CI(\counter_signed_reg[20]_i_1_n_0 ),
        .CO({\counter_signed_reg[24]_i_1_n_0 ,\counter_signed_reg[24]_i_1_n_1 ,\counter_signed_reg[24]_i_1_n_2 ,\counter_signed_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[24]_i_1_n_4 ,\counter_signed_reg[24]_i_1_n_5 ,\counter_signed_reg[24]_i_1_n_6 ,\counter_signed_reg[24]_i_1_n_7 }),
        .S({\counter_signed[24]_i_2_n_0 ,\counter_signed[24]_i_3_n_0 ,\counter_signed[24]_i_4_n_0 ,\counter_signed[24]_i_5_n_0 }));
  FDPE \counter_signed_reg[25] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[24]_i_1_n_6 ),
        .PRE(SR),
        .Q(counter_signed_reg[25]));
  FDPE \counter_signed_reg[26] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[24]_i_1_n_5 ),
        .PRE(SR),
        .Q(counter_signed_reg[26]));
  FDPE \counter_signed_reg[27] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[24]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[27]));
  FDPE \counter_signed_reg[28] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[28]_i_1_n_7 ),
        .PRE(SR),
        .Q(counter_signed_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[28]_i_1 
       (.CI(\counter_signed_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_signed_reg[28]_i_1_CO_UNCONNECTED [3],\counter_signed_reg[28]_i_1_n_1 ,\counter_signed_reg[28]_i_1_n_2 ,\counter_signed_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[28]_i_1_n_4 ,\counter_signed_reg[28]_i_1_n_5 ,\counter_signed_reg[28]_i_1_n_6 ,\counter_signed_reg[28]_i_1_n_7 }),
        .S({\counter_signed[28]_i_2_n_0 ,\counter_signed[28]_i_3_n_0 ,\counter_signed[28]_i_4_n_0 ,\counter_signed[28]_i_5_n_0 }));
  FDPE \counter_signed_reg[29] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[28]_i_1_n_6 ),
        .PRE(SR),
        .Q(counter_signed_reg[29]));
  FDCE \counter_signed_reg[2] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[0]_i_2_n_5 ),
        .Q(counter_signed_reg[2]));
  FDPE \counter_signed_reg[30] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[28]_i_1_n_5 ),
        .PRE(SR),
        .Q(counter_signed_reg[30]));
  FDPE \counter_signed_reg[31] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[28]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[31]));
  FDCE \counter_signed_reg[3] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[0]_i_2_n_4 ),
        .Q(counter_signed_reg[3]));
  FDCE \counter_signed_reg[4] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[4]_i_1_n_7 ),
        .Q(counter_signed_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[4]_i_1 
       (.CI(\counter_signed_reg[0]_i_2_n_0 ),
        .CO({\counter_signed_reg[4]_i_1_n_0 ,\counter_signed_reg[4]_i_1_n_1 ,\counter_signed_reg[4]_i_1_n_2 ,\counter_signed_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[4]_i_1_n_4 ,\counter_signed_reg[4]_i_1_n_5 ,\counter_signed_reg[4]_i_1_n_6 ,\counter_signed_reg[4]_i_1_n_7 }),
        .S({\counter_signed[4]_i_2_n_0 ,\counter_signed[4]_i_3_n_0 ,\counter_signed[4]_i_4_n_0 ,\counter_signed[4]_i_5_n_0 }));
  FDCE \counter_signed_reg[5] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[4]_i_1_n_6 ),
        .Q(counter_signed_reg[5]));
  FDCE \counter_signed_reg[6] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .CLR(SR),
        .D(\counter_signed_reg[4]_i_1_n_5 ),
        .Q(counter_signed_reg[6]));
  FDPE \counter_signed_reg[7] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[4]_i_1_n_4 ),
        .PRE(SR),
        .Q(counter_signed_reg[7]));
  FDPE \counter_signed_reg[8] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[8]_i_1_n_7 ),
        .PRE(SR),
        .Q(counter_signed_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_signed_reg[8]_i_1 
       (.CI(\counter_signed_reg[4]_i_1_n_0 ),
        .CO({\counter_signed_reg[8]_i_1_n_0 ,\counter_signed_reg[8]_i_1_n_1 ,\counter_signed_reg[8]_i_1_n_2 ,\counter_signed_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_signed_reg[8]_i_1_n_4 ,\counter_signed_reg[8]_i_1_n_5 ,\counter_signed_reg[8]_i_1_n_6 ,\counter_signed_reg[8]_i_1_n_7 }),
        .S({\counter_signed[8]_i_2_n_0 ,\counter_signed[8]_i_3_n_0 ,\counter_signed[8]_i_4_n_0 ,\counter_signed[8]_i_5_n_0 }));
  FDPE \counter_signed_reg[9] 
       (.C(s00_axi_aclk),
        .CE(counter_signed),
        .D(\counter_signed_reg[8]_i_1_n_6 ),
        .PRE(SR),
        .Q(counter_signed_reg[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \global_cnt[0]_i_2 
       (.I0(global_cnt_reg[0]),
        .O(\global_cnt[0]_i_2_n_0 ));
  FDCE \global_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[0]_i_1_n_7 ),
        .Q(global_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\global_cnt_reg[0]_i_1_n_0 ,\global_cnt_reg[0]_i_1_n_1 ,\global_cnt_reg[0]_i_1_n_2 ,\global_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\global_cnt_reg[0]_i_1_n_4 ,\global_cnt_reg[0]_i_1_n_5 ,\global_cnt_reg[0]_i_1_n_6 ,\global_cnt_reg[0]_i_1_n_7 }),
        .S({global_cnt_reg[3:1],\global_cnt[0]_i_2_n_0 }));
  FDCE \global_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[8]_i_1_n_5 ),
        .Q(global_cnt_reg[10]));
  FDCE \global_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[8]_i_1_n_4 ),
        .Q(global_cnt_reg[11]));
  FDCE \global_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[12]_i_1_n_7 ),
        .Q(global_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[12]_i_1 
       (.CI(\global_cnt_reg[8]_i_1_n_0 ),
        .CO({\global_cnt_reg[12]_i_1_n_0 ,\global_cnt_reg[12]_i_1_n_1 ,\global_cnt_reg[12]_i_1_n_2 ,\global_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_cnt_reg[12]_i_1_n_4 ,\global_cnt_reg[12]_i_1_n_5 ,\global_cnt_reg[12]_i_1_n_6 ,\global_cnt_reg[12]_i_1_n_7 }),
        .S(global_cnt_reg[15:12]));
  FDCE \global_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[12]_i_1_n_6 ),
        .Q(global_cnt_reg[13]));
  FDCE \global_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[12]_i_1_n_5 ),
        .Q(global_cnt_reg[14]));
  FDCE \global_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[12]_i_1_n_4 ),
        .Q(global_cnt_reg[15]));
  FDCE \global_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[16]_i_1_n_7 ),
        .Q(global_cnt_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[16]_i_1 
       (.CI(\global_cnt_reg[12]_i_1_n_0 ),
        .CO({\global_cnt_reg[16]_i_1_n_0 ,\global_cnt_reg[16]_i_1_n_1 ,\global_cnt_reg[16]_i_1_n_2 ,\global_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_cnt_reg[16]_i_1_n_4 ,\global_cnt_reg[16]_i_1_n_5 ,\global_cnt_reg[16]_i_1_n_6 ,\global_cnt_reg[16]_i_1_n_7 }),
        .S(global_cnt_reg[19:16]));
  FDCE \global_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[16]_i_1_n_6 ),
        .Q(global_cnt_reg[17]));
  FDCE \global_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[16]_i_1_n_5 ),
        .Q(global_cnt_reg[18]));
  FDCE \global_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[16]_i_1_n_4 ),
        .Q(global_cnt_reg[19]));
  FDCE \global_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[0]_i_1_n_6 ),
        .Q(global_cnt_reg[1]));
  FDCE \global_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[20]_i_1_n_7 ),
        .Q(global_cnt_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[20]_i_1 
       (.CI(\global_cnt_reg[16]_i_1_n_0 ),
        .CO({\global_cnt_reg[20]_i_1_n_0 ,\global_cnt_reg[20]_i_1_n_1 ,\global_cnt_reg[20]_i_1_n_2 ,\global_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_cnt_reg[20]_i_1_n_4 ,\global_cnt_reg[20]_i_1_n_5 ,\global_cnt_reg[20]_i_1_n_6 ,\global_cnt_reg[20]_i_1_n_7 }),
        .S(global_cnt_reg[23:20]));
  FDCE \global_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[20]_i_1_n_6 ),
        .Q(global_cnt_reg[21]));
  FDCE \global_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[20]_i_1_n_5 ),
        .Q(global_cnt_reg[22]));
  FDCE \global_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[20]_i_1_n_4 ),
        .Q(global_cnt_reg[23]));
  FDCE \global_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[24]_i_1_n_7 ),
        .Q(global_cnt_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[24]_i_1 
       (.CI(\global_cnt_reg[20]_i_1_n_0 ),
        .CO({\global_cnt_reg[24]_i_1_n_0 ,\global_cnt_reg[24]_i_1_n_1 ,\global_cnt_reg[24]_i_1_n_2 ,\global_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_cnt_reg[24]_i_1_n_4 ,\global_cnt_reg[24]_i_1_n_5 ,\global_cnt_reg[24]_i_1_n_6 ,\global_cnt_reg[24]_i_1_n_7 }),
        .S(global_cnt_reg[27:24]));
  FDCE \global_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[24]_i_1_n_6 ),
        .Q(global_cnt_reg[25]));
  FDCE \global_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[24]_i_1_n_5 ),
        .Q(global_cnt_reg[26]));
  FDCE \global_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[24]_i_1_n_4 ),
        .Q(global_cnt_reg[27]));
  FDCE \global_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[28]_i_1_n_7 ),
        .Q(global_cnt_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[28]_i_1 
       (.CI(\global_cnt_reg[24]_i_1_n_0 ),
        .CO(\NLW_global_cnt_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_global_cnt_reg[28]_i_1_O_UNCONNECTED [3:1],\global_cnt_reg[28]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,global_cnt_reg[28]}));
  FDCE \global_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[0]_i_1_n_5 ),
        .Q(global_cnt_reg[2]));
  FDCE \global_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[0]_i_1_n_4 ),
        .Q(global_cnt_reg[3]));
  FDCE \global_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[4]_i_1_n_7 ),
        .Q(global_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[4]_i_1 
       (.CI(\global_cnt_reg[0]_i_1_n_0 ),
        .CO({\global_cnt_reg[4]_i_1_n_0 ,\global_cnt_reg[4]_i_1_n_1 ,\global_cnt_reg[4]_i_1_n_2 ,\global_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_cnt_reg[4]_i_1_n_4 ,\global_cnt_reg[4]_i_1_n_5 ,\global_cnt_reg[4]_i_1_n_6 ,\global_cnt_reg[4]_i_1_n_7 }),
        .S(global_cnt_reg[7:4]));
  FDCE \global_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[4]_i_1_n_6 ),
        .Q(global_cnt_reg[5]));
  FDCE \global_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[4]_i_1_n_5 ),
        .Q(global_cnt_reg[6]));
  FDCE \global_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[4]_i_1_n_4 ),
        .Q(global_cnt_reg[7]));
  FDCE \global_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[8]_i_1_n_7 ),
        .Q(global_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \global_cnt_reg[8]_i_1 
       (.CI(\global_cnt_reg[4]_i_1_n_0 ),
        .CO({\global_cnt_reg[8]_i_1_n_0 ,\global_cnt_reg[8]_i_1_n_1 ,\global_cnt_reg[8]_i_1_n_2 ,\global_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\global_cnt_reg[8]_i_1_n_4 ,\global_cnt_reg[8]_i_1_n_5 ,\global_cnt_reg[8]_i_1_n_6 ,\global_cnt_reg[8]_i_1_n_7 }),
        .S(global_cnt_reg[11:8]));
  FDCE \global_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\global_cnt_reg[8]_i_1_n_6 ),
        .Q(global_cnt_reg[9]));
  LUT4 #(
    .INIT(16'h2481)) 
    i__carry_i_8
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .I2(Q[21]),
        .I3(Q[22]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h2481)) 
    i__carry_i_8__0
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .I2(D_PWMA1_carry_0[3]),
        .I3(D_PWMA1_carry_0[4]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h2481)) 
    i__carry_i_8__1
       (.I0(counter_signed_reg[0]),
        .I1(counter_signed_reg[1]),
        .I2(D_PWMA1_carry_0[0]),
        .I3(D_PWMA1_carry_0[1]),
        .O(i__carry_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    \prescale_cnt[0]_i_1 
       (.I0(\prescale_cnt[2]_i_2_n_0 ),
        .I1(prescale_cnt[1]),
        .I2(prescale_cnt[2]),
        .I3(prescale_cnt[0]),
        .O(prescale_cnt_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \prescale_cnt[1]_i_1 
       (.I0(prescale_cnt[0]),
        .I1(prescale_cnt[1]),
        .O(prescale_cnt_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h66C8)) 
    \prescale_cnt[2]_i_1 
       (.I0(prescale_cnt[0]),
        .I1(prescale_cnt[2]),
        .I2(\prescale_cnt[2]_i_2_n_0 ),
        .I3(prescale_cnt[1]),
        .O(prescale_cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \prescale_cnt[2]_i_2 
       (.I0(prescale_cnt[3]),
        .I1(prescale_cnt[6]),
        .I2(prescale_cnt[7]),
        .I3(prescale_cnt[5]),
        .I4(prescale_cnt[4]),
        .O(\prescale_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \prescale_cnt[3]_i_1 
       (.I0(prescale_cnt[0]),
        .I1(prescale_cnt[1]),
        .I2(prescale_cnt[2]),
        .I3(prescale_cnt[3]),
        .O(prescale_cnt_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \prescale_cnt[4]_i_1 
       (.I0(prescale_cnt[3]),
        .I1(prescale_cnt[2]),
        .I2(prescale_cnt[1]),
        .I3(prescale_cnt[0]),
        .I4(prescale_cnt[4]),
        .O(prescale_cnt_0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \prescale_cnt[5]_i_1 
       (.I0(prescale_cnt[4]),
        .I1(prescale_cnt[0]),
        .I2(prescale_cnt[1]),
        .I3(prescale_cnt[2]),
        .I4(prescale_cnt[3]),
        .I5(prescale_cnt[5]),
        .O(prescale_cnt_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_cnt[6]_i_1 
       (.I0(\prescale_cnt[7]_i_2_n_0 ),
        .I1(prescale_cnt[6]),
        .O(prescale_cnt_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \prescale_cnt[7]_i_1 
       (.I0(prescale_cnt[6]),
        .I1(\prescale_cnt[7]_i_2_n_0 ),
        .I2(prescale_cnt[7]),
        .O(prescale_cnt_0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \prescale_cnt[7]_i_2 
       (.I0(prescale_cnt[4]),
        .I1(prescale_cnt[0]),
        .I2(prescale_cnt[1]),
        .I3(prescale_cnt[2]),
        .I4(prescale_cnt[3]),
        .I5(prescale_cnt[5]),
        .O(\prescale_cnt[7]_i_2_n_0 ));
  FDCE \prescale_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[0]),
        .Q(prescale_cnt[0]));
  FDCE \prescale_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[1]),
        .Q(prescale_cnt[1]));
  FDCE \prescale_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[2]),
        .Q(prescale_cnt[2]));
  FDCE \prescale_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[3]),
        .Q(prescale_cnt[3]));
  FDCE \prescale_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[4]),
        .Q(prescale_cnt[4]));
  FDCE \prescale_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[5]),
        .Q(prescale_cnt[5]));
  FDCE \prescale_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[6]),
        .Q(prescale_cnt[6]));
  FDCE \prescale_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(prescale_cnt_0[7]),
        .Q(prescale_cnt[7]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 steer_active0_carry
       (.CI(1'b0),
        .CO({steer_active0_carry_n_0,steer_active0_carry_n_1,steer_active0_carry_n_2,steer_active0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_steer_active0_carry_O_UNCONNECTED[3:0]),
        .S({steer_active0_carry_i_5_n_0,steer_active0_carry_i_6_n_0,steer_active0_carry_i_7_n_0,steer_active0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 steer_active0_carry__0
       (.CI(steer_active0_carry_n_0),
        .CO({steer_active0_carry__0_n_0,steer_active0_carry__0_n_1,steer_active0_carry__0_n_2,steer_active0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(steer_active0_carry__1_0),
        .O(NLW_steer_active0_carry__0_O_UNCONNECTED[3:0]),
        .S({steer_active0_carry__0_i_5_n_0,steer_active0_carry__0_i_6_n_0,steer_active0_carry__0_i_7_n_0,steer_active0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__0_i_5
       (.I0(\global_cnt_reg[27]_0 [14]),
        .I1(Q[14]),
        .I2(\global_cnt_reg[27]_0 [13]),
        .I3(Q[13]),
        .O(steer_active0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__0_i_6
       (.I0(\global_cnt_reg[27]_0 [12]),
        .I1(Q[12]),
        .I2(\global_cnt_reg[27]_0 [11]),
        .I3(Q[11]),
        .O(steer_active0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__0_i_7
       (.I0(\global_cnt_reg[27]_0 [10]),
        .I1(Q[10]),
        .I2(\global_cnt_reg[27]_0 [9]),
        .I3(Q[9]),
        .O(steer_active0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__0_i_8
       (.I0(\global_cnt_reg[27]_0 [8]),
        .I1(Q[8]),
        .I2(\global_cnt_reg[27]_0 [7]),
        .I3(Q[7]),
        .O(steer_active0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 steer_active0_carry__1
       (.CI(steer_active0_carry__0_n_0),
        .CO({CO,steer_active0_carry__1_n_1,steer_active0_carry__1_n_2,steer_active0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,steer_enable_reg_0}),
        .O(NLW_steer_active0_carry__1_O_UNCONNECTED[3:0]),
        .S({steer_active0_carry__1_i_4_n_0,steer_active0_carry__1_i_5_n_0,steer_active0_carry__1_i_6_n_0,steer_active0_carry__1_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    steer_active0_carry__1_i_4
       (.I0(steer_enable1[28]),
        .O(steer_active0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__1_i_5
       (.I0(\global_cnt_reg[27]_0 [20]),
        .I1(Q[20]),
        .I2(\global_cnt_reg[27]_0 [19]),
        .I3(Q[19]),
        .O(steer_active0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__1_i_6
       (.I0(\global_cnt_reg[27]_0 [18]),
        .I1(Q[18]),
        .I2(\global_cnt_reg[27]_0 [17]),
        .I3(Q[17]),
        .O(steer_active0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry__1_i_7
       (.I0(\global_cnt_reg[27]_0 [16]),
        .I1(Q[16]),
        .I2(\global_cnt_reg[27]_0 [15]),
        .I3(Q[15]),
        .O(steer_active0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry_i_5
       (.I0(\global_cnt_reg[27]_0 [6]),
        .I1(Q[6]),
        .I2(\global_cnt_reg[27]_0 [5]),
        .I3(Q[5]),
        .O(steer_active0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry_i_6
       (.I0(\global_cnt_reg[27]_0 [4]),
        .I1(Q[4]),
        .I2(\global_cnt_reg[27]_0 [3]),
        .I3(Q[3]),
        .O(steer_active0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    steer_active0_carry_i_7
       (.I0(\global_cnt_reg[27]_0 [2]),
        .I1(Q[2]),
        .I2(\global_cnt_reg[27]_0 [1]),
        .I3(Q[1]),
        .O(steer_active0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    steer_active0_carry_i_8
       (.I0(steer_enable1[6]),
        .I1(\global_cnt_reg[27]_0 [0]),
        .I2(Q[0]),
        .O(steer_active0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry
       (.CI(1'b0),
        .CO({steer_enable1_carry_n_0,steer_enable1_carry_n_1,steer_enable1_carry_n_2,steer_enable1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(global_cnt_reg[3:0]),
        .O(NLW_steer_enable1_carry_O_UNCONNECTED[3:0]),
        .S({steer_enable1_carry_i_1_n_0,steer_enable1_carry_i_2_n_0,steer_enable1_carry_i_3_n_0,steer_enable1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__0
       (.CI(steer_enable1_carry_n_0),
        .CO({steer_enable1_carry__0_n_0,steer_enable1_carry__0_n_1,steer_enable1_carry__0_n_2,steer_enable1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(global_cnt_reg[7:4]),
        .O({\global_cnt_reg[27]_0 [0],steer_enable1[6],NLW_steer_enable1_carry__0_O_UNCONNECTED[1:0]}),
        .S({steer_enable1_carry__0_i_1_n_0,steer_enable1_carry__0_i_2_n_0,steer_enable1_carry__0_i_3_n_0,steer_enable1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__0_i_1
       (.I0(global_cnt_reg[7]),
        .I1(steer_start[7]),
        .O(steer_enable1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__0_i_2
       (.I0(global_cnt_reg[6]),
        .I1(steer_start[6]),
        .O(steer_enable1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__0_i_3
       (.I0(global_cnt_reg[5]),
        .I1(steer_start[5]),
        .O(steer_enable1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__0_i_4
       (.I0(global_cnt_reg[4]),
        .I1(steer_start[4]),
        .O(steer_enable1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__1
       (.CI(steer_enable1_carry__0_n_0),
        .CO({steer_enable1_carry__1_n_0,steer_enable1_carry__1_n_1,steer_enable1_carry__1_n_2,steer_enable1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(global_cnt_reg[11:8]),
        .O(\global_cnt_reg[27]_0 [4:1]),
        .S({steer_enable1_carry__1_i_1_n_0,steer_enable1_carry__1_i_2_n_0,steer_enable1_carry__1_i_3_n_0,steer_enable1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__1_i_1
       (.I0(global_cnt_reg[11]),
        .I1(steer_start[11]),
        .O(steer_enable1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__1_i_2
       (.I0(global_cnt_reg[10]),
        .I1(steer_start[10]),
        .O(steer_enable1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__1_i_3
       (.I0(global_cnt_reg[9]),
        .I1(steer_start[9]),
        .O(steer_enable1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__1_i_4
       (.I0(global_cnt_reg[8]),
        .I1(steer_start[8]),
        .O(steer_enable1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__2
       (.CI(steer_enable1_carry__1_n_0),
        .CO({steer_enable1_carry__2_n_0,steer_enable1_carry__2_n_1,steer_enable1_carry__2_n_2,steer_enable1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(global_cnt_reg[15:12]),
        .O(\global_cnt_reg[27]_0 [8:5]),
        .S({steer_enable1_carry__2_i_1_n_0,steer_enable1_carry__2_i_2_n_0,steer_enable1_carry__2_i_3_n_0,steer_enable1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__2_i_1
       (.I0(global_cnt_reg[15]),
        .I1(steer_start[15]),
        .O(steer_enable1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__2_i_2
       (.I0(global_cnt_reg[14]),
        .I1(steer_start[14]),
        .O(steer_enable1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__2_i_3
       (.I0(global_cnt_reg[13]),
        .I1(steer_start[13]),
        .O(steer_enable1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__2_i_4
       (.I0(global_cnt_reg[12]),
        .I1(steer_start[12]),
        .O(steer_enable1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__3
       (.CI(steer_enable1_carry__2_n_0),
        .CO({steer_enable1_carry__3_n_0,steer_enable1_carry__3_n_1,steer_enable1_carry__3_n_2,steer_enable1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(global_cnt_reg[19:16]),
        .O(\global_cnt_reg[27]_0 [12:9]),
        .S({steer_enable1_carry__3_i_1_n_0,steer_enable1_carry__3_i_2_n_0,steer_enable1_carry__3_i_3_n_0,steer_enable1_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__3_i_1
       (.I0(global_cnt_reg[19]),
        .I1(steer_start[19]),
        .O(steer_enable1_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__3_i_2
       (.I0(global_cnt_reg[18]),
        .I1(steer_start[18]),
        .O(steer_enable1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__3_i_3
       (.I0(global_cnt_reg[17]),
        .I1(steer_start[17]),
        .O(steer_enable1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__3_i_4
       (.I0(global_cnt_reg[16]),
        .I1(steer_start[16]),
        .O(steer_enable1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__4
       (.CI(steer_enable1_carry__3_n_0),
        .CO({steer_enable1_carry__4_n_0,steer_enable1_carry__4_n_1,steer_enable1_carry__4_n_2,steer_enable1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(global_cnt_reg[23:20]),
        .O(\global_cnt_reg[27]_0 [16:13]),
        .S({steer_enable1_carry__4_i_1_n_0,steer_enable1_carry__4_i_2_n_0,steer_enable1_carry__4_i_3_n_0,steer_enable1_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__4_i_1
       (.I0(global_cnt_reg[23]),
        .I1(steer_start[23]),
        .O(steer_enable1_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__4_i_2
       (.I0(global_cnt_reg[22]),
        .I1(steer_start[22]),
        .O(steer_enable1_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__4_i_3
       (.I0(global_cnt_reg[21]),
        .I1(steer_start[21]),
        .O(steer_enable1_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__4_i_4
       (.I0(global_cnt_reg[20]),
        .I1(steer_start[20]),
        .O(steer_enable1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__5
       (.CI(steer_enable1_carry__4_n_0),
        .CO({steer_enable1_carry__5_n_0,steer_enable1_carry__5_n_1,steer_enable1_carry__5_n_2,steer_enable1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(global_cnt_reg[27:24]),
        .O(\global_cnt_reg[27]_0 [20:17]),
        .S({steer_enable1_carry__5_i_1_n_0,steer_enable1_carry__5_i_2_n_0,steer_enable1_carry__5_i_3_n_0,steer_enable1_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__5_i_1
       (.I0(global_cnt_reg[27]),
        .I1(steer_start[27]),
        .O(steer_enable1_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__5_i_2
       (.I0(global_cnt_reg[26]),
        .I1(steer_start[26]),
        .O(steer_enable1_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__5_i_3
       (.I0(global_cnt_reg[25]),
        .I1(steer_start[25]),
        .O(steer_enable1_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__5_i_4
       (.I0(global_cnt_reg[24]),
        .I1(steer_start[24]),
        .O(steer_enable1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 steer_enable1_carry__6
       (.CI(steer_enable1_carry__5_n_0),
        .CO(NLW_steer_enable1_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_steer_enable1_carry__6_O_UNCONNECTED[3:1],steer_enable1[28]}),
        .S({1'b0,1'b0,1'b0,steer_enable1_carry__6_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry__6_i_1
       (.I0(global_cnt_reg[28]),
        .I1(steer_start[28]),
        .O(steer_enable1_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry_i_1
       (.I0(global_cnt_reg[3]),
        .I1(steer_start[3]),
        .O(steer_enable1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry_i_2
       (.I0(global_cnt_reg[2]),
        .I1(steer_start[2]),
        .O(steer_enable1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry_i_3
       (.I0(global_cnt_reg[1]),
        .I1(steer_start[1]),
        .O(steer_enable1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    steer_enable1_carry_i_4
       (.I0(global_cnt_reg[0]),
        .I1(steer_start[0]),
        .O(steer_enable1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    steer_enable_i_1
       (.I0(E),
        .I1(CO),
        .I2(steer_enable),
        .O(steer_enable_i_1_n_0));
  FDCE steer_enable_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(steer_enable_i_1_n_0),
        .Q(steer_enable));
  FDCE \steer_start_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[0]),
        .Q(steer_start[0]));
  FDCE \steer_start_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[10]),
        .Q(steer_start[10]));
  FDCE \steer_start_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[11]),
        .Q(steer_start[11]));
  FDCE \steer_start_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[12]),
        .Q(steer_start[12]));
  FDCE \steer_start_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[13]),
        .Q(steer_start[13]));
  FDCE \steer_start_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[14]),
        .Q(steer_start[14]));
  FDCE \steer_start_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[15]),
        .Q(steer_start[15]));
  FDCE \steer_start_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[16]),
        .Q(steer_start[16]));
  FDCE \steer_start_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[17]),
        .Q(steer_start[17]));
  FDCE \steer_start_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[18]),
        .Q(steer_start[18]));
  FDCE \steer_start_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[19]),
        .Q(steer_start[19]));
  FDCE \steer_start_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[1]),
        .Q(steer_start[1]));
  FDCE \steer_start_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[20]),
        .Q(steer_start[20]));
  FDCE \steer_start_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[21]),
        .Q(steer_start[21]));
  FDCE \steer_start_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[22]),
        .Q(steer_start[22]));
  FDCE \steer_start_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[23]),
        .Q(steer_start[23]));
  FDCE \steer_start_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[24]),
        .Q(steer_start[24]));
  FDCE \steer_start_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[25]),
        .Q(steer_start[25]));
  FDCE \steer_start_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[26]),
        .Q(steer_start[26]));
  FDCE \steer_start_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[27]),
        .Q(steer_start[27]));
  FDCE \steer_start_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[28]),
        .Q(steer_start[28]));
  FDCE \steer_start_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[2]),
        .Q(steer_start[2]));
  FDCE \steer_start_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[3]),
        .Q(steer_start[3]));
  FDCE \steer_start_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[4]),
        .Q(steer_start[4]));
  FDCE \steer_start_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[5]),
        .Q(steer_start[5]));
  FDCE \steer_start_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[6]),
        .Q(steer_start[6]));
  FDCE \steer_start_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[7]),
        .Q(steer_start[7]));
  FDCE \steer_start_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[8]),
        .Q(steer_start[8]));
  FDCE \steer_start_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(SR),
        .D(global_cnt_reg[9]),
        .Q(steer_start[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (s00_axi_awready,
    s00_axi_wready,
    S_STBY,
    Q,
    s00_axi_arready,
    s00_axi_rdata,
    S_PWMA,
    S_AIN1,
    S_AIN2,
    D_PWMA,
    D_AIN1,
    D_AIN2,
    D_PWMB,
    D_BIN1,
    D_BIN2,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output S_STBY;
  output [0:0]Q;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output S_PWMA;
  output S_AIN1;
  output S_AIN2;
  output D_PWMA;
  output D_AIN1;
  output D_AIN2;
  output D_PWMB;
  output D_BIN1;
  output D_BIN2;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire D_AIN1;
  wire D_AIN14_out;
  wire D_AIN2;
  wire D_AIN23_out;
  wire D_BIN1;
  wire D_BIN11_out;
  wire D_BIN2;
  wire D_BIN20_out;
  wire D_PWMA;
  wire D_PWMA1;
  wire D_PWMA15_in;
  wire D_PWMB;
  wire D_PWMB1;
  wire D_PWMB12_in;
  wire [0:0]Q;
  wire S_AIN1;
  wire S_AIN19_out;
  wire S_AIN2;
  wire S_AIN27_out;
  wire S_PWMA;
  wire S_STBY;
  wire [27:7]actual_time;
  wire capstone_axi4l_ip_v1_0_inst_n_1;
  wire capstone_axi4l_ip_v1_0_inst_n_10;
  wire capstone_axi4l_ip_v1_0_inst_n_100;
  wire capstone_axi4l_ip_v1_0_inst_n_101;
  wire capstone_axi4l_ip_v1_0_inst_n_102;
  wire capstone_axi4l_ip_v1_0_inst_n_103;
  wire capstone_axi4l_ip_v1_0_inst_n_104;
  wire capstone_axi4l_ip_v1_0_inst_n_105;
  wire capstone_axi4l_ip_v1_0_inst_n_106;
  wire capstone_axi4l_ip_v1_0_inst_n_107;
  wire capstone_axi4l_ip_v1_0_inst_n_108;
  wire capstone_axi4l_ip_v1_0_inst_n_109;
  wire capstone_axi4l_ip_v1_0_inst_n_110;
  wire capstone_axi4l_ip_v1_0_inst_n_111;
  wire capstone_axi4l_ip_v1_0_inst_n_112;
  wire capstone_axi4l_ip_v1_0_inst_n_113;
  wire capstone_axi4l_ip_v1_0_inst_n_114;
  wire capstone_axi4l_ip_v1_0_inst_n_115;
  wire capstone_axi4l_ip_v1_0_inst_n_116;
  wire capstone_axi4l_ip_v1_0_inst_n_117;
  wire capstone_axi4l_ip_v1_0_inst_n_118;
  wire capstone_axi4l_ip_v1_0_inst_n_12;
  wire capstone_axi4l_ip_v1_0_inst_n_125;
  wire capstone_axi4l_ip_v1_0_inst_n_126;
  wire capstone_axi4l_ip_v1_0_inst_n_127;
  wire capstone_axi4l_ip_v1_0_inst_n_128;
  wire capstone_axi4l_ip_v1_0_inst_n_129;
  wire capstone_axi4l_ip_v1_0_inst_n_13;
  wire capstone_axi4l_ip_v1_0_inst_n_130;
  wire capstone_axi4l_ip_v1_0_inst_n_131;
  wire capstone_axi4l_ip_v1_0_inst_n_132;
  wire capstone_axi4l_ip_v1_0_inst_n_133;
  wire capstone_axi4l_ip_v1_0_inst_n_134;
  wire capstone_axi4l_ip_v1_0_inst_n_135;
  wire capstone_axi4l_ip_v1_0_inst_n_136;
  wire capstone_axi4l_ip_v1_0_inst_n_137;
  wire capstone_axi4l_ip_v1_0_inst_n_138;
  wire capstone_axi4l_ip_v1_0_inst_n_139;
  wire capstone_axi4l_ip_v1_0_inst_n_14;
  wire capstone_axi4l_ip_v1_0_inst_n_140;
  wire capstone_axi4l_ip_v1_0_inst_n_141;
  wire capstone_axi4l_ip_v1_0_inst_n_142;
  wire capstone_axi4l_ip_v1_0_inst_n_143;
  wire capstone_axi4l_ip_v1_0_inst_n_144;
  wire capstone_axi4l_ip_v1_0_inst_n_145;
  wire capstone_axi4l_ip_v1_0_inst_n_146;
  wire capstone_axi4l_ip_v1_0_inst_n_147;
  wire capstone_axi4l_ip_v1_0_inst_n_148;
  wire capstone_axi4l_ip_v1_0_inst_n_149;
  wire capstone_axi4l_ip_v1_0_inst_n_15;
  wire capstone_axi4l_ip_v1_0_inst_n_150;
  wire capstone_axi4l_ip_v1_0_inst_n_151;
  wire capstone_axi4l_ip_v1_0_inst_n_152;
  wire capstone_axi4l_ip_v1_0_inst_n_153;
  wire capstone_axi4l_ip_v1_0_inst_n_154;
  wire capstone_axi4l_ip_v1_0_inst_n_155;
  wire capstone_axi4l_ip_v1_0_inst_n_156;
  wire capstone_axi4l_ip_v1_0_inst_n_157;
  wire capstone_axi4l_ip_v1_0_inst_n_158;
  wire capstone_axi4l_ip_v1_0_inst_n_159;
  wire capstone_axi4l_ip_v1_0_inst_n_16;
  wire capstone_axi4l_ip_v1_0_inst_n_160;
  wire capstone_axi4l_ip_v1_0_inst_n_161;
  wire capstone_axi4l_ip_v1_0_inst_n_162;
  wire capstone_axi4l_ip_v1_0_inst_n_163;
  wire capstone_axi4l_ip_v1_0_inst_n_164;
  wire capstone_axi4l_ip_v1_0_inst_n_17;
  wire capstone_axi4l_ip_v1_0_inst_n_18;
  wire capstone_axi4l_ip_v1_0_inst_n_40;
  wire capstone_axi4l_ip_v1_0_inst_n_41;
  wire capstone_axi4l_ip_v1_0_inst_n_42;
  wire capstone_axi4l_ip_v1_0_inst_n_43;
  wire capstone_axi4l_ip_v1_0_inst_n_44;
  wire capstone_axi4l_ip_v1_0_inst_n_45;
  wire capstone_axi4l_ip_v1_0_inst_n_46;
  wire capstone_axi4l_ip_v1_0_inst_n_47;
  wire capstone_axi4l_ip_v1_0_inst_n_48;
  wire capstone_axi4l_ip_v1_0_inst_n_49;
  wire capstone_axi4l_ip_v1_0_inst_n_50;
  wire capstone_axi4l_ip_v1_0_inst_n_51;
  wire capstone_axi4l_ip_v1_0_inst_n_52;
  wire capstone_axi4l_ip_v1_0_inst_n_53;
  wire capstone_axi4l_ip_v1_0_inst_n_54;
  wire capstone_axi4l_ip_v1_0_inst_n_55;
  wire capstone_axi4l_ip_v1_0_inst_n_56;
  wire capstone_axi4l_ip_v1_0_inst_n_57;
  wire capstone_axi4l_ip_v1_0_inst_n_58;
  wire capstone_axi4l_ip_v1_0_inst_n_59;
  wire capstone_axi4l_ip_v1_0_inst_n_60;
  wire capstone_axi4l_ip_v1_0_inst_n_61;
  wire capstone_axi4l_ip_v1_0_inst_n_62;
  wire capstone_axi4l_ip_v1_0_inst_n_63;
  wire capstone_axi4l_ip_v1_0_inst_n_64;
  wire capstone_axi4l_ip_v1_0_inst_n_65;
  wire capstone_axi4l_ip_v1_0_inst_n_66;
  wire capstone_axi4l_ip_v1_0_inst_n_67;
  wire capstone_axi4l_ip_v1_0_inst_n_69;
  wire capstone_axi4l_ip_v1_0_inst_n_7;
  wire capstone_axi4l_ip_v1_0_inst_n_70;
  wire capstone_axi4l_ip_v1_0_inst_n_71;
  wire capstone_axi4l_ip_v1_0_inst_n_72;
  wire capstone_axi4l_ip_v1_0_inst_n_73;
  wire capstone_axi4l_ip_v1_0_inst_n_74;
  wire capstone_axi4l_ip_v1_0_inst_n_75;
  wire capstone_axi4l_ip_v1_0_inst_n_76;
  wire capstone_axi4l_ip_v1_0_inst_n_77;
  wire capstone_axi4l_ip_v1_0_inst_n_78;
  wire capstone_axi4l_ip_v1_0_inst_n_79;
  wire capstone_axi4l_ip_v1_0_inst_n_8;
  wire capstone_axi4l_ip_v1_0_inst_n_80;
  wire capstone_axi4l_ip_v1_0_inst_n_81;
  wire capstone_axi4l_ip_v1_0_inst_n_82;
  wire capstone_axi4l_ip_v1_0_inst_n_83;
  wire capstone_axi4l_ip_v1_0_inst_n_84;
  wire capstone_axi4l_ip_v1_0_inst_n_85;
  wire capstone_axi4l_ip_v1_0_inst_n_86;
  wire capstone_axi4l_ip_v1_0_inst_n_87;
  wire capstone_axi4l_ip_v1_0_inst_n_88;
  wire capstone_axi4l_ip_v1_0_inst_n_89;
  wire capstone_axi4l_ip_v1_0_inst_n_9;
  wire capstone_axi4l_ip_v1_0_inst_n_90;
  wire capstone_axi4l_ip_v1_0_inst_n_91;
  wire capstone_axi4l_ip_v1_0_inst_n_92;
  wire capstone_axi4l_ip_v1_0_inst_n_93;
  wire capstone_axi4l_ip_v1_0_inst_n_94;
  wire capstone_axi4l_ip_v1_0_inst_n_95;
  wire capstone_axi4l_ip_v1_0_inst_n_96;
  wire capstone_axi4l_ip_v1_0_inst_n_97;
  wire capstone_axi4l_ip_v1_0_inst_n_98;
  wire capstone_axi4l_ip_v1_0_inst_n_99;
  wire [31:0]counter_signed_reg;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire steer_active0;
  wire steer_enable;
  wire [27:7]steer_enable1;
  wire steer_trigger;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_capstone_axi4l_ip_v1_0 capstone_axi4l_ip_v1_0_inst
       (.CO(steer_active0),
        .DI({capstone_axi4l_ip_v1_0_inst_n_7,capstone_axi4l_ip_v1_0_inst_n_8,capstone_axi4l_ip_v1_0_inst_n_9,capstone_axi4l_ip_v1_0_inst_n_10}),
        .D_AIN14_out(D_AIN14_out),
        .D_AIN23_out(D_AIN23_out),
        .D_BIN11_out(D_BIN11_out),
        .D_BIN20_out(D_BIN20_out),
        .D_PWMA_reg(D_PWMA1),
        .D_PWMA_reg_0(D_PWMA15_in),
        .D_PWMB_reg(D_PWMB1),
        .D_PWMB_reg_0(D_PWMB12_in),
        .E(steer_trigger),
        .Q({S_STBY,capstone_axi4l_ip_v1_0_inst_n_12,capstone_axi4l_ip_v1_0_inst_n_13,capstone_axi4l_ip_v1_0_inst_n_14,capstone_axi4l_ip_v1_0_inst_n_15,capstone_axi4l_ip_v1_0_inst_n_16,capstone_axi4l_ip_v1_0_inst_n_17,capstone_axi4l_ip_v1_0_inst_n_18,actual_time}),
        .S({capstone_axi4l_ip_v1_0_inst_n_40,capstone_axi4l_ip_v1_0_inst_n_41,capstone_axi4l_ip_v1_0_inst_n_42,capstone_axi4l_ip_v1_0_inst_n_43}),
        .SR(capstone_axi4l_ip_v1_0_inst_n_1),
        .S_AIN19_out(S_AIN19_out),
        .S_AIN27_out(S_AIN27_out),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .counter_signed_reg(counter_signed_reg),
        .\counter_signed_reg[7] ({capstone_axi4l_ip_v1_0_inst_n_125,capstone_axi4l_ip_v1_0_inst_n_126,capstone_axi4l_ip_v1_0_inst_n_127,capstone_axi4l_ip_v1_0_inst_n_128}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[14] ({capstone_axi4l_ip_v1_0_inst_n_152,capstone_axi4l_ip_v1_0_inst_n_153,capstone_axi4l_ip_v1_0_inst_n_154,capstone_axi4l_ip_v1_0_inst_n_155}),
        .\slv_reg0_reg[20] ({capstone_axi4l_ip_v1_0_inst_n_156,capstone_axi4l_ip_v1_0_inst_n_157,capstone_axi4l_ip_v1_0_inst_n_158}),
        .\slv_reg0_reg[28] ({capstone_axi4l_ip_v1_0_inst_n_44,capstone_axi4l_ip_v1_0_inst_n_45,capstone_axi4l_ip_v1_0_inst_n_46,capstone_axi4l_ip_v1_0_inst_n_47}),
        .\slv_reg0_reg[28]_0 ({capstone_axi4l_ip_v1_0_inst_n_48,capstone_axi4l_ip_v1_0_inst_n_49,capstone_axi4l_ip_v1_0_inst_n_50,capstone_axi4l_ip_v1_0_inst_n_51}),
        .\slv_reg0_reg[28]_1 ({capstone_axi4l_ip_v1_0_inst_n_52,capstone_axi4l_ip_v1_0_inst_n_53,capstone_axi4l_ip_v1_0_inst_n_54,capstone_axi4l_ip_v1_0_inst_n_55}),
        .\slv_reg0_reg[28]_2 ({capstone_axi4l_ip_v1_0_inst_n_56,capstone_axi4l_ip_v1_0_inst_n_57,capstone_axi4l_ip_v1_0_inst_n_58,capstone_axi4l_ip_v1_0_inst_n_59}),
        .\slv_reg0_reg[28]_3 ({capstone_axi4l_ip_v1_0_inst_n_60,capstone_axi4l_ip_v1_0_inst_n_61,capstone_axi4l_ip_v1_0_inst_n_62,capstone_axi4l_ip_v1_0_inst_n_63}),
        .\slv_reg0_reg[28]_4 ({capstone_axi4l_ip_v1_0_inst_n_143,capstone_axi4l_ip_v1_0_inst_n_144,capstone_axi4l_ip_v1_0_inst_n_145}),
        .\slv_reg1_reg[26] ({capstone_axi4l_ip_v1_0_inst_n_159,capstone_axi4l_ip_v1_0_inst_n_160}),
        .\slv_reg1_reg[27] ({capstone_axi4l_ip_v1_0_inst_n_140,capstone_axi4l_ip_v1_0_inst_n_141,capstone_axi4l_ip_v1_0_inst_n_142}),
        .\slv_reg1_reg[28] ({capstone_axi4l_ip_v1_0_inst_n_64,capstone_axi4l_ip_v1_0_inst_n_65,capstone_axi4l_ip_v1_0_inst_n_66,capstone_axi4l_ip_v1_0_inst_n_67}),
        .\slv_reg1_reg[28]_0 ({capstone_axi4l_ip_v1_0_inst_n_75,capstone_axi4l_ip_v1_0_inst_n_76,capstone_axi4l_ip_v1_0_inst_n_77,capstone_axi4l_ip_v1_0_inst_n_78}),
        .\slv_reg1_reg[28]_1 ({capstone_axi4l_ip_v1_0_inst_n_79,capstone_axi4l_ip_v1_0_inst_n_80,capstone_axi4l_ip_v1_0_inst_n_81,capstone_axi4l_ip_v1_0_inst_n_82}),
        .\slv_reg1_reg[28]_2 ({capstone_axi4l_ip_v1_0_inst_n_83,capstone_axi4l_ip_v1_0_inst_n_84,capstone_axi4l_ip_v1_0_inst_n_85,capstone_axi4l_ip_v1_0_inst_n_86}),
        .\slv_reg1_reg[28]_3 ({capstone_axi4l_ip_v1_0_inst_n_87,capstone_axi4l_ip_v1_0_inst_n_88,capstone_axi4l_ip_v1_0_inst_n_89,capstone_axi4l_ip_v1_0_inst_n_90}),
        .\slv_reg1_reg[28]_4 ({capstone_axi4l_ip_v1_0_inst_n_91,capstone_axi4l_ip_v1_0_inst_n_92,capstone_axi4l_ip_v1_0_inst_n_93,capstone_axi4l_ip_v1_0_inst_n_94}),
        .\slv_reg1_reg[28]_5 ({capstone_axi4l_ip_v1_0_inst_n_129,capstone_axi4l_ip_v1_0_inst_n_130,capstone_axi4l_ip_v1_0_inst_n_131,capstone_axi4l_ip_v1_0_inst_n_132}),
        .\slv_reg1_reg[28]_6 ({capstone_axi4l_ip_v1_0_inst_n_149,capstone_axi4l_ip_v1_0_inst_n_150,capstone_axi4l_ip_v1_0_inst_n_151}),
        .\slv_reg1_reg[31] ({Q,capstone_axi4l_ip_v1_0_inst_n_69,capstone_axi4l_ip_v1_0_inst_n_70,capstone_axi4l_ip_v1_0_inst_n_71,capstone_axi4l_ip_v1_0_inst_n_72,capstone_axi4l_ip_v1_0_inst_n_73,capstone_axi4l_ip_v1_0_inst_n_74}),
        .\slv_reg1_reg[31]_0 (capstone_axi4l_ip_v1_0_inst_n_163),
        .\slv_reg1_reg[31]_1 (capstone_axi4l_ip_v1_0_inst_n_164),
        .\slv_reg1_reg[7] ({capstone_axi4l_ip_v1_0_inst_n_161,capstone_axi4l_ip_v1_0_inst_n_162}),
        .\slv_reg1_reg[8] ({capstone_axi4l_ip_v1_0_inst_n_137,capstone_axi4l_ip_v1_0_inst_n_138,capstone_axi4l_ip_v1_0_inst_n_139}),
        .\slv_reg1_reg[9] ({capstone_axi4l_ip_v1_0_inst_n_95,capstone_axi4l_ip_v1_0_inst_n_96,capstone_axi4l_ip_v1_0_inst_n_97,capstone_axi4l_ip_v1_0_inst_n_98}),
        .\slv_reg1_reg[9]_0 ({capstone_axi4l_ip_v1_0_inst_n_99,capstone_axi4l_ip_v1_0_inst_n_100,capstone_axi4l_ip_v1_0_inst_n_101,capstone_axi4l_ip_v1_0_inst_n_102}),
        .\slv_reg1_reg[9]_1 ({capstone_axi4l_ip_v1_0_inst_n_103,capstone_axi4l_ip_v1_0_inst_n_104,capstone_axi4l_ip_v1_0_inst_n_105,capstone_axi4l_ip_v1_0_inst_n_106}),
        .\slv_reg1_reg[9]_2 ({capstone_axi4l_ip_v1_0_inst_n_107,capstone_axi4l_ip_v1_0_inst_n_108,capstone_axi4l_ip_v1_0_inst_n_109,capstone_axi4l_ip_v1_0_inst_n_110}),
        .\slv_reg1_reg[9]_3 ({capstone_axi4l_ip_v1_0_inst_n_111,capstone_axi4l_ip_v1_0_inst_n_112,capstone_axi4l_ip_v1_0_inst_n_113,capstone_axi4l_ip_v1_0_inst_n_114}),
        .\slv_reg1_reg[9]_4 ({capstone_axi4l_ip_v1_0_inst_n_115,capstone_axi4l_ip_v1_0_inst_n_116,capstone_axi4l_ip_v1_0_inst_n_117,capstone_axi4l_ip_v1_0_inst_n_118}),
        .\slv_reg1_reg[9]_5 ({capstone_axi4l_ip_v1_0_inst_n_133,capstone_axi4l_ip_v1_0_inst_n_134,capstone_axi4l_ip_v1_0_inst_n_135,capstone_axi4l_ip_v1_0_inst_n_136}),
        .\slv_reg1_reg[9]_6 ({capstone_axi4l_ip_v1_0_inst_n_146,capstone_axi4l_ip_v1_0_inst_n_147,capstone_axi4l_ip_v1_0_inst_n_148}),
        .steer_enable(steer_enable),
        .steer_enable1(steer_enable1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_motor_controller motor_controller_inst
       (.CO(steer_active0),
        .DI({capstone_axi4l_ip_v1_0_inst_n_7,capstone_axi4l_ip_v1_0_inst_n_8,capstone_axi4l_ip_v1_0_inst_n_9,capstone_axi4l_ip_v1_0_inst_n_10}),
        .D_AIN1(D_AIN1),
        .D_AIN14_out(D_AIN14_out),
        .D_AIN2(D_AIN2),
        .D_AIN23_out(D_AIN23_out),
        .D_BIN1(D_BIN1),
        .D_BIN11_out(D_BIN11_out),
        .D_BIN2(D_BIN2),
        .D_BIN20_out(D_BIN20_out),
        .D_PWMA(D_PWMA),
        .D_PWMA1_carry_0({capstone_axi4l_ip_v1_0_inst_n_69,capstone_axi4l_ip_v1_0_inst_n_70,capstone_axi4l_ip_v1_0_inst_n_71,capstone_axi4l_ip_v1_0_inst_n_72,capstone_axi4l_ip_v1_0_inst_n_73,capstone_axi4l_ip_v1_0_inst_n_74}),
        .D_PWMA1_carry__0_0({capstone_axi4l_ip_v1_0_inst_n_140,capstone_axi4l_ip_v1_0_inst_n_141,capstone_axi4l_ip_v1_0_inst_n_142}),
        .D_PWMA1_carry__0_1({capstone_axi4l_ip_v1_0_inst_n_159,capstone_axi4l_ip_v1_0_inst_n_160}),
        .\D_PWMA1_inferred__0/i__carry__0_0 ({capstone_axi4l_ip_v1_0_inst_n_129,capstone_axi4l_ip_v1_0_inst_n_130,capstone_axi4l_ip_v1_0_inst_n_131,capstone_axi4l_ip_v1_0_inst_n_132}),
        .\D_PWMA1_inferred__0/i__carry__0_1 ({capstone_axi4l_ip_v1_0_inst_n_149,capstone_axi4l_ip_v1_0_inst_n_150,capstone_axi4l_ip_v1_0_inst_n_151}),
        .\D_PWMA1_inferred__0/i__carry__1_0 ({capstone_axi4l_ip_v1_0_inst_n_91,capstone_axi4l_ip_v1_0_inst_n_92,capstone_axi4l_ip_v1_0_inst_n_93,capstone_axi4l_ip_v1_0_inst_n_94}),
        .\D_PWMA1_inferred__0/i__carry__1_1 ({capstone_axi4l_ip_v1_0_inst_n_87,capstone_axi4l_ip_v1_0_inst_n_88,capstone_axi4l_ip_v1_0_inst_n_89,capstone_axi4l_ip_v1_0_inst_n_90}),
        .\D_PWMA1_inferred__0/i__carry__2_0 ({capstone_axi4l_ip_v1_0_inst_n_83,capstone_axi4l_ip_v1_0_inst_n_84,capstone_axi4l_ip_v1_0_inst_n_85,capstone_axi4l_ip_v1_0_inst_n_86}),
        .\D_PWMA1_inferred__0/i__carry__2_1 ({capstone_axi4l_ip_v1_0_inst_n_79,capstone_axi4l_ip_v1_0_inst_n_80,capstone_axi4l_ip_v1_0_inst_n_81,capstone_axi4l_ip_v1_0_inst_n_82}),
        .D_PWMA_reg_0(capstone_axi4l_ip_v1_0_inst_n_163),
        .D_PWMA_reg_1({capstone_axi4l_ip_v1_0_inst_n_75,capstone_axi4l_ip_v1_0_inst_n_76,capstone_axi4l_ip_v1_0_inst_n_77,capstone_axi4l_ip_v1_0_inst_n_78}),
        .D_PWMA_reg_2({capstone_axi4l_ip_v1_0_inst_n_64,capstone_axi4l_ip_v1_0_inst_n_65,capstone_axi4l_ip_v1_0_inst_n_66,capstone_axi4l_ip_v1_0_inst_n_67}),
        .D_PWMB(D_PWMB),
        .D_PWMB1_carry__0_0({capstone_axi4l_ip_v1_0_inst_n_137,capstone_axi4l_ip_v1_0_inst_n_138,capstone_axi4l_ip_v1_0_inst_n_139}),
        .D_PWMB1_carry__0_1({capstone_axi4l_ip_v1_0_inst_n_161,capstone_axi4l_ip_v1_0_inst_n_162}),
        .\D_PWMB1_inferred__0/i__carry__0_0 ({capstone_axi4l_ip_v1_0_inst_n_133,capstone_axi4l_ip_v1_0_inst_n_134,capstone_axi4l_ip_v1_0_inst_n_135,capstone_axi4l_ip_v1_0_inst_n_136}),
        .\D_PWMB1_inferred__0/i__carry__0_1 ({capstone_axi4l_ip_v1_0_inst_n_146,capstone_axi4l_ip_v1_0_inst_n_147,capstone_axi4l_ip_v1_0_inst_n_148}),
        .\D_PWMB1_inferred__0/i__carry__1_0 ({capstone_axi4l_ip_v1_0_inst_n_115,capstone_axi4l_ip_v1_0_inst_n_116,capstone_axi4l_ip_v1_0_inst_n_117,capstone_axi4l_ip_v1_0_inst_n_118}),
        .\D_PWMB1_inferred__0/i__carry__1_1 ({capstone_axi4l_ip_v1_0_inst_n_111,capstone_axi4l_ip_v1_0_inst_n_112,capstone_axi4l_ip_v1_0_inst_n_113,capstone_axi4l_ip_v1_0_inst_n_114}),
        .\D_PWMB1_inferred__0/i__carry__2_0 ({capstone_axi4l_ip_v1_0_inst_n_107,capstone_axi4l_ip_v1_0_inst_n_108,capstone_axi4l_ip_v1_0_inst_n_109,capstone_axi4l_ip_v1_0_inst_n_110}),
        .\D_PWMB1_inferred__0/i__carry__2_1 ({capstone_axi4l_ip_v1_0_inst_n_103,capstone_axi4l_ip_v1_0_inst_n_104,capstone_axi4l_ip_v1_0_inst_n_105,capstone_axi4l_ip_v1_0_inst_n_106}),
        .D_PWMB_reg_0(capstone_axi4l_ip_v1_0_inst_n_164),
        .D_PWMB_reg_1({capstone_axi4l_ip_v1_0_inst_n_99,capstone_axi4l_ip_v1_0_inst_n_100,capstone_axi4l_ip_v1_0_inst_n_101,capstone_axi4l_ip_v1_0_inst_n_102}),
        .D_PWMB_reg_2({capstone_axi4l_ip_v1_0_inst_n_95,capstone_axi4l_ip_v1_0_inst_n_96,capstone_axi4l_ip_v1_0_inst_n_97,capstone_axi4l_ip_v1_0_inst_n_98}),
        .E(steer_trigger),
        .Q({capstone_axi4l_ip_v1_0_inst_n_12,capstone_axi4l_ip_v1_0_inst_n_13,capstone_axi4l_ip_v1_0_inst_n_14,capstone_axi4l_ip_v1_0_inst_n_15,capstone_axi4l_ip_v1_0_inst_n_16,capstone_axi4l_ip_v1_0_inst_n_17,capstone_axi4l_ip_v1_0_inst_n_18,actual_time}),
        .S({capstone_axi4l_ip_v1_0_inst_n_40,capstone_axi4l_ip_v1_0_inst_n_41,capstone_axi4l_ip_v1_0_inst_n_42,capstone_axi4l_ip_v1_0_inst_n_43}),
        .SR(capstone_axi4l_ip_v1_0_inst_n_1),
        .S_AIN1(S_AIN1),
        .S_AIN19_out(S_AIN19_out),
        .S_AIN2(S_AIN2),
        .S_AIN27_out(S_AIN27_out),
        .S_PWMA(S_PWMA),
        .\S_PWMA1_inferred__0/i__carry__0_0 ({capstone_axi4l_ip_v1_0_inst_n_125,capstone_axi4l_ip_v1_0_inst_n_126,capstone_axi4l_ip_v1_0_inst_n_127,capstone_axi4l_ip_v1_0_inst_n_128}),
        .\S_PWMA1_inferred__0/i__carry__0_1 ({capstone_axi4l_ip_v1_0_inst_n_143,capstone_axi4l_ip_v1_0_inst_n_144,capstone_axi4l_ip_v1_0_inst_n_145}),
        .\S_PWMA1_inferred__0/i__carry__1_0 ({capstone_axi4l_ip_v1_0_inst_n_60,capstone_axi4l_ip_v1_0_inst_n_61,capstone_axi4l_ip_v1_0_inst_n_62,capstone_axi4l_ip_v1_0_inst_n_63}),
        .\S_PWMA1_inferred__0/i__carry__1_1 ({capstone_axi4l_ip_v1_0_inst_n_56,capstone_axi4l_ip_v1_0_inst_n_57,capstone_axi4l_ip_v1_0_inst_n_58,capstone_axi4l_ip_v1_0_inst_n_59}),
        .\S_PWMA1_inferred__0/i__carry__2_0 ({capstone_axi4l_ip_v1_0_inst_n_52,capstone_axi4l_ip_v1_0_inst_n_53,capstone_axi4l_ip_v1_0_inst_n_54,capstone_axi4l_ip_v1_0_inst_n_55}),
        .\S_PWMA1_inferred__0/i__carry__2_1 ({capstone_axi4l_ip_v1_0_inst_n_48,capstone_axi4l_ip_v1_0_inst_n_49,capstone_axi4l_ip_v1_0_inst_n_50,capstone_axi4l_ip_v1_0_inst_n_51}),
        .S_PWMA_reg_0({capstone_axi4l_ip_v1_0_inst_n_44,capstone_axi4l_ip_v1_0_inst_n_45,capstone_axi4l_ip_v1_0_inst_n_46,capstone_axi4l_ip_v1_0_inst_n_47}),
        .counter_signed_reg(counter_signed_reg),
        .\counter_signed_reg[31]_0 (D_PWMA1),
        .\counter_signed_reg[31]_1 (D_PWMB1),
        .\global_cnt_reg[27]_0 (steer_enable1),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg1_reg[28] (D_PWMA15_in),
        .\slv_reg1_reg[9] (D_PWMB12_in),
        .steer_active0_carry__1_0({capstone_axi4l_ip_v1_0_inst_n_152,capstone_axi4l_ip_v1_0_inst_n_153,capstone_axi4l_ip_v1_0_inst_n_154,capstone_axi4l_ip_v1_0_inst_n_155}),
        .steer_enable(steer_enable),
        .steer_enable_reg_0({capstone_axi4l_ip_v1_0_inst_n_156,capstone_axi4l_ip_v1_0_inst_n_157,capstone_axi4l_ip_v1_0_inst_n_158}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
