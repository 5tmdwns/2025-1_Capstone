-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat May 31 13:21:06 2025
-- Host        : Tmdwns running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/gaesol2ee/fpgaWorkspace/vivado_proj/capstone_v2/capstone_v2_hw/capstone_v2_hw.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_capstone_axi4l_ip_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wready_reg_0 : out STD_LOGIC;
    axi_bvalid_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 28 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \slv_reg1_reg[28]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AIN19_out : out STD_LOGIC;
    S_AIN27_out : out STD_LOGIC;
    D_AIN14_out : out STD_LOGIC;
    D_AIN23_out : out STD_LOGIC;
    D_BIN11_out : out STD_LOGIC;
    D_BIN20_out : out STD_LOGIC;
    \counter_signed_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_6\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[27]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg0_reg[28]_5\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[9]_7\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[28]_7\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg0_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[20]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[26]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[31]_1\ : out STD_LOGIC;
    \slv_reg1_reg[31]_2\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    steer_enable1 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    counter_signed_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    steer_enable : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    D_PWMA_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_PWMA_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_PWMB_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_PWMB_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_capstone_axi4l_ip_v1_0_S00_AXI : entity is "capstone_axi4l_ip_v1_0_S00_AXI";
end design_1_top_0_0_capstone_axi4l_ip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_top_0_0_capstone_axi4l_ip_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal drive_dir_a : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal drive_dir_b : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \i__carry_i_10__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_10__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_9__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal prev_bvalid : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg1_reg[31]_0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal steer_dir : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal steer_trigger_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of D_AIN1_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of D_AIN2_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of D_BIN1_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of D_BIN2_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of D_PWMA_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of D_PWMB_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of S_AIN1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of S_AIN2_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
begin
  Q(28 downto 0) <= \^q\(28 downto 0);
  SR(0) <= \^sr\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  \slv_reg1_reg[31]_0\(6 downto 0) <= \^slv_reg1_reg[31]_0\(6 downto 0);
D_AIN1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => drive_dir_a(1),
      I1 => \^slv_reg1_reg[31]_0\(6),
      I2 => drive_dir_a(0),
      O => D_AIN14_out
    );
D_AIN2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(6),
      I1 => drive_dir_a(1),
      I2 => drive_dir_a(0),
      O => D_AIN23_out
    );
D_BIN1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(6),
      I1 => drive_dir_b(1),
      I2 => drive_dir_b(0),
      O => D_BIN11_out
    );
D_BIN2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => drive_dir_b(1),
      I1 => \^slv_reg1_reg[31]_0\(6),
      I2 => drive_dir_b(0),
      O => D_BIN20_out
    );
D_PWMA1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => counter_signed_reg(4),
      I2 => counter_signed_reg(5),
      I3 => \slv_reg1_reg_n_0_[26]\,
      O => \slv_reg1_reg[27]_0\(2)
    );
D_PWMA1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => counter_signed_reg(2),
      I2 => counter_signed_reg(3),
      I3 => \slv_reg1_reg_n_0_[24]\,
      O => \slv_reg1_reg[27]_0\(1)
    );
D_PWMA1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(4),
      I1 => counter_signed_reg(0),
      I2 => counter_signed_reg(1),
      I3 => \^slv_reg1_reg[31]_0\(3),
      O => \slv_reg1_reg[27]_0\(0)
    );
D_PWMA1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => counter_signed_reg(4),
      I2 => \slv_reg1_reg_n_0_[27]\,
      I3 => counter_signed_reg(5),
      O => \slv_reg1_reg[26]_0\(1)
    );
D_PWMA1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => counter_signed_reg(2),
      I2 => \slv_reg1_reg_n_0_[25]\,
      I3 => counter_signed_reg(3),
      O => \slv_reg1_reg[26]_0\(0)
    );
D_PWMA_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(6),
      I1 => D_PWMA_reg(0),
      I2 => D_PWMA_reg_0(0),
      O => \slv_reg1_reg[31]_1\
    );
D_PWMB1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => counter_signed_reg(4),
      I2 => counter_signed_reg(5),
      I3 => \slv_reg1_reg_n_0_[7]\,
      O => \slv_reg1_reg[8]_0\(2)
    );
D_PWMB1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => counter_signed_reg(2),
      I2 => counter_signed_reg(3),
      I3 => \slv_reg1_reg_n_0_[5]\,
      O => \slv_reg1_reg[8]_0\(1)
    );
D_PWMB1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B0A"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(1),
      I1 => counter_signed_reg(0),
      I2 => counter_signed_reg(1),
      I3 => \^slv_reg1_reg[31]_0\(0),
      O => \slv_reg1_reg[8]_0\(0)
    );
D_PWMB1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => counter_signed_reg(4),
      I2 => \slv_reg1_reg_n_0_[8]\,
      I3 => counter_signed_reg(5),
      O => \slv_reg1_reg[7]_0\(1)
    );
D_PWMB1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => counter_signed_reg(2),
      I2 => \slv_reg1_reg_n_0_[6]\,
      I3 => counter_signed_reg(3),
      O => \slv_reg1_reg[7]_0\(0)
    );
D_PWMB_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(6),
      I1 => D_PWMB_reg(0),
      I2 => D_PWMB_reg_0(0),
      O => \slv_reg1_reg[31]_2\
    );
S_AIN1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => steer_dir(1),
      I1 => steer_dir(0),
      I2 => CO(0),
      I3 => steer_enable,
      O => S_AIN19_out
    );
S_AIN2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => steer_dir(0),
      I1 => steer_dir(1),
      I2 => CO(0),
      I3 => steer_enable,
      O => S_AIN27_out
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_bready,
      I5 => \^axi_bvalid_reg_0\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \^sr\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^axi_bvalid_reg_0\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid_reg_0\,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(0),
      I4 => \^q\(0),
      I5 => drive_dir_b(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(10),
      I4 => \^q\(10),
      I5 => \slv_reg1_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(11),
      I4 => \^q\(11),
      I5 => \slv_reg1_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(12),
      I4 => \^q\(12),
      I5 => \slv_reg1_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(13),
      I4 => \^q\(13),
      I5 => \slv_reg1_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(14),
      I4 => \^q\(14),
      I5 => \slv_reg1_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(15),
      I4 => \^q\(15),
      I5 => \slv_reg1_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(16),
      I4 => \^q\(16),
      I5 => \slv_reg1_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(17),
      I4 => \^q\(17),
      I5 => \slv_reg1_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(18),
      I4 => \^q\(18),
      I5 => \slv_reg1_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(19),
      I4 => \^q\(19),
      I5 => \slv_reg1_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(1),
      I4 => \^q\(1),
      I5 => drive_dir_b(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(20),
      I4 => \^q\(20),
      I5 => \slv_reg1_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(21),
      I4 => \slv_reg0_reg_n_0_[21]\,
      I5 => \slv_reg1_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(22),
      I4 => \^q\(21),
      I5 => \^slv_reg1_reg[31]_0\(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(23),
      I4 => \^q\(22),
      I5 => \^slv_reg1_reg[31]_0\(4),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(24),
      I4 => \^q\(23),
      I5 => \slv_reg1_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(25),
      I4 => \^q\(24),
      I5 => \slv_reg1_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(26),
      I4 => \^q\(25),
      I5 => \slv_reg1_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(27),
      I4 => \^q\(26),
      I5 => \slv_reg1_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(28),
      I4 => \^q\(27),
      I5 => \^slv_reg1_reg[31]_0\(5),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(29),
      I4 => steer_dir(0),
      I5 => drive_dir_a(0),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(2),
      I4 => \^q\(2),
      I5 => \slv_reg1_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(30),
      I4 => steer_dir(1),
      I5 => drive_dir_a(1),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(31),
      I4 => \^q\(28),
      I5 => \^slv_reg1_reg[31]_0\(6),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(3),
      I4 => \^q\(3),
      I5 => \^slv_reg1_reg[31]_0\(0),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(4),
      I4 => \^q\(4),
      I5 => \^slv_reg1_reg[31]_0\(1),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(5),
      I4 => \^q\(5),
      I5 => \slv_reg1_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(6),
      I4 => \^q\(6),
      I5 => \slv_reg1_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(7),
      I4 => \^q\(7),
      I5 => \slv_reg1_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(8),
      I4 => \^q\(8),
      I5 => \slv_reg1_reg_n_0_[8]\,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBC8CB383B080"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(9),
      I4 => \^q\(9),
      I5 => \^slv_reg1_reg[31]_0\(2),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^axi_wready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \^sr\(0)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(15),
      I3 => counter_signed_reg(14),
      O => \slv_reg0_reg[28]_4\(3)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(15),
      I3 => counter_signed_reg(14),
      O => \slv_reg1_reg[28]_5\(3)
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(15),
      I3 => counter_signed_reg(14),
      O => \slv_reg1_reg[9]_5\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(13),
      I3 => counter_signed_reg(12),
      O => \slv_reg0_reg[28]_4\(2)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(13),
      I3 => counter_signed_reg(12),
      O => \slv_reg1_reg[28]_5\(2)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(13),
      I3 => counter_signed_reg(12),
      O => \slv_reg1_reg[9]_5\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(11),
      I3 => counter_signed_reg(10),
      O => \slv_reg0_reg[28]_4\(1)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(11),
      I3 => counter_signed_reg(10),
      O => \slv_reg1_reg[28]_5\(1)
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(11),
      I3 => counter_signed_reg(10),
      O => \slv_reg1_reg[9]_5\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(9),
      I3 => counter_signed_reg(8),
      O => \slv_reg0_reg[28]_4\(0)
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(9),
      I3 => counter_signed_reg(8),
      O => \slv_reg1_reg[28]_5\(0)
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(9),
      I3 => counter_signed_reg(8),
      O => \slv_reg1_reg[9]_5\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(14),
      I3 => counter_signed_reg(15),
      O => \slv_reg0_reg[28]_3\(3)
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(14),
      I3 => counter_signed_reg(15),
      O => \slv_reg1_reg[28]_4\(3)
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(14),
      I3 => counter_signed_reg(15),
      O => \slv_reg1_reg[9]_4\(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(12),
      I3 => counter_signed_reg(13),
      O => \slv_reg0_reg[28]_3\(2)
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(12),
      I3 => counter_signed_reg(13),
      O => \slv_reg1_reg[28]_4\(2)
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(12),
      I3 => counter_signed_reg(13),
      O => \slv_reg1_reg[9]_4\(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(10),
      I3 => counter_signed_reg(11),
      O => \slv_reg0_reg[28]_3\(1)
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(10),
      I3 => counter_signed_reg(11),
      O => \slv_reg1_reg[28]_4\(1)
    );
\i__carry__0_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(10),
      I3 => counter_signed_reg(11),
      O => \slv_reg1_reg[9]_4\(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(8),
      I3 => counter_signed_reg(9),
      O => \slv_reg0_reg[28]_3\(0)
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(8),
      I3 => counter_signed_reg(9),
      O => \slv_reg1_reg[28]_4\(0)
    );
\i__carry__0_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(8),
      I3 => counter_signed_reg(9),
      O => \slv_reg1_reg[9]_4\(0)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(23),
      I3 => counter_signed_reg(22),
      O => \slv_reg0_reg[28]_2\(3)
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(23),
      I3 => counter_signed_reg(22),
      O => \slv_reg1_reg[28]_3\(3)
    );
\i__carry__1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(23),
      I3 => counter_signed_reg(22),
      O => \slv_reg1_reg[9]_3\(3)
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(21),
      I3 => counter_signed_reg(20),
      O => \slv_reg0_reg[28]_2\(2)
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(21),
      I3 => counter_signed_reg(20),
      O => \slv_reg1_reg[28]_3\(2)
    );
\i__carry__1_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(21),
      I3 => counter_signed_reg(20),
      O => \slv_reg1_reg[9]_3\(2)
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(19),
      I3 => counter_signed_reg(18),
      O => \slv_reg0_reg[28]_2\(1)
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(19),
      I3 => counter_signed_reg(18),
      O => \slv_reg1_reg[28]_3\(1)
    );
\i__carry__1_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(19),
      I3 => counter_signed_reg(18),
      O => \slv_reg1_reg[9]_3\(1)
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(17),
      I3 => counter_signed_reg(16),
      O => \slv_reg0_reg[28]_2\(0)
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(17),
      I3 => counter_signed_reg(16),
      O => \slv_reg1_reg[28]_3\(0)
    );
\i__carry__1_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(17),
      I3 => counter_signed_reg(16),
      O => \slv_reg1_reg[9]_3\(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(22),
      I3 => counter_signed_reg(23),
      O => \slv_reg0_reg[28]_1\(3)
    );
\i__carry__1_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(22),
      I3 => counter_signed_reg(23),
      O => \slv_reg1_reg[28]_2\(3)
    );
\i__carry__1_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(22),
      I3 => counter_signed_reg(23),
      O => \slv_reg1_reg[9]_2\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(20),
      I3 => counter_signed_reg(21),
      O => \slv_reg0_reg[28]_1\(2)
    );
\i__carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(20),
      I3 => counter_signed_reg(21),
      O => \slv_reg1_reg[28]_2\(2)
    );
\i__carry__1_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(20),
      I3 => counter_signed_reg(21),
      O => \slv_reg1_reg[9]_2\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(18),
      I3 => counter_signed_reg(19),
      O => \slv_reg0_reg[28]_1\(1)
    );
\i__carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(18),
      I3 => counter_signed_reg(19),
      O => \slv_reg1_reg[28]_2\(1)
    );
\i__carry__1_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(18),
      I3 => counter_signed_reg(19),
      O => \slv_reg1_reg[9]_2\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(16),
      I3 => counter_signed_reg(17),
      O => \slv_reg0_reg[28]_1\(0)
    );
\i__carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(16),
      I3 => counter_signed_reg(17),
      O => \slv_reg1_reg[28]_2\(0)
    );
\i__carry__1_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(16),
      I3 => counter_signed_reg(17),
      O => \slv_reg1_reg[9]_2\(0)
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(31),
      I3 => counter_signed_reg(30),
      O => \slv_reg0_reg[28]_0\(3)
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(31),
      I3 => counter_signed_reg(30),
      O => \slv_reg1_reg[28]_1\(3)
    );
\i__carry__2_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(31),
      I3 => counter_signed_reg(30),
      O => \slv_reg1_reg[9]_1\(3)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(29),
      I3 => counter_signed_reg(28),
      O => \slv_reg0_reg[28]_0\(2)
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(29),
      I3 => counter_signed_reg(28),
      O => \slv_reg1_reg[28]_1\(2)
    );
\i__carry__2_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(29),
      I3 => counter_signed_reg(28),
      O => \slv_reg1_reg[9]_1\(2)
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(27),
      I3 => counter_signed_reg(26),
      O => \slv_reg0_reg[28]_0\(1)
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(27),
      I3 => counter_signed_reg(26),
      O => \slv_reg1_reg[28]_1\(1)
    );
\i__carry__2_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(27),
      I3 => counter_signed_reg(26),
      O => \slv_reg1_reg[9]_1\(1)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(25),
      I3 => counter_signed_reg(24),
      O => \slv_reg0_reg[28]_0\(0)
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(25),
      I3 => counter_signed_reg(24),
      O => \slv_reg1_reg[28]_1\(0)
    );
\i__carry__2_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(25),
      I3 => counter_signed_reg(24),
      O => \slv_reg1_reg[9]_1\(0)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(30),
      I3 => counter_signed_reg(31),
      O => S(3)
    );
\i__carry__2_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(30),
      I3 => counter_signed_reg(31),
      O => \slv_reg1_reg[28]_0\(3)
    );
\i__carry__2_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(30),
      I3 => counter_signed_reg(31),
      O => \slv_reg1_reg[9]_0\(3)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(28),
      I3 => counter_signed_reg(29),
      O => S(2)
    );
\i__carry__2_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(28),
      I3 => counter_signed_reg(29),
      O => \slv_reg1_reg[28]_0\(2)
    );
\i__carry__2_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(28),
      I3 => counter_signed_reg(29),
      O => \slv_reg1_reg[9]_0\(2)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(26),
      I3 => counter_signed_reg(27),
      O => S(1)
    );
\i__carry__2_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(26),
      I3 => counter_signed_reg(27),
      O => \slv_reg1_reg[28]_0\(1)
    );
\i__carry__2_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(26),
      I3 => counter_signed_reg(27),
      O => \slv_reg1_reg[9]_0\(1)
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => \^q\(27),
      I2 => counter_signed_reg(24),
      I3 => counter_signed_reg(25),
      O => S(0)
    );
\i__carry__2_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(24),
      I3 => counter_signed_reg(25),
      O => \slv_reg1_reg[28]_0\(0)
    );
\i__carry__2_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E001"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(24),
      I3 => counter_signed_reg(25),
      O => \slv_reg1_reg[9]_0\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8054"
    )
        port map (
      I0 => \i__carry_i_9_n_0\,
      I1 => counter_signed_reg(7),
      I2 => counter_signed_reg(6),
      I3 => \^q\(27),
      O => \counter_signed_reg[7]\(3)
    );
\i__carry_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(21),
      I2 => \^q\(22),
      I3 => \^q\(24),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => \^slv_reg1_reg[31]_0\(3),
      I2 => \^slv_reg1_reg[31]_0\(4),
      I3 => \slv_reg1_reg_n_0_[25]\,
      O => \i__carry_i_10__0_n_0\
    );
\i__carry_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => \^slv_reg1_reg[31]_0\(0),
      I2 => \^slv_reg1_reg[31]_0\(1),
      I3 => \slv_reg1_reg_n_0_[6]\,
      O => \i__carry_i_10__1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9110"
    )
        port map (
      I0 => \i__carry_i_9__1_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(2),
      I2 => counter_signed_reg(6),
      I3 => counter_signed_reg(7),
      O => \slv_reg1_reg[9]_6\(3)
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9110"
    )
        port map (
      I0 => \i__carry_i_9__0_n_0\,
      I1 => \^slv_reg1_reg[31]_0\(5),
      I2 => counter_signed_reg(6),
      I3 => counter_signed_reg(7),
      O => \slv_reg1_reg[28]_6\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9E18100"
    )
        port map (
      I0 => \^q\(25),
      I1 => \i__carry_i_10_n_0\,
      I2 => \^q\(26),
      I3 => counter_signed_reg(4),
      I4 => counter_signed_reg(5),
      O => \counter_signed_reg[7]\(2)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9E18100"
    )
        port map (
      I0 => \i__carry_i_10__0_n_0\,
      I1 => \slv_reg1_reg_n_0_[26]\,
      I2 => \slv_reg1_reg_n_0_[27]\,
      I3 => counter_signed_reg(4),
      I4 => counter_signed_reg(5),
      O => \slv_reg1_reg[28]_6\(2)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9E18100"
    )
        port map (
      I0 => \i__carry_i_10__1_n_0\,
      I1 => \slv_reg1_reg_n_0_[7]\,
      I2 => \slv_reg1_reg_n_0_[8]\,
      I3 => counter_signed_reg(4),
      I4 => counter_signed_reg(5),
      O => \slv_reg1_reg[9]_6\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA9FE01A8010000"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^q\(21),
      I2 => \^q\(22),
      I3 => \^q\(24),
      I4 => counter_signed_reg(2),
      I5 => counter_signed_reg(3),
      O => \counter_signed_reg[7]\(1)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE1FE01E0010000"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(4),
      I1 => \^slv_reg1_reg[31]_0\(3),
      I2 => \slv_reg1_reg_n_0_[24]\,
      I3 => \slv_reg1_reg_n_0_[25]\,
      I4 => counter_signed_reg(2),
      I5 => counter_signed_reg(3),
      O => \slv_reg1_reg[28]_6\(1)
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE1FE01E0010000"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(1),
      I1 => \^slv_reg1_reg[31]_0\(0),
      I2 => \slv_reg1_reg_n_0_[5]\,
      I3 => \slv_reg1_reg_n_0_[6]\,
      I4 => counter_signed_reg(2),
      I5 => counter_signed_reg(3),
      O => \slv_reg1_reg[9]_6\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D910"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^q\(22),
      I2 => counter_signed_reg(0),
      I3 => counter_signed_reg(1),
      O => \counter_signed_reg[7]\(0)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D910"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(3),
      I1 => \^slv_reg1_reg[31]_0\(4),
      I2 => counter_signed_reg(0),
      I3 => counter_signed_reg(1),
      O => \slv_reg1_reg[28]_6\(0)
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D910"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(0),
      I1 => \^slv_reg1_reg[31]_0\(1),
      I2 => counter_signed_reg(0),
      I3 => counter_signed_reg(1),
      O => \slv_reg1_reg[9]_6\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6081"
    )
        port map (
      I0 => \^q\(27),
      I1 => counter_signed_reg(6),
      I2 => counter_signed_reg(7),
      I3 => \i__carry_i_9_n_0\,
      O => \slv_reg0_reg[28]_5\(2)
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6081"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(2),
      I1 => counter_signed_reg(6),
      I2 => counter_signed_reg(7),
      I3 => \i__carry_i_9__1_n_0\,
      O => \slv_reg1_reg[9]_7\(2)
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6081"
    )
        port map (
      I0 => \^slv_reg1_reg[31]_0\(5),
      I1 => counter_signed_reg(6),
      I2 => counter_signed_reg(7),
      I3 => \i__carry_i_9__0_n_0\,
      O => \slv_reg1_reg[28]_7\(2)
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14282841"
    )
        port map (
      I0 => \i__carry_i_10_n_0\,
      I1 => counter_signed_reg(5),
      I2 => \^q\(26),
      I3 => counter_signed_reg(4),
      I4 => \^q\(25),
      O => \slv_reg0_reg[28]_5\(1)
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14282841"
    )
        port map (
      I0 => \i__carry_i_10__1_n_0\,
      I1 => \slv_reg1_reg_n_0_[8]\,
      I2 => counter_signed_reg(5),
      I3 => \slv_reg1_reg_n_0_[7]\,
      I4 => counter_signed_reg(4),
      O => \slv_reg1_reg[9]_7\(1)
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14282841"
    )
        port map (
      I0 => \i__carry_i_10__0_n_0\,
      I1 => \slv_reg1_reg_n_0_[27]\,
      I2 => counter_signed_reg(5),
      I3 => \slv_reg1_reg_n_0_[26]\,
      I4 => counter_signed_reg(4),
      O => \slv_reg1_reg[28]_7\(1)
    );
\i__carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006666066600009"
    )
        port map (
      I0 => \^q\(24),
      I1 => counter_signed_reg(3),
      I2 => \^q\(22),
      I3 => \^q\(21),
      I4 => counter_signed_reg(2),
      I5 => \^q\(23),
      O => \slv_reg0_reg[28]_5\(0)
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006666066600009"
    )
        port map (
      I0 => counter_signed_reg(3),
      I1 => \slv_reg1_reg_n_0_[6]\,
      I2 => \^slv_reg1_reg[31]_0\(1),
      I3 => \^slv_reg1_reg[31]_0\(0),
      I4 => \slv_reg1_reg_n_0_[5]\,
      I5 => counter_signed_reg(2),
      O => \slv_reg1_reg[9]_7\(0)
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006666066600009"
    )
        port map (
      I0 => counter_signed_reg(3),
      I1 => \slv_reg1_reg_n_0_[25]\,
      I2 => \^slv_reg1_reg[31]_0\(4),
      I3 => \^slv_reg1_reg[31]_0\(3),
      I4 => \slv_reg1_reg_n_0_[24]\,
      I5 => counter_signed_reg(2),
      O => \slv_reg1_reg[28]_7\(0)
    );
\i__carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^q\(23),
      I2 => \^q\(21),
      I3 => \^q\(22),
      I4 => \^q\(24),
      I5 => \^q\(26),
      O => \i__carry_i_9_n_0\
    );
\i__carry_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => \slv_reg1_reg_n_0_[24]\,
      I2 => \^slv_reg1_reg[31]_0\(3),
      I3 => \^slv_reg1_reg[31]_0\(4),
      I4 => \slv_reg1_reg_n_0_[25]\,
      I5 => \slv_reg1_reg_n_0_[27]\,
      O => \i__carry_i_9__0_n_0\
    );
\i__carry_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => \slv_reg1_reg_n_0_[5]\,
      I2 => \^slv_reg1_reg[31]_0\(0),
      I3 => \^slv_reg1_reg[31]_0\(1),
      I4 => \slv_reg1_reg_n_0_[6]\,
      I5 => \slv_reg1_reg_n_0_[8]\,
      O => \i__carry_i_9__1_n_0\
    );
prev_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^axi_bvalid_reg_0\,
      Q => prev_bvalid,
      R => \^sr\(0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => \^axi_wready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => steer_dir(0),
      R => \^sr\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => steer_dir(1),
      R => \^sr\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => drive_dir_b(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => drive_dir_b(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^slv_reg1_reg[31]_0\(3),
      R => \^sr\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^slv_reg1_reg[31]_0\(4),
      R => \^sr\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^slv_reg1_reg[31]_0\(5),
      R => \^sr\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => drive_dir_a(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => drive_dir_a(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \^slv_reg1_reg[31]_0\(6),
      R => \^sr\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^slv_reg1_reg[31]_0\(0),
      R => \^sr\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^slv_reg1_reg[31]_0\(1),
      R => \^sr\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^slv_reg1_reg[31]_0\(2),
      R => \^sr\(0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^sr\(0)
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^sr\(0)
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^sr\(0)
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^sr\(0)
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^sr\(0)
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^sr\(0)
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^sr\(0)
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^sr\(0)
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^sr\(0)
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^sr\(0)
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^sr\(0)
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^sr\(0)
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^sr\(0)
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^sr\(0)
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^sr\(0)
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^sr\(0)
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^sr\(0)
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^sr\(0)
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^sr\(0)
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^sr\(0)
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^sr\(0)
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^sr\(0)
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^sr\(0)
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^sr\(0)
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^sr\(0)
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^sr\(0)
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^sr\(0)
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^sr\(0)
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^sr\(0)
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => \^sr\(0)
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^sr\(0)
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^sr\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \^sr\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \^sr\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \^sr\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \^sr\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \^sr\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \^sr\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \^sr\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \^sr\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \^sr\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \^sr\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \^sr\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \^sr\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \^sr\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \^sr\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \^sr\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \^sr\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \^sr\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \^sr\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \^sr\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \^sr\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \^sr\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \^sr\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \^sr\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \^sr\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \^sr\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \^sr\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \^sr\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \^sr\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \^sr\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \^sr\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \^sr\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \^sr\(0)
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
\steer_active0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(14),
      I1 => steer_enable1(14),
      I2 => \^q\(13),
      I3 => steer_enable1(13),
      O => \slv_reg0_reg[14]_0\(3)
    );
\steer_active0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(12),
      I1 => steer_enable1(12),
      I2 => \^q\(11),
      I3 => steer_enable1(11),
      O => \slv_reg0_reg[14]_0\(2)
    );
\steer_active0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(10),
      I1 => steer_enable1(10),
      I2 => \^q\(9),
      I3 => steer_enable1(9),
      O => \slv_reg0_reg[14]_0\(1)
    );
\steer_active0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(8),
      I1 => steer_enable1(8),
      I2 => \^q\(7),
      I3 => steer_enable1(7),
      O => \slv_reg0_reg[14]_0\(0)
    );
\steer_active0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(20),
      I1 => steer_enable1(20),
      I2 => \^q\(19),
      I3 => steer_enable1(19),
      O => \slv_reg0_reg[20]_0\(2)
    );
\steer_active0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(18),
      I1 => steer_enable1(18),
      I2 => \^q\(17),
      I3 => steer_enable1(17),
      O => \slv_reg0_reg[20]_0\(1)
    );
\steer_active0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(16),
      I1 => steer_enable1(16),
      I2 => \^q\(15),
      I3 => steer_enable1(15),
      O => \slv_reg0_reg[20]_0\(0)
    );
steer_active0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(6),
      I1 => steer_enable1(6),
      I2 => \^q\(5),
      I3 => steer_enable1(5),
      O => DI(3)
    );
steer_active0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(4),
      I1 => steer_enable1(4),
      I2 => \^q\(3),
      I3 => steer_enable1(3),
      O => DI(2)
    );
steer_active0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^q\(2),
      I1 => steer_enable1(2),
      I2 => \^q\(1),
      I3 => steer_enable1(1),
      O => DI(1)
    );
steer_active0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => steer_enable1(0),
      O => DI(0)
    );
steer_trigger_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_bvalid,
      I1 => \^axi_bvalid_reg_0\,
      O => steer_trigger_i_1_n_0
    );
steer_trigger_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => steer_trigger_i_1_n_0,
      Q => E(0),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_motor_controller is
  port (
    S_PWMA : out STD_LOGIC;
    S_AIN1 : out STD_LOGIC;
    S_AIN2 : out STD_LOGIC;
    D_PWMA : out STD_LOGIC;
    D_AIN1 : out STD_LOGIC;
    D_AIN2 : out STD_LOGIC;
    D_PWMB : out STD_LOGIC;
    D_BIN1 : out STD_LOGIC;
    D_BIN2 : out STD_LOGIC;
    counter_signed_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \global_cnt_reg[27]_0\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_signed_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[28]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \counter_signed_reg[31]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    steer_enable : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AIN19_out : in STD_LOGIC;
    S_AIN27_out : in STD_LOGIC;
    D_PWMA_reg_0 : in STD_LOGIC;
    D_AIN14_out : in STD_LOGIC;
    D_AIN23_out : in STD_LOGIC;
    D_PWMB_reg_0 : in STD_LOGIC;
    D_BIN11_out : in STD_LOGIC;
    D_BIN20_out : in STD_LOGIC;
    \S_PWMA1_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \S_PWMA1_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \S_PWMA1_inferred__0/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \S_PWMA1_inferred__0/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \S_PWMA1_inferred__0/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \S_PWMA1_inferred__0/i__carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_PWMA_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \steer_active0_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    steer_enable_reg_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \D_PWMA1_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \D_PWMA1_carry__0_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \D_PWMA1_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMA1_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \D_PWMA1_inferred__0/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMA1_inferred__0/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMA1_inferred__0/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMA1_inferred__0/i__carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D_PWMA_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D_PWMA_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMB1_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \D_PWMB1_carry__0_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \D_PWMB1_inferred__0/i__carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMB1_inferred__0/i__carry__0_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \D_PWMB1_inferred__0/i__carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMB1_inferred__0/i__carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMB1_inferred__0/i__carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \D_PWMB1_inferred__0/i__carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D_PWMB_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D_PWMB_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    D_PWMA1_carry_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_motor_controller : entity is "motor_controller";
end design_1_top_0_0_motor_controller;

architecture STRUCTURE of design_1_top_0_0_motor_controller is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \D_PWMA1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_n_1\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_n_2\ : STD_LOGIC;
  signal \D_PWMA1_carry__0_n_3\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_n_1\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_n_2\ : STD_LOGIC;
  signal \D_PWMA1_carry__1_n_3\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_n_1\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_n_2\ : STD_LOGIC;
  signal \D_PWMA1_carry__2_n_3\ : STD_LOGIC;
  signal D_PWMA1_carry_i_1_n_0 : STD_LOGIC;
  signal D_PWMA1_carry_i_5_n_0 : STD_LOGIC;
  signal D_PWMA1_carry_i_8_n_0 : STD_LOGIC;
  signal D_PWMA1_carry_n_0 : STD_LOGIC;
  signal D_PWMA1_carry_n_1 : STD_LOGIC;
  signal D_PWMA1_carry_n_2 : STD_LOGIC;
  signal D_PWMA1_carry_n_3 : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \D_PWMA1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_n_1\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_n_2\ : STD_LOGIC;
  signal \D_PWMB1_carry__0_n_3\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_n_1\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_n_2\ : STD_LOGIC;
  signal \D_PWMB1_carry__1_n_3\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_n_1\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_n_2\ : STD_LOGIC;
  signal \D_PWMB1_carry__2_n_3\ : STD_LOGIC;
  signal D_PWMB1_carry_i_1_n_0 : STD_LOGIC;
  signal D_PWMB1_carry_i_5_n_0 : STD_LOGIC;
  signal D_PWMB1_carry_i_8_n_0 : STD_LOGIC;
  signal D_PWMB1_carry_n_0 : STD_LOGIC;
  signal D_PWMB1_carry_n_1 : STD_LOGIC;
  signal D_PWMB1_carry_n_2 : STD_LOGIC;
  signal D_PWMB1_carry_n_3 : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \D_PWMB1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal S_PWMA1 : STD_LOGIC;
  signal S_PWMA110_in : STD_LOGIC;
  signal \S_PWMA1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_n_1\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_n_2\ : STD_LOGIC;
  signal \S_PWMA1_carry__0_n_3\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_n_1\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_n_2\ : STD_LOGIC;
  signal \S_PWMA1_carry__1_n_3\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_n_1\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_n_2\ : STD_LOGIC;
  signal \S_PWMA1_carry__2_n_3\ : STD_LOGIC;
  signal S_PWMA1_carry_i_1_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_2_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_3_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_4_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_5_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_6_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_7_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_i_8_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_n_0 : STD_LOGIC;
  signal S_PWMA1_carry_n_1 : STD_LOGIC;
  signal S_PWMA1_carry_n_2 : STD_LOGIC;
  signal S_PWMA1_carry_n_3 : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \S_PWMA1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal S_PWMA_i_1_n_0 : STD_LOGIC;
  signal counter_signed : STD_LOGIC;
  signal \counter_signed1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__0_n_1\ : STD_LOGIC;
  signal \counter_signed1_carry__0_n_2\ : STD_LOGIC;
  signal \counter_signed1_carry__0_n_3\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__1_n_1\ : STD_LOGIC;
  signal \counter_signed1_carry__1_n_2\ : STD_LOGIC;
  signal \counter_signed1_carry__1_n_3\ : STD_LOGIC;
  signal \counter_signed1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \counter_signed1_carry__2_n_2\ : STD_LOGIC;
  signal \counter_signed1_carry__2_n_3\ : STD_LOGIC;
  signal counter_signed1_carry_i_1_n_0 : STD_LOGIC;
  signal counter_signed1_carry_i_2_n_0 : STD_LOGIC;
  signal counter_signed1_carry_i_3_n_0 : STD_LOGIC;
  signal counter_signed1_carry_i_4_n_0 : STD_LOGIC;
  signal counter_signed1_carry_i_5_n_0 : STD_LOGIC;
  signal counter_signed1_carry_i_6_n_0 : STD_LOGIC;
  signal counter_signed1_carry_n_0 : STD_LOGIC;
  signal counter_signed1_carry_n_1 : STD_LOGIC;
  signal counter_signed1_carry_n_2 : STD_LOGIC;
  signal counter_signed1_carry_n_3 : STD_LOGIC;
  signal \counter_signed[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter_signed[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter_signed[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter_signed[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_signed[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter_signed[8]_i_5_n_0\ : STD_LOGIC;
  signal \^counter_signed_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_signed_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_signed_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal global_cnt_reg : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \global_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \^global_cnt_reg[27]_0\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \global_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \global_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal load : STD_LOGIC;
  signal prescale_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \prescale_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal prescale_cnt_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \steer_active0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__0_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__0_n_1\ : STD_LOGIC;
  signal \steer_active0_carry__0_n_2\ : STD_LOGIC;
  signal \steer_active0_carry__0_n_3\ : STD_LOGIC;
  signal \steer_active0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \steer_active0_carry__1_n_1\ : STD_LOGIC;
  signal \steer_active0_carry__1_n_2\ : STD_LOGIC;
  signal \steer_active0_carry__1_n_3\ : STD_LOGIC;
  signal steer_active0_carry_i_5_n_0 : STD_LOGIC;
  signal steer_active0_carry_i_6_n_0 : STD_LOGIC;
  signal steer_active0_carry_i_7_n_0 : STD_LOGIC;
  signal steer_active0_carry_i_8_n_0 : STD_LOGIC;
  signal steer_active0_carry_n_0 : STD_LOGIC;
  signal steer_active0_carry_n_1 : STD_LOGIC;
  signal steer_active0_carry_n_2 : STD_LOGIC;
  signal steer_active0_carry_n_3 : STD_LOGIC;
  signal \^steer_enable\ : STD_LOGIC;
  signal steer_enable1 : STD_LOGIC_VECTOR ( 28 downto 6 );
  signal \steer_enable1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__0_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__0_n_1\ : STD_LOGIC;
  signal \steer_enable1_carry__0_n_2\ : STD_LOGIC;
  signal \steer_enable1_carry__0_n_3\ : STD_LOGIC;
  signal \steer_enable1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__1_n_1\ : STD_LOGIC;
  signal \steer_enable1_carry__1_n_2\ : STD_LOGIC;
  signal \steer_enable1_carry__1_n_3\ : STD_LOGIC;
  signal \steer_enable1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__2_n_1\ : STD_LOGIC;
  signal \steer_enable1_carry__2_n_2\ : STD_LOGIC;
  signal \steer_enable1_carry__2_n_3\ : STD_LOGIC;
  signal \steer_enable1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__3_n_1\ : STD_LOGIC;
  signal \steer_enable1_carry__3_n_2\ : STD_LOGIC;
  signal \steer_enable1_carry__3_n_3\ : STD_LOGIC;
  signal \steer_enable1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__4_n_1\ : STD_LOGIC;
  signal \steer_enable1_carry__4_n_2\ : STD_LOGIC;
  signal \steer_enable1_carry__4_n_3\ : STD_LOGIC;
  signal \steer_enable1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__5_n_0\ : STD_LOGIC;
  signal \steer_enable1_carry__5_n_1\ : STD_LOGIC;
  signal \steer_enable1_carry__5_n_2\ : STD_LOGIC;
  signal \steer_enable1_carry__5_n_3\ : STD_LOGIC;
  signal \steer_enable1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal steer_enable1_carry_i_1_n_0 : STD_LOGIC;
  signal steer_enable1_carry_i_2_n_0 : STD_LOGIC;
  signal steer_enable1_carry_i_3_n_0 : STD_LOGIC;
  signal steer_enable1_carry_i_4_n_0 : STD_LOGIC;
  signal steer_enable1_carry_n_0 : STD_LOGIC;
  signal steer_enable1_carry_n_1 : STD_LOGIC;
  signal steer_enable1_carry_n_2 : STD_LOGIC;
  signal steer_enable1_carry_n_3 : STD_LOGIC;
  signal steer_enable_i_1_n_0 : STD_LOGIC;
  signal steer_start : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_D_PWMA1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_D_PWMB1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_D_PWMB1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_S_PWMA1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_S_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_counter_signed1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_signed1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_signed1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_signed1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_signed1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_signed_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_global_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_global_cnt_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_steer_active0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_steer_active0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_steer_active0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_steer_enable1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_steer_enable1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_steer_enable1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_steer_enable1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of D_PWMA1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMA1_inferred__0/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of D_PWMB1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \D_PWMB1_inferred__0/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of S_PWMA1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \S_PWMA1_inferred__0/i__carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_PWMA_i_1 : label is "soft_lutpair7";
  attribute COMPARATOR_THRESHOLD of counter_signed1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter_signed1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter_signed1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter_signed1_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_signed_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_signed_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \global_cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \prescale_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \prescale_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \prescale_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \prescale_cnt[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \prescale_cnt[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \prescale_cnt[7]_i_1\ : label is "soft_lutpair9";
  attribute COMPARATOR_THRESHOLD of steer_active0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \steer_active0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \steer_active0_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD of steer_enable1_carry : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \steer_enable1_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of steer_enable_i_1 : label is "soft_lutpair7";
begin
  CO(0) <= \^co\(0);
  counter_signed_reg(31 downto 0) <= \^counter_signed_reg\(31 downto 0);
  \global_cnt_reg[27]_0\(20 downto 0) <= \^global_cnt_reg[27]_0\(20 downto 0);
  steer_enable <= \^steer_enable\;
D_AIN1_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => D_AIN14_out,
      Q => D_AIN1
    );
D_AIN2_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => D_AIN23_out,
      Q => D_AIN2
    );
D_BIN1_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => D_BIN11_out,
      Q => D_BIN1
    );
D_BIN2_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => D_BIN20_out,
      Q => D_BIN2
    );
D_PWMA1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D_PWMA1_carry_n_0,
      CO(2) => D_PWMA1_carry_n_1,
      CO(1) => D_PWMA1_carry_n_2,
      CO(0) => D_PWMA1_carry_n_3,
      CYINIT => '0',
      DI(3) => D_PWMA1_carry_i_1_n_0,
      DI(2 downto 0) => \D_PWMA1_carry__0_0\(2 downto 0),
      O(3 downto 0) => NLW_D_PWMA1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => D_PWMA1_carry_i_5_n_0,
      S(2 downto 1) => \D_PWMA1_carry__0_1\(1 downto 0),
      S(0) => D_PWMA1_carry_i_8_n_0
    );
\D_PWMA1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => D_PWMA1_carry_n_0,
      CO(3) => \D_PWMA1_carry__0_n_0\,
      CO(2) => \D_PWMA1_carry__0_n_1\,
      CO(1) => \D_PWMA1_carry__0_n_2\,
      CO(0) => \D_PWMA1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_D_PWMA1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \D_PWMA1_carry__0_i_1_n_0\,
      S(2) => \D_PWMA1_carry__0_i_2_n_0\,
      S(1) => \D_PWMA1_carry__0_i_3_n_0\,
      S(0) => \D_PWMA1_carry__0_i_4_n_0\
    );
\D_PWMA1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(15),
      I1 => \^counter_signed_reg\(14),
      O => \D_PWMA1_carry__0_i_1_n_0\
    );
\D_PWMA1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(13),
      I1 => \^counter_signed_reg\(12),
      O => \D_PWMA1_carry__0_i_2_n_0\
    );
\D_PWMA1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(11),
      I1 => \^counter_signed_reg\(10),
      O => \D_PWMA1_carry__0_i_3_n_0\
    );
\D_PWMA1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(9),
      I1 => \^counter_signed_reg\(8),
      O => \D_PWMA1_carry__0_i_4_n_0\
    );
\D_PWMA1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMA1_carry__0_n_0\,
      CO(3) => \D_PWMA1_carry__1_n_0\,
      CO(2) => \D_PWMA1_carry__1_n_1\,
      CO(1) => \D_PWMA1_carry__1_n_2\,
      CO(0) => \D_PWMA1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_D_PWMA1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \D_PWMA1_carry__1_i_1_n_0\,
      S(2) => \D_PWMA1_carry__1_i_2_n_0\,
      S(1) => \D_PWMA1_carry__1_i_3_n_0\,
      S(0) => \D_PWMA1_carry__1_i_4_n_0\
    );
\D_PWMA1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(23),
      I1 => \^counter_signed_reg\(22),
      O => \D_PWMA1_carry__1_i_1_n_0\
    );
\D_PWMA1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(21),
      I1 => \^counter_signed_reg\(20),
      O => \D_PWMA1_carry__1_i_2_n_0\
    );
\D_PWMA1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(19),
      I1 => \^counter_signed_reg\(18),
      O => \D_PWMA1_carry__1_i_3_n_0\
    );
\D_PWMA1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(17),
      I1 => \^counter_signed_reg\(16),
      O => \D_PWMA1_carry__1_i_4_n_0\
    );
\D_PWMA1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMA1_carry__1_n_0\,
      CO(3) => \counter_signed_reg[31]_0\(0),
      CO(2) => \D_PWMA1_carry__2_n_1\,
      CO(1) => \D_PWMA1_carry__2_n_2\,
      CO(0) => \D_PWMA1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \^counter_signed_reg\(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_D_PWMA1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \D_PWMA1_carry__2_i_1_n_0\,
      S(2) => \D_PWMA1_carry__2_i_2_n_0\,
      S(1) => \D_PWMA1_carry__2_i_3_n_0\,
      S(0) => \D_PWMA1_carry__2_i_4_n_0\
    );
\D_PWMA1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(30),
      I1 => \^counter_signed_reg\(31),
      O => \D_PWMA1_carry__2_i_1_n_0\
    );
\D_PWMA1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(29),
      I1 => \^counter_signed_reg\(28),
      O => \D_PWMA1_carry__2_i_2_n_0\
    );
\D_PWMA1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(27),
      I1 => \^counter_signed_reg\(26),
      O => \D_PWMA1_carry__2_i_3_n_0\
    );
\D_PWMA1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(25),
      I1 => \^counter_signed_reg\(24),
      O => \D_PWMA1_carry__2_i_4_n_0\
    );
D_PWMA1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => D_PWMA1_carry_0(5),
      I1 => \^counter_signed_reg\(7),
      I2 => \^counter_signed_reg\(6),
      O => D_PWMA1_carry_i_1_n_0
    );
D_PWMA1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => D_PWMA1_carry_0(5),
      I1 => \^counter_signed_reg\(7),
      I2 => \^counter_signed_reg\(6),
      O => D_PWMA1_carry_i_5_n_0
    );
D_PWMA1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      I2 => D_PWMA1_carry_0(3),
      I3 => D_PWMA1_carry_0(4),
      O => D_PWMA1_carry_i_8_n_0
    );
\D_PWMA1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \D_PWMA1_inferred__0/i__carry_n_0\,
      CO(2) => \D_PWMA1_inferred__0/i__carry_n_1\,
      CO(1) => \D_PWMA1_inferred__0/i__carry_n_2\,
      CO(0) => \D_PWMA1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \D_PWMA1_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMA1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \D_PWMA1_inferred__0/i__carry__0_1\(2 downto 0),
      S(0) => \i__carry_i_8__0_n_0\
    );
\D_PWMA1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMA1_inferred__0/i__carry_n_0\,
      CO(3) => \D_PWMA1_inferred__0/i__carry__0_n_0\,
      CO(2) => \D_PWMA1_inferred__0/i__carry__0_n_1\,
      CO(1) => \D_PWMA1_inferred__0/i__carry__0_n_2\,
      CO(0) => \D_PWMA1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \D_PWMA1_inferred__0/i__carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \D_PWMA1_inferred__0/i__carry__1_1\(3 downto 0)
    );
\D_PWMA1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMA1_inferred__0/i__carry__0_n_0\,
      CO(3) => \D_PWMA1_inferred__0/i__carry__1_n_0\,
      CO(2) => \D_PWMA1_inferred__0/i__carry__1_n_1\,
      CO(1) => \D_PWMA1_inferred__0/i__carry__1_n_2\,
      CO(0) => \D_PWMA1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \D_PWMA1_inferred__0/i__carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \D_PWMA1_inferred__0/i__carry__2_1\(3 downto 0)
    );
\D_PWMA1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMA1_inferred__0/i__carry__1_n_0\,
      CO(3) => \slv_reg1_reg[28]\(0),
      CO(2) => \D_PWMA1_inferred__0/i__carry__2_n_1\,
      CO(1) => \D_PWMA1_inferred__0/i__carry__2_n_2\,
      CO(0) => \D_PWMA1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D_PWMA_reg_1(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => D_PWMA_reg_2(3 downto 0)
    );
D_PWMA_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => D_PWMA_reg_0,
      Q => D_PWMA
    );
D_PWMB1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => D_PWMB1_carry_n_0,
      CO(2) => D_PWMB1_carry_n_1,
      CO(1) => D_PWMB1_carry_n_2,
      CO(0) => D_PWMB1_carry_n_3,
      CYINIT => '0',
      DI(3) => D_PWMB1_carry_i_1_n_0,
      DI(2 downto 0) => \D_PWMB1_carry__0_0\(2 downto 0),
      O(3 downto 0) => NLW_D_PWMB1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => D_PWMB1_carry_i_5_n_0,
      S(2 downto 1) => \D_PWMB1_carry__0_1\(1 downto 0),
      S(0) => D_PWMB1_carry_i_8_n_0
    );
\D_PWMB1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => D_PWMB1_carry_n_0,
      CO(3) => \D_PWMB1_carry__0_n_0\,
      CO(2) => \D_PWMB1_carry__0_n_1\,
      CO(1) => \D_PWMB1_carry__0_n_2\,
      CO(0) => \D_PWMB1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_D_PWMB1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \D_PWMB1_carry__0_i_1_n_0\,
      S(2) => \D_PWMB1_carry__0_i_2_n_0\,
      S(1) => \D_PWMB1_carry__0_i_3_n_0\,
      S(0) => \D_PWMB1_carry__0_i_4_n_0\
    );
\D_PWMB1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(15),
      I1 => \^counter_signed_reg\(14),
      O => \D_PWMB1_carry__0_i_1_n_0\
    );
\D_PWMB1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(13),
      I1 => \^counter_signed_reg\(12),
      O => \D_PWMB1_carry__0_i_2_n_0\
    );
\D_PWMB1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(11),
      I1 => \^counter_signed_reg\(10),
      O => \D_PWMB1_carry__0_i_3_n_0\
    );
\D_PWMB1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(9),
      I1 => \^counter_signed_reg\(8),
      O => \D_PWMB1_carry__0_i_4_n_0\
    );
\D_PWMB1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMB1_carry__0_n_0\,
      CO(3) => \D_PWMB1_carry__1_n_0\,
      CO(2) => \D_PWMB1_carry__1_n_1\,
      CO(1) => \D_PWMB1_carry__1_n_2\,
      CO(0) => \D_PWMB1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_D_PWMB1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \D_PWMB1_carry__1_i_1_n_0\,
      S(2) => \D_PWMB1_carry__1_i_2_n_0\,
      S(1) => \D_PWMB1_carry__1_i_3_n_0\,
      S(0) => \D_PWMB1_carry__1_i_4_n_0\
    );
\D_PWMB1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(23),
      I1 => \^counter_signed_reg\(22),
      O => \D_PWMB1_carry__1_i_1_n_0\
    );
\D_PWMB1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(21),
      I1 => \^counter_signed_reg\(20),
      O => \D_PWMB1_carry__1_i_2_n_0\
    );
\D_PWMB1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(19),
      I1 => \^counter_signed_reg\(18),
      O => \D_PWMB1_carry__1_i_3_n_0\
    );
\D_PWMB1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(17),
      I1 => \^counter_signed_reg\(16),
      O => \D_PWMB1_carry__1_i_4_n_0\
    );
\D_PWMB1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMB1_carry__1_n_0\,
      CO(3) => \counter_signed_reg[31]_1\(0),
      CO(2) => \D_PWMB1_carry__2_n_1\,
      CO(1) => \D_PWMB1_carry__2_n_2\,
      CO(0) => \D_PWMB1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \^counter_signed_reg\(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_D_PWMB1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \D_PWMB1_carry__2_i_1_n_0\,
      S(2) => \D_PWMB1_carry__2_i_2_n_0\,
      S(1) => \D_PWMB1_carry__2_i_3_n_0\,
      S(0) => \D_PWMB1_carry__2_i_4_n_0\
    );
\D_PWMB1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(30),
      I1 => \^counter_signed_reg\(31),
      O => \D_PWMB1_carry__2_i_1_n_0\
    );
\D_PWMB1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(29),
      I1 => \^counter_signed_reg\(28),
      O => \D_PWMB1_carry__2_i_2_n_0\
    );
\D_PWMB1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(27),
      I1 => \^counter_signed_reg\(26),
      O => \D_PWMB1_carry__2_i_3_n_0\
    );
\D_PWMB1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(25),
      I1 => \^counter_signed_reg\(24),
      O => \D_PWMB1_carry__2_i_4_n_0\
    );
D_PWMB1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => D_PWMA1_carry_0(2),
      I1 => \^counter_signed_reg\(7),
      I2 => \^counter_signed_reg\(6),
      O => D_PWMB1_carry_i_1_n_0
    );
D_PWMB1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => D_PWMA1_carry_0(2),
      I1 => \^counter_signed_reg\(7),
      I2 => \^counter_signed_reg\(6),
      O => D_PWMB1_carry_i_5_n_0
    );
D_PWMB1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      I2 => D_PWMA1_carry_0(0),
      I3 => D_PWMA1_carry_0(1),
      O => D_PWMB1_carry_i_8_n_0
    );
\D_PWMB1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \D_PWMB1_inferred__0/i__carry_n_0\,
      CO(2) => \D_PWMB1_inferred__0/i__carry_n_1\,
      CO(1) => \D_PWMB1_inferred__0/i__carry_n_2\,
      CO(0) => \D_PWMB1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \D_PWMB1_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMB1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \D_PWMB1_inferred__0/i__carry__0_1\(2 downto 0),
      S(0) => \i__carry_i_8__1_n_0\
    );
\D_PWMB1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMB1_inferred__0/i__carry_n_0\,
      CO(3) => \D_PWMB1_inferred__0/i__carry__0_n_0\,
      CO(2) => \D_PWMB1_inferred__0/i__carry__0_n_1\,
      CO(1) => \D_PWMB1_inferred__0/i__carry__0_n_2\,
      CO(0) => \D_PWMB1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \D_PWMB1_inferred__0/i__carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMB1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \D_PWMB1_inferred__0/i__carry__1_1\(3 downto 0)
    );
\D_PWMB1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMB1_inferred__0/i__carry__0_n_0\,
      CO(3) => \D_PWMB1_inferred__0/i__carry__1_n_0\,
      CO(2) => \D_PWMB1_inferred__0/i__carry__1_n_1\,
      CO(1) => \D_PWMB1_inferred__0/i__carry__1_n_2\,
      CO(0) => \D_PWMB1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \D_PWMB1_inferred__0/i__carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMB1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \D_PWMB1_inferred__0/i__carry__2_1\(3 downto 0)
    );
\D_PWMB1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \D_PWMB1_inferred__0/i__carry__1_n_0\,
      CO(3) => \slv_reg1_reg[9]\(0),
      CO(2) => \D_PWMB1_inferred__0/i__carry__2_n_1\,
      CO(1) => \D_PWMB1_inferred__0/i__carry__2_n_2\,
      CO(0) => \D_PWMB1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => D_PWMB_reg_1(3 downto 0),
      O(3 downto 0) => \NLW_D_PWMB1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => D_PWMB_reg_2(3 downto 0)
    );
D_PWMB_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => D_PWMB_reg_0,
      Q => D_PWMB
    );
S_AIN1_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => S_AIN19_out,
      Q => S_AIN1
    );
S_AIN2_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => S_AIN27_out,
      Q => S_AIN2
    );
S_PWMA1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => S_PWMA1_carry_n_0,
      CO(2) => S_PWMA1_carry_n_1,
      CO(1) => S_PWMA1_carry_n_2,
      CO(0) => S_PWMA1_carry_n_3,
      CYINIT => '0',
      DI(3) => S_PWMA1_carry_i_1_n_0,
      DI(2) => S_PWMA1_carry_i_2_n_0,
      DI(1) => S_PWMA1_carry_i_3_n_0,
      DI(0) => S_PWMA1_carry_i_4_n_0,
      O(3 downto 0) => NLW_S_PWMA1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => S_PWMA1_carry_i_5_n_0,
      S(2) => S_PWMA1_carry_i_6_n_0,
      S(1) => S_PWMA1_carry_i_7_n_0,
      S(0) => S_PWMA1_carry_i_8_n_0
    );
\S_PWMA1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => S_PWMA1_carry_n_0,
      CO(3) => \S_PWMA1_carry__0_n_0\,
      CO(2) => \S_PWMA1_carry__0_n_1\,
      CO(1) => \S_PWMA1_carry__0_n_2\,
      CO(0) => \S_PWMA1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_S_PWMA1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_PWMA1_carry__0_i_1_n_0\,
      S(2) => \S_PWMA1_carry__0_i_2_n_0\,
      S(1) => \S_PWMA1_carry__0_i_3_n_0\,
      S(0) => \S_PWMA1_carry__0_i_4_n_0\
    );
\S_PWMA1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(15),
      I1 => \^counter_signed_reg\(14),
      O => \S_PWMA1_carry__0_i_1_n_0\
    );
\S_PWMA1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(13),
      I1 => \^counter_signed_reg\(12),
      O => \S_PWMA1_carry__0_i_2_n_0\
    );
\S_PWMA1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(11),
      I1 => \^counter_signed_reg\(10),
      O => \S_PWMA1_carry__0_i_3_n_0\
    );
\S_PWMA1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(9),
      I1 => \^counter_signed_reg\(8),
      O => \S_PWMA1_carry__0_i_4_n_0\
    );
\S_PWMA1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_PWMA1_carry__0_n_0\,
      CO(3) => \S_PWMA1_carry__1_n_0\,
      CO(2) => \S_PWMA1_carry__1_n_1\,
      CO(1) => \S_PWMA1_carry__1_n_2\,
      CO(0) => \S_PWMA1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_S_PWMA1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_PWMA1_carry__1_i_1_n_0\,
      S(2) => \S_PWMA1_carry__1_i_2_n_0\,
      S(1) => \S_PWMA1_carry__1_i_3_n_0\,
      S(0) => \S_PWMA1_carry__1_i_4_n_0\
    );
\S_PWMA1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(23),
      I1 => \^counter_signed_reg\(22),
      O => \S_PWMA1_carry__1_i_1_n_0\
    );
\S_PWMA1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(21),
      I1 => \^counter_signed_reg\(20),
      O => \S_PWMA1_carry__1_i_2_n_0\
    );
\S_PWMA1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(19),
      I1 => \^counter_signed_reg\(18),
      O => \S_PWMA1_carry__1_i_3_n_0\
    );
\S_PWMA1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(17),
      I1 => \^counter_signed_reg\(16),
      O => \S_PWMA1_carry__1_i_4_n_0\
    );
\S_PWMA1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_PWMA1_carry__1_n_0\,
      CO(3) => S_PWMA1,
      CO(2) => \S_PWMA1_carry__2_n_1\,
      CO(1) => \S_PWMA1_carry__2_n_2\,
      CO(0) => \S_PWMA1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \^counter_signed_reg\(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_S_PWMA1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \S_PWMA1_carry__2_i_1_n_0\,
      S(2) => \S_PWMA1_carry__2_i_2_n_0\,
      S(1) => \S_PWMA1_carry__2_i_3_n_0\,
      S(0) => \S_PWMA1_carry__2_i_4_n_0\
    );
\S_PWMA1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(30),
      I1 => \^counter_signed_reg\(31),
      O => \S_PWMA1_carry__2_i_1_n_0\
    );
\S_PWMA1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(29),
      I1 => \^counter_signed_reg\(28),
      O => \S_PWMA1_carry__2_i_2_n_0\
    );
\S_PWMA1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(27),
      I1 => \^counter_signed_reg\(26),
      O => \S_PWMA1_carry__2_i_3_n_0\
    );
\S_PWMA1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(25),
      I1 => \^counter_signed_reg\(24),
      O => \S_PWMA1_carry__2_i_4_n_0\
    );
S_PWMA1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => Q(27),
      I1 => \^counter_signed_reg\(7),
      I2 => \^counter_signed_reg\(6),
      O => S_PWMA1_carry_i_1_n_0
    );
S_PWMA1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => \^counter_signed_reg\(5),
      I1 => Q(25),
      I2 => Q(26),
      I3 => \^counter_signed_reg\(4),
      O => S_PWMA1_carry_i_2_n_0
    );
S_PWMA1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50D4"
    )
        port map (
      I0 => \^counter_signed_reg\(3),
      I1 => Q(23),
      I2 => Q(24),
      I3 => \^counter_signed_reg\(2),
      O => S_PWMA1_carry_i_3_n_0
    );
S_PWMA1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => \^counter_signed_reg\(1),
      I1 => \^counter_signed_reg\(0),
      I2 => Q(21),
      I3 => Q(22),
      O => S_PWMA1_carry_i_4_n_0
    );
S_PWMA1_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => Q(27),
      I1 => \^counter_signed_reg\(7),
      I2 => \^counter_signed_reg\(6),
      O => S_PWMA1_carry_i_5_n_0
    );
S_PWMA1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_signed_reg\(4),
      I1 => Q(25),
      I2 => \^counter_signed_reg\(5),
      I3 => Q(26),
      O => S_PWMA1_carry_i_6_n_0
    );
S_PWMA1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_signed_reg\(2),
      I1 => Q(23),
      I2 => \^counter_signed_reg\(3),
      I3 => Q(24),
      O => S_PWMA1_carry_i_7_n_0
    );
S_PWMA1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      I2 => Q(21),
      I3 => Q(22),
      O => S_PWMA1_carry_i_8_n_0
    );
\S_PWMA1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \S_PWMA1_inferred__0/i__carry_n_0\,
      CO(2) => \S_PWMA1_inferred__0/i__carry_n_1\,
      CO(1) => \S_PWMA1_inferred__0/i__carry_n_2\,
      CO(0) => \S_PWMA1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \S_PWMA1_inferred__0/i__carry__0_0\(3 downto 0),
      O(3 downto 0) => \NLW_S_PWMA1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \S_PWMA1_inferred__0/i__carry__0_1\(2 downto 0),
      S(0) => \i__carry_i_8_n_0\
    );
\S_PWMA1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_PWMA1_inferred__0/i__carry_n_0\,
      CO(3) => \S_PWMA1_inferred__0/i__carry__0_n_0\,
      CO(2) => \S_PWMA1_inferred__0/i__carry__0_n_1\,
      CO(1) => \S_PWMA1_inferred__0/i__carry__0_n_2\,
      CO(0) => \S_PWMA1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \S_PWMA1_inferred__0/i__carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_S_PWMA1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \S_PWMA1_inferred__0/i__carry__1_1\(3 downto 0)
    );
\S_PWMA1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_PWMA1_inferred__0/i__carry__0_n_0\,
      CO(3) => \S_PWMA1_inferred__0/i__carry__1_n_0\,
      CO(2) => \S_PWMA1_inferred__0/i__carry__1_n_1\,
      CO(1) => \S_PWMA1_inferred__0/i__carry__1_n_2\,
      CO(0) => \S_PWMA1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \S_PWMA1_inferred__0/i__carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_S_PWMA1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \S_PWMA1_inferred__0/i__carry__2_1\(3 downto 0)
    );
\S_PWMA1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_PWMA1_inferred__0/i__carry__1_n_0\,
      CO(3) => S_PWMA110_in,
      CO(2) => \S_PWMA1_inferred__0/i__carry__2_n_1\,
      CO(1) => \S_PWMA1_inferred__0/i__carry__2_n_2\,
      CO(0) => \S_PWMA1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => S_PWMA_reg_0(3 downto 0),
      O(3 downto 0) => \NLW_S_PWMA1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
S_PWMA_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => S_PWMA1,
      I1 => S_PWMA110_in,
      I2 => \^co\(0),
      I3 => \^steer_enable\,
      O => S_PWMA_i_1_n_0
    );
S_PWMA_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => S_PWMA_i_1_n_0,
      Q => S_PWMA
    );
counter_signed1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_signed1_carry_n_0,
      CO(2) => counter_signed1_carry_n_1,
      CO(1) => counter_signed1_carry_n_2,
      CO(0) => counter_signed1_carry_n_3,
      CYINIT => counter_signed1_carry_i_1_n_0,
      DI(3) => counter_signed1_carry_i_2_n_0,
      DI(2) => \^counter_signed_reg\(7),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_counter_signed1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter_signed1_carry_i_3_n_0,
      S(2) => counter_signed1_carry_i_4_n_0,
      S(1) => counter_signed1_carry_i_5_n_0,
      S(0) => counter_signed1_carry_i_6_n_0
    );
\counter_signed1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_signed1_carry_n_0,
      CO(3) => \counter_signed1_carry__0_n_0\,
      CO(2) => \counter_signed1_carry__0_n_1\,
      CO(1) => \counter_signed1_carry__0_n_2\,
      CO(0) => \counter_signed1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter_signed1_carry__0_i_1_n_0\,
      DI(2) => \counter_signed1_carry__0_i_2_n_0\,
      DI(1) => \counter_signed1_carry__0_i_3_n_0\,
      DI(0) => \counter_signed1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counter_signed1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_signed1_carry__0_i_5_n_0\,
      S(2) => \counter_signed1_carry__0_i_6_n_0\,
      S(1) => \counter_signed1_carry__0_i_7_n_0\,
      S(0) => \counter_signed1_carry__0_i_8_n_0\
    );
\counter_signed1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(16),
      I1 => \^counter_signed_reg\(17),
      O => \counter_signed1_carry__0_i_1_n_0\
    );
\counter_signed1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(14),
      I1 => \^counter_signed_reg\(15),
      O => \counter_signed1_carry__0_i_2_n_0\
    );
\counter_signed1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(12),
      I1 => \^counter_signed_reg\(13),
      O => \counter_signed1_carry__0_i_3_n_0\
    );
\counter_signed1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(10),
      I1 => \^counter_signed_reg\(11),
      O => \counter_signed1_carry__0_i_4_n_0\
    );
\counter_signed1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(17),
      I1 => \^counter_signed_reg\(16),
      O => \counter_signed1_carry__0_i_5_n_0\
    );
\counter_signed1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(15),
      I1 => \^counter_signed_reg\(14),
      O => \counter_signed1_carry__0_i_6_n_0\
    );
\counter_signed1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(13),
      I1 => \^counter_signed_reg\(12),
      O => \counter_signed1_carry__0_i_7_n_0\
    );
\counter_signed1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(11),
      I1 => \^counter_signed_reg\(10),
      O => \counter_signed1_carry__0_i_8_n_0\
    );
\counter_signed1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed1_carry__0_n_0\,
      CO(3) => \counter_signed1_carry__1_n_0\,
      CO(2) => \counter_signed1_carry__1_n_1\,
      CO(1) => \counter_signed1_carry__1_n_2\,
      CO(0) => \counter_signed1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \counter_signed1_carry__1_i_1_n_0\,
      DI(2) => \counter_signed1_carry__1_i_2_n_0\,
      DI(1) => \counter_signed1_carry__1_i_3_n_0\,
      DI(0) => \counter_signed1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_counter_signed1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_signed1_carry__1_i_5_n_0\,
      S(2) => \counter_signed1_carry__1_i_6_n_0\,
      S(1) => \counter_signed1_carry__1_i_7_n_0\,
      S(0) => \counter_signed1_carry__1_i_8_n_0\
    );
\counter_signed1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(24),
      I1 => \^counter_signed_reg\(25),
      O => \counter_signed1_carry__1_i_1_n_0\
    );
\counter_signed1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(22),
      I1 => \^counter_signed_reg\(23),
      O => \counter_signed1_carry__1_i_2_n_0\
    );
\counter_signed1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(20),
      I1 => \^counter_signed_reg\(21),
      O => \counter_signed1_carry__1_i_3_n_0\
    );
\counter_signed1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(18),
      I1 => \^counter_signed_reg\(19),
      O => \counter_signed1_carry__1_i_4_n_0\
    );
\counter_signed1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(25),
      I1 => \^counter_signed_reg\(24),
      O => \counter_signed1_carry__1_i_5_n_0\
    );
\counter_signed1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(23),
      I1 => \^counter_signed_reg\(22),
      O => \counter_signed1_carry__1_i_6_n_0\
    );
\counter_signed1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(21),
      I1 => \^counter_signed_reg\(20),
      O => \counter_signed1_carry__1_i_7_n_0\
    );
\counter_signed1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(19),
      I1 => \^counter_signed_reg\(18),
      O => \counter_signed1_carry__1_i_8_n_0\
    );
\counter_signed1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed1_carry__1_n_0\,
      CO(3) => \NLW_counter_signed1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => load,
      CO(1) => \counter_signed1_carry__2_n_2\,
      CO(0) => \counter_signed1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \counter_signed1_carry__2_i_1_n_0\,
      DI(1) => \counter_signed1_carry__2_i_2_n_0\,
      DI(0) => \counter_signed1_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_counter_signed1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \counter_signed1_carry__2_i_4_n_0\,
      S(1) => \counter_signed1_carry__2_i_5_n_0\,
      S(0) => \counter_signed1_carry__2_i_6_n_0\
    );
\counter_signed1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(30),
      I1 => \^counter_signed_reg\(31),
      O => \counter_signed1_carry__2_i_1_n_0\
    );
\counter_signed1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(28),
      I1 => \^counter_signed_reg\(29),
      O => \counter_signed1_carry__2_i_2_n_0\
    );
\counter_signed1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(26),
      I1 => \^counter_signed_reg\(27),
      O => \counter_signed1_carry__2_i_3_n_0\
    );
\counter_signed1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(30),
      I1 => \^counter_signed_reg\(31),
      O => \counter_signed1_carry__2_i_4_n_0\
    );
\counter_signed1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(29),
      I1 => \^counter_signed_reg\(28),
      O => \counter_signed1_carry__2_i_5_n_0\
    );
\counter_signed1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(27),
      I1 => \^counter_signed_reg\(26),
      O => \counter_signed1_carry__2_i_6_n_0\
    );
counter_signed1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      O => counter_signed1_carry_i_1_n_0
    );
counter_signed1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^counter_signed_reg\(8),
      I1 => \^counter_signed_reg\(9),
      O => counter_signed1_carry_i_2_n_0
    );
counter_signed1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(9),
      I1 => \^counter_signed_reg\(8),
      O => counter_signed1_carry_i_3_n_0
    );
counter_signed1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(6),
      I1 => \^counter_signed_reg\(7),
      O => counter_signed1_carry_i_4_n_0
    );
counter_signed1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counter_signed_reg\(4),
      I1 => \^counter_signed_reg\(5),
      O => counter_signed1_carry_i_5_n_0
    );
counter_signed1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^counter_signed_reg\(2),
      I1 => \^counter_signed_reg\(3),
      O => counter_signed1_carry_i_6_n_0
    );
\counter_signed[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \prescale_cnt[2]_i_2_n_0\,
      I1 => prescale_cnt(1),
      I2 => prescale_cnt(2),
      I3 => prescale_cnt(0),
      O => counter_signed
    );
\counter_signed[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => load,
      O => \counter_signed[0]_i_3_n_0\
    );
\counter_signed[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(3),
      I1 => load,
      O => \counter_signed[0]_i_4_n_0\
    );
\counter_signed[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(2),
      I1 => load,
      O => \counter_signed[0]_i_5_n_0\
    );
\counter_signed[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(1),
      I1 => load,
      O => \counter_signed[0]_i_6_n_0\
    );
\counter_signed[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => load,
      O => \counter_signed[0]_i_7_n_0\
    );
\counter_signed[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(15),
      O => \counter_signed[12]_i_2_n_0\
    );
\counter_signed[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(14),
      O => \counter_signed[12]_i_3_n_0\
    );
\counter_signed[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(13),
      O => \counter_signed[12]_i_4_n_0\
    );
\counter_signed[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(12),
      O => \counter_signed[12]_i_5_n_0\
    );
\counter_signed[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(19),
      O => \counter_signed[16]_i_2_n_0\
    );
\counter_signed[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(18),
      O => \counter_signed[16]_i_3_n_0\
    );
\counter_signed[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(17),
      O => \counter_signed[16]_i_4_n_0\
    );
\counter_signed[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(16),
      O => \counter_signed[16]_i_5_n_0\
    );
\counter_signed[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(23),
      O => \counter_signed[20]_i_2_n_0\
    );
\counter_signed[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(22),
      O => \counter_signed[20]_i_3_n_0\
    );
\counter_signed[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(21),
      O => \counter_signed[20]_i_4_n_0\
    );
\counter_signed[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(20),
      O => \counter_signed[20]_i_5_n_0\
    );
\counter_signed[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(27),
      O => \counter_signed[24]_i_2_n_0\
    );
\counter_signed[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(26),
      O => \counter_signed[24]_i_3_n_0\
    );
\counter_signed[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(25),
      O => \counter_signed[24]_i_4_n_0\
    );
\counter_signed[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(24),
      O => \counter_signed[24]_i_5_n_0\
    );
\counter_signed[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(31),
      O => \counter_signed[28]_i_2_n_0\
    );
\counter_signed[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(30),
      O => \counter_signed[28]_i_3_n_0\
    );
\counter_signed[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(29),
      O => \counter_signed[28]_i_4_n_0\
    );
\counter_signed[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(28),
      O => \counter_signed[28]_i_5_n_0\
    );
\counter_signed[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(7),
      O => \counter_signed[4]_i_2_n_0\
    );
\counter_signed[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(6),
      I1 => load,
      O => \counter_signed[4]_i_3_n_0\
    );
\counter_signed[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(5),
      I1 => load,
      O => \counter_signed[4]_i_4_n_0\
    );
\counter_signed[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_signed_reg\(4),
      I1 => load,
      O => \counter_signed[4]_i_5_n_0\
    );
\counter_signed[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(11),
      O => \counter_signed[8]_i_2_n_0\
    );
\counter_signed[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(10),
      O => \counter_signed[8]_i_3_n_0\
    );
\counter_signed[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(9),
      O => \counter_signed[8]_i_4_n_0\
    );
\counter_signed[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => load,
      I1 => \^counter_signed_reg\(8),
      O => \counter_signed[8]_i_5_n_0\
    );
\counter_signed_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[0]_i_2_n_7\,
      Q => \^counter_signed_reg\(0)
    );
\counter_signed_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_signed_reg[0]_i_2_n_0\,
      CO(2) => \counter_signed_reg[0]_i_2_n_1\,
      CO(1) => \counter_signed_reg[0]_i_2_n_2\,
      CO(0) => \counter_signed_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter_signed[0]_i_3_n_0\,
      O(3) => \counter_signed_reg[0]_i_2_n_4\,
      O(2) => \counter_signed_reg[0]_i_2_n_5\,
      O(1) => \counter_signed_reg[0]_i_2_n_6\,
      O(0) => \counter_signed_reg[0]_i_2_n_7\,
      S(3) => \counter_signed[0]_i_4_n_0\,
      S(2) => \counter_signed[0]_i_5_n_0\,
      S(1) => \counter_signed[0]_i_6_n_0\,
      S(0) => \counter_signed[0]_i_7_n_0\
    );
\counter_signed_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[8]_i_1_n_5\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(10)
    );
\counter_signed_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[8]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(11)
    );
\counter_signed_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[12]_i_1_n_7\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(12)
    );
\counter_signed_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[8]_i_1_n_0\,
      CO(3) => \counter_signed_reg[12]_i_1_n_0\,
      CO(2) => \counter_signed_reg[12]_i_1_n_1\,
      CO(1) => \counter_signed_reg[12]_i_1_n_2\,
      CO(0) => \counter_signed_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[12]_i_1_n_4\,
      O(2) => \counter_signed_reg[12]_i_1_n_5\,
      O(1) => \counter_signed_reg[12]_i_1_n_6\,
      O(0) => \counter_signed_reg[12]_i_1_n_7\,
      S(3) => \counter_signed[12]_i_2_n_0\,
      S(2) => \counter_signed[12]_i_3_n_0\,
      S(1) => \counter_signed[12]_i_4_n_0\,
      S(0) => \counter_signed[12]_i_5_n_0\
    );
\counter_signed_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[12]_i_1_n_6\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(13)
    );
\counter_signed_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[12]_i_1_n_5\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(14)
    );
\counter_signed_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[12]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(15)
    );
\counter_signed_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[16]_i_1_n_7\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(16)
    );
\counter_signed_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[12]_i_1_n_0\,
      CO(3) => \counter_signed_reg[16]_i_1_n_0\,
      CO(2) => \counter_signed_reg[16]_i_1_n_1\,
      CO(1) => \counter_signed_reg[16]_i_1_n_2\,
      CO(0) => \counter_signed_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[16]_i_1_n_4\,
      O(2) => \counter_signed_reg[16]_i_1_n_5\,
      O(1) => \counter_signed_reg[16]_i_1_n_6\,
      O(0) => \counter_signed_reg[16]_i_1_n_7\,
      S(3) => \counter_signed[16]_i_2_n_0\,
      S(2) => \counter_signed[16]_i_3_n_0\,
      S(1) => \counter_signed[16]_i_4_n_0\,
      S(0) => \counter_signed[16]_i_5_n_0\
    );
\counter_signed_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[16]_i_1_n_6\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(17)
    );
\counter_signed_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[16]_i_1_n_5\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(18)
    );
\counter_signed_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[16]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(19)
    );
\counter_signed_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[0]_i_2_n_6\,
      Q => \^counter_signed_reg\(1)
    );
\counter_signed_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[20]_i_1_n_7\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(20)
    );
\counter_signed_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[16]_i_1_n_0\,
      CO(3) => \counter_signed_reg[20]_i_1_n_0\,
      CO(2) => \counter_signed_reg[20]_i_1_n_1\,
      CO(1) => \counter_signed_reg[20]_i_1_n_2\,
      CO(0) => \counter_signed_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[20]_i_1_n_4\,
      O(2) => \counter_signed_reg[20]_i_1_n_5\,
      O(1) => \counter_signed_reg[20]_i_1_n_6\,
      O(0) => \counter_signed_reg[20]_i_1_n_7\,
      S(3) => \counter_signed[20]_i_2_n_0\,
      S(2) => \counter_signed[20]_i_3_n_0\,
      S(1) => \counter_signed[20]_i_4_n_0\,
      S(0) => \counter_signed[20]_i_5_n_0\
    );
\counter_signed_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[20]_i_1_n_6\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(21)
    );
\counter_signed_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[20]_i_1_n_5\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(22)
    );
\counter_signed_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[20]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(23)
    );
\counter_signed_reg[24]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[24]_i_1_n_7\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(24)
    );
\counter_signed_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[20]_i_1_n_0\,
      CO(3) => \counter_signed_reg[24]_i_1_n_0\,
      CO(2) => \counter_signed_reg[24]_i_1_n_1\,
      CO(1) => \counter_signed_reg[24]_i_1_n_2\,
      CO(0) => \counter_signed_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[24]_i_1_n_4\,
      O(2) => \counter_signed_reg[24]_i_1_n_5\,
      O(1) => \counter_signed_reg[24]_i_1_n_6\,
      O(0) => \counter_signed_reg[24]_i_1_n_7\,
      S(3) => \counter_signed[24]_i_2_n_0\,
      S(2) => \counter_signed[24]_i_3_n_0\,
      S(1) => \counter_signed[24]_i_4_n_0\,
      S(0) => \counter_signed[24]_i_5_n_0\
    );
\counter_signed_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[24]_i_1_n_6\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(25)
    );
\counter_signed_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[24]_i_1_n_5\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(26)
    );
\counter_signed_reg[27]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[24]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(27)
    );
\counter_signed_reg[28]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[28]_i_1_n_7\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(28)
    );
\counter_signed_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[24]_i_1_n_0\,
      CO(3) => \NLW_counter_signed_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_signed_reg[28]_i_1_n_1\,
      CO(1) => \counter_signed_reg[28]_i_1_n_2\,
      CO(0) => \counter_signed_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[28]_i_1_n_4\,
      O(2) => \counter_signed_reg[28]_i_1_n_5\,
      O(1) => \counter_signed_reg[28]_i_1_n_6\,
      O(0) => \counter_signed_reg[28]_i_1_n_7\,
      S(3) => \counter_signed[28]_i_2_n_0\,
      S(2) => \counter_signed[28]_i_3_n_0\,
      S(1) => \counter_signed[28]_i_4_n_0\,
      S(0) => \counter_signed[28]_i_5_n_0\
    );
\counter_signed_reg[29]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[28]_i_1_n_6\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(29)
    );
\counter_signed_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[0]_i_2_n_5\,
      Q => \^counter_signed_reg\(2)
    );
\counter_signed_reg[30]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[28]_i_1_n_5\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(30)
    );
\counter_signed_reg[31]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[28]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(31)
    );
\counter_signed_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[0]_i_2_n_4\,
      Q => \^counter_signed_reg\(3)
    );
\counter_signed_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[4]_i_1_n_7\,
      Q => \^counter_signed_reg\(4)
    );
\counter_signed_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[0]_i_2_n_0\,
      CO(3) => \counter_signed_reg[4]_i_1_n_0\,
      CO(2) => \counter_signed_reg[4]_i_1_n_1\,
      CO(1) => \counter_signed_reg[4]_i_1_n_2\,
      CO(0) => \counter_signed_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[4]_i_1_n_4\,
      O(2) => \counter_signed_reg[4]_i_1_n_5\,
      O(1) => \counter_signed_reg[4]_i_1_n_6\,
      O(0) => \counter_signed_reg[4]_i_1_n_7\,
      S(3) => \counter_signed[4]_i_2_n_0\,
      S(2) => \counter_signed[4]_i_3_n_0\,
      S(1) => \counter_signed[4]_i_4_n_0\,
      S(0) => \counter_signed[4]_i_5_n_0\
    );
\counter_signed_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[4]_i_1_n_6\,
      Q => \^counter_signed_reg\(5)
    );
\counter_signed_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      CLR => SR(0),
      D => \counter_signed_reg[4]_i_1_n_5\,
      Q => \^counter_signed_reg\(6)
    );
\counter_signed_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[4]_i_1_n_4\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(7)
    );
\counter_signed_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[8]_i_1_n_7\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(8)
    );
\counter_signed_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_signed_reg[4]_i_1_n_0\,
      CO(3) => \counter_signed_reg[8]_i_1_n_0\,
      CO(2) => \counter_signed_reg[8]_i_1_n_1\,
      CO(1) => \counter_signed_reg[8]_i_1_n_2\,
      CO(0) => \counter_signed_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_signed_reg[8]_i_1_n_4\,
      O(2) => \counter_signed_reg[8]_i_1_n_5\,
      O(1) => \counter_signed_reg[8]_i_1_n_6\,
      O(0) => \counter_signed_reg[8]_i_1_n_7\,
      S(3) => \counter_signed[8]_i_2_n_0\,
      S(2) => \counter_signed[8]_i_3_n_0\,
      S(1) => \counter_signed[8]_i_4_n_0\,
      S(0) => \counter_signed[8]_i_5_n_0\
    );
\counter_signed_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => counter_signed,
      D => \counter_signed_reg[8]_i_1_n_6\,
      PRE => SR(0),
      Q => \^counter_signed_reg\(9)
    );
\global_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => global_cnt_reg(0),
      O => \global_cnt[0]_i_2_n_0\
    );
\global_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[0]_i_1_n_7\,
      Q => global_cnt_reg(0)
    );
\global_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \global_cnt_reg[0]_i_1_n_0\,
      CO(2) => \global_cnt_reg[0]_i_1_n_1\,
      CO(1) => \global_cnt_reg[0]_i_1_n_2\,
      CO(0) => \global_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \global_cnt_reg[0]_i_1_n_4\,
      O(2) => \global_cnt_reg[0]_i_1_n_5\,
      O(1) => \global_cnt_reg[0]_i_1_n_6\,
      O(0) => \global_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => global_cnt_reg(3 downto 1),
      S(0) => \global_cnt[0]_i_2_n_0\
    );
\global_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[8]_i_1_n_5\,
      Q => global_cnt_reg(10)
    );
\global_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[8]_i_1_n_4\,
      Q => global_cnt_reg(11)
    );
\global_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[12]_i_1_n_7\,
      Q => global_cnt_reg(12)
    );
\global_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[8]_i_1_n_0\,
      CO(3) => \global_cnt_reg[12]_i_1_n_0\,
      CO(2) => \global_cnt_reg[12]_i_1_n_1\,
      CO(1) => \global_cnt_reg[12]_i_1_n_2\,
      CO(0) => \global_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_cnt_reg[12]_i_1_n_4\,
      O(2) => \global_cnt_reg[12]_i_1_n_5\,
      O(1) => \global_cnt_reg[12]_i_1_n_6\,
      O(0) => \global_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => global_cnt_reg(15 downto 12)
    );
\global_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[12]_i_1_n_6\,
      Q => global_cnt_reg(13)
    );
\global_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[12]_i_1_n_5\,
      Q => global_cnt_reg(14)
    );
\global_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[12]_i_1_n_4\,
      Q => global_cnt_reg(15)
    );
\global_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[16]_i_1_n_7\,
      Q => global_cnt_reg(16)
    );
\global_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[12]_i_1_n_0\,
      CO(3) => \global_cnt_reg[16]_i_1_n_0\,
      CO(2) => \global_cnt_reg[16]_i_1_n_1\,
      CO(1) => \global_cnt_reg[16]_i_1_n_2\,
      CO(0) => \global_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_cnt_reg[16]_i_1_n_4\,
      O(2) => \global_cnt_reg[16]_i_1_n_5\,
      O(1) => \global_cnt_reg[16]_i_1_n_6\,
      O(0) => \global_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => global_cnt_reg(19 downto 16)
    );
\global_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[16]_i_1_n_6\,
      Q => global_cnt_reg(17)
    );
\global_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[16]_i_1_n_5\,
      Q => global_cnt_reg(18)
    );
\global_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[16]_i_1_n_4\,
      Q => global_cnt_reg(19)
    );
\global_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[0]_i_1_n_6\,
      Q => global_cnt_reg(1)
    );
\global_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[20]_i_1_n_7\,
      Q => global_cnt_reg(20)
    );
\global_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[16]_i_1_n_0\,
      CO(3) => \global_cnt_reg[20]_i_1_n_0\,
      CO(2) => \global_cnt_reg[20]_i_1_n_1\,
      CO(1) => \global_cnt_reg[20]_i_1_n_2\,
      CO(0) => \global_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_cnt_reg[20]_i_1_n_4\,
      O(2) => \global_cnt_reg[20]_i_1_n_5\,
      O(1) => \global_cnt_reg[20]_i_1_n_6\,
      O(0) => \global_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => global_cnt_reg(23 downto 20)
    );
\global_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[20]_i_1_n_6\,
      Q => global_cnt_reg(21)
    );
\global_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[20]_i_1_n_5\,
      Q => global_cnt_reg(22)
    );
\global_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[20]_i_1_n_4\,
      Q => global_cnt_reg(23)
    );
\global_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[24]_i_1_n_7\,
      Q => global_cnt_reg(24)
    );
\global_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[20]_i_1_n_0\,
      CO(3) => \global_cnt_reg[24]_i_1_n_0\,
      CO(2) => \global_cnt_reg[24]_i_1_n_1\,
      CO(1) => \global_cnt_reg[24]_i_1_n_2\,
      CO(0) => \global_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_cnt_reg[24]_i_1_n_4\,
      O(2) => \global_cnt_reg[24]_i_1_n_5\,
      O(1) => \global_cnt_reg[24]_i_1_n_6\,
      O(0) => \global_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => global_cnt_reg(27 downto 24)
    );
\global_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[24]_i_1_n_6\,
      Q => global_cnt_reg(25)
    );
\global_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[24]_i_1_n_5\,
      Q => global_cnt_reg(26)
    );
\global_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[24]_i_1_n_4\,
      Q => global_cnt_reg(27)
    );
\global_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[28]_i_1_n_7\,
      Q => global_cnt_reg(28)
    );
\global_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_global_cnt_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_global_cnt_reg[28]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \global_cnt_reg[28]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => global_cnt_reg(28)
    );
\global_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[0]_i_1_n_5\,
      Q => global_cnt_reg(2)
    );
\global_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[0]_i_1_n_4\,
      Q => global_cnt_reg(3)
    );
\global_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[4]_i_1_n_7\,
      Q => global_cnt_reg(4)
    );
\global_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[0]_i_1_n_0\,
      CO(3) => \global_cnt_reg[4]_i_1_n_0\,
      CO(2) => \global_cnt_reg[4]_i_1_n_1\,
      CO(1) => \global_cnt_reg[4]_i_1_n_2\,
      CO(0) => \global_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_cnt_reg[4]_i_1_n_4\,
      O(2) => \global_cnt_reg[4]_i_1_n_5\,
      O(1) => \global_cnt_reg[4]_i_1_n_6\,
      O(0) => \global_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => global_cnt_reg(7 downto 4)
    );
\global_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[4]_i_1_n_6\,
      Q => global_cnt_reg(5)
    );
\global_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[4]_i_1_n_5\,
      Q => global_cnt_reg(6)
    );
\global_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[4]_i_1_n_4\,
      Q => global_cnt_reg(7)
    );
\global_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[8]_i_1_n_7\,
      Q => global_cnt_reg(8)
    );
\global_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \global_cnt_reg[4]_i_1_n_0\,
      CO(3) => \global_cnt_reg[8]_i_1_n_0\,
      CO(2) => \global_cnt_reg[8]_i_1_n_1\,
      CO(1) => \global_cnt_reg[8]_i_1_n_2\,
      CO(0) => \global_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \global_cnt_reg[8]_i_1_n_4\,
      O(2) => \global_cnt_reg[8]_i_1_n_5\,
      O(1) => \global_cnt_reg[8]_i_1_n_6\,
      O(0) => \global_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => global_cnt_reg(11 downto 8)
    );
\global_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => \global_cnt_reg[8]_i_1_n_6\,
      Q => global_cnt_reg(9)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2481"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      I2 => Q(21),
      I3 => Q(22),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2481"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      I2 => D_PWMA1_carry_0(3),
      I3 => D_PWMA1_carry_0(4),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2481"
    )
        port map (
      I0 => \^counter_signed_reg\(0),
      I1 => \^counter_signed_reg\(1),
      I2 => D_PWMA1_carry_0(0),
      I3 => D_PWMA1_carry_0(1),
      O => \i__carry_i_8__1_n_0\
    );
\prescale_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => \prescale_cnt[2]_i_2_n_0\,
      I1 => prescale_cnt(1),
      I2 => prescale_cnt(2),
      I3 => prescale_cnt(0),
      O => prescale_cnt_0(0)
    );
\prescale_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prescale_cnt(0),
      I1 => prescale_cnt(1),
      O => prescale_cnt_0(1)
    );
\prescale_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66C8"
    )
        port map (
      I0 => prescale_cnt(0),
      I1 => prescale_cnt(2),
      I2 => \prescale_cnt[2]_i_2_n_0\,
      I3 => prescale_cnt(1),
      O => prescale_cnt_0(2)
    );
\prescale_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => prescale_cnt(3),
      I1 => prescale_cnt(6),
      I2 => prescale_cnt(7),
      I3 => prescale_cnt(5),
      I4 => prescale_cnt(4),
      O => \prescale_cnt[2]_i_2_n_0\
    );
\prescale_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => prescale_cnt(0),
      I1 => prescale_cnt(1),
      I2 => prescale_cnt(2),
      I3 => prescale_cnt(3),
      O => prescale_cnt_0(3)
    );
\prescale_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => prescale_cnt(3),
      I1 => prescale_cnt(2),
      I2 => prescale_cnt(1),
      I3 => prescale_cnt(0),
      I4 => prescale_cnt(4),
      O => prescale_cnt_0(4)
    );
\prescale_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => prescale_cnt(4),
      I1 => prescale_cnt(0),
      I2 => prescale_cnt(1),
      I3 => prescale_cnt(2),
      I4 => prescale_cnt(3),
      I5 => prescale_cnt(5),
      O => prescale_cnt_0(5)
    );
\prescale_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prescale_cnt[7]_i_2_n_0\,
      I1 => prescale_cnt(6),
      O => prescale_cnt_0(6)
    );
\prescale_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => prescale_cnt(6),
      I1 => \prescale_cnt[7]_i_2_n_0\,
      I2 => prescale_cnt(7),
      O => prescale_cnt_0(7)
    );
\prescale_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => prescale_cnt(4),
      I1 => prescale_cnt(0),
      I2 => prescale_cnt(1),
      I3 => prescale_cnt(2),
      I4 => prescale_cnt(3),
      I5 => prescale_cnt(5),
      O => \prescale_cnt[7]_i_2_n_0\
    );
\prescale_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(0),
      Q => prescale_cnt(0)
    );
\prescale_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(1),
      Q => prescale_cnt(1)
    );
\prescale_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(2),
      Q => prescale_cnt(2)
    );
\prescale_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(3),
      Q => prescale_cnt(3)
    );
\prescale_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(4),
      Q => prescale_cnt(4)
    );
\prescale_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(5),
      Q => prescale_cnt(5)
    );
\prescale_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(6),
      Q => prescale_cnt(6)
    );
\prescale_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => prescale_cnt_0(7),
      Q => prescale_cnt(7)
    );
steer_active0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => steer_active0_carry_n_0,
      CO(2) => steer_active0_carry_n_1,
      CO(1) => steer_active0_carry_n_2,
      CO(0) => steer_active0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_steer_active0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => steer_active0_carry_i_5_n_0,
      S(2) => steer_active0_carry_i_6_n_0,
      S(1) => steer_active0_carry_i_7_n_0,
      S(0) => steer_active0_carry_i_8_n_0
    );
\steer_active0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => steer_active0_carry_n_0,
      CO(3) => \steer_active0_carry__0_n_0\,
      CO(2) => \steer_active0_carry__0_n_1\,
      CO(1) => \steer_active0_carry__0_n_2\,
      CO(0) => \steer_active0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \steer_active0_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_steer_active0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \steer_active0_carry__0_i_5_n_0\,
      S(2) => \steer_active0_carry__0_i_6_n_0\,
      S(1) => \steer_active0_carry__0_i_7_n_0\,
      S(0) => \steer_active0_carry__0_i_8_n_0\
    );
\steer_active0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(14),
      I1 => Q(14),
      I2 => \^global_cnt_reg[27]_0\(13),
      I3 => Q(13),
      O => \steer_active0_carry__0_i_5_n_0\
    );
\steer_active0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(12),
      I1 => Q(12),
      I2 => \^global_cnt_reg[27]_0\(11),
      I3 => Q(11),
      O => \steer_active0_carry__0_i_6_n_0\
    );
\steer_active0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(10),
      I1 => Q(10),
      I2 => \^global_cnt_reg[27]_0\(9),
      I3 => Q(9),
      O => \steer_active0_carry__0_i_7_n_0\
    );
\steer_active0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(8),
      I1 => Q(8),
      I2 => \^global_cnt_reg[27]_0\(7),
      I3 => Q(7),
      O => \steer_active0_carry__0_i_8_n_0\
    );
\steer_active0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_active0_carry__0_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \steer_active0_carry__1_n_1\,
      CO(1) => \steer_active0_carry__1_n_2\,
      CO(0) => \steer_active0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => steer_enable_reg_0(2 downto 0),
      O(3 downto 0) => \NLW_steer_active0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \steer_active0_carry__1_i_4_n_0\,
      S(2) => \steer_active0_carry__1_i_5_n_0\,
      S(1) => \steer_active0_carry__1_i_6_n_0\,
      S(0) => \steer_active0_carry__1_i_7_n_0\
    );
\steer_active0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => steer_enable1(28),
      O => \steer_active0_carry__1_i_4_n_0\
    );
\steer_active0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(20),
      I1 => Q(20),
      I2 => \^global_cnt_reg[27]_0\(19),
      I3 => Q(19),
      O => \steer_active0_carry__1_i_5_n_0\
    );
\steer_active0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(18),
      I1 => Q(18),
      I2 => \^global_cnt_reg[27]_0\(17),
      I3 => Q(17),
      O => \steer_active0_carry__1_i_6_n_0\
    );
\steer_active0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(16),
      I1 => Q(16),
      I2 => \^global_cnt_reg[27]_0\(15),
      I3 => Q(15),
      O => \steer_active0_carry__1_i_7_n_0\
    );
steer_active0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(6),
      I1 => Q(6),
      I2 => \^global_cnt_reg[27]_0\(5),
      I3 => Q(5),
      O => steer_active0_carry_i_5_n_0
    );
steer_active0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(4),
      I1 => Q(4),
      I2 => \^global_cnt_reg[27]_0\(3),
      I3 => Q(3),
      O => steer_active0_carry_i_6_n_0
    );
steer_active0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^global_cnt_reg[27]_0\(2),
      I1 => Q(2),
      I2 => \^global_cnt_reg[27]_0\(1),
      I3 => Q(1),
      O => steer_active0_carry_i_7_n_0
    );
steer_active0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => steer_enable1(6),
      I1 => \^global_cnt_reg[27]_0\(0),
      I2 => Q(0),
      O => steer_active0_carry_i_8_n_0
    );
steer_enable1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => steer_enable1_carry_n_0,
      CO(2) => steer_enable1_carry_n_1,
      CO(1) => steer_enable1_carry_n_2,
      CO(0) => steer_enable1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => global_cnt_reg(3 downto 0),
      O(3 downto 0) => NLW_steer_enable1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => steer_enable1_carry_i_1_n_0,
      S(2) => steer_enable1_carry_i_2_n_0,
      S(1) => steer_enable1_carry_i_3_n_0,
      S(0) => steer_enable1_carry_i_4_n_0
    );
\steer_enable1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => steer_enable1_carry_n_0,
      CO(3) => \steer_enable1_carry__0_n_0\,
      CO(2) => \steer_enable1_carry__0_n_1\,
      CO(1) => \steer_enable1_carry__0_n_2\,
      CO(0) => \steer_enable1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => global_cnt_reg(7 downto 4),
      O(3) => \^global_cnt_reg[27]_0\(0),
      O(2) => steer_enable1(6),
      O(1 downto 0) => \NLW_steer_enable1_carry__0_O_UNCONNECTED\(1 downto 0),
      S(3) => \steer_enable1_carry__0_i_1_n_0\,
      S(2) => \steer_enable1_carry__0_i_2_n_0\,
      S(1) => \steer_enable1_carry__0_i_3_n_0\,
      S(0) => \steer_enable1_carry__0_i_4_n_0\
    );
\steer_enable1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(7),
      I1 => steer_start(7),
      O => \steer_enable1_carry__0_i_1_n_0\
    );
\steer_enable1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(6),
      I1 => steer_start(6),
      O => \steer_enable1_carry__0_i_2_n_0\
    );
\steer_enable1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(5),
      I1 => steer_start(5),
      O => \steer_enable1_carry__0_i_3_n_0\
    );
\steer_enable1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(4),
      I1 => steer_start(4),
      O => \steer_enable1_carry__0_i_4_n_0\
    );
\steer_enable1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_enable1_carry__0_n_0\,
      CO(3) => \steer_enable1_carry__1_n_0\,
      CO(2) => \steer_enable1_carry__1_n_1\,
      CO(1) => \steer_enable1_carry__1_n_2\,
      CO(0) => \steer_enable1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => global_cnt_reg(11 downto 8),
      O(3 downto 0) => \^global_cnt_reg[27]_0\(4 downto 1),
      S(3) => \steer_enable1_carry__1_i_1_n_0\,
      S(2) => \steer_enable1_carry__1_i_2_n_0\,
      S(1) => \steer_enable1_carry__1_i_3_n_0\,
      S(0) => \steer_enable1_carry__1_i_4_n_0\
    );
\steer_enable1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(11),
      I1 => steer_start(11),
      O => \steer_enable1_carry__1_i_1_n_0\
    );
\steer_enable1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(10),
      I1 => steer_start(10),
      O => \steer_enable1_carry__1_i_2_n_0\
    );
\steer_enable1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(9),
      I1 => steer_start(9),
      O => \steer_enable1_carry__1_i_3_n_0\
    );
\steer_enable1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(8),
      I1 => steer_start(8),
      O => \steer_enable1_carry__1_i_4_n_0\
    );
\steer_enable1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_enable1_carry__1_n_0\,
      CO(3) => \steer_enable1_carry__2_n_0\,
      CO(2) => \steer_enable1_carry__2_n_1\,
      CO(1) => \steer_enable1_carry__2_n_2\,
      CO(0) => \steer_enable1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => global_cnt_reg(15 downto 12),
      O(3 downto 0) => \^global_cnt_reg[27]_0\(8 downto 5),
      S(3) => \steer_enable1_carry__2_i_1_n_0\,
      S(2) => \steer_enable1_carry__2_i_2_n_0\,
      S(1) => \steer_enable1_carry__2_i_3_n_0\,
      S(0) => \steer_enable1_carry__2_i_4_n_0\
    );
\steer_enable1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(15),
      I1 => steer_start(15),
      O => \steer_enable1_carry__2_i_1_n_0\
    );
\steer_enable1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(14),
      I1 => steer_start(14),
      O => \steer_enable1_carry__2_i_2_n_0\
    );
\steer_enable1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(13),
      I1 => steer_start(13),
      O => \steer_enable1_carry__2_i_3_n_0\
    );
\steer_enable1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(12),
      I1 => steer_start(12),
      O => \steer_enable1_carry__2_i_4_n_0\
    );
\steer_enable1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_enable1_carry__2_n_0\,
      CO(3) => \steer_enable1_carry__3_n_0\,
      CO(2) => \steer_enable1_carry__3_n_1\,
      CO(1) => \steer_enable1_carry__3_n_2\,
      CO(0) => \steer_enable1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => global_cnt_reg(19 downto 16),
      O(3 downto 0) => \^global_cnt_reg[27]_0\(12 downto 9),
      S(3) => \steer_enable1_carry__3_i_1_n_0\,
      S(2) => \steer_enable1_carry__3_i_2_n_0\,
      S(1) => \steer_enable1_carry__3_i_3_n_0\,
      S(0) => \steer_enable1_carry__3_i_4_n_0\
    );
\steer_enable1_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(19),
      I1 => steer_start(19),
      O => \steer_enable1_carry__3_i_1_n_0\
    );
\steer_enable1_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(18),
      I1 => steer_start(18),
      O => \steer_enable1_carry__3_i_2_n_0\
    );
\steer_enable1_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(17),
      I1 => steer_start(17),
      O => \steer_enable1_carry__3_i_3_n_0\
    );
\steer_enable1_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(16),
      I1 => steer_start(16),
      O => \steer_enable1_carry__3_i_4_n_0\
    );
\steer_enable1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_enable1_carry__3_n_0\,
      CO(3) => \steer_enable1_carry__4_n_0\,
      CO(2) => \steer_enable1_carry__4_n_1\,
      CO(1) => \steer_enable1_carry__4_n_2\,
      CO(0) => \steer_enable1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => global_cnt_reg(23 downto 20),
      O(3 downto 0) => \^global_cnt_reg[27]_0\(16 downto 13),
      S(3) => \steer_enable1_carry__4_i_1_n_0\,
      S(2) => \steer_enable1_carry__4_i_2_n_0\,
      S(1) => \steer_enable1_carry__4_i_3_n_0\,
      S(0) => \steer_enable1_carry__4_i_4_n_0\
    );
\steer_enable1_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(23),
      I1 => steer_start(23),
      O => \steer_enable1_carry__4_i_1_n_0\
    );
\steer_enable1_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(22),
      I1 => steer_start(22),
      O => \steer_enable1_carry__4_i_2_n_0\
    );
\steer_enable1_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(21),
      I1 => steer_start(21),
      O => \steer_enable1_carry__4_i_3_n_0\
    );
\steer_enable1_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(20),
      I1 => steer_start(20),
      O => \steer_enable1_carry__4_i_4_n_0\
    );
\steer_enable1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_enable1_carry__4_n_0\,
      CO(3) => \steer_enable1_carry__5_n_0\,
      CO(2) => \steer_enable1_carry__5_n_1\,
      CO(1) => \steer_enable1_carry__5_n_2\,
      CO(0) => \steer_enable1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => global_cnt_reg(27 downto 24),
      O(3 downto 0) => \^global_cnt_reg[27]_0\(20 downto 17),
      S(3) => \steer_enable1_carry__5_i_1_n_0\,
      S(2) => \steer_enable1_carry__5_i_2_n_0\,
      S(1) => \steer_enable1_carry__5_i_3_n_0\,
      S(0) => \steer_enable1_carry__5_i_4_n_0\
    );
\steer_enable1_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(27),
      I1 => steer_start(27),
      O => \steer_enable1_carry__5_i_1_n_0\
    );
\steer_enable1_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(26),
      I1 => steer_start(26),
      O => \steer_enable1_carry__5_i_2_n_0\
    );
\steer_enable1_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(25),
      I1 => steer_start(25),
      O => \steer_enable1_carry__5_i_3_n_0\
    );
\steer_enable1_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(24),
      I1 => steer_start(24),
      O => \steer_enable1_carry__5_i_4_n_0\
    );
\steer_enable1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \steer_enable1_carry__5_n_0\,
      CO(3 downto 0) => \NLW_steer_enable1_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_steer_enable1_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => steer_enable1(28),
      S(3 downto 1) => B"000",
      S(0) => \steer_enable1_carry__6_i_1_n_0\
    );
\steer_enable1_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(28),
      I1 => steer_start(28),
      O => \steer_enable1_carry__6_i_1_n_0\
    );
steer_enable1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(3),
      I1 => steer_start(3),
      O => steer_enable1_carry_i_1_n_0
    );
steer_enable1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(2),
      I1 => steer_start(2),
      O => steer_enable1_carry_i_2_n_0
    );
steer_enable1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(1),
      I1 => steer_start(1),
      O => steer_enable1_carry_i_3_n_0
    );
steer_enable1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => global_cnt_reg(0),
      I1 => steer_start(0),
      O => steer_enable1_carry_i_4_n_0
    );
steer_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => E(0),
      I1 => \^co\(0),
      I2 => \^steer_enable\,
      O => steer_enable_i_1_n_0
    );
steer_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => steer_enable_i_1_n_0,
      Q => \^steer_enable\
    );
\steer_start_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(0),
      Q => steer_start(0)
    );
\steer_start_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(10),
      Q => steer_start(10)
    );
\steer_start_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(11),
      Q => steer_start(11)
    );
\steer_start_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(12),
      Q => steer_start(12)
    );
\steer_start_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(13),
      Q => steer_start(13)
    );
\steer_start_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(14),
      Q => steer_start(14)
    );
\steer_start_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(15),
      Q => steer_start(15)
    );
\steer_start_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(16),
      Q => steer_start(16)
    );
\steer_start_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(17),
      Q => steer_start(17)
    );
\steer_start_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(18),
      Q => steer_start(18)
    );
\steer_start_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(19),
      Q => steer_start(19)
    );
\steer_start_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(1),
      Q => steer_start(1)
    );
\steer_start_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(20),
      Q => steer_start(20)
    );
\steer_start_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(21),
      Q => steer_start(21)
    );
\steer_start_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(22),
      Q => steer_start(22)
    );
\steer_start_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(23),
      Q => steer_start(23)
    );
\steer_start_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(24),
      Q => steer_start(24)
    );
\steer_start_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(25),
      Q => steer_start(25)
    );
\steer_start_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(26),
      Q => steer_start(26)
    );
\steer_start_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(27),
      Q => steer_start(27)
    );
\steer_start_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(28),
      Q => steer_start(28)
    );
\steer_start_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(2),
      Q => steer_start(2)
    );
\steer_start_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(3),
      Q => steer_start(3)
    );
\steer_start_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(4),
      Q => steer_start(4)
    );
\steer_start_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(5),
      Q => steer_start(5)
    );
\steer_start_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(6),
      Q => steer_start(6)
    );
\steer_start_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(7),
      Q => steer_start(7)
    );
\steer_start_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(8),
      Q => steer_start(8)
    );
\steer_start_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => SR(0),
      D => global_cnt_reg(9),
      Q => steer_start(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_capstone_axi4l_ip_v1_0 is
  port (
    axi_awready_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_wready_reg : out STD_LOGIC;
    axi_bvalid_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_reg : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 28 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[28]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[31]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \slv_reg1_reg[28]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AIN19_out : out STD_LOGIC;
    S_AIN27_out : out STD_LOGIC;
    D_AIN14_out : out STD_LOGIC;
    D_AIN23_out : out STD_LOGIC;
    D_BIN11_out : out STD_LOGIC;
    D_BIN20_out : out STD_LOGIC;
    \counter_signed_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[28]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[9]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg1_reg[8]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[27]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg0_reg[28]_4\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[9]_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[28]_6\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg0_reg[14]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[20]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg1_reg[26]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \slv_reg1_reg[31]_0\ : out STD_LOGIC;
    \slv_reg1_reg[31]_1\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    steer_enable1 : in STD_LOGIC_VECTOR ( 20 downto 0 );
    counter_signed_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    steer_enable : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    D_PWMA_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_PWMA_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_PWMB_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    D_PWMB_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_capstone_axi4l_ip_v1_0 : entity is "capstone_axi4l_ip_v1_0";
end design_1_top_0_0_capstone_axi4l_ip_v1_0;

architecture STRUCTURE of design_1_top_0_0_capstone_axi4l_ip_v1_0 is
begin
capstone_axi4l_ip_v1_0_S00_AXI_inst: entity work.design_1_top_0_0_capstone_axi4l_ip_v1_0_S00_AXI
     port map (
      CO(0) => CO(0),
      DI(3 downto 0) => DI(3 downto 0),
      D_AIN14_out => D_AIN14_out,
      D_AIN23_out => D_AIN23_out,
      D_BIN11_out => D_BIN11_out,
      D_BIN20_out => D_BIN20_out,
      D_PWMA_reg(0) => D_PWMA_reg(0),
      D_PWMA_reg_0(0) => D_PWMA_reg_0(0),
      D_PWMB_reg(0) => D_PWMB_reg(0),
      D_PWMB_reg_0(0) => D_PWMB_reg_0(0),
      E(0) => E(0),
      Q(28 downto 0) => Q(28 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      S_AIN19_out => S_AIN19_out,
      S_AIN27_out => S_AIN27_out,
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_bvalid_reg_0 => axi_bvalid_reg,
      axi_wready_reg_0 => axi_wready_reg,
      counter_signed_reg(31 downto 0) => counter_signed_reg(31 downto 0),
      \counter_signed_reg[7]\(3 downto 0) => \counter_signed_reg[7]\(3 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[14]_0\(3 downto 0) => \slv_reg0_reg[14]\(3 downto 0),
      \slv_reg0_reg[20]_0\(2 downto 0) => \slv_reg0_reg[20]\(2 downto 0),
      \slv_reg0_reg[28]_0\(3 downto 0) => \slv_reg0_reg[28]\(3 downto 0),
      \slv_reg0_reg[28]_1\(3 downto 0) => \slv_reg0_reg[28]_0\(3 downto 0),
      \slv_reg0_reg[28]_2\(3 downto 0) => \slv_reg0_reg[28]_1\(3 downto 0),
      \slv_reg0_reg[28]_3\(3 downto 0) => \slv_reg0_reg[28]_2\(3 downto 0),
      \slv_reg0_reg[28]_4\(3 downto 0) => \slv_reg0_reg[28]_3\(3 downto 0),
      \slv_reg0_reg[28]_5\(2 downto 0) => \slv_reg0_reg[28]_4\(2 downto 0),
      \slv_reg1_reg[26]_0\(1 downto 0) => \slv_reg1_reg[26]\(1 downto 0),
      \slv_reg1_reg[27]_0\(2 downto 0) => \slv_reg1_reg[27]\(2 downto 0),
      \slv_reg1_reg[28]_0\(3 downto 0) => \slv_reg1_reg[28]\(3 downto 0),
      \slv_reg1_reg[28]_1\(3 downto 0) => \slv_reg1_reg[28]_0\(3 downto 0),
      \slv_reg1_reg[28]_2\(3 downto 0) => \slv_reg1_reg[28]_1\(3 downto 0),
      \slv_reg1_reg[28]_3\(3 downto 0) => \slv_reg1_reg[28]_2\(3 downto 0),
      \slv_reg1_reg[28]_4\(3 downto 0) => \slv_reg1_reg[28]_3\(3 downto 0),
      \slv_reg1_reg[28]_5\(3 downto 0) => \slv_reg1_reg[28]_4\(3 downto 0),
      \slv_reg1_reg[28]_6\(3 downto 0) => \slv_reg1_reg[28]_5\(3 downto 0),
      \slv_reg1_reg[28]_7\(2 downto 0) => \slv_reg1_reg[28]_6\(2 downto 0),
      \slv_reg1_reg[31]_0\(6 downto 0) => \slv_reg1_reg[31]\(6 downto 0),
      \slv_reg1_reg[31]_1\ => \slv_reg1_reg[31]_0\,
      \slv_reg1_reg[31]_2\ => \slv_reg1_reg[31]_1\,
      \slv_reg1_reg[7]_0\(1 downto 0) => \slv_reg1_reg[7]\(1 downto 0),
      \slv_reg1_reg[8]_0\(2 downto 0) => \slv_reg1_reg[8]\(2 downto 0),
      \slv_reg1_reg[9]_0\(3 downto 0) => \slv_reg1_reg[9]\(3 downto 0),
      \slv_reg1_reg[9]_1\(3 downto 0) => \slv_reg1_reg[9]_0\(3 downto 0),
      \slv_reg1_reg[9]_2\(3 downto 0) => \slv_reg1_reg[9]_1\(3 downto 0),
      \slv_reg1_reg[9]_3\(3 downto 0) => \slv_reg1_reg[9]_2\(3 downto 0),
      \slv_reg1_reg[9]_4\(3 downto 0) => \slv_reg1_reg[9]_3\(3 downto 0),
      \slv_reg1_reg[9]_5\(3 downto 0) => \slv_reg1_reg[9]_4\(3 downto 0),
      \slv_reg1_reg[9]_6\(3 downto 0) => \slv_reg1_reg[9]_5\(3 downto 0),
      \slv_reg1_reg[9]_7\(2 downto 0) => \slv_reg1_reg[9]_6\(2 downto 0),
      steer_enable => steer_enable,
      steer_enable1(20 downto 0) => steer_enable1(20 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    axi_bvalid_reg : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    S_STBY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_PWMA : out STD_LOGIC;
    S_AIN1 : out STD_LOGIC;
    S_AIN2 : out STD_LOGIC;
    D_PWMA : out STD_LOGIC;
    D_AIN1 : out STD_LOGIC;
    D_AIN2 : out STD_LOGIC;
    D_PWMB : out STD_LOGIC;
    D_BIN1 : out STD_LOGIC;
    D_BIN2 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal D_AIN14_out : STD_LOGIC;
  signal D_AIN23_out : STD_LOGIC;
  signal D_BIN11_out : STD_LOGIC;
  signal D_BIN20_out : STD_LOGIC;
  signal D_PWMA1 : STD_LOGIC;
  signal D_PWMA15_in : STD_LOGIC;
  signal D_PWMB1 : STD_LOGIC;
  signal D_PWMB12_in : STD_LOGIC;
  signal S_AIN19_out : STD_LOGIC;
  signal S_AIN27_out : STD_LOGIC;
  signal actual_time : STD_LOGIC_VECTOR ( 27 downto 7 );
  signal capstone_axi4l_ip_v1_0_inst_n_1 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_10 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_100 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_101 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_102 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_103 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_104 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_105 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_106 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_107 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_108 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_109 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_110 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_111 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_112 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_113 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_114 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_115 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_116 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_117 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_118 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_12 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_125 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_126 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_127 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_128 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_129 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_13 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_130 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_131 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_132 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_133 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_134 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_135 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_136 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_137 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_138 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_139 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_14 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_140 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_141 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_142 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_143 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_144 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_145 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_146 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_147 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_148 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_149 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_15 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_150 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_151 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_152 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_153 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_154 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_155 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_156 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_157 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_158 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_159 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_16 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_160 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_161 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_162 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_163 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_164 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_17 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_18 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_40 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_41 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_42 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_43 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_44 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_45 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_46 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_47 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_48 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_49 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_50 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_51 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_52 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_53 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_54 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_55 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_56 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_57 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_58 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_59 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_60 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_61 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_62 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_63 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_64 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_65 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_66 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_67 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_69 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_7 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_70 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_71 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_72 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_73 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_74 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_75 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_76 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_77 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_78 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_79 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_8 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_80 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_81 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_82 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_83 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_84 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_85 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_86 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_87 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_88 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_89 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_9 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_90 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_91 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_92 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_93 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_94 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_95 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_96 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_97 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_98 : STD_LOGIC;
  signal capstone_axi4l_ip_v1_0_inst_n_99 : STD_LOGIC;
  signal counter_signed_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal steer_active0 : STD_LOGIC;
  signal steer_enable : STD_LOGIC;
  signal steer_enable1 : STD_LOGIC_VECTOR ( 27 downto 7 );
  signal steer_trigger : STD_LOGIC;
begin
capstone_axi4l_ip_v1_0_inst: entity work.design_1_top_0_0_capstone_axi4l_ip_v1_0
     port map (
      CO(0) => steer_active0,
      DI(3) => capstone_axi4l_ip_v1_0_inst_n_7,
      DI(2) => capstone_axi4l_ip_v1_0_inst_n_8,
      DI(1) => capstone_axi4l_ip_v1_0_inst_n_9,
      DI(0) => capstone_axi4l_ip_v1_0_inst_n_10,
      D_AIN14_out => D_AIN14_out,
      D_AIN23_out => D_AIN23_out,
      D_BIN11_out => D_BIN11_out,
      D_BIN20_out => D_BIN20_out,
      D_PWMA_reg(0) => D_PWMA1,
      D_PWMA_reg_0(0) => D_PWMA15_in,
      D_PWMB_reg(0) => D_PWMB1,
      D_PWMB_reg_0(0) => D_PWMB12_in,
      E(0) => steer_trigger,
      Q(28) => S_STBY,
      Q(27) => capstone_axi4l_ip_v1_0_inst_n_12,
      Q(26) => capstone_axi4l_ip_v1_0_inst_n_13,
      Q(25) => capstone_axi4l_ip_v1_0_inst_n_14,
      Q(24) => capstone_axi4l_ip_v1_0_inst_n_15,
      Q(23) => capstone_axi4l_ip_v1_0_inst_n_16,
      Q(22) => capstone_axi4l_ip_v1_0_inst_n_17,
      Q(21) => capstone_axi4l_ip_v1_0_inst_n_18,
      Q(20 downto 0) => actual_time(27 downto 7),
      S(3) => capstone_axi4l_ip_v1_0_inst_n_40,
      S(2) => capstone_axi4l_ip_v1_0_inst_n_41,
      S(1) => capstone_axi4l_ip_v1_0_inst_n_42,
      S(0) => capstone_axi4l_ip_v1_0_inst_n_43,
      SR(0) => capstone_axi4l_ip_v1_0_inst_n_1,
      S_AIN19_out => S_AIN19_out,
      S_AIN27_out => S_AIN27_out,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_bvalid_reg => axi_bvalid_reg,
      axi_wready_reg => s00_axi_wready,
      counter_signed_reg(31 downto 0) => counter_signed_reg(31 downto 0),
      \counter_signed_reg[7]\(3) => capstone_axi4l_ip_v1_0_inst_n_125,
      \counter_signed_reg[7]\(2) => capstone_axi4l_ip_v1_0_inst_n_126,
      \counter_signed_reg[7]\(1) => capstone_axi4l_ip_v1_0_inst_n_127,
      \counter_signed_reg[7]\(0) => capstone_axi4l_ip_v1_0_inst_n_128,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[14]\(3) => capstone_axi4l_ip_v1_0_inst_n_152,
      \slv_reg0_reg[14]\(2) => capstone_axi4l_ip_v1_0_inst_n_153,
      \slv_reg0_reg[14]\(1) => capstone_axi4l_ip_v1_0_inst_n_154,
      \slv_reg0_reg[14]\(0) => capstone_axi4l_ip_v1_0_inst_n_155,
      \slv_reg0_reg[20]\(2) => capstone_axi4l_ip_v1_0_inst_n_156,
      \slv_reg0_reg[20]\(1) => capstone_axi4l_ip_v1_0_inst_n_157,
      \slv_reg0_reg[20]\(0) => capstone_axi4l_ip_v1_0_inst_n_158,
      \slv_reg0_reg[28]\(3) => capstone_axi4l_ip_v1_0_inst_n_44,
      \slv_reg0_reg[28]\(2) => capstone_axi4l_ip_v1_0_inst_n_45,
      \slv_reg0_reg[28]\(1) => capstone_axi4l_ip_v1_0_inst_n_46,
      \slv_reg0_reg[28]\(0) => capstone_axi4l_ip_v1_0_inst_n_47,
      \slv_reg0_reg[28]_0\(3) => capstone_axi4l_ip_v1_0_inst_n_48,
      \slv_reg0_reg[28]_0\(2) => capstone_axi4l_ip_v1_0_inst_n_49,
      \slv_reg0_reg[28]_0\(1) => capstone_axi4l_ip_v1_0_inst_n_50,
      \slv_reg0_reg[28]_0\(0) => capstone_axi4l_ip_v1_0_inst_n_51,
      \slv_reg0_reg[28]_1\(3) => capstone_axi4l_ip_v1_0_inst_n_52,
      \slv_reg0_reg[28]_1\(2) => capstone_axi4l_ip_v1_0_inst_n_53,
      \slv_reg0_reg[28]_1\(1) => capstone_axi4l_ip_v1_0_inst_n_54,
      \slv_reg0_reg[28]_1\(0) => capstone_axi4l_ip_v1_0_inst_n_55,
      \slv_reg0_reg[28]_2\(3) => capstone_axi4l_ip_v1_0_inst_n_56,
      \slv_reg0_reg[28]_2\(2) => capstone_axi4l_ip_v1_0_inst_n_57,
      \slv_reg0_reg[28]_2\(1) => capstone_axi4l_ip_v1_0_inst_n_58,
      \slv_reg0_reg[28]_2\(0) => capstone_axi4l_ip_v1_0_inst_n_59,
      \slv_reg0_reg[28]_3\(3) => capstone_axi4l_ip_v1_0_inst_n_60,
      \slv_reg0_reg[28]_3\(2) => capstone_axi4l_ip_v1_0_inst_n_61,
      \slv_reg0_reg[28]_3\(1) => capstone_axi4l_ip_v1_0_inst_n_62,
      \slv_reg0_reg[28]_3\(0) => capstone_axi4l_ip_v1_0_inst_n_63,
      \slv_reg0_reg[28]_4\(2) => capstone_axi4l_ip_v1_0_inst_n_143,
      \slv_reg0_reg[28]_4\(1) => capstone_axi4l_ip_v1_0_inst_n_144,
      \slv_reg0_reg[28]_4\(0) => capstone_axi4l_ip_v1_0_inst_n_145,
      \slv_reg1_reg[26]\(1) => capstone_axi4l_ip_v1_0_inst_n_159,
      \slv_reg1_reg[26]\(0) => capstone_axi4l_ip_v1_0_inst_n_160,
      \slv_reg1_reg[27]\(2) => capstone_axi4l_ip_v1_0_inst_n_140,
      \slv_reg1_reg[27]\(1) => capstone_axi4l_ip_v1_0_inst_n_141,
      \slv_reg1_reg[27]\(0) => capstone_axi4l_ip_v1_0_inst_n_142,
      \slv_reg1_reg[28]\(3) => capstone_axi4l_ip_v1_0_inst_n_64,
      \slv_reg1_reg[28]\(2) => capstone_axi4l_ip_v1_0_inst_n_65,
      \slv_reg1_reg[28]\(1) => capstone_axi4l_ip_v1_0_inst_n_66,
      \slv_reg1_reg[28]\(0) => capstone_axi4l_ip_v1_0_inst_n_67,
      \slv_reg1_reg[28]_0\(3) => capstone_axi4l_ip_v1_0_inst_n_75,
      \slv_reg1_reg[28]_0\(2) => capstone_axi4l_ip_v1_0_inst_n_76,
      \slv_reg1_reg[28]_0\(1) => capstone_axi4l_ip_v1_0_inst_n_77,
      \slv_reg1_reg[28]_0\(0) => capstone_axi4l_ip_v1_0_inst_n_78,
      \slv_reg1_reg[28]_1\(3) => capstone_axi4l_ip_v1_0_inst_n_79,
      \slv_reg1_reg[28]_1\(2) => capstone_axi4l_ip_v1_0_inst_n_80,
      \slv_reg1_reg[28]_1\(1) => capstone_axi4l_ip_v1_0_inst_n_81,
      \slv_reg1_reg[28]_1\(0) => capstone_axi4l_ip_v1_0_inst_n_82,
      \slv_reg1_reg[28]_2\(3) => capstone_axi4l_ip_v1_0_inst_n_83,
      \slv_reg1_reg[28]_2\(2) => capstone_axi4l_ip_v1_0_inst_n_84,
      \slv_reg1_reg[28]_2\(1) => capstone_axi4l_ip_v1_0_inst_n_85,
      \slv_reg1_reg[28]_2\(0) => capstone_axi4l_ip_v1_0_inst_n_86,
      \slv_reg1_reg[28]_3\(3) => capstone_axi4l_ip_v1_0_inst_n_87,
      \slv_reg1_reg[28]_3\(2) => capstone_axi4l_ip_v1_0_inst_n_88,
      \slv_reg1_reg[28]_3\(1) => capstone_axi4l_ip_v1_0_inst_n_89,
      \slv_reg1_reg[28]_3\(0) => capstone_axi4l_ip_v1_0_inst_n_90,
      \slv_reg1_reg[28]_4\(3) => capstone_axi4l_ip_v1_0_inst_n_91,
      \slv_reg1_reg[28]_4\(2) => capstone_axi4l_ip_v1_0_inst_n_92,
      \slv_reg1_reg[28]_4\(1) => capstone_axi4l_ip_v1_0_inst_n_93,
      \slv_reg1_reg[28]_4\(0) => capstone_axi4l_ip_v1_0_inst_n_94,
      \slv_reg1_reg[28]_5\(3) => capstone_axi4l_ip_v1_0_inst_n_129,
      \slv_reg1_reg[28]_5\(2) => capstone_axi4l_ip_v1_0_inst_n_130,
      \slv_reg1_reg[28]_5\(1) => capstone_axi4l_ip_v1_0_inst_n_131,
      \slv_reg1_reg[28]_5\(0) => capstone_axi4l_ip_v1_0_inst_n_132,
      \slv_reg1_reg[28]_6\(2) => capstone_axi4l_ip_v1_0_inst_n_149,
      \slv_reg1_reg[28]_6\(1) => capstone_axi4l_ip_v1_0_inst_n_150,
      \slv_reg1_reg[28]_6\(0) => capstone_axi4l_ip_v1_0_inst_n_151,
      \slv_reg1_reg[31]\(6) => Q(0),
      \slv_reg1_reg[31]\(5) => capstone_axi4l_ip_v1_0_inst_n_69,
      \slv_reg1_reg[31]\(4) => capstone_axi4l_ip_v1_0_inst_n_70,
      \slv_reg1_reg[31]\(3) => capstone_axi4l_ip_v1_0_inst_n_71,
      \slv_reg1_reg[31]\(2) => capstone_axi4l_ip_v1_0_inst_n_72,
      \slv_reg1_reg[31]\(1) => capstone_axi4l_ip_v1_0_inst_n_73,
      \slv_reg1_reg[31]\(0) => capstone_axi4l_ip_v1_0_inst_n_74,
      \slv_reg1_reg[31]_0\ => capstone_axi4l_ip_v1_0_inst_n_163,
      \slv_reg1_reg[31]_1\ => capstone_axi4l_ip_v1_0_inst_n_164,
      \slv_reg1_reg[7]\(1) => capstone_axi4l_ip_v1_0_inst_n_161,
      \slv_reg1_reg[7]\(0) => capstone_axi4l_ip_v1_0_inst_n_162,
      \slv_reg1_reg[8]\(2) => capstone_axi4l_ip_v1_0_inst_n_137,
      \slv_reg1_reg[8]\(1) => capstone_axi4l_ip_v1_0_inst_n_138,
      \slv_reg1_reg[8]\(0) => capstone_axi4l_ip_v1_0_inst_n_139,
      \slv_reg1_reg[9]\(3) => capstone_axi4l_ip_v1_0_inst_n_95,
      \slv_reg1_reg[9]\(2) => capstone_axi4l_ip_v1_0_inst_n_96,
      \slv_reg1_reg[9]\(1) => capstone_axi4l_ip_v1_0_inst_n_97,
      \slv_reg1_reg[9]\(0) => capstone_axi4l_ip_v1_0_inst_n_98,
      \slv_reg1_reg[9]_0\(3) => capstone_axi4l_ip_v1_0_inst_n_99,
      \slv_reg1_reg[9]_0\(2) => capstone_axi4l_ip_v1_0_inst_n_100,
      \slv_reg1_reg[9]_0\(1) => capstone_axi4l_ip_v1_0_inst_n_101,
      \slv_reg1_reg[9]_0\(0) => capstone_axi4l_ip_v1_0_inst_n_102,
      \slv_reg1_reg[9]_1\(3) => capstone_axi4l_ip_v1_0_inst_n_103,
      \slv_reg1_reg[9]_1\(2) => capstone_axi4l_ip_v1_0_inst_n_104,
      \slv_reg1_reg[9]_1\(1) => capstone_axi4l_ip_v1_0_inst_n_105,
      \slv_reg1_reg[9]_1\(0) => capstone_axi4l_ip_v1_0_inst_n_106,
      \slv_reg1_reg[9]_2\(3) => capstone_axi4l_ip_v1_0_inst_n_107,
      \slv_reg1_reg[9]_2\(2) => capstone_axi4l_ip_v1_0_inst_n_108,
      \slv_reg1_reg[9]_2\(1) => capstone_axi4l_ip_v1_0_inst_n_109,
      \slv_reg1_reg[9]_2\(0) => capstone_axi4l_ip_v1_0_inst_n_110,
      \slv_reg1_reg[9]_3\(3) => capstone_axi4l_ip_v1_0_inst_n_111,
      \slv_reg1_reg[9]_3\(2) => capstone_axi4l_ip_v1_0_inst_n_112,
      \slv_reg1_reg[9]_3\(1) => capstone_axi4l_ip_v1_0_inst_n_113,
      \slv_reg1_reg[9]_3\(0) => capstone_axi4l_ip_v1_0_inst_n_114,
      \slv_reg1_reg[9]_4\(3) => capstone_axi4l_ip_v1_0_inst_n_115,
      \slv_reg1_reg[9]_4\(2) => capstone_axi4l_ip_v1_0_inst_n_116,
      \slv_reg1_reg[9]_4\(1) => capstone_axi4l_ip_v1_0_inst_n_117,
      \slv_reg1_reg[9]_4\(0) => capstone_axi4l_ip_v1_0_inst_n_118,
      \slv_reg1_reg[9]_5\(3) => capstone_axi4l_ip_v1_0_inst_n_133,
      \slv_reg1_reg[9]_5\(2) => capstone_axi4l_ip_v1_0_inst_n_134,
      \slv_reg1_reg[9]_5\(1) => capstone_axi4l_ip_v1_0_inst_n_135,
      \slv_reg1_reg[9]_5\(0) => capstone_axi4l_ip_v1_0_inst_n_136,
      \slv_reg1_reg[9]_6\(2) => capstone_axi4l_ip_v1_0_inst_n_146,
      \slv_reg1_reg[9]_6\(1) => capstone_axi4l_ip_v1_0_inst_n_147,
      \slv_reg1_reg[9]_6\(0) => capstone_axi4l_ip_v1_0_inst_n_148,
      steer_enable => steer_enable,
      steer_enable1(20 downto 0) => steer_enable1(27 downto 7)
    );
motor_controller_inst: entity work.design_1_top_0_0_motor_controller
     port map (
      CO(0) => steer_active0,
      DI(3) => capstone_axi4l_ip_v1_0_inst_n_7,
      DI(2) => capstone_axi4l_ip_v1_0_inst_n_8,
      DI(1) => capstone_axi4l_ip_v1_0_inst_n_9,
      DI(0) => capstone_axi4l_ip_v1_0_inst_n_10,
      D_AIN1 => D_AIN1,
      D_AIN14_out => D_AIN14_out,
      D_AIN2 => D_AIN2,
      D_AIN23_out => D_AIN23_out,
      D_BIN1 => D_BIN1,
      D_BIN11_out => D_BIN11_out,
      D_BIN2 => D_BIN2,
      D_BIN20_out => D_BIN20_out,
      D_PWMA => D_PWMA,
      D_PWMA1_carry_0(5) => capstone_axi4l_ip_v1_0_inst_n_69,
      D_PWMA1_carry_0(4) => capstone_axi4l_ip_v1_0_inst_n_70,
      D_PWMA1_carry_0(3) => capstone_axi4l_ip_v1_0_inst_n_71,
      D_PWMA1_carry_0(2) => capstone_axi4l_ip_v1_0_inst_n_72,
      D_PWMA1_carry_0(1) => capstone_axi4l_ip_v1_0_inst_n_73,
      D_PWMA1_carry_0(0) => capstone_axi4l_ip_v1_0_inst_n_74,
      \D_PWMA1_carry__0_0\(2) => capstone_axi4l_ip_v1_0_inst_n_140,
      \D_PWMA1_carry__0_0\(1) => capstone_axi4l_ip_v1_0_inst_n_141,
      \D_PWMA1_carry__0_0\(0) => capstone_axi4l_ip_v1_0_inst_n_142,
      \D_PWMA1_carry__0_1\(1) => capstone_axi4l_ip_v1_0_inst_n_159,
      \D_PWMA1_carry__0_1\(0) => capstone_axi4l_ip_v1_0_inst_n_160,
      \D_PWMA1_inferred__0/i__carry__0_0\(3) => capstone_axi4l_ip_v1_0_inst_n_129,
      \D_PWMA1_inferred__0/i__carry__0_0\(2) => capstone_axi4l_ip_v1_0_inst_n_130,
      \D_PWMA1_inferred__0/i__carry__0_0\(1) => capstone_axi4l_ip_v1_0_inst_n_131,
      \D_PWMA1_inferred__0/i__carry__0_0\(0) => capstone_axi4l_ip_v1_0_inst_n_132,
      \D_PWMA1_inferred__0/i__carry__0_1\(2) => capstone_axi4l_ip_v1_0_inst_n_149,
      \D_PWMA1_inferred__0/i__carry__0_1\(1) => capstone_axi4l_ip_v1_0_inst_n_150,
      \D_PWMA1_inferred__0/i__carry__0_1\(0) => capstone_axi4l_ip_v1_0_inst_n_151,
      \D_PWMA1_inferred__0/i__carry__1_0\(3) => capstone_axi4l_ip_v1_0_inst_n_91,
      \D_PWMA1_inferred__0/i__carry__1_0\(2) => capstone_axi4l_ip_v1_0_inst_n_92,
      \D_PWMA1_inferred__0/i__carry__1_0\(1) => capstone_axi4l_ip_v1_0_inst_n_93,
      \D_PWMA1_inferred__0/i__carry__1_0\(0) => capstone_axi4l_ip_v1_0_inst_n_94,
      \D_PWMA1_inferred__0/i__carry__1_1\(3) => capstone_axi4l_ip_v1_0_inst_n_87,
      \D_PWMA1_inferred__0/i__carry__1_1\(2) => capstone_axi4l_ip_v1_0_inst_n_88,
      \D_PWMA1_inferred__0/i__carry__1_1\(1) => capstone_axi4l_ip_v1_0_inst_n_89,
      \D_PWMA1_inferred__0/i__carry__1_1\(0) => capstone_axi4l_ip_v1_0_inst_n_90,
      \D_PWMA1_inferred__0/i__carry__2_0\(3) => capstone_axi4l_ip_v1_0_inst_n_83,
      \D_PWMA1_inferred__0/i__carry__2_0\(2) => capstone_axi4l_ip_v1_0_inst_n_84,
      \D_PWMA1_inferred__0/i__carry__2_0\(1) => capstone_axi4l_ip_v1_0_inst_n_85,
      \D_PWMA1_inferred__0/i__carry__2_0\(0) => capstone_axi4l_ip_v1_0_inst_n_86,
      \D_PWMA1_inferred__0/i__carry__2_1\(3) => capstone_axi4l_ip_v1_0_inst_n_79,
      \D_PWMA1_inferred__0/i__carry__2_1\(2) => capstone_axi4l_ip_v1_0_inst_n_80,
      \D_PWMA1_inferred__0/i__carry__2_1\(1) => capstone_axi4l_ip_v1_0_inst_n_81,
      \D_PWMA1_inferred__0/i__carry__2_1\(0) => capstone_axi4l_ip_v1_0_inst_n_82,
      D_PWMA_reg_0 => capstone_axi4l_ip_v1_0_inst_n_163,
      D_PWMA_reg_1(3) => capstone_axi4l_ip_v1_0_inst_n_75,
      D_PWMA_reg_1(2) => capstone_axi4l_ip_v1_0_inst_n_76,
      D_PWMA_reg_1(1) => capstone_axi4l_ip_v1_0_inst_n_77,
      D_PWMA_reg_1(0) => capstone_axi4l_ip_v1_0_inst_n_78,
      D_PWMA_reg_2(3) => capstone_axi4l_ip_v1_0_inst_n_64,
      D_PWMA_reg_2(2) => capstone_axi4l_ip_v1_0_inst_n_65,
      D_PWMA_reg_2(1) => capstone_axi4l_ip_v1_0_inst_n_66,
      D_PWMA_reg_2(0) => capstone_axi4l_ip_v1_0_inst_n_67,
      D_PWMB => D_PWMB,
      \D_PWMB1_carry__0_0\(2) => capstone_axi4l_ip_v1_0_inst_n_137,
      \D_PWMB1_carry__0_0\(1) => capstone_axi4l_ip_v1_0_inst_n_138,
      \D_PWMB1_carry__0_0\(0) => capstone_axi4l_ip_v1_0_inst_n_139,
      \D_PWMB1_carry__0_1\(1) => capstone_axi4l_ip_v1_0_inst_n_161,
      \D_PWMB1_carry__0_1\(0) => capstone_axi4l_ip_v1_0_inst_n_162,
      \D_PWMB1_inferred__0/i__carry__0_0\(3) => capstone_axi4l_ip_v1_0_inst_n_133,
      \D_PWMB1_inferred__0/i__carry__0_0\(2) => capstone_axi4l_ip_v1_0_inst_n_134,
      \D_PWMB1_inferred__0/i__carry__0_0\(1) => capstone_axi4l_ip_v1_0_inst_n_135,
      \D_PWMB1_inferred__0/i__carry__0_0\(0) => capstone_axi4l_ip_v1_0_inst_n_136,
      \D_PWMB1_inferred__0/i__carry__0_1\(2) => capstone_axi4l_ip_v1_0_inst_n_146,
      \D_PWMB1_inferred__0/i__carry__0_1\(1) => capstone_axi4l_ip_v1_0_inst_n_147,
      \D_PWMB1_inferred__0/i__carry__0_1\(0) => capstone_axi4l_ip_v1_0_inst_n_148,
      \D_PWMB1_inferred__0/i__carry__1_0\(3) => capstone_axi4l_ip_v1_0_inst_n_115,
      \D_PWMB1_inferred__0/i__carry__1_0\(2) => capstone_axi4l_ip_v1_0_inst_n_116,
      \D_PWMB1_inferred__0/i__carry__1_0\(1) => capstone_axi4l_ip_v1_0_inst_n_117,
      \D_PWMB1_inferred__0/i__carry__1_0\(0) => capstone_axi4l_ip_v1_0_inst_n_118,
      \D_PWMB1_inferred__0/i__carry__1_1\(3) => capstone_axi4l_ip_v1_0_inst_n_111,
      \D_PWMB1_inferred__0/i__carry__1_1\(2) => capstone_axi4l_ip_v1_0_inst_n_112,
      \D_PWMB1_inferred__0/i__carry__1_1\(1) => capstone_axi4l_ip_v1_0_inst_n_113,
      \D_PWMB1_inferred__0/i__carry__1_1\(0) => capstone_axi4l_ip_v1_0_inst_n_114,
      \D_PWMB1_inferred__0/i__carry__2_0\(3) => capstone_axi4l_ip_v1_0_inst_n_107,
      \D_PWMB1_inferred__0/i__carry__2_0\(2) => capstone_axi4l_ip_v1_0_inst_n_108,
      \D_PWMB1_inferred__0/i__carry__2_0\(1) => capstone_axi4l_ip_v1_0_inst_n_109,
      \D_PWMB1_inferred__0/i__carry__2_0\(0) => capstone_axi4l_ip_v1_0_inst_n_110,
      \D_PWMB1_inferred__0/i__carry__2_1\(3) => capstone_axi4l_ip_v1_0_inst_n_103,
      \D_PWMB1_inferred__0/i__carry__2_1\(2) => capstone_axi4l_ip_v1_0_inst_n_104,
      \D_PWMB1_inferred__0/i__carry__2_1\(1) => capstone_axi4l_ip_v1_0_inst_n_105,
      \D_PWMB1_inferred__0/i__carry__2_1\(0) => capstone_axi4l_ip_v1_0_inst_n_106,
      D_PWMB_reg_0 => capstone_axi4l_ip_v1_0_inst_n_164,
      D_PWMB_reg_1(3) => capstone_axi4l_ip_v1_0_inst_n_99,
      D_PWMB_reg_1(2) => capstone_axi4l_ip_v1_0_inst_n_100,
      D_PWMB_reg_1(1) => capstone_axi4l_ip_v1_0_inst_n_101,
      D_PWMB_reg_1(0) => capstone_axi4l_ip_v1_0_inst_n_102,
      D_PWMB_reg_2(3) => capstone_axi4l_ip_v1_0_inst_n_95,
      D_PWMB_reg_2(2) => capstone_axi4l_ip_v1_0_inst_n_96,
      D_PWMB_reg_2(1) => capstone_axi4l_ip_v1_0_inst_n_97,
      D_PWMB_reg_2(0) => capstone_axi4l_ip_v1_0_inst_n_98,
      E(0) => steer_trigger,
      Q(27) => capstone_axi4l_ip_v1_0_inst_n_12,
      Q(26) => capstone_axi4l_ip_v1_0_inst_n_13,
      Q(25) => capstone_axi4l_ip_v1_0_inst_n_14,
      Q(24) => capstone_axi4l_ip_v1_0_inst_n_15,
      Q(23) => capstone_axi4l_ip_v1_0_inst_n_16,
      Q(22) => capstone_axi4l_ip_v1_0_inst_n_17,
      Q(21) => capstone_axi4l_ip_v1_0_inst_n_18,
      Q(20 downto 0) => actual_time(27 downto 7),
      S(3) => capstone_axi4l_ip_v1_0_inst_n_40,
      S(2) => capstone_axi4l_ip_v1_0_inst_n_41,
      S(1) => capstone_axi4l_ip_v1_0_inst_n_42,
      S(0) => capstone_axi4l_ip_v1_0_inst_n_43,
      SR(0) => capstone_axi4l_ip_v1_0_inst_n_1,
      S_AIN1 => S_AIN1,
      S_AIN19_out => S_AIN19_out,
      S_AIN2 => S_AIN2,
      S_AIN27_out => S_AIN27_out,
      S_PWMA => S_PWMA,
      \S_PWMA1_inferred__0/i__carry__0_0\(3) => capstone_axi4l_ip_v1_0_inst_n_125,
      \S_PWMA1_inferred__0/i__carry__0_0\(2) => capstone_axi4l_ip_v1_0_inst_n_126,
      \S_PWMA1_inferred__0/i__carry__0_0\(1) => capstone_axi4l_ip_v1_0_inst_n_127,
      \S_PWMA1_inferred__0/i__carry__0_0\(0) => capstone_axi4l_ip_v1_0_inst_n_128,
      \S_PWMA1_inferred__0/i__carry__0_1\(2) => capstone_axi4l_ip_v1_0_inst_n_143,
      \S_PWMA1_inferred__0/i__carry__0_1\(1) => capstone_axi4l_ip_v1_0_inst_n_144,
      \S_PWMA1_inferred__0/i__carry__0_1\(0) => capstone_axi4l_ip_v1_0_inst_n_145,
      \S_PWMA1_inferred__0/i__carry__1_0\(3) => capstone_axi4l_ip_v1_0_inst_n_60,
      \S_PWMA1_inferred__0/i__carry__1_0\(2) => capstone_axi4l_ip_v1_0_inst_n_61,
      \S_PWMA1_inferred__0/i__carry__1_0\(1) => capstone_axi4l_ip_v1_0_inst_n_62,
      \S_PWMA1_inferred__0/i__carry__1_0\(0) => capstone_axi4l_ip_v1_0_inst_n_63,
      \S_PWMA1_inferred__0/i__carry__1_1\(3) => capstone_axi4l_ip_v1_0_inst_n_56,
      \S_PWMA1_inferred__0/i__carry__1_1\(2) => capstone_axi4l_ip_v1_0_inst_n_57,
      \S_PWMA1_inferred__0/i__carry__1_1\(1) => capstone_axi4l_ip_v1_0_inst_n_58,
      \S_PWMA1_inferred__0/i__carry__1_1\(0) => capstone_axi4l_ip_v1_0_inst_n_59,
      \S_PWMA1_inferred__0/i__carry__2_0\(3) => capstone_axi4l_ip_v1_0_inst_n_52,
      \S_PWMA1_inferred__0/i__carry__2_0\(2) => capstone_axi4l_ip_v1_0_inst_n_53,
      \S_PWMA1_inferred__0/i__carry__2_0\(1) => capstone_axi4l_ip_v1_0_inst_n_54,
      \S_PWMA1_inferred__0/i__carry__2_0\(0) => capstone_axi4l_ip_v1_0_inst_n_55,
      \S_PWMA1_inferred__0/i__carry__2_1\(3) => capstone_axi4l_ip_v1_0_inst_n_48,
      \S_PWMA1_inferred__0/i__carry__2_1\(2) => capstone_axi4l_ip_v1_0_inst_n_49,
      \S_PWMA1_inferred__0/i__carry__2_1\(1) => capstone_axi4l_ip_v1_0_inst_n_50,
      \S_PWMA1_inferred__0/i__carry__2_1\(0) => capstone_axi4l_ip_v1_0_inst_n_51,
      S_PWMA_reg_0(3) => capstone_axi4l_ip_v1_0_inst_n_44,
      S_PWMA_reg_0(2) => capstone_axi4l_ip_v1_0_inst_n_45,
      S_PWMA_reg_0(1) => capstone_axi4l_ip_v1_0_inst_n_46,
      S_PWMA_reg_0(0) => capstone_axi4l_ip_v1_0_inst_n_47,
      counter_signed_reg(31 downto 0) => counter_signed_reg(31 downto 0),
      \counter_signed_reg[31]_0\(0) => D_PWMA1,
      \counter_signed_reg[31]_1\(0) => D_PWMB1,
      \global_cnt_reg[27]_0\(20 downto 0) => steer_enable1(27 downto 7),
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg1_reg[28]\(0) => D_PWMA15_in,
      \slv_reg1_reg[9]\(0) => D_PWMB12_in,
      \steer_active0_carry__1_0\(3) => capstone_axi4l_ip_v1_0_inst_n_152,
      \steer_active0_carry__1_0\(2) => capstone_axi4l_ip_v1_0_inst_n_153,
      \steer_active0_carry__1_0\(1) => capstone_axi4l_ip_v1_0_inst_n_154,
      \steer_active0_carry__1_0\(0) => capstone_axi4l_ip_v1_0_inst_n_155,
      steer_enable => steer_enable,
      steer_enable_reg_0(2) => capstone_axi4l_ip_v1_0_inst_n_156,
      steer_enable_reg_0(1) => capstone_axi4l_ip_v1_0_inst_n_157,
      steer_enable_reg_0(0) => capstone_axi4l_ip_v1_0_inst_n_158
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    S_STBY : out STD_LOGIC;
    S_PWMA : out STD_LOGIC;
    S_AIN1 : out STD_LOGIC;
    S_AIN2 : out STD_LOGIC;
    D_STBY : out STD_LOGIC;
    D_PWMA : out STD_LOGIC;
    D_AIN1 : out STD_LOGIC;
    D_AIN2 : out STD_LOGIC;
    D_PWMB : out STD_LOGIC;
    D_BIN1 : out STD_LOGIC;
    D_BIN2 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2022.1";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_top_0_0_top
     port map (
      D_AIN1 => D_AIN1,
      D_AIN2 => D_AIN2,
      D_BIN1 => D_BIN1,
      D_BIN2 => D_BIN2,
      D_PWMA => D_PWMA,
      D_PWMB => D_PWMB,
      Q(0) => D_STBY,
      S_AIN1 => S_AIN1,
      S_AIN2 => S_AIN2,
      S_PWMA => S_PWMA,
      S_STBY => S_STBY,
      axi_bvalid_reg => s00_axi_bvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
