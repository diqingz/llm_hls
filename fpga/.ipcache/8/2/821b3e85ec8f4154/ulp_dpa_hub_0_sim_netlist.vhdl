-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Mar 15 03:02:47 2025
-- Host        : hal-fpga-x86.ncsa.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_dpa_hub_0_sim_netlist.vhdl
-- Design      : ulp_dpa_hub_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu250-figd2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_LITE_IF is
  port (
    axi_arready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    trace_resetn_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw_trace_data : out STD_LOGIC;
    \s_axi_awaddr[3]\ : out STD_LOGIC;
    trace_clk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    trace_resetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_LITE_IF;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_LITE_IF is
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal slv_reg_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__1\ : STD_LOGIC;
  signal \^sw_trace_data\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sw_reset_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sw_reset_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sw_reset_i_5 : label is "soft_lutpair1";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rdata(0) <= \^s_axi_rdata\(0);
  s_axi_rvalid <= \^s_axi_rvalid\;
  sw_trace_data <= \^sw_trace_data\;
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => trace_resetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^s_axi_rdata\(0),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \axi_rdata[30]_i_1_n_0\,
      Q => \^s_axi_rdata\(0),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => p_0_in
    );
sw_reset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => trace_resetn,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => \^axi_awready_reg_0\,
      O => trace_resetn_0
    );
sw_reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBD9000000000000"
    )
        port map (
      I0 => slv_reg_rden,
      I1 => \slv_reg_wren__1\,
      I2 => s_axi_awaddr(1),
      I3 => s_axi_araddr(1),
      I4 => slv_reg_addr(0),
      I5 => s_axi_wdata(0),
      O => \s_axi_awaddr[3]\
    );
sw_reset_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      O => slv_reg_rden
    );
sw_reset_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^axi_awready_reg_0\,
      O => \slv_reg_wren__1\
    );
sw_reset_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F800080"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \^axi_arready_reg_0\,
      I2 => s_axi_arvalid,
      I3 => \slv_reg_wren__1\,
      I4 => s_axi_awaddr(0),
      O => slv_reg_addr(0)
    );
\sw_trace_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^sw_trace_data\,
      I1 => \^axi_awready_reg_0\,
      I2 => \^axi_wready_reg_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_awvalid,
      I5 => trace_resetn,
      O => E(0)
    );
sw_trace_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000050000300530"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_araddr(0),
      I2 => slv_reg_rden,
      I3 => \slv_reg_wren__1\,
      I4 => s_axi_awaddr(1),
      I5 => s_axi_araddr(1),
      O => \^sw_trace_data\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1 is
  port (
    wrote0_reg_0 : out STD_LOGIC;
    have_data_reg_0 : out STD_LOGIC;
    have_data_reg_1 : out STD_LOGIC;
    data_i : out STD_LOGIC;
    have_data0_0 : out STD_LOGIC;
    have_data0_1 : out STD_LOGIC;
    have_data0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    have_data_reg_2 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    valid_2 : in STD_LOGIC;
    valid_1 : in STD_LOGIC;
    out_ready : in STD_LOGIC;
    valid_5 : in STD_LOGIC;
    have_data02_out : in STD_LOGIC;
    have_data02_out_0 : in STD_LOGIC;
    valid_3 : in STD_LOGIC;
    wrote0_reg_1 : in STD_LOGIC;
    valid_4 : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1 is
  signal data_i_3 : STD_LOGIC;
  signal \^have_data0\ : STD_LOGIC;
  signal have_data0_2 : STD_LOGIC;
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal \^have_data_reg_0\ : STD_LOGIC;
  signal \^have_data_reg_1\ : STD_LOGIC;
  signal wrote0_i_1_n_0 : STD_LOGIC;
  signal \^wrote0_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_i[63]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_i[63]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of have_data_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of wrote0_i_1 : label is "soft_lutpair4";
begin
  have_data0 <= \^have_data0\;
  have_data_reg_0 <= \^have_data_reg_0\;
  have_data_reg_1 <= \^have_data_reg_1\;
  wrote0_reg_0 <= \^wrote0_reg_0\;
\data_i[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044404040404"
    )
        port map (
      I0 => have_data_reg_2,
      I1 => valid_5,
      I2 => valid_2,
      I3 => valid_1,
      I4 => \^wrote0_reg_0\,
      I5 => have_data0_2,
      O => data_i
    );
\data_i[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45454500"
    )
        port map (
      I0 => have_data_reg_2,
      I1 => out_ready,
      I2 => \^have_data_reg_1\,
      I3 => valid_2,
      I4 => valid_1,
      O => data_i_3
    );
\data_i[63]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => have_data_reg_2,
      I1 => \^have_data_reg_0\,
      I2 => \_trace_valid\(1),
      I3 => \_trace_valid\(0),
      O => E(0)
    );
\data_i[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => out_ready,
      I1 => \^have_data_reg_1\,
      O => have_data0_2
    );
\data_i[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBBFFFF"
    )
        port map (
      I0 => out_ready,
      I1 => \^have_data_reg_1\,
      I2 => valid_2,
      I3 => \^wrote0_reg_0\,
      I4 => valid_1,
      O => \^have_data0\
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(0),
      Q => out_data(0),
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(10),
      Q => out_data(10),
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(11),
      Q => out_data(11),
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(12),
      Q => out_data(12),
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(13),
      Q => out_data(13),
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(14),
      Q => out_data(14),
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(15),
      Q => out_data(15),
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(16),
      Q => out_data(16),
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(17),
      Q => out_data(17),
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(18),
      Q => out_data(18),
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(19),
      Q => out_data(19),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(1),
      Q => out_data(1),
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(20),
      Q => out_data(20),
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(21),
      Q => out_data(21),
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(22),
      Q => out_data(22),
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(23),
      Q => out_data(23),
      R => '0'
    );
\data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(24),
      Q => out_data(24),
      R => '0'
    );
\data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(25),
      Q => out_data(25),
      R => '0'
    );
\data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(26),
      Q => out_data(26),
      R => '0'
    );
\data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(27),
      Q => out_data(27),
      R => '0'
    );
\data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(28),
      Q => out_data(28),
      R => '0'
    );
\data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(29),
      Q => out_data(29),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(2),
      Q => out_data(2),
      R => '0'
    );
\data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(30),
      Q => out_data(30),
      R => '0'
    );
\data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(31),
      Q => out_data(31),
      R => '0'
    );
\data_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(32),
      Q => out_data(32),
      R => '0'
    );
\data_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(33),
      Q => out_data(33),
      R => '0'
    );
\data_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(34),
      Q => out_data(34),
      R => '0'
    );
\data_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(35),
      Q => out_data(35),
      R => '0'
    );
\data_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(36),
      Q => out_data(36),
      R => '0'
    );
\data_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(37),
      Q => out_data(37),
      R => '0'
    );
\data_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(38),
      Q => out_data(38),
      R => '0'
    );
\data_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(39),
      Q => out_data(39),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(3),
      Q => out_data(3),
      R => '0'
    );
\data_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(40),
      Q => out_data(40),
      R => '0'
    );
\data_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(41),
      Q => out_data(41),
      R => '0'
    );
\data_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(42),
      Q => out_data(42),
      R => '0'
    );
\data_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(43),
      Q => out_data(43),
      R => '0'
    );
\data_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(44),
      Q => out_data(44),
      R => '0'
    );
\data_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(45),
      Q => out_data(45),
      R => '0'
    );
\data_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(46),
      Q => out_data(46),
      R => '0'
    );
\data_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(47),
      Q => out_data(47),
      R => '0'
    );
\data_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(48),
      Q => out_data(48),
      R => '0'
    );
\data_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(49),
      Q => out_data(49),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(4),
      Q => out_data(4),
      R => '0'
    );
\data_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(50),
      Q => out_data(50),
      R => '0'
    );
\data_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(51),
      Q => out_data(51),
      R => '0'
    );
\data_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(52),
      Q => out_data(52),
      R => '0'
    );
\data_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(53),
      Q => out_data(53),
      R => '0'
    );
\data_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(54),
      Q => out_data(54),
      R => '0'
    );
\data_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(55),
      Q => out_data(55),
      R => '0'
    );
\data_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(56),
      Q => out_data(56),
      R => '0'
    );
\data_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(57),
      Q => out_data(57),
      R => '0'
    );
\data_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(58),
      Q => out_data(58),
      R => '0'
    );
\data_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(59),
      Q => out_data(59),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(5),
      Q => out_data(5),
      R => '0'
    );
\data_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(60),
      Q => out_data(60),
      R => '0'
    );
\data_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(61),
      Q => out_data(61),
      R => '0'
    );
\data_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(62),
      Q => out_data(62),
      R => '0'
    );
\data_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(63),
      Q => out_data(63),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(6),
      Q => out_data(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(7),
      Q => out_data(7),
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(8),
      Q => out_data(8),
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i_3,
      D => D(9),
      Q => out_data(9),
      R => '0'
    );
have_data_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => out_ready,
      I1 => \^have_data_reg_1\,
      I2 => valid_2,
      I3 => valid_1,
      O => have_data_i_1_n_0
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^have_data_reg_1\,
      R => have_data_reg_2
    );
ready_i_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F755F7FFFFFFFF"
    )
        port map (
      I0 => valid_2,
      I1 => valid_1,
      I2 => \^wrote0_reg_0\,
      I3 => \^have_data_reg_1\,
      I4 => out_ready,
      I5 => valid_5,
      O => \^have_data_reg_0\
    );
\ready_i_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FF0000FFFFFFFF"
    )
        port map (
      I0 => out_ready,
      I1 => \^have_data_reg_1\,
      I2 => have_data02_out,
      I3 => valid_1,
      I4 => have_data02_out_0,
      I5 => valid_3,
      O => have_data0_0
    );
\ready_i_reg_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AFF"
    )
        port map (
      I0 => \^have_data0\,
      I1 => wrote0_reg_1,
      I2 => valid_3,
      I3 => valid_4,
      O => have_data0_1
    );
wrote0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5CF05C"
    )
        port map (
      I0 => valid_2,
      I1 => valid_1,
      I2 => \^wrote0_reg_0\,
      I3 => \^have_data_reg_1\,
      I4 => out_ready,
      O => wrote0_i_1_n_0
    );
wrote0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => wrote0_i_1_n_0,
      Q => \^wrote0_reg_0\,
      R => have_data_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_10 is
  port (
    have_data02_out : out STD_LOGIC;
    valid_2 : out STD_LOGIC;
    \data_i_reg[63]_0\ : out STD_LOGIC;
    \data_i_reg[62]_0\ : out STD_LOGIC;
    \data_i_reg[61]_0\ : out STD_LOGIC;
    \data_i_reg[60]_0\ : out STD_LOGIC;
    \data_i_reg[59]_0\ : out STD_LOGIC;
    \data_i_reg[58]_0\ : out STD_LOGIC;
    \data_i_reg[57]_0\ : out STD_LOGIC;
    \data_i_reg[56]_0\ : out STD_LOGIC;
    \data_i_reg[55]_0\ : out STD_LOGIC;
    \data_i_reg[54]_0\ : out STD_LOGIC;
    \data_i_reg[53]_0\ : out STD_LOGIC;
    \data_i_reg[52]_0\ : out STD_LOGIC;
    \data_i_reg[51]_0\ : out STD_LOGIC;
    \data_i_reg[50]_0\ : out STD_LOGIC;
    \data_i_reg[49]_0\ : out STD_LOGIC;
    \data_i_reg[48]_0\ : out STD_LOGIC;
    \data_i_reg[47]_0\ : out STD_LOGIC;
    \data_i_reg[46]_0\ : out STD_LOGIC;
    \data_i_reg[45]_0\ : out STD_LOGIC;
    \data_i_reg[44]_0\ : out STD_LOGIC;
    \data_i_reg[43]_0\ : out STD_LOGIC;
    \data_i_reg[42]_0\ : out STD_LOGIC;
    \data_i_reg[41]_0\ : out STD_LOGIC;
    \data_i_reg[40]_0\ : out STD_LOGIC;
    \data_i_reg[39]_0\ : out STD_LOGIC;
    \data_i_reg[38]_0\ : out STD_LOGIC;
    \data_i_reg[37]_0\ : out STD_LOGIC;
    \data_i_reg[36]_0\ : out STD_LOGIC;
    \data_i_reg[35]_0\ : out STD_LOGIC;
    \data_i_reg[34]_0\ : out STD_LOGIC;
    \data_i_reg[33]_0\ : out STD_LOGIC;
    \data_i_reg[32]_0\ : out STD_LOGIC;
    \data_i_reg[31]_0\ : out STD_LOGIC;
    \data_i_reg[30]_0\ : out STD_LOGIC;
    \data_i_reg[29]_0\ : out STD_LOGIC;
    \data_i_reg[28]_0\ : out STD_LOGIC;
    \data_i_reg[27]_0\ : out STD_LOGIC;
    \data_i_reg[26]_0\ : out STD_LOGIC;
    \data_i_reg[25]_0\ : out STD_LOGIC;
    \data_i_reg[24]_0\ : out STD_LOGIC;
    \data_i_reg[23]_0\ : out STD_LOGIC;
    \data_i_reg[22]_0\ : out STD_LOGIC;
    \data_i_reg[21]_0\ : out STD_LOGIC;
    \data_i_reg[20]_0\ : out STD_LOGIC;
    \data_i_reg[19]_0\ : out STD_LOGIC;
    \data_i_reg[18]_0\ : out STD_LOGIC;
    \data_i_reg[17]_0\ : out STD_LOGIC;
    \data_i_reg[16]_0\ : out STD_LOGIC;
    \data_i_reg[15]_0\ : out STD_LOGIC;
    \data_i_reg[14]_0\ : out STD_LOGIC;
    \data_i_reg[13]_0\ : out STD_LOGIC;
    \data_i_reg[12]_0\ : out STD_LOGIC;
    \data_i_reg[11]_0\ : out STD_LOGIC;
    \data_i_reg[10]_0\ : out STD_LOGIC;
    \data_i_reg[9]_0\ : out STD_LOGIC;
    \data_i_reg[8]_0\ : out STD_LOGIC;
    \data_i_reg[7]_0\ : out STD_LOGIC;
    \data_i_reg[6]_0\ : out STD_LOGIC;
    \data_i_reg[5]_0\ : out STD_LOGIC;
    \data_i_reg[4]_0\ : out STD_LOGIC;
    \data_i_reg[3]_0\ : out STD_LOGIC;
    \data_i_reg[2]_0\ : out STD_LOGIC;
    \data_i_reg[1]_0\ : out STD_LOGIC;
    \data_i_reg[0]_0\ : out STD_LOGIC;
    valid_1 : in STD_LOGIC;
    have_data_reg_0 : in STD_LOGIC;
    out_ready : in STD_LOGIC;
    have_data_reg_1 : in STD_LOGIC;
    valid_5 : in STD_LOGIC;
    have_data_reg_2 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    data_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_10 : entity is "stream_merge2to1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_10 is
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal \^valid_2\ : STD_LOGIC;
begin
  valid_2 <= \^valid_2\;
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(0),
      Q => \data_i_reg[0]_0\,
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(10),
      Q => \data_i_reg[10]_0\,
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(11),
      Q => \data_i_reg[11]_0\,
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(12),
      Q => \data_i_reg[12]_0\,
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(13),
      Q => \data_i_reg[13]_0\,
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(14),
      Q => \data_i_reg[14]_0\,
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(15),
      Q => \data_i_reg[15]_0\,
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(16),
      Q => \data_i_reg[16]_0\,
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(17),
      Q => \data_i_reg[17]_0\,
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(18),
      Q => \data_i_reg[18]_0\,
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(19),
      Q => \data_i_reg[19]_0\,
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(1),
      Q => \data_i_reg[1]_0\,
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(20),
      Q => \data_i_reg[20]_0\,
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(21),
      Q => \data_i_reg[21]_0\,
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(22),
      Q => \data_i_reg[22]_0\,
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(23),
      Q => \data_i_reg[23]_0\,
      R => '0'
    );
\data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(24),
      Q => \data_i_reg[24]_0\,
      R => '0'
    );
\data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(25),
      Q => \data_i_reg[25]_0\,
      R => '0'
    );
\data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(26),
      Q => \data_i_reg[26]_0\,
      R => '0'
    );
\data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(27),
      Q => \data_i_reg[27]_0\,
      R => '0'
    );
\data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(28),
      Q => \data_i_reg[28]_0\,
      R => '0'
    );
\data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(29),
      Q => \data_i_reg[29]_0\,
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(2),
      Q => \data_i_reg[2]_0\,
      R => '0'
    );
\data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(30),
      Q => \data_i_reg[30]_0\,
      R => '0'
    );
\data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(31),
      Q => \data_i_reg[31]_0\,
      R => '0'
    );
\data_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(32),
      Q => \data_i_reg[32]_0\,
      R => '0'
    );
\data_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(33),
      Q => \data_i_reg[33]_0\,
      R => '0'
    );
\data_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(34),
      Q => \data_i_reg[34]_0\,
      R => '0'
    );
\data_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(35),
      Q => \data_i_reg[35]_0\,
      R => '0'
    );
\data_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(36),
      Q => \data_i_reg[36]_0\,
      R => '0'
    );
\data_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(37),
      Q => \data_i_reg[37]_0\,
      R => '0'
    );
\data_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(38),
      Q => \data_i_reg[38]_0\,
      R => '0'
    );
\data_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(39),
      Q => \data_i_reg[39]_0\,
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(3),
      Q => \data_i_reg[3]_0\,
      R => '0'
    );
\data_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(40),
      Q => \data_i_reg[40]_0\,
      R => '0'
    );
\data_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(41),
      Q => \data_i_reg[41]_0\,
      R => '0'
    );
\data_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(42),
      Q => \data_i_reg[42]_0\,
      R => '0'
    );
\data_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(43),
      Q => \data_i_reg[43]_0\,
      R => '0'
    );
\data_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(44),
      Q => \data_i_reg[44]_0\,
      R => '0'
    );
\data_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(45),
      Q => \data_i_reg[45]_0\,
      R => '0'
    );
\data_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(46),
      Q => \data_i_reg[46]_0\,
      R => '0'
    );
\data_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(47),
      Q => \data_i_reg[47]_0\,
      R => '0'
    );
\data_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(48),
      Q => \data_i_reg[48]_0\,
      R => '0'
    );
\data_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(49),
      Q => \data_i_reg[49]_0\,
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(4),
      Q => \data_i_reg[4]_0\,
      R => '0'
    );
\data_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(50),
      Q => \data_i_reg[50]_0\,
      R => '0'
    );
\data_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(51),
      Q => \data_i_reg[51]_0\,
      R => '0'
    );
\data_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(52),
      Q => \data_i_reg[52]_0\,
      R => '0'
    );
\data_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(53),
      Q => \data_i_reg[53]_0\,
      R => '0'
    );
\data_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(54),
      Q => \data_i_reg[54]_0\,
      R => '0'
    );
\data_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(55),
      Q => \data_i_reg[55]_0\,
      R => '0'
    );
\data_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(56),
      Q => \data_i_reg[56]_0\,
      R => '0'
    );
\data_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(57),
      Q => \data_i_reg[57]_0\,
      R => '0'
    );
\data_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(58),
      Q => \data_i_reg[58]_0\,
      R => '0'
    );
\data_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(59),
      Q => \data_i_reg[59]_0\,
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(5),
      Q => \data_i_reg[5]_0\,
      R => '0'
    );
\data_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(60),
      Q => \data_i_reg[60]_0\,
      R => '0'
    );
\data_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(61),
      Q => \data_i_reg[61]_0\,
      R => '0'
    );
\data_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(62),
      Q => \data_i_reg[62]_0\,
      R => '0'
    );
\data_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(63),
      Q => \data_i_reg[63]_0\,
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(6),
      Q => \data_i_reg[6]_0\,
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(7),
      Q => \data_i_reg[7]_0\,
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(8),
      Q => \data_i_reg[8]_0\,
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => data_i,
      D => Q(9),
      Q => \data_i_reg[9]_0\,
      R => '0'
    );
have_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4F440000"
    )
        port map (
      I0 => out_ready,
      I1 => have_data_reg_1,
      I2 => have_data_reg_0,
      I3 => valid_1,
      I4 => \^valid_2\,
      I5 => valid_5,
      O => have_data_i_1_n_0
    );
have_data_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \^valid_2\,
      I1 => valid_1,
      I2 => have_data_reg_0,
      O => have_data02_out
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^valid_2\,
      R => have_data_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11 is
  port (
    wrote0_reg_0 : out STD_LOGIC;
    \data_i_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    valid_3 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    have_data_reg_0 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    valid_4 : in STD_LOGIC;
    \data_i_reg[63]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 63 downto 0 );
    have_data0 : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    have_data0_0 : in STD_LOGIC;
    \data_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_i_reg[63]_2\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11 : entity is "stream_merge2to1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11 is
  signal \data_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[32]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[33]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[34]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[35]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[36]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[37]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[38]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[39]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[40]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[41]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[42]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[43]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[44]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[45]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[46]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[47]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[48]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[49]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[50]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[51]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[52]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[53]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[54]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[55]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[56]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[57]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[58]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[59]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[60]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[61]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[62]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[63]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[9]\ : STD_LOGIC;
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal \^valid_3\ : STD_LOGIC;
  signal \wrote0_i_1__1_n_0\ : STD_LOGIC;
  signal \^wrote0_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of have_data_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wrote0_i_1__1\ : label is "soft_lutpair6";
begin
  valid_3 <= \^valid_3\;
  wrote0_reg_0 <= \^wrote0_reg_0\;
\data_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[0]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(0),
      O => \data_i_reg[63]_0\(0)
    );
\data_i[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[10]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(10),
      O => \data_i_reg[63]_0\(10)
    );
\data_i[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[11]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(11),
      O => \data_i_reg[63]_0\(11)
    );
\data_i[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[12]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(12),
      O => \data_i_reg[63]_0\(12)
    );
\data_i[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[13]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(13),
      O => \data_i_reg[63]_0\(13)
    );
\data_i[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[14]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(14),
      O => \data_i_reg[63]_0\(14)
    );
\data_i[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[15]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(15),
      O => \data_i_reg[63]_0\(15)
    );
\data_i[16]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[16]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(16),
      O => \data_i_reg[63]_0\(16)
    );
\data_i[17]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[17]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(17),
      O => \data_i_reg[63]_0\(17)
    );
\data_i[18]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[18]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(18),
      O => \data_i_reg[63]_0\(18)
    );
\data_i[19]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[19]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(19),
      O => \data_i_reg[63]_0\(19)
    );
\data_i[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[1]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(1),
      O => \data_i_reg[63]_0\(1)
    );
\data_i[20]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[20]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(20),
      O => \data_i_reg[63]_0\(20)
    );
\data_i[21]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[21]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(21),
      O => \data_i_reg[63]_0\(21)
    );
\data_i[22]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[22]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(22),
      O => \data_i_reg[63]_0\(22)
    );
\data_i[23]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[23]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(23),
      O => \data_i_reg[63]_0\(23)
    );
\data_i[24]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[24]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(24),
      O => \data_i_reg[63]_0\(24)
    );
\data_i[25]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[25]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(25),
      O => \data_i_reg[63]_0\(25)
    );
\data_i[26]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[26]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(26),
      O => \data_i_reg[63]_0\(26)
    );
\data_i[27]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[27]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(27),
      O => \data_i_reg[63]_0\(27)
    );
\data_i[28]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[28]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(28),
      O => \data_i_reg[63]_0\(28)
    );
\data_i[29]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[29]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(29),
      O => \data_i_reg[63]_0\(29)
    );
\data_i[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[2]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(2),
      O => \data_i_reg[63]_0\(2)
    );
\data_i[30]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[30]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(30),
      O => \data_i_reg[63]_0\(30)
    );
\data_i[31]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[31]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(31),
      O => \data_i_reg[63]_0\(31)
    );
\data_i[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[32]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(32),
      O => \data_i_reg[63]_0\(32)
    );
\data_i[33]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[33]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(33),
      O => \data_i_reg[63]_0\(33)
    );
\data_i[34]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[34]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(34),
      O => \data_i_reg[63]_0\(34)
    );
\data_i[35]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[35]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(35),
      O => \data_i_reg[63]_0\(35)
    );
\data_i[36]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[36]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(36),
      O => \data_i_reg[63]_0\(36)
    );
\data_i[37]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[37]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(37),
      O => \data_i_reg[63]_0\(37)
    );
\data_i[38]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[38]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(38),
      O => \data_i_reg[63]_0\(38)
    );
\data_i[39]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[39]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(39),
      O => \data_i_reg[63]_0\(39)
    );
\data_i[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[3]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(3),
      O => \data_i_reg[63]_0\(3)
    );
\data_i[40]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[40]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(40),
      O => \data_i_reg[63]_0\(40)
    );
\data_i[41]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[41]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(41),
      O => \data_i_reg[63]_0\(41)
    );
\data_i[42]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[42]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(42),
      O => \data_i_reg[63]_0\(42)
    );
\data_i[43]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[43]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(43),
      O => \data_i_reg[63]_0\(43)
    );
\data_i[44]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[44]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(44),
      O => \data_i_reg[63]_0\(44)
    );
\data_i[45]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[45]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(45),
      O => \data_i_reg[63]_0\(45)
    );
\data_i[46]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[46]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(46),
      O => \data_i_reg[63]_0\(46)
    );
\data_i[47]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[47]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(47),
      O => \data_i_reg[63]_0\(47)
    );
\data_i[48]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[48]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(48),
      O => \data_i_reg[63]_0\(48)
    );
\data_i[49]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[49]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(49),
      O => \data_i_reg[63]_0\(49)
    );
\data_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[4]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(4),
      O => \data_i_reg[63]_0\(4)
    );
\data_i[50]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[50]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(50),
      O => \data_i_reg[63]_0\(50)
    );
\data_i[51]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[51]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(51),
      O => \data_i_reg[63]_0\(51)
    );
\data_i[52]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[52]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(52),
      O => \data_i_reg[63]_0\(52)
    );
\data_i[53]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[53]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(53),
      O => \data_i_reg[63]_0\(53)
    );
\data_i[54]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[54]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(54),
      O => \data_i_reg[63]_0\(54)
    );
\data_i[55]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[55]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(55),
      O => \data_i_reg[63]_0\(55)
    );
\data_i[56]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[56]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(56),
      O => \data_i_reg[63]_0\(56)
    );
\data_i[57]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[57]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(57),
      O => \data_i_reg[63]_0\(57)
    );
\data_i[58]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[58]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(58),
      O => \data_i_reg[63]_0\(58)
    );
\data_i[59]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[59]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(59),
      O => \data_i_reg[63]_0\(59)
    );
\data_i[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[5]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(5),
      O => \data_i_reg[63]_0\(5)
    );
\data_i[60]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[60]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(60),
      O => \data_i_reg[63]_0\(60)
    );
\data_i[61]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[61]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(61),
      O => \data_i_reg[63]_0\(61)
    );
\data_i[62]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[62]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(62),
      O => \data_i_reg[63]_0\(62)
    );
\data_i[63]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => have_data_reg_0,
      I1 => \^valid_3\,
      I2 => valid_4,
      I3 => have_data0,
      O => E(0)
    );
\data_i[63]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[63]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(63),
      O => \data_i_reg[63]_0\(63)
    );
\data_i[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[6]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(6),
      O => \data_i_reg[63]_0\(6)
    );
\data_i[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[7]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(7),
      O => \data_i_reg[63]_0\(7)
    );
\data_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[8]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(8),
      O => \data_i_reg[63]_0\(8)
    );
\data_i[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \data_i_reg_n_0_[9]\,
      I1 => valid_4,
      I2 => \^valid_3\,
      I3 => \data_i_reg[63]_1\,
      I4 => Q(9),
      O => \data_i_reg[63]_0\(9)
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(0),
      Q => \data_i_reg_n_0_[0]\,
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(10),
      Q => \data_i_reg_n_0_[10]\,
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(11),
      Q => \data_i_reg_n_0_[11]\,
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(12),
      Q => \data_i_reg_n_0_[12]\,
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(13),
      Q => \data_i_reg_n_0_[13]\,
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(14),
      Q => \data_i_reg_n_0_[14]\,
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(15),
      Q => \data_i_reg_n_0_[15]\,
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(16),
      Q => \data_i_reg_n_0_[16]\,
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(17),
      Q => \data_i_reg_n_0_[17]\,
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(18),
      Q => \data_i_reg_n_0_[18]\,
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(19),
      Q => \data_i_reg_n_0_[19]\,
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(1),
      Q => \data_i_reg_n_0_[1]\,
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(20),
      Q => \data_i_reg_n_0_[20]\,
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(21),
      Q => \data_i_reg_n_0_[21]\,
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(22),
      Q => \data_i_reg_n_0_[22]\,
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(23),
      Q => \data_i_reg_n_0_[23]\,
      R => '0'
    );
\data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(24),
      Q => \data_i_reg_n_0_[24]\,
      R => '0'
    );
\data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(25),
      Q => \data_i_reg_n_0_[25]\,
      R => '0'
    );
\data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(26),
      Q => \data_i_reg_n_0_[26]\,
      R => '0'
    );
\data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(27),
      Q => \data_i_reg_n_0_[27]\,
      R => '0'
    );
\data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(28),
      Q => \data_i_reg_n_0_[28]\,
      R => '0'
    );
\data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(29),
      Q => \data_i_reg_n_0_[29]\,
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(2),
      Q => \data_i_reg_n_0_[2]\,
      R => '0'
    );
\data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(30),
      Q => \data_i_reg_n_0_[30]\,
      R => '0'
    );
\data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(31),
      Q => \data_i_reg_n_0_[31]\,
      R => '0'
    );
\data_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(32),
      Q => \data_i_reg_n_0_[32]\,
      R => '0'
    );
\data_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(33),
      Q => \data_i_reg_n_0_[33]\,
      R => '0'
    );
\data_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(34),
      Q => \data_i_reg_n_0_[34]\,
      R => '0'
    );
\data_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(35),
      Q => \data_i_reg_n_0_[35]\,
      R => '0'
    );
\data_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(36),
      Q => \data_i_reg_n_0_[36]\,
      R => '0'
    );
\data_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(37),
      Q => \data_i_reg_n_0_[37]\,
      R => '0'
    );
\data_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(38),
      Q => \data_i_reg_n_0_[38]\,
      R => '0'
    );
\data_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(39),
      Q => \data_i_reg_n_0_[39]\,
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(3),
      Q => \data_i_reg_n_0_[3]\,
      R => '0'
    );
\data_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(40),
      Q => \data_i_reg_n_0_[40]\,
      R => '0'
    );
\data_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(41),
      Q => \data_i_reg_n_0_[41]\,
      R => '0'
    );
\data_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(42),
      Q => \data_i_reg_n_0_[42]\,
      R => '0'
    );
\data_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(43),
      Q => \data_i_reg_n_0_[43]\,
      R => '0'
    );
\data_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(44),
      Q => \data_i_reg_n_0_[44]\,
      R => '0'
    );
\data_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(45),
      Q => \data_i_reg_n_0_[45]\,
      R => '0'
    );
\data_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(46),
      Q => \data_i_reg_n_0_[46]\,
      R => '0'
    );
\data_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(47),
      Q => \data_i_reg_n_0_[47]\,
      R => '0'
    );
\data_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(48),
      Q => \data_i_reg_n_0_[48]\,
      R => '0'
    );
\data_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(49),
      Q => \data_i_reg_n_0_[49]\,
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(4),
      Q => \data_i_reg_n_0_[4]\,
      R => '0'
    );
\data_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(50),
      Q => \data_i_reg_n_0_[50]\,
      R => '0'
    );
\data_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(51),
      Q => \data_i_reg_n_0_[51]\,
      R => '0'
    );
\data_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(52),
      Q => \data_i_reg_n_0_[52]\,
      R => '0'
    );
\data_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(53),
      Q => \data_i_reg_n_0_[53]\,
      R => '0'
    );
\data_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(54),
      Q => \data_i_reg_n_0_[54]\,
      R => '0'
    );
\data_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(55),
      Q => \data_i_reg_n_0_[55]\,
      R => '0'
    );
\data_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(56),
      Q => \data_i_reg_n_0_[56]\,
      R => '0'
    );
\data_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(57),
      Q => \data_i_reg_n_0_[57]\,
      R => '0'
    );
\data_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(58),
      Q => \data_i_reg_n_0_[58]\,
      R => '0'
    );
\data_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(59),
      Q => \data_i_reg_n_0_[59]\,
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(5),
      Q => \data_i_reg_n_0_[5]\,
      R => '0'
    );
\data_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(60),
      Q => \data_i_reg_n_0_[60]\,
      R => '0'
    );
\data_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(61),
      Q => \data_i_reg_n_0_[61]\,
      R => '0'
    );
\data_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(62),
      Q => \data_i_reg_n_0_[62]\,
      R => '0'
    );
\data_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(63),
      Q => \data_i_reg_n_0_[63]\,
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(6),
      Q => \data_i_reg_n_0_[6]\,
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(7),
      Q => \data_i_reg_n_0_[7]\,
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(8),
      Q => \data_i_reg_n_0_[8]\,
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => \data_i_reg[0]_0\(0),
      D => \data_i_reg[63]_2\(9),
      Q => \data_i_reg_n_0_[9]\,
      R => '0'
    );
have_data_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDA8"
    )
        port map (
      I0 => have_data0_0,
      I1 => \_trace_valid\(1),
      I2 => \_trace_valid\(0),
      I3 => \^valid_3\,
      O => have_data_i_1_n_0
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^valid_3\,
      R => have_data_reg_0
    );
\wrote0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => \_trace_valid\(1),
      I1 => \_trace_valid\(0),
      I2 => \^wrote0_reg_0\,
      I3 => have_data0_0,
      O => \wrote0_i_1__1_n_0\
    );
wrote0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \wrote0_i_1__1_n_0\,
      Q => \^wrote0_reg_0\,
      R => have_data_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12 is
  port (
    wrote0_reg_0 : out STD_LOGIC;
    have_data02_out_0 : out STD_LOGIC;
    valid_4 : out STD_LOGIC;
    have_data_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    have_data_reg_1 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    valid_3 : in STD_LOGIC;
    have_data_reg_2 : in STD_LOGIC;
    have_data0 : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    have_data0_1 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_i_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    have_data02_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12 : entity is "stream_merge2to1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12 is
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal \^valid_4\ : STD_LOGIC;
  signal \wrote0_i_1__2_n_0\ : STD_LOGIC;
  signal \^wrote0_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of have_data_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrote0_i_1__0\ : label is "soft_lutpair7";
begin
  valid_4 <= \^valid_4\;
  wrote0_reg_0 <= \^wrote0_reg_0\;
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(0),
      Q => Q(0),
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(10),
      Q => Q(10),
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(11),
      Q => Q(11),
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(12),
      Q => Q(12),
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(13),
      Q => Q(13),
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(14),
      Q => Q(14),
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(15),
      Q => Q(15),
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(16),
      Q => Q(16),
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(17),
      Q => Q(17),
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(18),
      Q => Q(18),
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(19),
      Q => Q(19),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(1),
      Q => Q(1),
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(20),
      Q => Q(20),
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(21),
      Q => Q(21),
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(22),
      Q => Q(22),
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(23),
      Q => Q(23),
      R => '0'
    );
\data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(24),
      Q => Q(24),
      R => '0'
    );
\data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(25),
      Q => Q(25),
      R => '0'
    );
\data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(26),
      Q => Q(26),
      R => '0'
    );
\data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(27),
      Q => Q(27),
      R => '0'
    );
\data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(28),
      Q => Q(28),
      R => '0'
    );
\data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(29),
      Q => Q(29),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(2),
      Q => Q(2),
      R => '0'
    );
\data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(30),
      Q => Q(30),
      R => '0'
    );
\data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(31),
      Q => Q(31),
      R => '0'
    );
\data_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(32),
      Q => Q(32),
      R => '0'
    );
\data_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(33),
      Q => Q(33),
      R => '0'
    );
\data_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(34),
      Q => Q(34),
      R => '0'
    );
\data_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(35),
      Q => Q(35),
      R => '0'
    );
\data_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(36),
      Q => Q(36),
      R => '0'
    );
\data_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(37),
      Q => Q(37),
      R => '0'
    );
\data_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(38),
      Q => Q(38),
      R => '0'
    );
\data_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(39),
      Q => Q(39),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(3),
      Q => Q(3),
      R => '0'
    );
\data_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(40),
      Q => Q(40),
      R => '0'
    );
\data_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(41),
      Q => Q(41),
      R => '0'
    );
\data_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(42),
      Q => Q(42),
      R => '0'
    );
\data_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(43),
      Q => Q(43),
      R => '0'
    );
\data_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(44),
      Q => Q(44),
      R => '0'
    );
\data_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(45),
      Q => Q(45),
      R => '0'
    );
\data_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(46),
      Q => Q(46),
      R => '0'
    );
\data_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(47),
      Q => Q(47),
      R => '0'
    );
\data_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(48),
      Q => Q(48),
      R => '0'
    );
\data_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(49),
      Q => Q(49),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(4),
      Q => Q(4),
      R => '0'
    );
\data_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(50),
      Q => Q(50),
      R => '0'
    );
\data_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(51),
      Q => Q(51),
      R => '0'
    );
\data_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(52),
      Q => Q(52),
      R => '0'
    );
\data_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(53),
      Q => Q(53),
      R => '0'
    );
\data_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(54),
      Q => Q(54),
      R => '0'
    );
\data_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(55),
      Q => Q(55),
      R => '0'
    );
\data_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(56),
      Q => Q(56),
      R => '0'
    );
\data_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(57),
      Q => Q(57),
      R => '0'
    );
\data_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(58),
      Q => Q(58),
      R => '0'
    );
\data_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(59),
      Q => Q(59),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(5),
      Q => Q(5),
      R => '0'
    );
\data_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(60),
      Q => Q(60),
      R => '0'
    );
\data_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(61),
      Q => Q(61),
      R => '0'
    );
\data_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(62),
      Q => Q(62),
      R => '0'
    );
\data_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(63),
      Q => Q(63),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(6),
      Q => Q(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(7),
      Q => Q(7),
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(8),
      Q => Q(8),
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_0\(9),
      Q => Q(9),
      R => '0'
    );
have_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFBBAAAA"
    )
        port map (
      I0 => \_trace_valid\(1),
      I1 => have_data0,
      I2 => have_data_reg_2,
      I3 => valid_3,
      I4 => \^valid_4\,
      I5 => have_data02_out,
      O => have_data_i_1_n_0
    );
have_data_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \^valid_4\,
      I1 => valid_3,
      I2 => have_data_reg_2,
      O => have_data02_out_0
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^valid_4\,
      R => have_data_reg_1
    );
\wrote0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => \^valid_4\,
      I1 => valid_3,
      I2 => have_data_reg_2,
      I3 => have_data0,
      O => have_data_reg_0
    );
\wrote0_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => \_trace_valid\(1),
      I1 => \_trace_valid\(0),
      I2 => \^wrote0_reg_0\,
      I3 => have_data0_1,
      O => \wrote0_i_1__2_n_0\
    );
wrote0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \wrote0_i_1__2_n_0\,
      Q => \^wrote0_reg_0\,
      R => have_data_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13 is
  port (
    wrote0_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 63 downto 0 );
    valid_5 : out STD_LOGIC;
    wrote0_reg_1 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    have_data0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13 : entity is "stream_merge2to1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13 is
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal \^valid_5\ : STD_LOGIC;
  signal \wrote0_i_1__3_n_0\ : STD_LOGIC;
  signal \^wrote0_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of have_data_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wrote0_i_1__3\ : label is "soft_lutpair8";
begin
  valid_5 <= \^valid_5\;
  wrote0_reg_0 <= \^wrote0_reg_0\;
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(18),
      Q => Q(18),
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(19),
      Q => Q(19),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(20),
      Q => Q(20),
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(21),
      Q => Q(21),
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(22),
      Q => Q(22),
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(23),
      Q => Q(23),
      R => '0'
    );
\data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(24),
      Q => Q(24),
      R => '0'
    );
\data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(25),
      Q => Q(25),
      R => '0'
    );
\data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(26),
      Q => Q(26),
      R => '0'
    );
\data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(27),
      Q => Q(27),
      R => '0'
    );
\data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(28),
      Q => Q(28),
      R => '0'
    );
\data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(29),
      Q => Q(29),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(30),
      Q => Q(30),
      R => '0'
    );
\data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(31),
      Q => Q(31),
      R => '0'
    );
\data_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(32),
      Q => Q(32),
      R => '0'
    );
\data_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(33),
      Q => Q(33),
      R => '0'
    );
\data_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(34),
      Q => Q(34),
      R => '0'
    );
\data_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(35),
      Q => Q(35),
      R => '0'
    );
\data_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(36),
      Q => Q(36),
      R => '0'
    );
\data_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(37),
      Q => Q(37),
      R => '0'
    );
\data_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(38),
      Q => Q(38),
      R => '0'
    );
\data_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(39),
      Q => Q(39),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\data_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(40),
      Q => Q(40),
      R => '0'
    );
\data_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(41),
      Q => Q(41),
      R => '0'
    );
\data_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(42),
      Q => Q(42),
      R => '0'
    );
\data_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(43),
      Q => Q(43),
      R => '0'
    );
\data_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(44),
      Q => Q(44),
      R => '0'
    );
\data_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(45),
      Q => Q(45),
      R => '0'
    );
\data_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(46),
      Q => Q(46),
      R => '0'
    );
\data_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(47),
      Q => Q(47),
      R => '0'
    );
\data_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(48),
      Q => Q(48),
      R => '0'
    );
\data_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(49),
      Q => Q(49),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\data_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(50),
      Q => Q(50),
      R => '0'
    );
\data_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(51),
      Q => Q(51),
      R => '0'
    );
\data_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(52),
      Q => Q(52),
      R => '0'
    );
\data_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(53),
      Q => Q(53),
      R => '0'
    );
\data_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(54),
      Q => Q(54),
      R => '0'
    );
\data_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(55),
      Q => Q(55),
      R => '0'
    );
\data_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(56),
      Q => Q(56),
      R => '0'
    );
\data_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(57),
      Q => Q(57),
      R => '0'
    );
\data_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(58),
      Q => Q(58),
      R => '0'
    );
\data_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(59),
      Q => Q(59),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\data_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(60),
      Q => Q(60),
      R => '0'
    );
\data_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(61),
      Q => Q(61),
      R => '0'
    );
\data_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(62),
      Q => Q(62),
      R => '0'
    );
\data_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(63),
      Q => Q(63),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => '0'
    );
have_data_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDA8"
    )
        port map (
      I0 => have_data0,
      I1 => \_trace_valid\(1),
      I2 => \_trace_valid\(0),
      I3 => \^valid_5\,
      O => have_data_i_1_n_0
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^valid_5\,
      R => wrote0_reg_1
    );
\wrote0_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CF0"
    )
        port map (
      I0 => \_trace_valid\(1),
      I1 => \_trace_valid\(0),
      I2 => \^wrote0_reg_0\,
      I3 => have_data0,
      O => \wrote0_i_1__3_n_0\
    );
wrote0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \wrote0_i_1__3_n_0\,
      Q => \^wrote0_reg_0\,
      R => wrote0_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_9 is
  port (
    wrote0_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    valid_1 : out STD_LOGIC;
    wrote0_reg_1 : in STD_LOGIC;
    wrote0_reg_2 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    valid_2 : in STD_LOGIC;
    \data_i_reg[63]_0\ : in STD_LOGIC;
    \data_i_reg[63]_1\ : in STD_LOGIC;
    \data_i_reg[62]_0\ : in STD_LOGIC;
    \data_i_reg[61]_0\ : in STD_LOGIC;
    \data_i_reg[60]_0\ : in STD_LOGIC;
    \data_i_reg[59]_0\ : in STD_LOGIC;
    \data_i_reg[58]_0\ : in STD_LOGIC;
    \data_i_reg[57]_0\ : in STD_LOGIC;
    \data_i_reg[56]_0\ : in STD_LOGIC;
    \data_i_reg[55]_0\ : in STD_LOGIC;
    \data_i_reg[54]_0\ : in STD_LOGIC;
    \data_i_reg[53]_0\ : in STD_LOGIC;
    \data_i_reg[52]_0\ : in STD_LOGIC;
    \data_i_reg[51]_0\ : in STD_LOGIC;
    \data_i_reg[50]_0\ : in STD_LOGIC;
    \data_i_reg[49]_0\ : in STD_LOGIC;
    \data_i_reg[48]_0\ : in STD_LOGIC;
    \data_i_reg[47]_0\ : in STD_LOGIC;
    \data_i_reg[46]_0\ : in STD_LOGIC;
    \data_i_reg[45]_0\ : in STD_LOGIC;
    \data_i_reg[44]_0\ : in STD_LOGIC;
    \data_i_reg[43]_0\ : in STD_LOGIC;
    \data_i_reg[42]_0\ : in STD_LOGIC;
    \data_i_reg[41]_0\ : in STD_LOGIC;
    \data_i_reg[40]_0\ : in STD_LOGIC;
    \data_i_reg[39]_0\ : in STD_LOGIC;
    \data_i_reg[38]_0\ : in STD_LOGIC;
    \data_i_reg[37]_0\ : in STD_LOGIC;
    \data_i_reg[36]_0\ : in STD_LOGIC;
    \data_i_reg[35]_0\ : in STD_LOGIC;
    \data_i_reg[34]_0\ : in STD_LOGIC;
    \data_i_reg[33]_0\ : in STD_LOGIC;
    \data_i_reg[32]_0\ : in STD_LOGIC;
    \data_i_reg[31]_0\ : in STD_LOGIC;
    \data_i_reg[30]_0\ : in STD_LOGIC;
    \data_i_reg[29]_0\ : in STD_LOGIC;
    \data_i_reg[28]_0\ : in STD_LOGIC;
    \data_i_reg[27]_0\ : in STD_LOGIC;
    \data_i_reg[26]_0\ : in STD_LOGIC;
    \data_i_reg[25]_0\ : in STD_LOGIC;
    \data_i_reg[24]_0\ : in STD_LOGIC;
    \data_i_reg[23]_0\ : in STD_LOGIC;
    \data_i_reg[22]_0\ : in STD_LOGIC;
    \data_i_reg[21]_0\ : in STD_LOGIC;
    \data_i_reg[20]_0\ : in STD_LOGIC;
    \data_i_reg[19]_0\ : in STD_LOGIC;
    \data_i_reg[18]_0\ : in STD_LOGIC;
    \data_i_reg[17]_0\ : in STD_LOGIC;
    \data_i_reg[16]_0\ : in STD_LOGIC;
    \data_i_reg[15]_0\ : in STD_LOGIC;
    \data_i_reg[14]_0\ : in STD_LOGIC;
    \data_i_reg[13]_0\ : in STD_LOGIC;
    \data_i_reg[12]_0\ : in STD_LOGIC;
    \data_i_reg[11]_0\ : in STD_LOGIC;
    \data_i_reg[10]_0\ : in STD_LOGIC;
    \data_i_reg[9]_0\ : in STD_LOGIC;
    \data_i_reg[8]_0\ : in STD_LOGIC;
    \data_i_reg[7]_0\ : in STD_LOGIC;
    \data_i_reg[6]_0\ : in STD_LOGIC;
    \data_i_reg[5]_0\ : in STD_LOGIC;
    \data_i_reg[4]_0\ : in STD_LOGIC;
    \data_i_reg[3]_0\ : in STD_LOGIC;
    \data_i_reg[2]_0\ : in STD_LOGIC;
    \data_i_reg[1]_0\ : in STD_LOGIC;
    \data_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_i_reg[63]_2\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    valid_4 : in STD_LOGIC;
    out_ready : in STD_LOGIC;
    have_data_reg_0 : in STD_LOGIC;
    have_data02_out : in STD_LOGIC;
    have_data02_out_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_9 : entity is "stream_merge2to1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_9 is
  signal data_i : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal \^valid_1\ : STD_LOGIC;
begin
  valid_1 <= \^valid_1\;
\data_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(0),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[0]_0\,
      O => D(0)
    );
\data_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(10),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[10]_0\,
      O => D(10)
    );
\data_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(11),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[11]_0\,
      O => D(11)
    );
\data_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(12),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[12]_0\,
      O => D(12)
    );
\data_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(13),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[13]_0\,
      O => D(13)
    );
\data_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(14),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[14]_0\,
      O => D(14)
    );
\data_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(15),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[15]_0\,
      O => D(15)
    );
\data_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(16),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[16]_0\,
      O => D(16)
    );
\data_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(17),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[17]_0\,
      O => D(17)
    );
\data_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(18),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[18]_0\,
      O => D(18)
    );
\data_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(19),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[19]_0\,
      O => D(19)
    );
\data_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(1),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[1]_0\,
      O => D(1)
    );
\data_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(20),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[20]_0\,
      O => D(20)
    );
\data_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(21),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[21]_0\,
      O => D(21)
    );
\data_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(22),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[22]_0\,
      O => D(22)
    );
\data_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(23),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[23]_0\,
      O => D(23)
    );
\data_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(24),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[24]_0\,
      O => D(24)
    );
\data_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(25),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[25]_0\,
      O => D(25)
    );
\data_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(26),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[26]_0\,
      O => D(26)
    );
\data_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(27),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[27]_0\,
      O => D(27)
    );
\data_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(28),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[28]_0\,
      O => D(28)
    );
\data_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(29),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[29]_0\,
      O => D(29)
    );
\data_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(2),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[2]_0\,
      O => D(2)
    );
\data_i[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(30),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[30]_0\,
      O => D(30)
    );
\data_i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(31),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[31]_0\,
      O => D(31)
    );
\data_i[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(32),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[32]_0\,
      O => D(32)
    );
\data_i[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(33),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[33]_0\,
      O => D(33)
    );
\data_i[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(34),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[34]_0\,
      O => D(34)
    );
\data_i[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(35),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[35]_0\,
      O => D(35)
    );
\data_i[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(36),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[36]_0\,
      O => D(36)
    );
\data_i[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(37),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[37]_0\,
      O => D(37)
    );
\data_i[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(38),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[38]_0\,
      O => D(38)
    );
\data_i[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(39),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[39]_0\,
      O => D(39)
    );
\data_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(3),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[3]_0\,
      O => D(3)
    );
\data_i[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(40),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[40]_0\,
      O => D(40)
    );
\data_i[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(41),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[41]_0\,
      O => D(41)
    );
\data_i[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(42),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[42]_0\,
      O => D(42)
    );
\data_i[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(43),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[43]_0\,
      O => D(43)
    );
\data_i[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(44),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[44]_0\,
      O => D(44)
    );
\data_i[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(45),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[45]_0\,
      O => D(45)
    );
\data_i[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(46),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[46]_0\,
      O => D(46)
    );
\data_i[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(47),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[47]_0\,
      O => D(47)
    );
\data_i[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(48),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[48]_0\,
      O => D(48)
    );
\data_i[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(49),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[49]_0\,
      O => D(49)
    );
\data_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(4),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[4]_0\,
      O => D(4)
    );
\data_i[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(50),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[50]_0\,
      O => D(50)
    );
\data_i[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(51),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[51]_0\,
      O => D(51)
    );
\data_i[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(52),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[52]_0\,
      O => D(52)
    );
\data_i[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(53),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[53]_0\,
      O => D(53)
    );
\data_i[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(54),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[54]_0\,
      O => D(54)
    );
\data_i[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(55),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[55]_0\,
      O => D(55)
    );
\data_i[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(56),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[56]_0\,
      O => D(56)
    );
\data_i[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(57),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[57]_0\,
      O => D(57)
    );
\data_i[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(58),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[58]_0\,
      O => D(58)
    );
\data_i[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(59),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[59]_0\,
      O => D(59)
    );
\data_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(5),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[5]_0\,
      O => D(5)
    );
\data_i[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(60),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[60]_0\,
      O => D(60)
    );
\data_i[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(61),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[61]_0\,
      O => D(61)
    );
\data_i[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(62),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[62]_0\,
      O => D(62)
    );
\data_i[63]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(63),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[63]_1\,
      O => D(63)
    );
\data_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(6),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[6]_0\,
      O => D(6)
    );
\data_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(7),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[7]_0\,
      O => D(7)
    );
\data_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(8),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[8]_0\,
      O => D(8)
    );
\data_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => data_i(9),
      I1 => valid_2,
      I2 => \^valid_1\,
      I3 => \data_i_reg[63]_0\,
      I4 => \data_i_reg[9]_0\,
      O => D(9)
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(0),
      Q => data_i(0),
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(10),
      Q => data_i(10),
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(11),
      Q => data_i(11),
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(12),
      Q => data_i(12),
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(13),
      Q => data_i(13),
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(14),
      Q => data_i(14),
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(15),
      Q => data_i(15),
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(16),
      Q => data_i(16),
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(17),
      Q => data_i(17),
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(18),
      Q => data_i(18),
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(19),
      Q => data_i(19),
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(1),
      Q => data_i(1),
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(20),
      Q => data_i(20),
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(21),
      Q => data_i(21),
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(22),
      Q => data_i(22),
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(23),
      Q => data_i(23),
      R => '0'
    );
\data_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(24),
      Q => data_i(24),
      R => '0'
    );
\data_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(25),
      Q => data_i(25),
      R => '0'
    );
\data_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(26),
      Q => data_i(26),
      R => '0'
    );
\data_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(27),
      Q => data_i(27),
      R => '0'
    );
\data_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(28),
      Q => data_i(28),
      R => '0'
    );
\data_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(29),
      Q => data_i(29),
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(2),
      Q => data_i(2),
      R => '0'
    );
\data_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(30),
      Q => data_i(30),
      R => '0'
    );
\data_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(31),
      Q => data_i(31),
      R => '0'
    );
\data_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(32),
      Q => data_i(32),
      R => '0'
    );
\data_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(33),
      Q => data_i(33),
      R => '0'
    );
\data_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(34),
      Q => data_i(34),
      R => '0'
    );
\data_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(35),
      Q => data_i(35),
      R => '0'
    );
\data_i_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(36),
      Q => data_i(36),
      R => '0'
    );
\data_i_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(37),
      Q => data_i(37),
      R => '0'
    );
\data_i_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(38),
      Q => data_i(38),
      R => '0'
    );
\data_i_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(39),
      Q => data_i(39),
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(3),
      Q => data_i(3),
      R => '0'
    );
\data_i_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(40),
      Q => data_i(40),
      R => '0'
    );
\data_i_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(41),
      Q => data_i(41),
      R => '0'
    );
\data_i_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(42),
      Q => data_i(42),
      R => '0'
    );
\data_i_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(43),
      Q => data_i(43),
      R => '0'
    );
\data_i_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(44),
      Q => data_i(44),
      R => '0'
    );
\data_i_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(45),
      Q => data_i(45),
      R => '0'
    );
\data_i_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(46),
      Q => data_i(46),
      R => '0'
    );
\data_i_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(47),
      Q => data_i(47),
      R => '0'
    );
\data_i_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(48),
      Q => data_i(48),
      R => '0'
    );
\data_i_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(49),
      Q => data_i(49),
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(4),
      Q => data_i(4),
      R => '0'
    );
\data_i_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(50),
      Q => data_i(50),
      R => '0'
    );
\data_i_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(51),
      Q => data_i(51),
      R => '0'
    );
\data_i_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(52),
      Q => data_i(52),
      R => '0'
    );
\data_i_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(53),
      Q => data_i(53),
      R => '0'
    );
\data_i_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(54),
      Q => data_i(54),
      R => '0'
    );
\data_i_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(55),
      Q => data_i(55),
      R => '0'
    );
\data_i_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(56),
      Q => data_i(56),
      R => '0'
    );
\data_i_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(57),
      Q => data_i(57),
      R => '0'
    );
\data_i_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(58),
      Q => data_i(58),
      R => '0'
    );
\data_i_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(59),
      Q => data_i(59),
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(5),
      Q => data_i(5),
      R => '0'
    );
\data_i_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(60),
      Q => data_i(60),
      R => '0'
    );
\data_i_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(61),
      Q => data_i(61),
      R => '0'
    );
\data_i_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(62),
      Q => data_i(62),
      R => '0'
    );
\data_i_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(63),
      Q => data_i(63),
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(6),
      Q => data_i(6),
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(7),
      Q => data_i(7),
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(8),
      Q => data_i(8),
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => E(0),
      D => \data_i_reg[63]_2\(9),
      Q => data_i(9),
      R => '0'
    );
have_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFAAAA"
    )
        port map (
      I0 => valid_4,
      I1 => out_ready,
      I2 => have_data_reg_0,
      I3 => have_data02_out,
      I4 => \^valid_1\,
      I5 => have_data02_out_0,
      O => have_data_i_1_n_0
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^valid_1\,
      R => wrote0_reg_1
    );
wrote0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => wrote0_reg_2,
      Q => wrote0_reg_0,
      R => wrote0_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice is
  port (
    \_trace_valid\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sw_read : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    trace_clk : in STD_LOGIC;
    empty : in STD_LOGIC;
    ready_i_reg_reg_0 : in STD_LOGIC;
    ready_i_reg_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    have_data0 : in STD_LOGIC;
    have_data_reg_0 : in STD_LOGIC;
    \data_i_reg[63]\ : in STD_LOGIC;
    \data_i_reg[62]\ : in STD_LOGIC;
    \data_i_reg[61]\ : in STD_LOGIC;
    \data_i_reg[60]\ : in STD_LOGIC;
    \data_i_reg[59]\ : in STD_LOGIC;
    \data_i_reg[58]\ : in STD_LOGIC;
    \data_i_reg[57]\ : in STD_LOGIC;
    \data_i_reg[56]\ : in STD_LOGIC;
    \data_i_reg[55]\ : in STD_LOGIC;
    \data_i_reg[54]\ : in STD_LOGIC;
    \data_i_reg[53]\ : in STD_LOGIC;
    \data_i_reg[52]\ : in STD_LOGIC;
    \data_i_reg[51]\ : in STD_LOGIC;
    \data_i_reg[50]\ : in STD_LOGIC;
    \data_i_reg[49]\ : in STD_LOGIC;
    \data_i_reg[48]\ : in STD_LOGIC;
    \data_i_reg[47]\ : in STD_LOGIC;
    \data_i_reg[46]\ : in STD_LOGIC;
    \data_i_reg[45]\ : in STD_LOGIC;
    \data_i_reg[44]\ : in STD_LOGIC;
    \data_i_reg[43]\ : in STD_LOGIC;
    \data_i_reg[42]\ : in STD_LOGIC;
    \data_i_reg[41]\ : in STD_LOGIC;
    \data_i_reg[40]\ : in STD_LOGIC;
    \data_i_reg[39]\ : in STD_LOGIC;
    \data_i_reg[38]\ : in STD_LOGIC;
    \data_i_reg[37]\ : in STD_LOGIC;
    \data_i_reg[36]\ : in STD_LOGIC;
    \data_i_reg[35]\ : in STD_LOGIC;
    \data_i_reg[34]\ : in STD_LOGIC;
    \data_i_reg[33]\ : in STD_LOGIC;
    \data_i_reg[32]\ : in STD_LOGIC;
    \data_i_reg[31]\ : in STD_LOGIC;
    \data_i_reg[30]\ : in STD_LOGIC;
    \data_i_reg[29]\ : in STD_LOGIC;
    \data_i_reg[28]\ : in STD_LOGIC;
    \data_i_reg[27]\ : in STD_LOGIC;
    \data_i_reg[26]\ : in STD_LOGIC;
    \data_i_reg[25]\ : in STD_LOGIC;
    \data_i_reg[24]\ : in STD_LOGIC;
    \data_i_reg[23]\ : in STD_LOGIC;
    \data_i_reg[22]\ : in STD_LOGIC;
    \data_i_reg[21]\ : in STD_LOGIC;
    \data_i_reg[20]\ : in STD_LOGIC;
    \data_i_reg[19]\ : in STD_LOGIC;
    \data_i_reg[18]\ : in STD_LOGIC;
    \data_i_reg[17]\ : in STD_LOGIC;
    \data_i_reg[16]\ : in STD_LOGIC;
    \data_i_reg[15]\ : in STD_LOGIC;
    \data_i_reg[14]\ : in STD_LOGIC;
    \data_i_reg[13]\ : in STD_LOGIC;
    \data_i_reg[12]\ : in STD_LOGIC;
    \data_i_reg[11]\ : in STD_LOGIC;
    \data_i_reg[10]\ : in STD_LOGIC;
    \data_i_reg[9]\ : in STD_LOGIC;
    \data_i_reg[8]\ : in STD_LOGIC;
    \data_i_reg[7]\ : in STD_LOGIC;
    \data_i_reg[6]\ : in STD_LOGIC;
    \data_i_reg[5]\ : in STD_LOGIC;
    \data_i_reg[4]\ : in STD_LOGIC;
    \data_i_reg[3]\ : in STD_LOGIC;
    \data_i_reg[2]\ : in STD_LOGIC;
    \data_i_reg[1]\ : in STD_LOGIC;
    \data_i_reg[0]\ : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice is
  signal \^_trace_valid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buffer\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \buffer[63]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2__2_n_0\ : STD_LOGIC;
  signal \have_data_i_1__2_n_0\ : STD_LOGIC;
  signal ready_i_reg0 : STD_LOGIC;
  signal \^sw_read\ : STD_LOGIC;
begin
  \_trace_valid\(0) <= \^_trace_valid\(0);
  sw_read <= \^sw_read\;
\buffer[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => have_data_reg_0,
      I1 => \^sw_read\,
      O => \buffer[63]_i_1_n_0\
    );
\buffer[63]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F550000"
    )
        port map (
      I0 => \^_trace_valid\(0),
      I1 => ready_i_reg_reg_0,
      I2 => ready_i_reg_reg_1(0),
      I3 => have_data0,
      I4 => \^sw_read\,
      I5 => have_data_reg_0,
      O => \buffer[63]_i_2__2_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(0),
      Q => \buffer\(0),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(10),
      Q => \buffer\(10),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(11),
      Q => \buffer\(11),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(12),
      Q => \buffer\(12),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(13),
      Q => \buffer\(13),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(14),
      Q => \buffer\(14),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(15),
      Q => \buffer\(15),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(16),
      Q => \buffer\(16),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(17),
      Q => \buffer\(17),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(18),
      Q => \buffer\(18),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(19),
      Q => \buffer\(19),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(1),
      Q => \buffer\(1),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(20),
      Q => \buffer\(20),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(21),
      Q => \buffer\(21),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(22),
      Q => \buffer\(22),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(23),
      Q => \buffer\(23),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(24),
      Q => \buffer\(24),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(25),
      Q => \buffer\(25),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(26),
      Q => \buffer\(26),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(27),
      Q => \buffer\(27),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(28),
      Q => \buffer\(28),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(29),
      Q => \buffer\(29),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(2),
      Q => \buffer\(2),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(30),
      Q => \buffer\(30),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(31),
      Q => \buffer\(31),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(32),
      Q => \buffer\(32),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(33),
      Q => \buffer\(33),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(34),
      Q => \buffer\(34),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(35),
      Q => \buffer\(35),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(36),
      Q => \buffer\(36),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(37),
      Q => \buffer\(37),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(38),
      Q => \buffer\(38),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(39),
      Q => \buffer\(39),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(3),
      Q => \buffer\(3),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(40),
      Q => \buffer\(40),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(41),
      Q => \buffer\(41),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(42),
      Q => \buffer\(42),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(43),
      Q => \buffer\(43),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(44),
      Q => \buffer\(44),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(45),
      Q => \buffer\(45),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(46),
      Q => \buffer\(46),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(47),
      Q => \buffer\(47),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(48),
      Q => \buffer\(48),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(49),
      Q => \buffer\(49),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(4),
      Q => \buffer\(4),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(50),
      Q => \buffer\(50),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(51),
      Q => \buffer\(51),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(52),
      Q => \buffer\(52),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(53),
      Q => \buffer\(53),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(54),
      Q => \buffer\(54),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(55),
      Q => \buffer\(55),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(56),
      Q => \buffer\(56),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(57),
      Q => \buffer\(57),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(58),
      Q => \buffer\(58),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(59),
      Q => \buffer\(59),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(5),
      Q => \buffer\(5),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(60),
      Q => \buffer\(60),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(61),
      Q => \buffer\(61),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(62),
      Q => \buffer\(62),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(63),
      Q => \buffer\(63),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(6),
      Q => \buffer\(6),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(7),
      Q => \buffer\(7),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(8),
      Q => \buffer\(8),
      R => \buffer[63]_i_1_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__2_n_0\,
      D => dout(9),
      Q => \buffer\(9),
      R => \buffer[63]_i_1_n_0\
    );
\data_i[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(0),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[0]\,
      O => D(0)
    );
\data_i[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(10),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[10]\,
      O => D(10)
    );
\data_i[11]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(11),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[11]\,
      O => D(11)
    );
\data_i[12]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(12),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[12]\,
      O => D(12)
    );
\data_i[13]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(13),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[13]\,
      O => D(13)
    );
\data_i[14]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(14),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[14]\,
      O => D(14)
    );
\data_i[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(15),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[15]\,
      O => D(15)
    );
\data_i[16]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(16),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[16]\,
      O => D(16)
    );
\data_i[17]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(17),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[17]\,
      O => D(17)
    );
\data_i[18]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(18),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[18]\,
      O => D(18)
    );
\data_i[19]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(19),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[19]\,
      O => D(19)
    );
\data_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(1),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[1]\,
      O => D(1)
    );
\data_i[20]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(20),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[20]\,
      O => D(20)
    );
\data_i[21]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(21),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[21]\,
      O => D(21)
    );
\data_i[22]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(22),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[22]\,
      O => D(22)
    );
\data_i[23]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(23),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[23]\,
      O => D(23)
    );
\data_i[24]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(24),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[24]\,
      O => D(24)
    );
\data_i[25]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(25),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[25]\,
      O => D(25)
    );
\data_i[26]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(26),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[26]\,
      O => D(26)
    );
\data_i[27]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(27),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[27]\,
      O => D(27)
    );
\data_i[28]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(28),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[28]\,
      O => D(28)
    );
\data_i[29]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(29),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[29]\,
      O => D(29)
    );
\data_i[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(2),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[2]\,
      O => D(2)
    );
\data_i[30]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(30),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[30]\,
      O => D(30)
    );
\data_i[31]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(31),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[31]\,
      O => D(31)
    );
\data_i[32]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(32),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[32]\,
      O => D(32)
    );
\data_i[33]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(33),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[33]\,
      O => D(33)
    );
\data_i[34]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(34),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[34]\,
      O => D(34)
    );
\data_i[35]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(35),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[35]\,
      O => D(35)
    );
\data_i[36]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(36),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[36]\,
      O => D(36)
    );
\data_i[37]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(37),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[37]\,
      O => D(37)
    );
\data_i[38]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(38),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[38]\,
      O => D(38)
    );
\data_i[39]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(39),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[39]\,
      O => D(39)
    );
\data_i[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(3),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[3]\,
      O => D(3)
    );
\data_i[40]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(40),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[40]\,
      O => D(40)
    );
\data_i[41]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(41),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[41]\,
      O => D(41)
    );
\data_i[42]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(42),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[42]\,
      O => D(42)
    );
\data_i[43]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(43),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[43]\,
      O => D(43)
    );
\data_i[44]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(44),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[44]\,
      O => D(44)
    );
\data_i[45]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(45),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[45]\,
      O => D(45)
    );
\data_i[46]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(46),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[46]\,
      O => D(46)
    );
\data_i[47]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(47),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[47]\,
      O => D(47)
    );
\data_i[48]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(48),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[48]\,
      O => D(48)
    );
\data_i[49]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(49),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[49]\,
      O => D(49)
    );
\data_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(4),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[4]\,
      O => D(4)
    );
\data_i[50]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(50),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[50]\,
      O => D(50)
    );
\data_i[51]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(51),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[51]\,
      O => D(51)
    );
\data_i[52]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(52),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[52]\,
      O => D(52)
    );
\data_i[53]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(53),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[53]\,
      O => D(53)
    );
\data_i[54]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(54),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[54]\,
      O => D(54)
    );
\data_i[55]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(55),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[55]\,
      O => D(55)
    );
\data_i[56]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(56),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[56]\,
      O => D(56)
    );
\data_i[57]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(57),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[57]\,
      O => D(57)
    );
\data_i[58]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(58),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[58]\,
      O => D(58)
    );
\data_i[59]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(59),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[59]\,
      O => D(59)
    );
\data_i[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(5),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[5]\,
      O => D(5)
    );
\data_i[60]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(60),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[60]\,
      O => D(60)
    );
\data_i[61]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(61),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[61]\,
      O => D(61)
    );
\data_i[62]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(62),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[62]\,
      O => D(62)
    );
\data_i[63]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => have_data_reg_0,
      I1 => \^_trace_valid\(0),
      I2 => ready_i_reg_reg_1(0),
      I3 => have_data0,
      O => E(0)
    );
\data_i[63]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(63),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[63]\,
      O => D(63)
    );
\data_i[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(6),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[6]\,
      O => D(6)
    );
\data_i[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(7),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[7]\,
      O => D(7)
    );
\data_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(8),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[8]\,
      O => D(8)
    );
\data_i[9]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer\(9),
      I1 => ready_i_reg_reg_1(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => \data_i_reg[9]\,
      O => D(9)
    );
\have_data_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000080AA"
    )
        port map (
      I0 => \^_trace_valid\(0),
      I1 => ready_i_reg_reg_0,
      I2 => ready_i_reg_reg_1(0),
      I3 => have_data0,
      I4 => have_data_reg_0,
      I5 => \^sw_read\,
      O => \have_data_i_1__2_n_0\
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \have_data_i_1__2_n_0\,
      Q => \^_trace_valid\(0),
      R => '0'
    );
\ready_i_reg_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111101010101"
    )
        port map (
      I0 => \^sw_read\,
      I1 => empty,
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_0,
      I4 => ready_i_reg_reg_1(0),
      I5 => have_data0,
      O => ready_i_reg0
    );
ready_i_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ready_i_reg0,
      Q => \^sw_read\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0 is
  port (
    have_data_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_0 : out STD_LOGIC;
    \buffer_reg[63]_0\ : out STD_LOGIC;
    \buffer_reg[62]_0\ : out STD_LOGIC;
    \buffer_reg[61]_0\ : out STD_LOGIC;
    \buffer_reg[60]_0\ : out STD_LOGIC;
    \buffer_reg[59]_0\ : out STD_LOGIC;
    \buffer_reg[58]_0\ : out STD_LOGIC;
    \buffer_reg[57]_0\ : out STD_LOGIC;
    \buffer_reg[56]_0\ : out STD_LOGIC;
    \buffer_reg[55]_0\ : out STD_LOGIC;
    \buffer_reg[54]_0\ : out STD_LOGIC;
    \buffer_reg[53]_0\ : out STD_LOGIC;
    \buffer_reg[52]_0\ : out STD_LOGIC;
    \buffer_reg[51]_0\ : out STD_LOGIC;
    \buffer_reg[50]_0\ : out STD_LOGIC;
    \buffer_reg[49]_0\ : out STD_LOGIC;
    \buffer_reg[48]_0\ : out STD_LOGIC;
    \buffer_reg[47]_0\ : out STD_LOGIC;
    \buffer_reg[46]_0\ : out STD_LOGIC;
    \buffer_reg[45]_0\ : out STD_LOGIC;
    \buffer_reg[44]_0\ : out STD_LOGIC;
    \buffer_reg[43]_0\ : out STD_LOGIC;
    \buffer_reg[42]_0\ : out STD_LOGIC;
    \buffer_reg[41]_0\ : out STD_LOGIC;
    \buffer_reg[40]_0\ : out STD_LOGIC;
    \buffer_reg[39]_0\ : out STD_LOGIC;
    \buffer_reg[38]_0\ : out STD_LOGIC;
    \buffer_reg[37]_0\ : out STD_LOGIC;
    \buffer_reg[36]_0\ : out STD_LOGIC;
    \buffer_reg[35]_0\ : out STD_LOGIC;
    \buffer_reg[34]_0\ : out STD_LOGIC;
    \buffer_reg[33]_0\ : out STD_LOGIC;
    \buffer_reg[32]_0\ : out STD_LOGIC;
    \buffer_reg[31]_0\ : out STD_LOGIC;
    \buffer_reg[30]_0\ : out STD_LOGIC;
    \buffer_reg[29]_0\ : out STD_LOGIC;
    \buffer_reg[28]_0\ : out STD_LOGIC;
    \buffer_reg[27]_0\ : out STD_LOGIC;
    \buffer_reg[26]_0\ : out STD_LOGIC;
    \buffer_reg[25]_0\ : out STD_LOGIC;
    \buffer_reg[24]_0\ : out STD_LOGIC;
    \buffer_reg[23]_0\ : out STD_LOGIC;
    \buffer_reg[22]_0\ : out STD_LOGIC;
    \buffer_reg[21]_0\ : out STD_LOGIC;
    \buffer_reg[20]_0\ : out STD_LOGIC;
    \buffer_reg[19]_0\ : out STD_LOGIC;
    \buffer_reg[18]_0\ : out STD_LOGIC;
    \buffer_reg[17]_0\ : out STD_LOGIC;
    \buffer_reg[16]_0\ : out STD_LOGIC;
    \buffer_reg[15]_0\ : out STD_LOGIC;
    \buffer_reg[14]_0\ : out STD_LOGIC;
    \buffer_reg[13]_0\ : out STD_LOGIC;
    \buffer_reg[12]_0\ : out STD_LOGIC;
    \buffer_reg[11]_0\ : out STD_LOGIC;
    \buffer_reg[10]_0\ : out STD_LOGIC;
    \buffer_reg[9]_0\ : out STD_LOGIC;
    \buffer_reg[8]_0\ : out STD_LOGIC;
    \buffer_reg[7]_0\ : out STD_LOGIC;
    \buffer_reg[6]_0\ : out STD_LOGIC;
    \buffer_reg[5]_0\ : out STD_LOGIC;
    \buffer_reg[4]_0\ : out STD_LOGIC;
    \buffer_reg[3]_0\ : out STD_LOGIC;
    \buffer_reg[2]_0\ : out STD_LOGIC;
    \buffer_reg[1]_0\ : out STD_LOGIC;
    \buffer_reg[0]_0\ : out STD_LOGIC;
    trace_clk : in STD_LOGIC;
    trace0_valid : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_1 : in STD_LOGIC;
    have_data0 : in STD_LOGIC;
    have_data_reg_1 : in STD_LOGIC;
    trace0_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0 : entity is "stream_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0 is
  signal \buffer[63]_i_1__0_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2__1_n_0\ : STD_LOGIC;
  signal \have_data_i_1__1_n_0\ : STD_LOGIC;
  signal \^have_data_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ready_i_reg0 : STD_LOGIC;
  signal \^ready_i_reg_reg_0\ : STD_LOGIC;
begin
  have_data_reg_0(0) <= \^have_data_reg_0\(0);
  ready_i_reg_reg_0 <= \^ready_i_reg_reg_0\;
\buffer[63]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => have_data_reg_1,
      I1 => \^ready_i_reg_reg_0\,
      O => \buffer[63]_i_1__0_n_0\
    );
\buffer[63]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7550000"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      I3 => have_data0,
      I4 => \^ready_i_reg_reg_0\,
      I5 => have_data_reg_1,
      O => \buffer[63]_i_2__1_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(0),
      Q => \buffer_reg[0]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(10),
      Q => \buffer_reg[10]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(11),
      Q => \buffer_reg[11]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(12),
      Q => \buffer_reg[12]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(13),
      Q => \buffer_reg[13]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(14),
      Q => \buffer_reg[14]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(15),
      Q => \buffer_reg[15]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(16),
      Q => \buffer_reg[16]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(17),
      Q => \buffer_reg[17]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(18),
      Q => \buffer_reg[18]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(19),
      Q => \buffer_reg[19]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(1),
      Q => \buffer_reg[1]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(20),
      Q => \buffer_reg[20]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(21),
      Q => \buffer_reg[21]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(22),
      Q => \buffer_reg[22]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(23),
      Q => \buffer_reg[23]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(24),
      Q => \buffer_reg[24]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(25),
      Q => \buffer_reg[25]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(26),
      Q => \buffer_reg[26]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(27),
      Q => \buffer_reg[27]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(28),
      Q => \buffer_reg[28]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(29),
      Q => \buffer_reg[29]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(2),
      Q => \buffer_reg[2]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(30),
      Q => \buffer_reg[30]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(31),
      Q => \buffer_reg[31]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(32),
      Q => \buffer_reg[32]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(33),
      Q => \buffer_reg[33]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(34),
      Q => \buffer_reg[34]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(35),
      Q => \buffer_reg[35]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(36),
      Q => \buffer_reg[36]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(37),
      Q => \buffer_reg[37]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(38),
      Q => \buffer_reg[38]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(39),
      Q => \buffer_reg[39]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(3),
      Q => \buffer_reg[3]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(40),
      Q => \buffer_reg[40]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(41),
      Q => \buffer_reg[41]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(42),
      Q => \buffer_reg[42]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(43),
      Q => \buffer_reg[43]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(44),
      Q => \buffer_reg[44]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(45),
      Q => \buffer_reg[45]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(46),
      Q => \buffer_reg[46]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(47),
      Q => \buffer_reg[47]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(48),
      Q => \buffer_reg[48]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(49),
      Q => \buffer_reg[49]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(4),
      Q => \buffer_reg[4]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(50),
      Q => \buffer_reg[50]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(51),
      Q => \buffer_reg[51]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(52),
      Q => \buffer_reg[52]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(53),
      Q => \buffer_reg[53]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(54),
      Q => \buffer_reg[54]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(55),
      Q => \buffer_reg[55]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(56),
      Q => \buffer_reg[56]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(57),
      Q => \buffer_reg[57]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(58),
      Q => \buffer_reg[58]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(59),
      Q => \buffer_reg[59]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(5),
      Q => \buffer_reg[5]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(60),
      Q => \buffer_reg[60]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(61),
      Q => \buffer_reg[61]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(62),
      Q => \buffer_reg[62]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(63),
      Q => \buffer_reg[63]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(6),
      Q => \buffer_reg[6]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(7),
      Q => \buffer_reg[7]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(8),
      Q => \buffer_reg[8]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__1_n_0\,
      D => trace0_data(9),
      Q => \buffer_reg[9]_0\,
      R => \buffer[63]_i_1__0_n_0\
    );
\have_data_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000008AA"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      I3 => have_data0,
      I4 => have_data_reg_1,
      I5 => \^ready_i_reg_reg_0\,
      O => \have_data_i_1__1_n_0\
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \have_data_i_1__1_n_0\,
      Q => \^have_data_reg_0\(0),
      R => '0'
    );
\ready_i_reg_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044404040404"
    )
        port map (
      I0 => \^ready_i_reg_reg_0\,
      I1 => trace0_valid,
      I2 => \^have_data_reg_0\(0),
      I3 => \_trace_valid\(0),
      I4 => ready_i_reg_reg_1,
      I5 => have_data0,
      O => ready_i_reg0
    );
ready_i_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ready_i_reg0,
      Q => \^ready_i_reg_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1 is
  port (
    \_trace_valid\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    trace_clk : in STD_LOGIC;
    trace1_valid : in STD_LOGIC;
    ready_i_reg_reg_1 : in STD_LOGIC;
    ready_i_reg_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    have_data0 : in STD_LOGIC;
    have_data_reg_0 : in STD_LOGIC;
    \data_i_reg[63]\ : in STD_LOGIC;
    \data_i_reg[62]\ : in STD_LOGIC;
    \data_i_reg[61]\ : in STD_LOGIC;
    \data_i_reg[60]\ : in STD_LOGIC;
    \data_i_reg[59]\ : in STD_LOGIC;
    \data_i_reg[58]\ : in STD_LOGIC;
    \data_i_reg[57]\ : in STD_LOGIC;
    \data_i_reg[56]\ : in STD_LOGIC;
    \data_i_reg[55]\ : in STD_LOGIC;
    \data_i_reg[54]\ : in STD_LOGIC;
    \data_i_reg[53]\ : in STD_LOGIC;
    \data_i_reg[52]\ : in STD_LOGIC;
    \data_i_reg[51]\ : in STD_LOGIC;
    \data_i_reg[50]\ : in STD_LOGIC;
    \data_i_reg[49]\ : in STD_LOGIC;
    \data_i_reg[48]\ : in STD_LOGIC;
    \data_i_reg[47]\ : in STD_LOGIC;
    \data_i_reg[46]\ : in STD_LOGIC;
    \data_i_reg[45]\ : in STD_LOGIC;
    \data_i_reg[44]\ : in STD_LOGIC;
    \data_i_reg[43]\ : in STD_LOGIC;
    \data_i_reg[42]\ : in STD_LOGIC;
    \data_i_reg[41]\ : in STD_LOGIC;
    \data_i_reg[40]\ : in STD_LOGIC;
    \data_i_reg[39]\ : in STD_LOGIC;
    \data_i_reg[38]\ : in STD_LOGIC;
    \data_i_reg[37]\ : in STD_LOGIC;
    \data_i_reg[36]\ : in STD_LOGIC;
    \data_i_reg[35]\ : in STD_LOGIC;
    \data_i_reg[34]\ : in STD_LOGIC;
    \data_i_reg[33]\ : in STD_LOGIC;
    \data_i_reg[32]\ : in STD_LOGIC;
    \data_i_reg[31]\ : in STD_LOGIC;
    \data_i_reg[30]\ : in STD_LOGIC;
    \data_i_reg[29]\ : in STD_LOGIC;
    \data_i_reg[28]\ : in STD_LOGIC;
    \data_i_reg[27]\ : in STD_LOGIC;
    \data_i_reg[26]\ : in STD_LOGIC;
    \data_i_reg[25]\ : in STD_LOGIC;
    \data_i_reg[24]\ : in STD_LOGIC;
    \data_i_reg[23]\ : in STD_LOGIC;
    \data_i_reg[22]\ : in STD_LOGIC;
    \data_i_reg[21]\ : in STD_LOGIC;
    \data_i_reg[20]\ : in STD_LOGIC;
    \data_i_reg[19]\ : in STD_LOGIC;
    \data_i_reg[18]\ : in STD_LOGIC;
    \data_i_reg[17]\ : in STD_LOGIC;
    \data_i_reg[16]\ : in STD_LOGIC;
    \data_i_reg[15]\ : in STD_LOGIC;
    \data_i_reg[14]\ : in STD_LOGIC;
    \data_i_reg[13]\ : in STD_LOGIC;
    \data_i_reg[12]\ : in STD_LOGIC;
    \data_i_reg[11]\ : in STD_LOGIC;
    \data_i_reg[10]\ : in STD_LOGIC;
    \data_i_reg[9]\ : in STD_LOGIC;
    \data_i_reg[8]\ : in STD_LOGIC;
    \data_i_reg[7]\ : in STD_LOGIC;
    \data_i_reg[6]\ : in STD_LOGIC;
    \data_i_reg[5]\ : in STD_LOGIC;
    \data_i_reg[4]\ : in STD_LOGIC;
    \data_i_reg[3]\ : in STD_LOGIC;
    \data_i_reg[2]\ : in STD_LOGIC;
    \data_i_reg[1]\ : in STD_LOGIC;
    \data_i_reg[0]\ : in STD_LOGIC;
    trace1_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1 : entity is "stream_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1 is
  signal \^_trace_valid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buffer[63]_i_1__1_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2__3_n_0\ : STD_LOGIC;
  signal \buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal \have_data_i_1__3_n_0\ : STD_LOGIC;
  signal ready_i_reg0 : STD_LOGIC;
  signal \^ready_i_reg_reg_0\ : STD_LOGIC;
begin
  \_trace_valid\(0) <= \^_trace_valid\(0);
  ready_i_reg_reg_0 <= \^ready_i_reg_reg_0\;
\buffer[63]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => have_data_reg_0,
      I1 => \^ready_i_reg_reg_0\,
      O => \buffer[63]_i_1__1_n_0\
    );
\buffer[63]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F550000"
    )
        port map (
      I0 => \^_trace_valid\(0),
      I1 => ready_i_reg_reg_1,
      I2 => ready_i_reg_reg_2(0),
      I3 => have_data0,
      I4 => \^ready_i_reg_reg_0\,
      I5 => have_data_reg_0,
      O => \buffer[63]_i_2__3_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(0),
      Q => \buffer_reg_n_0_[0]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(10),
      Q => \buffer_reg_n_0_[10]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(11),
      Q => \buffer_reg_n_0_[11]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(12),
      Q => \buffer_reg_n_0_[12]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(13),
      Q => \buffer_reg_n_0_[13]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(14),
      Q => \buffer_reg_n_0_[14]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(15),
      Q => \buffer_reg_n_0_[15]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(16),
      Q => \buffer_reg_n_0_[16]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(17),
      Q => \buffer_reg_n_0_[17]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(18),
      Q => \buffer_reg_n_0_[18]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(19),
      Q => \buffer_reg_n_0_[19]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(1),
      Q => \buffer_reg_n_0_[1]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(20),
      Q => \buffer_reg_n_0_[20]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(21),
      Q => \buffer_reg_n_0_[21]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(22),
      Q => \buffer_reg_n_0_[22]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(23),
      Q => \buffer_reg_n_0_[23]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(24),
      Q => \buffer_reg_n_0_[24]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(25),
      Q => \buffer_reg_n_0_[25]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(26),
      Q => \buffer_reg_n_0_[26]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(27),
      Q => \buffer_reg_n_0_[27]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(28),
      Q => \buffer_reg_n_0_[28]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(29),
      Q => \buffer_reg_n_0_[29]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(2),
      Q => \buffer_reg_n_0_[2]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(30),
      Q => \buffer_reg_n_0_[30]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(31),
      Q => \buffer_reg_n_0_[31]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(32),
      Q => \buffer_reg_n_0_[32]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(33),
      Q => \buffer_reg_n_0_[33]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(34),
      Q => \buffer_reg_n_0_[34]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(35),
      Q => \buffer_reg_n_0_[35]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(36),
      Q => \buffer_reg_n_0_[36]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(37),
      Q => \buffer_reg_n_0_[37]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(38),
      Q => \buffer_reg_n_0_[38]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(39),
      Q => \buffer_reg_n_0_[39]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(3),
      Q => \buffer_reg_n_0_[3]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(40),
      Q => \buffer_reg_n_0_[40]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(41),
      Q => \buffer_reg_n_0_[41]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(42),
      Q => \buffer_reg_n_0_[42]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(43),
      Q => \buffer_reg_n_0_[43]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(44),
      Q => \buffer_reg_n_0_[44]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(45),
      Q => \buffer_reg_n_0_[45]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(46),
      Q => \buffer_reg_n_0_[46]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(47),
      Q => \buffer_reg_n_0_[47]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(48),
      Q => \buffer_reg_n_0_[48]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(49),
      Q => \buffer_reg_n_0_[49]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(4),
      Q => \buffer_reg_n_0_[4]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(50),
      Q => \buffer_reg_n_0_[50]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(51),
      Q => \buffer_reg_n_0_[51]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(52),
      Q => \buffer_reg_n_0_[52]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(53),
      Q => \buffer_reg_n_0_[53]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(54),
      Q => \buffer_reg_n_0_[54]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(55),
      Q => \buffer_reg_n_0_[55]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(56),
      Q => \buffer_reg_n_0_[56]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(57),
      Q => \buffer_reg_n_0_[57]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(58),
      Q => \buffer_reg_n_0_[58]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(59),
      Q => \buffer_reg_n_0_[59]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(5),
      Q => \buffer_reg_n_0_[5]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(60),
      Q => \buffer_reg_n_0_[60]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(61),
      Q => \buffer_reg_n_0_[61]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(62),
      Q => \buffer_reg_n_0_[62]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(63),
      Q => \buffer_reg_n_0_[63]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(6),
      Q => \buffer_reg_n_0_[6]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(7),
      Q => \buffer_reg_n_0_[7]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(8),
      Q => \buffer_reg_n_0_[8]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__3_n_0\,
      D => trace1_data(9),
      Q => \buffer_reg_n_0_[9]\,
      R => \buffer[63]_i_1__1_n_0\
    );
\data_i[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[0]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[0]\,
      O => D(0)
    );
\data_i[10]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[10]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[10]\,
      O => D(10)
    );
\data_i[11]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[11]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[11]\,
      O => D(11)
    );
\data_i[12]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[12]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[12]\,
      O => D(12)
    );
\data_i[13]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[13]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[13]\,
      O => D(13)
    );
\data_i[14]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[14]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[14]\,
      O => D(14)
    );
\data_i[15]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[15]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[15]\,
      O => D(15)
    );
\data_i[16]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[16]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[16]\,
      O => D(16)
    );
\data_i[17]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[17]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[17]\,
      O => D(17)
    );
\data_i[18]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[18]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[18]\,
      O => D(18)
    );
\data_i[19]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[19]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[19]\,
      O => D(19)
    );
\data_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[1]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[1]\,
      O => D(1)
    );
\data_i[20]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[20]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[20]\,
      O => D(20)
    );
\data_i[21]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[21]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[21]\,
      O => D(21)
    );
\data_i[22]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[22]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[22]\,
      O => D(22)
    );
\data_i[23]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[23]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[23]\,
      O => D(23)
    );
\data_i[24]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[24]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[24]\,
      O => D(24)
    );
\data_i[25]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[25]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[25]\,
      O => D(25)
    );
\data_i[26]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[26]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[26]\,
      O => D(26)
    );
\data_i[27]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[27]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[27]\,
      O => D(27)
    );
\data_i[28]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[28]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[28]\,
      O => D(28)
    );
\data_i[29]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[29]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[29]\,
      O => D(29)
    );
\data_i[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[2]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[2]\,
      O => D(2)
    );
\data_i[30]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[30]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[30]\,
      O => D(30)
    );
\data_i[31]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[31]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[31]\,
      O => D(31)
    );
\data_i[32]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[32]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[32]\,
      O => D(32)
    );
\data_i[33]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[33]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[33]\,
      O => D(33)
    );
\data_i[34]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[34]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[34]\,
      O => D(34)
    );
\data_i[35]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[35]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[35]\,
      O => D(35)
    );
\data_i[36]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[36]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[36]\,
      O => D(36)
    );
\data_i[37]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[37]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[37]\,
      O => D(37)
    );
\data_i[38]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[38]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[38]\,
      O => D(38)
    );
\data_i[39]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[39]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[39]\,
      O => D(39)
    );
\data_i[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[3]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[3]\,
      O => D(3)
    );
\data_i[40]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[40]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[40]\,
      O => D(40)
    );
\data_i[41]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[41]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[41]\,
      O => D(41)
    );
\data_i[42]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[42]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[42]\,
      O => D(42)
    );
\data_i[43]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[43]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[43]\,
      O => D(43)
    );
\data_i[44]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[44]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[44]\,
      O => D(44)
    );
\data_i[45]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[45]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[45]\,
      O => D(45)
    );
\data_i[46]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[46]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[46]\,
      O => D(46)
    );
\data_i[47]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[47]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[47]\,
      O => D(47)
    );
\data_i[48]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[48]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[48]\,
      O => D(48)
    );
\data_i[49]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[49]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[49]\,
      O => D(49)
    );
\data_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[4]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[4]\,
      O => D(4)
    );
\data_i[50]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[50]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[50]\,
      O => D(50)
    );
\data_i[51]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[51]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[51]\,
      O => D(51)
    );
\data_i[52]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[52]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[52]\,
      O => D(52)
    );
\data_i[53]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[53]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[53]\,
      O => D(53)
    );
\data_i[54]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[54]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[54]\,
      O => D(54)
    );
\data_i[55]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[55]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[55]\,
      O => D(55)
    );
\data_i[56]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[56]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[56]\,
      O => D(56)
    );
\data_i[57]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[57]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[57]\,
      O => D(57)
    );
\data_i[58]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[58]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[58]\,
      O => D(58)
    );
\data_i[59]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[59]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[59]\,
      O => D(59)
    );
\data_i[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[5]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[5]\,
      O => D(5)
    );
\data_i[60]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[60]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[60]\,
      O => D(60)
    );
\data_i[61]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[61]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[61]\,
      O => D(61)
    );
\data_i[62]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[62]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[62]\,
      O => D(62)
    );
\data_i[63]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5400"
    )
        port map (
      I0 => have_data_reg_0,
      I1 => \^_trace_valid\(0),
      I2 => ready_i_reg_reg_2(0),
      I3 => have_data0,
      O => E(0)
    );
\data_i[63]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[63]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[63]\,
      O => D(63)
    );
\data_i[6]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[6]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[6]\,
      O => D(6)
    );
\data_i[7]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[7]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[7]\,
      O => D(7)
    );
\data_i[8]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[8]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[8]\,
      O => D(8)
    );
\data_i[9]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[9]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[9]\,
      O => D(9)
    );
\have_data_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000080AA"
    )
        port map (
      I0 => \^_trace_valid\(0),
      I1 => ready_i_reg_reg_1,
      I2 => ready_i_reg_reg_2(0),
      I3 => have_data0,
      I4 => have_data_reg_0,
      I5 => \^ready_i_reg_reg_0\,
      O => \have_data_i_1__3_n_0\
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \have_data_i_1__3_n_0\,
      Q => \^_trace_valid\(0),
      R => '0'
    );
\ready_i_reg_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444404040404"
    )
        port map (
      I0 => \^ready_i_reg_reg_0\,
      I1 => trace1_valid,
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => ready_i_reg_reg_2(0),
      I5 => have_data0,
      O => ready_i_reg0
    );
ready_i_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ready_i_reg0,
      Q => \^ready_i_reg_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2 is
  port (
    have_data_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_0 : out STD_LOGIC;
    have_data02_out : out STD_LOGIC;
    \buffer_reg[63]_0\ : out STD_LOGIC;
    \buffer_reg[62]_0\ : out STD_LOGIC;
    \buffer_reg[61]_0\ : out STD_LOGIC;
    \buffer_reg[60]_0\ : out STD_LOGIC;
    \buffer_reg[59]_0\ : out STD_LOGIC;
    \buffer_reg[58]_0\ : out STD_LOGIC;
    \buffer_reg[57]_0\ : out STD_LOGIC;
    \buffer_reg[56]_0\ : out STD_LOGIC;
    \buffer_reg[55]_0\ : out STD_LOGIC;
    \buffer_reg[54]_0\ : out STD_LOGIC;
    \buffer_reg[53]_0\ : out STD_LOGIC;
    \buffer_reg[52]_0\ : out STD_LOGIC;
    \buffer_reg[51]_0\ : out STD_LOGIC;
    \buffer_reg[50]_0\ : out STD_LOGIC;
    \buffer_reg[49]_0\ : out STD_LOGIC;
    \buffer_reg[48]_0\ : out STD_LOGIC;
    \buffer_reg[47]_0\ : out STD_LOGIC;
    \buffer_reg[46]_0\ : out STD_LOGIC;
    \buffer_reg[45]_0\ : out STD_LOGIC;
    \buffer_reg[44]_0\ : out STD_LOGIC;
    \buffer_reg[43]_0\ : out STD_LOGIC;
    \buffer_reg[42]_0\ : out STD_LOGIC;
    \buffer_reg[41]_0\ : out STD_LOGIC;
    \buffer_reg[40]_0\ : out STD_LOGIC;
    \buffer_reg[39]_0\ : out STD_LOGIC;
    \buffer_reg[38]_0\ : out STD_LOGIC;
    \buffer_reg[37]_0\ : out STD_LOGIC;
    \buffer_reg[36]_0\ : out STD_LOGIC;
    \buffer_reg[35]_0\ : out STD_LOGIC;
    \buffer_reg[34]_0\ : out STD_LOGIC;
    \buffer_reg[33]_0\ : out STD_LOGIC;
    \buffer_reg[32]_0\ : out STD_LOGIC;
    \buffer_reg[31]_0\ : out STD_LOGIC;
    \buffer_reg[30]_0\ : out STD_LOGIC;
    \buffer_reg[29]_0\ : out STD_LOGIC;
    \buffer_reg[28]_0\ : out STD_LOGIC;
    \buffer_reg[27]_0\ : out STD_LOGIC;
    \buffer_reg[26]_0\ : out STD_LOGIC;
    \buffer_reg[25]_0\ : out STD_LOGIC;
    \buffer_reg[24]_0\ : out STD_LOGIC;
    \buffer_reg[23]_0\ : out STD_LOGIC;
    \buffer_reg[22]_0\ : out STD_LOGIC;
    \buffer_reg[21]_0\ : out STD_LOGIC;
    \buffer_reg[20]_0\ : out STD_LOGIC;
    \buffer_reg[19]_0\ : out STD_LOGIC;
    \buffer_reg[18]_0\ : out STD_LOGIC;
    \buffer_reg[17]_0\ : out STD_LOGIC;
    \buffer_reg[16]_0\ : out STD_LOGIC;
    \buffer_reg[15]_0\ : out STD_LOGIC;
    \buffer_reg[14]_0\ : out STD_LOGIC;
    \buffer_reg[13]_0\ : out STD_LOGIC;
    \buffer_reg[12]_0\ : out STD_LOGIC;
    \buffer_reg[11]_0\ : out STD_LOGIC;
    \buffer_reg[10]_0\ : out STD_LOGIC;
    \buffer_reg[9]_0\ : out STD_LOGIC;
    \buffer_reg[8]_0\ : out STD_LOGIC;
    \buffer_reg[7]_0\ : out STD_LOGIC;
    \buffer_reg[6]_0\ : out STD_LOGIC;
    \buffer_reg[5]_0\ : out STD_LOGIC;
    \buffer_reg[4]_0\ : out STD_LOGIC;
    \buffer_reg[3]_0\ : out STD_LOGIC;
    \buffer_reg[2]_0\ : out STD_LOGIC;
    \buffer_reg[1]_0\ : out STD_LOGIC;
    \buffer_reg[0]_0\ : out STD_LOGIC;
    trace_clk : in STD_LOGIC;
    trace2_valid : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_1 : in STD_LOGIC;
    have_data0 : in STD_LOGIC;
    have_data_reg_1 : in STD_LOGIC;
    trace2_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2 : entity is "stream_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2 is
  signal \buffer[63]_i_1__2_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2__4_n_0\ : STD_LOGIC;
  signal \have_data_i_1__4_n_0\ : STD_LOGIC;
  signal \^have_data_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ready_i_reg0 : STD_LOGIC;
  signal \^ready_i_reg_reg_0\ : STD_LOGIC;
begin
  have_data_reg_0(0) <= \^have_data_reg_0\(0);
  ready_i_reg_reg_0 <= \^ready_i_reg_reg_0\;
\buffer[63]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => have_data_reg_1,
      I1 => \^ready_i_reg_reg_0\,
      O => \buffer[63]_i_1__2_n_0\
    );
\buffer[63]_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7550000"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      I3 => have_data0,
      I4 => \^ready_i_reg_reg_0\,
      I5 => have_data_reg_1,
      O => \buffer[63]_i_2__4_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(0),
      Q => \buffer_reg[0]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(10),
      Q => \buffer_reg[10]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(11),
      Q => \buffer_reg[11]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(12),
      Q => \buffer_reg[12]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(13),
      Q => \buffer_reg[13]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(14),
      Q => \buffer_reg[14]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(15),
      Q => \buffer_reg[15]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(16),
      Q => \buffer_reg[16]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(17),
      Q => \buffer_reg[17]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(18),
      Q => \buffer_reg[18]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(19),
      Q => \buffer_reg[19]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(1),
      Q => \buffer_reg[1]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(20),
      Q => \buffer_reg[20]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(21),
      Q => \buffer_reg[21]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(22),
      Q => \buffer_reg[22]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(23),
      Q => \buffer_reg[23]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(24),
      Q => \buffer_reg[24]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(25),
      Q => \buffer_reg[25]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(26),
      Q => \buffer_reg[26]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(27),
      Q => \buffer_reg[27]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(28),
      Q => \buffer_reg[28]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(29),
      Q => \buffer_reg[29]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(2),
      Q => \buffer_reg[2]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(30),
      Q => \buffer_reg[30]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(31),
      Q => \buffer_reg[31]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(32),
      Q => \buffer_reg[32]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(33),
      Q => \buffer_reg[33]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(34),
      Q => \buffer_reg[34]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(35),
      Q => \buffer_reg[35]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(36),
      Q => \buffer_reg[36]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(37),
      Q => \buffer_reg[37]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(38),
      Q => \buffer_reg[38]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(39),
      Q => \buffer_reg[39]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(3),
      Q => \buffer_reg[3]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(40),
      Q => \buffer_reg[40]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(41),
      Q => \buffer_reg[41]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(42),
      Q => \buffer_reg[42]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(43),
      Q => \buffer_reg[43]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(44),
      Q => \buffer_reg[44]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(45),
      Q => \buffer_reg[45]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(46),
      Q => \buffer_reg[46]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(47),
      Q => \buffer_reg[47]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(48),
      Q => \buffer_reg[48]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(49),
      Q => \buffer_reg[49]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(4),
      Q => \buffer_reg[4]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(50),
      Q => \buffer_reg[50]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(51),
      Q => \buffer_reg[51]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(52),
      Q => \buffer_reg[52]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(53),
      Q => \buffer_reg[53]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(54),
      Q => \buffer_reg[54]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(55),
      Q => \buffer_reg[55]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(56),
      Q => \buffer_reg[56]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(57),
      Q => \buffer_reg[57]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(58),
      Q => \buffer_reg[58]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(59),
      Q => \buffer_reg[59]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(5),
      Q => \buffer_reg[5]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(60),
      Q => \buffer_reg[60]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(61),
      Q => \buffer_reg[61]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(62),
      Q => \buffer_reg[62]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(63),
      Q => \buffer_reg[63]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(6),
      Q => \buffer_reg[6]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(7),
      Q => \buffer_reg[7]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(8),
      Q => \buffer_reg[8]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__4_n_0\,
      D => trace2_data(9),
      Q => \buffer_reg[9]_0\,
      R => \buffer[63]_i_1__2_n_0\
    );
\have_data_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000008AA"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      I3 => have_data0,
      I4 => have_data_reg_1,
      I5 => \^ready_i_reg_reg_0\,
      O => \have_data_i_1__4_n_0\
    );
\have_data_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      O => have_data02_out
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \have_data_i_1__4_n_0\,
      Q => \^have_data_reg_0\(0),
      R => '0'
    );
\ready_i_reg_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044404040404"
    )
        port map (
      I0 => \^ready_i_reg_reg_0\,
      I1 => trace2_valid,
      I2 => \^have_data_reg_0\(0),
      I3 => \_trace_valid\(0),
      I4 => ready_i_reg_reg_1,
      I5 => have_data0,
      O => ready_i_reg0
    );
ready_i_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ready_i_reg0,
      Q => \^ready_i_reg_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3 is
  port (
    \_trace_valid\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 63 downto 0 );
    trace_clk : in STD_LOGIC;
    trace3_valid : in STD_LOGIC;
    ready_i_reg_reg_1 : in STD_LOGIC;
    ready_i_reg_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    have_data0 : in STD_LOGIC;
    have_data_reg_0 : in STD_LOGIC;
    \data_i_reg[63]\ : in STD_LOGIC;
    \data_i_reg[62]\ : in STD_LOGIC;
    \data_i_reg[61]\ : in STD_LOGIC;
    \data_i_reg[60]\ : in STD_LOGIC;
    \data_i_reg[59]\ : in STD_LOGIC;
    \data_i_reg[58]\ : in STD_LOGIC;
    \data_i_reg[57]\ : in STD_LOGIC;
    \data_i_reg[56]\ : in STD_LOGIC;
    \data_i_reg[55]\ : in STD_LOGIC;
    \data_i_reg[54]\ : in STD_LOGIC;
    \data_i_reg[53]\ : in STD_LOGIC;
    \data_i_reg[52]\ : in STD_LOGIC;
    \data_i_reg[51]\ : in STD_LOGIC;
    \data_i_reg[50]\ : in STD_LOGIC;
    \data_i_reg[49]\ : in STD_LOGIC;
    \data_i_reg[48]\ : in STD_LOGIC;
    \data_i_reg[47]\ : in STD_LOGIC;
    \data_i_reg[46]\ : in STD_LOGIC;
    \data_i_reg[45]\ : in STD_LOGIC;
    \data_i_reg[44]\ : in STD_LOGIC;
    \data_i_reg[43]\ : in STD_LOGIC;
    \data_i_reg[42]\ : in STD_LOGIC;
    \data_i_reg[41]\ : in STD_LOGIC;
    \data_i_reg[40]\ : in STD_LOGIC;
    \data_i_reg[39]\ : in STD_LOGIC;
    \data_i_reg[38]\ : in STD_LOGIC;
    \data_i_reg[37]\ : in STD_LOGIC;
    \data_i_reg[36]\ : in STD_LOGIC;
    \data_i_reg[35]\ : in STD_LOGIC;
    \data_i_reg[34]\ : in STD_LOGIC;
    \data_i_reg[33]\ : in STD_LOGIC;
    \data_i_reg[32]\ : in STD_LOGIC;
    \data_i_reg[31]\ : in STD_LOGIC;
    \data_i_reg[30]\ : in STD_LOGIC;
    \data_i_reg[29]\ : in STD_LOGIC;
    \data_i_reg[28]\ : in STD_LOGIC;
    \data_i_reg[27]\ : in STD_LOGIC;
    \data_i_reg[26]\ : in STD_LOGIC;
    \data_i_reg[25]\ : in STD_LOGIC;
    \data_i_reg[24]\ : in STD_LOGIC;
    \data_i_reg[23]\ : in STD_LOGIC;
    \data_i_reg[22]\ : in STD_LOGIC;
    \data_i_reg[21]\ : in STD_LOGIC;
    \data_i_reg[20]\ : in STD_LOGIC;
    \data_i_reg[19]\ : in STD_LOGIC;
    \data_i_reg[18]\ : in STD_LOGIC;
    \data_i_reg[17]\ : in STD_LOGIC;
    \data_i_reg[16]\ : in STD_LOGIC;
    \data_i_reg[15]\ : in STD_LOGIC;
    \data_i_reg[14]\ : in STD_LOGIC;
    \data_i_reg[13]\ : in STD_LOGIC;
    \data_i_reg[12]\ : in STD_LOGIC;
    \data_i_reg[11]\ : in STD_LOGIC;
    \data_i_reg[10]\ : in STD_LOGIC;
    \data_i_reg[9]\ : in STD_LOGIC;
    \data_i_reg[8]\ : in STD_LOGIC;
    \data_i_reg[7]\ : in STD_LOGIC;
    \data_i_reg[6]\ : in STD_LOGIC;
    \data_i_reg[5]\ : in STD_LOGIC;
    \data_i_reg[4]\ : in STD_LOGIC;
    \data_i_reg[3]\ : in STD_LOGIC;
    \data_i_reg[2]\ : in STD_LOGIC;
    \data_i_reg[1]\ : in STD_LOGIC;
    \data_i_reg[0]\ : in STD_LOGIC;
    trace3_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3 : entity is "stream_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3 is
  signal \^_trace_valid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \buffer[63]_i_1__3_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2_n_0\ : STD_LOGIC;
  signal \buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[39]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[40]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[41]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[42]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[43]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[44]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[45]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[46]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[47]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[48]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[49]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[50]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[51]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[52]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[53]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[54]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[55]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[56]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[57]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[58]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[59]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[60]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[61]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[62]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[63]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \buffer_reg_n_0_[9]\ : STD_LOGIC;
  signal have_data_i_1_n_0 : STD_LOGIC;
  signal ready_i_reg0 : STD_LOGIC;
  signal \^ready_i_reg_reg_0\ : STD_LOGIC;
begin
  \_trace_valid\(0) <= \^_trace_valid\(0);
  ready_i_reg_reg_0 <= \^ready_i_reg_reg_0\;
\buffer[63]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => have_data_reg_0,
      I1 => \^ready_i_reg_reg_0\,
      O => \buffer[63]_i_1__3_n_0\
    );
\buffer[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7F550000"
    )
        port map (
      I0 => \^_trace_valid\(0),
      I1 => ready_i_reg_reg_1,
      I2 => ready_i_reg_reg_2(0),
      I3 => have_data0,
      I4 => \^ready_i_reg_reg_0\,
      I5 => have_data_reg_0,
      O => \buffer[63]_i_2_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(0),
      Q => \buffer_reg_n_0_[0]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(10),
      Q => \buffer_reg_n_0_[10]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(11),
      Q => \buffer_reg_n_0_[11]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(12),
      Q => \buffer_reg_n_0_[12]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(13),
      Q => \buffer_reg_n_0_[13]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(14),
      Q => \buffer_reg_n_0_[14]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(15),
      Q => \buffer_reg_n_0_[15]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(16),
      Q => \buffer_reg_n_0_[16]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(17),
      Q => \buffer_reg_n_0_[17]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(18),
      Q => \buffer_reg_n_0_[18]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(19),
      Q => \buffer_reg_n_0_[19]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(1),
      Q => \buffer_reg_n_0_[1]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(20),
      Q => \buffer_reg_n_0_[20]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(21),
      Q => \buffer_reg_n_0_[21]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(22),
      Q => \buffer_reg_n_0_[22]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(23),
      Q => \buffer_reg_n_0_[23]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(24),
      Q => \buffer_reg_n_0_[24]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(25),
      Q => \buffer_reg_n_0_[25]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(26),
      Q => \buffer_reg_n_0_[26]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(27),
      Q => \buffer_reg_n_0_[27]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(28),
      Q => \buffer_reg_n_0_[28]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(29),
      Q => \buffer_reg_n_0_[29]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(2),
      Q => \buffer_reg_n_0_[2]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(30),
      Q => \buffer_reg_n_0_[30]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(31),
      Q => \buffer_reg_n_0_[31]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(32),
      Q => \buffer_reg_n_0_[32]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(33),
      Q => \buffer_reg_n_0_[33]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(34),
      Q => \buffer_reg_n_0_[34]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(35),
      Q => \buffer_reg_n_0_[35]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(36),
      Q => \buffer_reg_n_0_[36]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(37),
      Q => \buffer_reg_n_0_[37]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(38),
      Q => \buffer_reg_n_0_[38]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(39),
      Q => \buffer_reg_n_0_[39]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(3),
      Q => \buffer_reg_n_0_[3]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(40),
      Q => \buffer_reg_n_0_[40]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(41),
      Q => \buffer_reg_n_0_[41]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(42),
      Q => \buffer_reg_n_0_[42]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(43),
      Q => \buffer_reg_n_0_[43]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(44),
      Q => \buffer_reg_n_0_[44]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(45),
      Q => \buffer_reg_n_0_[45]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(46),
      Q => \buffer_reg_n_0_[46]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(47),
      Q => \buffer_reg_n_0_[47]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(48),
      Q => \buffer_reg_n_0_[48]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(49),
      Q => \buffer_reg_n_0_[49]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(4),
      Q => \buffer_reg_n_0_[4]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(50),
      Q => \buffer_reg_n_0_[50]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(51),
      Q => \buffer_reg_n_0_[51]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(52),
      Q => \buffer_reg_n_0_[52]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(53),
      Q => \buffer_reg_n_0_[53]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(54),
      Q => \buffer_reg_n_0_[54]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(55),
      Q => \buffer_reg_n_0_[55]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(56),
      Q => \buffer_reg_n_0_[56]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(57),
      Q => \buffer_reg_n_0_[57]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(58),
      Q => \buffer_reg_n_0_[58]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(59),
      Q => \buffer_reg_n_0_[59]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(5),
      Q => \buffer_reg_n_0_[5]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(60),
      Q => \buffer_reg_n_0_[60]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(61),
      Q => \buffer_reg_n_0_[61]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(62),
      Q => \buffer_reg_n_0_[62]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(63),
      Q => \buffer_reg_n_0_[63]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(6),
      Q => \buffer_reg_n_0_[6]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(7),
      Q => \buffer_reg_n_0_[7]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(8),
      Q => \buffer_reg_n_0_[8]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2_n_0\,
      D => trace3_data(9),
      Q => \buffer_reg_n_0_[9]\,
      R => \buffer[63]_i_1__3_n_0\
    );
\data_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[0]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[0]\,
      O => D(0)
    );
\data_i[10]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[10]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[10]\,
      O => D(10)
    );
\data_i[11]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[11]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[11]\,
      O => D(11)
    );
\data_i[12]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[12]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[12]\,
      O => D(12)
    );
\data_i[13]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[13]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[13]\,
      O => D(13)
    );
\data_i[14]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[14]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[14]\,
      O => D(14)
    );
\data_i[15]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[15]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[15]\,
      O => D(15)
    );
\data_i[16]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[16]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[16]\,
      O => D(16)
    );
\data_i[17]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[17]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[17]\,
      O => D(17)
    );
\data_i[18]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[18]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[18]\,
      O => D(18)
    );
\data_i[19]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[19]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[19]\,
      O => D(19)
    );
\data_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[1]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[1]\,
      O => D(1)
    );
\data_i[20]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[20]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[20]\,
      O => D(20)
    );
\data_i[21]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[21]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[21]\,
      O => D(21)
    );
\data_i[22]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[22]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[22]\,
      O => D(22)
    );
\data_i[23]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[23]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[23]\,
      O => D(23)
    );
\data_i[24]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[24]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[24]\,
      O => D(24)
    );
\data_i[25]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[25]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[25]\,
      O => D(25)
    );
\data_i[26]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[26]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[26]\,
      O => D(26)
    );
\data_i[27]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[27]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[27]\,
      O => D(27)
    );
\data_i[28]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[28]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[28]\,
      O => D(28)
    );
\data_i[29]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[29]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[29]\,
      O => D(29)
    );
\data_i[2]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[2]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[2]\,
      O => D(2)
    );
\data_i[30]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[30]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[30]\,
      O => D(30)
    );
\data_i[31]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[31]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[31]\,
      O => D(31)
    );
\data_i[32]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[32]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[32]\,
      O => D(32)
    );
\data_i[33]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[33]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[33]\,
      O => D(33)
    );
\data_i[34]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[34]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[34]\,
      O => D(34)
    );
\data_i[35]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[35]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[35]\,
      O => D(35)
    );
\data_i[36]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[36]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[36]\,
      O => D(36)
    );
\data_i[37]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[37]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[37]\,
      O => D(37)
    );
\data_i[38]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[38]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[38]\,
      O => D(38)
    );
\data_i[39]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[39]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[39]\,
      O => D(39)
    );
\data_i[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[3]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[3]\,
      O => D(3)
    );
\data_i[40]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[40]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[40]\,
      O => D(40)
    );
\data_i[41]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[41]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[41]\,
      O => D(41)
    );
\data_i[42]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[42]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[42]\,
      O => D(42)
    );
\data_i[43]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[43]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[43]\,
      O => D(43)
    );
\data_i[44]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[44]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[44]\,
      O => D(44)
    );
\data_i[45]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[45]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[45]\,
      O => D(45)
    );
\data_i[46]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[46]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[46]\,
      O => D(46)
    );
\data_i[47]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[47]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[47]\,
      O => D(47)
    );
\data_i[48]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[48]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[48]\,
      O => D(48)
    );
\data_i[49]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[49]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[49]\,
      O => D(49)
    );
\data_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[4]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[4]\,
      O => D(4)
    );
\data_i[50]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[50]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[50]\,
      O => D(50)
    );
\data_i[51]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[51]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[51]\,
      O => D(51)
    );
\data_i[52]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[52]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[52]\,
      O => D(52)
    );
\data_i[53]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[53]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[53]\,
      O => D(53)
    );
\data_i[54]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[54]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[54]\,
      O => D(54)
    );
\data_i[55]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[55]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[55]\,
      O => D(55)
    );
\data_i[56]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[56]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[56]\,
      O => D(56)
    );
\data_i[57]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[57]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[57]\,
      O => D(57)
    );
\data_i[58]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[58]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[58]\,
      O => D(58)
    );
\data_i[59]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[59]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[59]\,
      O => D(59)
    );
\data_i[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[5]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[5]\,
      O => D(5)
    );
\data_i[60]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[60]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[60]\,
      O => D(60)
    );
\data_i[61]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[61]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[61]\,
      O => D(61)
    );
\data_i[62]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[62]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[62]\,
      O => D(62)
    );
\data_i[63]_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[63]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[63]\,
      O => D(63)
    );
\data_i[6]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[6]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[6]\,
      O => D(6)
    );
\data_i[7]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[7]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[7]\,
      O => D(7)
    );
\data_i[8]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[8]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[8]\,
      O => D(8)
    );
\data_i[9]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAF20A0"
    )
        port map (
      I0 => \buffer_reg_n_0_[9]\,
      I1 => ready_i_reg_reg_2(0),
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => \data_i_reg[9]\,
      O => D(9)
    );
have_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000080AA"
    )
        port map (
      I0 => \^_trace_valid\(0),
      I1 => ready_i_reg_reg_1,
      I2 => ready_i_reg_reg_2(0),
      I3 => have_data0,
      I4 => have_data_reg_0,
      I5 => \^ready_i_reg_reg_0\,
      O => have_data_i_1_n_0
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => have_data_i_1_n_0,
      Q => \^_trace_valid\(0),
      R => '0'
    );
ready_i_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444404040404"
    )
        port map (
      I0 => \^ready_i_reg_reg_0\,
      I1 => trace3_valid,
      I2 => \^_trace_valid\(0),
      I3 => ready_i_reg_reg_1,
      I4 => ready_i_reg_reg_2(0),
      I5 => have_data0,
      O => ready_i_reg0
    );
ready_i_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ready_i_reg0,
      Q => \^ready_i_reg_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4 is
  port (
    have_data_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_0 : out STD_LOGIC;
    \buffer_reg[63]_0\ : out STD_LOGIC;
    \buffer_reg[62]_0\ : out STD_LOGIC;
    \buffer_reg[61]_0\ : out STD_LOGIC;
    \buffer_reg[60]_0\ : out STD_LOGIC;
    \buffer_reg[59]_0\ : out STD_LOGIC;
    \buffer_reg[58]_0\ : out STD_LOGIC;
    \buffer_reg[57]_0\ : out STD_LOGIC;
    \buffer_reg[56]_0\ : out STD_LOGIC;
    \buffer_reg[55]_0\ : out STD_LOGIC;
    \buffer_reg[54]_0\ : out STD_LOGIC;
    \buffer_reg[53]_0\ : out STD_LOGIC;
    \buffer_reg[52]_0\ : out STD_LOGIC;
    \buffer_reg[51]_0\ : out STD_LOGIC;
    \buffer_reg[50]_0\ : out STD_LOGIC;
    \buffer_reg[49]_0\ : out STD_LOGIC;
    \buffer_reg[48]_0\ : out STD_LOGIC;
    \buffer_reg[47]_0\ : out STD_LOGIC;
    \buffer_reg[46]_0\ : out STD_LOGIC;
    \buffer_reg[45]_0\ : out STD_LOGIC;
    \buffer_reg[44]_0\ : out STD_LOGIC;
    \buffer_reg[43]_0\ : out STD_LOGIC;
    \buffer_reg[42]_0\ : out STD_LOGIC;
    \buffer_reg[41]_0\ : out STD_LOGIC;
    \buffer_reg[40]_0\ : out STD_LOGIC;
    \buffer_reg[39]_0\ : out STD_LOGIC;
    \buffer_reg[38]_0\ : out STD_LOGIC;
    \buffer_reg[37]_0\ : out STD_LOGIC;
    \buffer_reg[36]_0\ : out STD_LOGIC;
    \buffer_reg[35]_0\ : out STD_LOGIC;
    \buffer_reg[34]_0\ : out STD_LOGIC;
    \buffer_reg[33]_0\ : out STD_LOGIC;
    \buffer_reg[32]_0\ : out STD_LOGIC;
    \buffer_reg[31]_0\ : out STD_LOGIC;
    \buffer_reg[30]_0\ : out STD_LOGIC;
    \buffer_reg[29]_0\ : out STD_LOGIC;
    \buffer_reg[28]_0\ : out STD_LOGIC;
    \buffer_reg[27]_0\ : out STD_LOGIC;
    \buffer_reg[26]_0\ : out STD_LOGIC;
    \buffer_reg[25]_0\ : out STD_LOGIC;
    \buffer_reg[24]_0\ : out STD_LOGIC;
    \buffer_reg[23]_0\ : out STD_LOGIC;
    \buffer_reg[22]_0\ : out STD_LOGIC;
    \buffer_reg[21]_0\ : out STD_LOGIC;
    \buffer_reg[20]_0\ : out STD_LOGIC;
    \buffer_reg[19]_0\ : out STD_LOGIC;
    \buffer_reg[18]_0\ : out STD_LOGIC;
    \buffer_reg[17]_0\ : out STD_LOGIC;
    \buffer_reg[16]_0\ : out STD_LOGIC;
    \buffer_reg[15]_0\ : out STD_LOGIC;
    \buffer_reg[14]_0\ : out STD_LOGIC;
    \buffer_reg[13]_0\ : out STD_LOGIC;
    \buffer_reg[12]_0\ : out STD_LOGIC;
    \buffer_reg[11]_0\ : out STD_LOGIC;
    \buffer_reg[10]_0\ : out STD_LOGIC;
    \buffer_reg[9]_0\ : out STD_LOGIC;
    \buffer_reg[8]_0\ : out STD_LOGIC;
    \buffer_reg[7]_0\ : out STD_LOGIC;
    \buffer_reg[6]_0\ : out STD_LOGIC;
    \buffer_reg[5]_0\ : out STD_LOGIC;
    \buffer_reg[4]_0\ : out STD_LOGIC;
    \buffer_reg[3]_0\ : out STD_LOGIC;
    \buffer_reg[2]_0\ : out STD_LOGIC;
    \buffer_reg[1]_0\ : out STD_LOGIC;
    \buffer_reg[0]_0\ : out STD_LOGIC;
    trace_clk : in STD_LOGIC;
    trace4_valid : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg_reg_1 : in STD_LOGIC;
    have_data0 : in STD_LOGIC;
    have_data_reg_1 : in STD_LOGIC;
    trace4_data : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4 : entity is "stream_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4 is
  signal \buffer[63]_i_1__4_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2__0_n_0\ : STD_LOGIC;
  signal \have_data_i_1__0_n_0\ : STD_LOGIC;
  signal \^have_data_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ready_i_reg0 : STD_LOGIC;
  signal \^ready_i_reg_reg_0\ : STD_LOGIC;
begin
  have_data_reg_0(0) <= \^have_data_reg_0\(0);
  ready_i_reg_reg_0 <= \^ready_i_reg_reg_0\;
\buffer[63]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => have_data_reg_1,
      I1 => \^ready_i_reg_reg_0\,
      O => \buffer[63]_i_1__4_n_0\
    );
\buffer[63]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7550000"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      I3 => have_data0,
      I4 => \^ready_i_reg_reg_0\,
      I5 => have_data_reg_1,
      O => \buffer[63]_i_2__0_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(0),
      Q => \buffer_reg[0]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(10),
      Q => \buffer_reg[10]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(11),
      Q => \buffer_reg[11]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(12),
      Q => \buffer_reg[12]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(13),
      Q => \buffer_reg[13]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(14),
      Q => \buffer_reg[14]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(15),
      Q => \buffer_reg[15]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(16),
      Q => \buffer_reg[16]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(17),
      Q => \buffer_reg[17]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(18),
      Q => \buffer_reg[18]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(19),
      Q => \buffer_reg[19]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(1),
      Q => \buffer_reg[1]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(20),
      Q => \buffer_reg[20]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(21),
      Q => \buffer_reg[21]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(22),
      Q => \buffer_reg[22]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(23),
      Q => \buffer_reg[23]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(24),
      Q => \buffer_reg[24]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(25),
      Q => \buffer_reg[25]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(26),
      Q => \buffer_reg[26]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(27),
      Q => \buffer_reg[27]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(28),
      Q => \buffer_reg[28]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(29),
      Q => \buffer_reg[29]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(2),
      Q => \buffer_reg[2]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(30),
      Q => \buffer_reg[30]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(31),
      Q => \buffer_reg[31]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(32),
      Q => \buffer_reg[32]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(33),
      Q => \buffer_reg[33]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(34),
      Q => \buffer_reg[34]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(35),
      Q => \buffer_reg[35]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(36),
      Q => \buffer_reg[36]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(37),
      Q => \buffer_reg[37]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(38),
      Q => \buffer_reg[38]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(39),
      Q => \buffer_reg[39]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(3),
      Q => \buffer_reg[3]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(40),
      Q => \buffer_reg[40]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(41),
      Q => \buffer_reg[41]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(42),
      Q => \buffer_reg[42]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(43),
      Q => \buffer_reg[43]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(44),
      Q => \buffer_reg[44]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(45),
      Q => \buffer_reg[45]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(46),
      Q => \buffer_reg[46]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(47),
      Q => \buffer_reg[47]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(48),
      Q => \buffer_reg[48]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(49),
      Q => \buffer_reg[49]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(4),
      Q => \buffer_reg[4]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(50),
      Q => \buffer_reg[50]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(51),
      Q => \buffer_reg[51]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(52),
      Q => \buffer_reg[52]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(53),
      Q => \buffer_reg[53]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(54),
      Q => \buffer_reg[54]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(55),
      Q => \buffer_reg[55]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(56),
      Q => \buffer_reg[56]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(57),
      Q => \buffer_reg[57]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(58),
      Q => \buffer_reg[58]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(59),
      Q => \buffer_reg[59]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(5),
      Q => \buffer_reg[5]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(60),
      Q => \buffer_reg[60]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(61),
      Q => \buffer_reg[61]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(62),
      Q => \buffer_reg[62]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(63),
      Q => \buffer_reg[63]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(6),
      Q => \buffer_reg[6]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(7),
      Q => \buffer_reg[7]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(8),
      Q => \buffer_reg[8]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => \buffer[63]_i_2__0_n_0\,
      D => trace4_data(9),
      Q => \buffer_reg[9]_0\,
      R => \buffer[63]_i_1__4_n_0\
    );
\have_data_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000008AA"
    )
        port map (
      I0 => \^have_data_reg_0\(0),
      I1 => \_trace_valid\(0),
      I2 => ready_i_reg_reg_1,
      I3 => have_data0,
      I4 => have_data_reg_1,
      I5 => \^ready_i_reg_reg_0\,
      O => \have_data_i_1__0_n_0\
    );
have_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => \have_data_i_1__0_n_0\,
      Q => \^have_data_reg_0\(0),
      R => '0'
    );
\ready_i_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044404040404"
    )
        port map (
      I0 => \^ready_i_reg_reg_0\,
      I1 => trace4_valid,
      I2 => \^have_data_reg_0\(0),
      I3 => \_trace_valid\(0),
      I4 => ready_i_reg_reg_1,
      I5 => have_data0,
      O => ready_i_reg0
    );
ready_i_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ready_i_reg0,
      Q => \^ready_i_reg_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray : entity is "GRAY";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair12";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair9";
begin
  dest_out_bin(3) <= \dest_graysync_ff[1]\(3);
  dest_out_bin(2 downto 0) <= \^dest_out_bin\(2 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_graysync_ff[2]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[2]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[2]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[2]\ : signal is "GRAY";
  signal \dest_graysync_ff[3]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[3]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[3]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[3]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[2][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[3][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair11";
begin
  dest_out_bin(4) <= \dest_graysync_ff[3]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(0),
      Q => \dest_graysync_ff[2]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(1),
      Q => \dest_graysync_ff[2]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(2),
      Q => \dest_graysync_ff[2]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => \dest_graysync_ff[2]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(4),
      Q => \dest_graysync_ff[2]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(0),
      Q => \dest_graysync_ff[3]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(1),
      Q => \dest_graysync_ff[3]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(2),
      Q => \dest_graysync_ff[3]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(3),
      Q => \dest_graysync_ff[3]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[2]\(4),
      Q => \dest_graysync_ff[3]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(0),
      I1 => \dest_graysync_ff[3]\(2),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(3),
      I4 => \dest_graysync_ff[3]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(1),
      I1 => \dest_graysync_ff[3]\(3),
      I2 => \dest_graysync_ff[3]\(4),
      I3 => \dest_graysync_ff[3]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(2),
      I1 => \dest_graysync_ff[3]\(4),
      I2 => \dest_graysync_ff[3]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[3]\(3),
      I1 => \dest_graysync_ff[3]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ : entity is "GRAY";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\ is
  signal async_path : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair14";
begin
  dest_out_bin(4) <= \dest_graysync_ff[1]\(4);
  dest_out_bin(3 downto 0) <= \^dest_out_bin\(3 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(4),
      Q => async_path(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single : entity is "SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\ is
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(2);
src_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in,
      Q => p_0_in(0),
      R => '0'
    );
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => p_0_in(0),
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 3;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ : entity is "SINGLE";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(2);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst : entity is "SYNC_RST";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_value_i_reg[1]_0\ : out STD_LOGIC;
    src_in_bin : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \^count_value_i_reg[1]_0\ : STD_LOGIC;
  signal \gen_fwft.count_en\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \count_value_i_reg[1]_0\ <= \^count_value_i_reg[1]_0\;
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5AAAA655"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[1]_1\(0),
      I2 => rd_en,
      I3 => \count_value_i_reg[1]_1\(1),
      I4 => ram_empty_i,
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C02F"
    )
        port map (
      I0 => \count_value_i_reg[1]_1\(0),
      I1 => rd_en,
      I2 => \count_value_i_reg[1]_1\(1),
      I3 => ram_empty_i,
      O => \gen_fwft.count_en\
    );
\count_value_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A999A9A96AAA6AAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => ram_empty_i,
      I2 => \count_value_i_reg[1]_1\(1),
      I3 => rd_en,
      I4 => \count_value_i_reg[1]_1\(0),
      I5 => \^q\(0),
      O => \count_value_i[1]_i_3_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \gen_fwft.count_en\,
      D => \count_value_i[1]_i_3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \grdc.rd_data_count_i_reg[2]_0\(0),
      I2 => \^q\(1),
      I3 => \grdc.rd_data_count_i_reg[2]_0\(1),
      O => src_in_bin(0)
    );
\grdc.rd_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669966969"
    )
        port map (
      I0 => \^count_value_i_reg[1]_0\,
      I1 => \grdc.rd_data_count_i_reg[2]\(2),
      I2 => \grdc.rd_data_count_i_reg[2]_0\(2),
      I3 => \grdc.rd_data_count_i_reg[2]_0\(1),
      I4 => \^q\(1),
      I5 => \grdc.rd_data_count_i_reg[2]\(1),
      O => D(0)
    );
\grdc.rd_data_count_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF696969690069"
    )
        port map (
      I0 => \^q\(1),
      I1 => \grdc.rd_data_count_i_reg[2]_0\(1),
      I2 => \grdc.rd_data_count_i_reg[2]\(1),
      I3 => \grdc.rd_data_count_i_reg[2]_0\(0),
      I4 => \^q\(0),
      I5 => \grdc.rd_data_count_i_reg[2]\(0),
      O => \^count_value_i_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    src_in_bin : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \grdc.rd_data_count_i_reg[4]_1\ : in STD_LOGIC;
    \src_gray_ff_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_value_i_reg[4]_0\ : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__4_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \grdc.rd_data_count_i[4]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[4]_i_6\ : label is "soft_lutpair19";
begin
  E(0) <= \^e\(0);
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__4_n_0\
    );
\count_value_i[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__4_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[0]_i_1__4_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[1]_i_1__4_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[4]_0\
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => \count_value_i_reg[4]_0\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFE00001501"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\,
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[4]\(1),
      I4 => \^q\(2),
      I5 => \count_value_i_reg_n_0_[4]\,
      O => src_in_bin(3)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBBAFB04044504"
    )
        port map (
      I0 => \^q\(2),
      I1 => \src_gray_ff_reg[4]\(1),
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[4]\(0),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => src_in_bin(2)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \src_gray_ff_reg[4]\(1),
      I4 => \^q\(2),
      O => src_in_bin(1)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[4]\(0),
      O => src_in_bin(0)
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \src_gray_ff_reg[4]\(0),
      O => \gen_cdc_pntr.rd_pntr_cdc_dc_inst_i_6_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(1),
      I2 => \^q\(1),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2),
      I4 => \^q\(2),
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BFF002BD400FFD4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(1),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2),
      I4 => \^q\(2),
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\,
      O => D(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDFDDDD44454444"
    )
        port map (
      I0 => \^q\(0),
      I1 => ram_empty_i,
      I2 => rd_en,
      I3 => \count_value_i_reg[0]_0\(0),
      I4 => \count_value_i_reg[0]_0\(1),
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(0),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_2_n_0\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(3),
      O => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe[3]_i_3_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^e\(0)
    );
\grdc.rd_data_count_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EE1788787781EE1"
    )
        port map (
      I0 => \grdc.rd_data_count_i_reg[4]\,
      I1 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I3 => \^q\(3),
      I4 => \grdc.rd_data_count_i_reg[4]_0\(1),
      I5 => \^q\(2),
      O => \reg_out_i_reg[2]\(0)
    );
\grdc.rd_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1701FF7FE8FE0080"
    )
        port map (
      I0 => \grdc.rd_data_count_i[4]_i_3_n_0\,
      I1 => \grdc.rd_data_count_i_reg[4]\,
      I2 => \grdc.rd_data_count_i_reg[4]_0\(1),
      I3 => \^q\(2),
      I4 => \grdc.rd_data_count_i_reg[4]_1\,
      I5 => \grdc.rd_data_count_i[4]_i_6_n_0\,
      O => \reg_out_i_reg[2]\(1)
    );
\grdc.rd_data_count_i[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \src_gray_ff_reg[4]\(1),
      I2 => \grdc.rd_data_count_i_reg[4]_0\(0),
      O => \grdc.rd_data_count_i[4]_i_3_n_0\
    );
\grdc.rd_data_count_i[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[4]_0\(2),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => \grdc.rd_data_count_i_reg[4]_0\(3),
      O => \grdc.rd_data_count_i[4]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gwdc.wr_data_count_i_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair22";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\gwdc.wr_data_count_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[2]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[2]\(1),
      I4 => \gwdc.wr_data_count_i_reg[2]\(2),
      I5 => \^q\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair21";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_8\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[3]_0\ : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_8\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_8\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair24";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(0),
      O => \count_value_i_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair25";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : out STD_LOGIC;
    overflow_i0 : out STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \p_1_in__0\ : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E200E2E2"
    )
        port map (
      I0 => \p_1_in__0\,
      I1 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I2 => prog_full,
      I3 => rst,
      I4 => \^rst_d1\,
      I5 => wrst_busy,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\
    );
\gof.overflow_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^rst_d1\,
      I1 => wrst_busy,
      I2 => \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\,
      I3 => wr_en,
      O => overflow_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  port (
    diff_pntr_pf_q0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_i0 : out STD_LOGIC;
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_d1 : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\ : STD_LOGIC;
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Q(0) <= \^q\(0);
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BFF002BD400FFD4"
    )
        port map (
      I0 => rd_pntr_wr(1),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      I2 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I4 => rd_pntr_wr(2),
      I5 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\,
      O => diff_pntr_pf_q0(0)
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444D44444444"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I2 => rst_d1,
      I3 => wrst_busy,
      I4 => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0\,
      I5 => wr_en,
      O => \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q[4]_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => E(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3),
      I5 => \^q\(0),
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_2_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(0),
      I2 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(2),
      I3 => rd_pntr_wr(2),
      I4 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(1),
      I5 => rd_pntr_wr(1),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => rd_pntr_wr(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => rd_pntr_wr(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => rd_pntr_wr(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => \^q\(0),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_i0 : out STD_LOGIC;
    enb : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_out_i_reg[0]_0\ : in STD_LOGIC;
    \reg_out_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5 : entity is "xpm_fifo_reg_vec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_pf_ic_rc.ram_empty_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666699999969"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1),
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(0),
      I4 => rd_en,
      I5 => ram_empty_i,
      O => D(0)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D42B2BD4"
    )
        port map (
      I0 => \^q\(0),
      I1 => enb,
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I3 => \^q\(1),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      O => D(1)
    );
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8080802020FF20"
    )
        port map (
      I0 => enb,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\,
      I3 => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\,
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(3),
      I5 => \^q\(3),
      O => ram_empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_2_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_3_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[0]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[3]_0\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gwdc.wr_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wrst_busy : in STD_LOGIC;
    \reg_out_i_reg[4]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \gwdc.wr_data_count_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_out_i_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gwdc.wr_data_count_i[4]_i_1\ : label is "soft_lutpair15";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\gwdc.wr_data_count_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gwdc.wr_data_count_i_reg[4]\(0),
      I2 => \^q\(1),
      I3 => \gwdc.wr_data_count_i_reg[4]\(1),
      O => D(0)
    );
\gwdc.wr_data_count_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \reg_out_i_reg_n_0_[3]\,
      I2 => \gwdc.wr_data_count_i_reg[4]\(3),
      O => D(1)
    );
\gwdc.wr_data_count_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => \gwdc.wr_data_count_i[4]_i_2_n_0\,
      I1 => \gwdc.wr_data_count_i_reg[4]\(3),
      I2 => \reg_out_i_reg_n_0_[3]\,
      I3 => \reg_out_i_reg_n_0_[4]\,
      I4 => \gwdc.wr_data_count_i_reg[4]\(4),
      O => D(2)
    );
\gwdc.wr_data_count_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D4DD4444DDDDD4DD"
    )
        port map (
      I0 => \^q\(2),
      I1 => \gwdc.wr_data_count_i_reg[4]\(2),
      I2 => \gwdc.wr_data_count_i_reg[4]\(0),
      I3 => \^q\(0),
      I4 => \gwdc.wr_data_count_i_reg[4]\(1),
      I5 => \^q\(1),
      O => \gwdc.wr_data_count_i[4]_i_2_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(0),
      Q => \^q\(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(1),
      Q => \^q\(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(2),
      Q => \^q\(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(3),
      Q => \reg_out_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_0\(4),
      Q => \reg_out_i_reg_n_0_[4]\,
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\ is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_out_i_reg[3]_0\ : out STD_LOGIC;
    \grdc.rd_data_count_i_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \grdc.rd_data_count_i_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_out_i_reg[4]_0\ : in STD_LOGIC;
    \reg_out_i_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\ : entity is "xpm_fifo_reg_vec";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\grdc.rd_data_count_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33C96696996C33C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \grdc.rd_data_count_i_reg[4]\(1),
      I3 => \grdc.rd_data_count_i_reg[1]\(1),
      I4 => \grdc.rd_data_count_i_reg[1]\(0),
      I5 => \grdc.rd_data_count_i_reg[4]\(0),
      O => D(0)
    );
\grdc.rd_data_count_i[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \grdc.rd_data_count_i_reg[4]\(2),
      O => \reg_out_i_reg[3]_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(0),
      Q => \^q\(0),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(1),
      Q => \^q\(1),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(2),
      Q => \^q\(2),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(3),
      Q => \^q\(3),
      R => \reg_out_i_reg[4]_0\
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \reg_out_i_reg[4]_1\(4),
      Q => \^q\(4),
      R => \reg_out_i_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1024;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 64;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \gen_rd_b.doutb_reg0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOE_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOF_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOG_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[0]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[10]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[11]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[12]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[13]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[14]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[15]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[16]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[17]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[18]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[19]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[1]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[20]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[21]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[22]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[23]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[24]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[25]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[26]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[27]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[28]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[29]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[2]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[30]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[31]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[32]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[33]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[34]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[35]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[36]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[37]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[38]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[39]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[3]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[40]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[41]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[42]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[43]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[44]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[45]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[46]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[47]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[48]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[49]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[4]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[50]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[51]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[52]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[53]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[54]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[55]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[56]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[57]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[58]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[59]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[5]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[60]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[61]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[62]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[63]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[6]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[7]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[8]\ : label is "yes";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[9]\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "RAM_SDP";
  attribute dram_emb_xdc of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "yes";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 1024;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "RAM_SDP";
  attribute dram_emb_xdc of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "yes";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 1024;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "RAM_SDP";
  attribute dram_emb_xdc of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "yes";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 41;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 1024;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "RAM_SDP";
  attribute dram_emb_xdc of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "yes";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 42;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 55;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is 1024;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is "gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is "RAM_SDP";
  attribute dram_emb_xdc of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is "yes";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is 56;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\ : label is 63;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(0),
      Q => \gen_rd_b.doutb_reg\(0),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(10),
      Q => \gen_rd_b.doutb_reg\(10),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(11),
      Q => \gen_rd_b.doutb_reg\(11),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(12),
      Q => \gen_rd_b.doutb_reg\(12),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(13),
      Q => \gen_rd_b.doutb_reg\(13),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(14),
      Q => \gen_rd_b.doutb_reg\(14),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(15),
      Q => \gen_rd_b.doutb_reg\(15),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(16),
      Q => \gen_rd_b.doutb_reg\(16),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(17),
      Q => \gen_rd_b.doutb_reg\(17),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(18),
      Q => \gen_rd_b.doutb_reg\(18),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(19),
      Q => \gen_rd_b.doutb_reg\(19),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(1),
      Q => \gen_rd_b.doutb_reg\(1),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(20),
      Q => \gen_rd_b.doutb_reg\(20),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(21),
      Q => \gen_rd_b.doutb_reg\(21),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(22),
      Q => \gen_rd_b.doutb_reg\(22),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(23),
      Q => \gen_rd_b.doutb_reg\(23),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(24),
      Q => \gen_rd_b.doutb_reg\(24),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(25),
      Q => \gen_rd_b.doutb_reg\(25),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(26),
      Q => \gen_rd_b.doutb_reg\(26),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(27),
      Q => \gen_rd_b.doutb_reg\(27),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(28),
      Q => \gen_rd_b.doutb_reg\(28),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(29),
      Q => \gen_rd_b.doutb_reg\(29),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(2),
      Q => \gen_rd_b.doutb_reg\(2),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(30),
      Q => \gen_rd_b.doutb_reg\(30),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(31),
      Q => \gen_rd_b.doutb_reg\(31),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(32),
      Q => \gen_rd_b.doutb_reg\(32),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(33),
      Q => \gen_rd_b.doutb_reg\(33),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(34),
      Q => \gen_rd_b.doutb_reg\(34),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(35),
      Q => \gen_rd_b.doutb_reg\(35),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(36),
      Q => \gen_rd_b.doutb_reg\(36),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(37),
      Q => \gen_rd_b.doutb_reg\(37),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(38),
      Q => \gen_rd_b.doutb_reg\(38),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(39),
      Q => \gen_rd_b.doutb_reg\(39),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(3),
      Q => \gen_rd_b.doutb_reg\(3),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(40),
      Q => \gen_rd_b.doutb_reg\(40),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(41),
      Q => \gen_rd_b.doutb_reg\(41),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(42),
      Q => \gen_rd_b.doutb_reg\(42),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(43),
      Q => \gen_rd_b.doutb_reg\(43),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(44),
      Q => \gen_rd_b.doutb_reg\(44),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(45),
      Q => \gen_rd_b.doutb_reg\(45),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(46),
      Q => \gen_rd_b.doutb_reg\(46),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(47),
      Q => \gen_rd_b.doutb_reg\(47),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(48),
      Q => \gen_rd_b.doutb_reg\(48),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(49),
      Q => \gen_rd_b.doutb_reg\(49),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(4),
      Q => \gen_rd_b.doutb_reg\(4),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(50),
      Q => \gen_rd_b.doutb_reg\(50),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(51),
      Q => \gen_rd_b.doutb_reg\(51),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(52),
      Q => \gen_rd_b.doutb_reg\(52),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(53),
      Q => \gen_rd_b.doutb_reg\(53),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(54),
      Q => \gen_rd_b.doutb_reg\(54),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(55),
      Q => \gen_rd_b.doutb_reg\(55),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(56),
      Q => \gen_rd_b.doutb_reg\(56),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(57),
      Q => \gen_rd_b.doutb_reg\(57),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(58),
      Q => \gen_rd_b.doutb_reg\(58),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(59),
      Q => \gen_rd_b.doutb_reg\(59),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(5),
      Q => \gen_rd_b.doutb_reg\(5),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(60),
      Q => \gen_rd_b.doutb_reg\(60),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(61),
      Q => \gen_rd_b.doutb_reg\(61),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(62),
      Q => \gen_rd_b.doutb_reg\(62),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(63),
      Q => \gen_rd_b.doutb_reg\(63),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(6),
      Q => \gen_rd_b.doutb_reg\(6),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(7),
      Q => \gen_rd_b.doutb_reg\(7),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(8),
      Q => \gen_rd_b.doutb_reg\(8),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(9),
      Q => \gen_rd_b.doutb_reg\(9),
      R => '0'
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(10),
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(11),
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(12),
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(13),
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(14),
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(15),
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(16),
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(17),
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(18),
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(19),
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(20),
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(21),
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(22),
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(23),
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(24),
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(25),
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(26),
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(27),
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(28),
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(29),
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(30),
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(31),
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(32),
      Q => doutb(32),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(33),
      Q => doutb(33),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(34),
      Q => doutb(34),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(35),
      Q => doutb(35),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(36),
      Q => doutb(36),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(37),
      Q => doutb(37),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(38),
      Q => doutb(38),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(39),
      Q => doutb(39),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(40),
      Q => doutb(40),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(41),
      Q => doutb(41),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(42),
      Q => doutb(42),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(43),
      Q => doutb(43),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(44),
      Q => doutb(44),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(45),
      Q => doutb(45),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(46),
      Q => doutb(46),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(47),
      Q => doutb(47),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(48),
      Q => doutb(48),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(49),
      Q => doutb(49),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(50),
      Q => doutb(50),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(51),
      Q => doutb(51),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(52),
      Q => doutb(52),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(53),
      Q => doutb(53),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(54),
      Q => doutb(54),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(55),
      Q => doutb(55),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(56),
      Q => doutb(56),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(57),
      Q => doutb(57),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(58),
      Q => doutb(58),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(59),
      Q => doutb(59),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(60),
      Q => doutb(60),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(61),
      Q => doutb(61),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(62),
      Q => doutb(62),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(63),
      Q => doutb(63),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(8),
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(9),
      Q => doutb(9),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => dina(7 downto 6),
      DIE(1 downto 0) => dina(9 downto 8),
      DIF(1 downto 0) => dina(11 downto 10),
      DIG(1 downto 0) => dina(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(5 downto 4),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(7 downto 6),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(9 downto 8),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(11 downto 10),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(13 downto 12),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(15 downto 14),
      DIB(1 downto 0) => dina(17 downto 16),
      DIC(1 downto 0) => dina(19 downto 18),
      DID(1 downto 0) => dina(21 downto 20),
      DIE(1 downto 0) => dina(23 downto 22),
      DIF(1 downto 0) => dina(25 downto 24),
      DIG(1 downto 0) => dina(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(15 downto 14),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(17 downto 16),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(19 downto 18),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(21 downto 20),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(23 downto 22),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(25 downto 24),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(27 downto 26),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(29 downto 28),
      DIB(1 downto 0) => dina(31 downto 30),
      DIC(1 downto 0) => dina(33 downto 32),
      DID(1 downto 0) => dina(35 downto 34),
      DIE(1 downto 0) => dina(37 downto 36),
      DIF(1 downto 0) => dina(39 downto 38),
      DIG(1 downto 0) => dina(41 downto 40),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(29 downto 28),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(31 downto 30),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(33 downto 32),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(35 downto 34),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(37 downto 36),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(39 downto 38),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(41 downto 40),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(43 downto 42),
      DIB(1 downto 0) => dina(45 downto 44),
      DIC(1 downto 0) => dina(47 downto 46),
      DID(1 downto 0) => dina(49 downto 48),
      DIE(1 downto 0) => dina(51 downto 50),
      DIF(1 downto 0) => dina(53 downto 52),
      DIG(1 downto 0) => dina(55 downto 54),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(43 downto 42),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(45 downto 44),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(47 downto 46),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(49 downto 48),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(51 downto 50),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(53 downto 52),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(55 downto 54),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(57 downto 56),
      DIB(1 downto 0) => dina(59 downto 58),
      DIC(1 downto 0) => dina(61 downto 60),
      DID(1 downto 0) => dina(63 downto 62),
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(57 downto 56),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(59 downto 58),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(61 downto 60),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(63 downto 62),
      DOE(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOE_UNCONNECTED\(1 downto 0),
      DOF(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOF_UNCONNECTED\(1 downto 0),
      DOG(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOG_UNCONNECTED\(1 downto 0),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_63_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_merge_tree is
  port (
    wrote0_reg : out STD_LOGIC;
    wrote0_reg_0 : out STD_LOGIC;
    wrote0_reg_1 : out STD_LOGIC;
    have_data0 : out STD_LOGIC;
    have_data_reg : out STD_LOGIC;
    have_data0_0 : out STD_LOGIC;
    have_data0_1 : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wrote0_reg_2 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    out_ready : in STD_LOGIC;
    \_trace_valid\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 63 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_i_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \data_i_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_i_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    have_data02_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_merge_tree;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_merge_tree is
  signal \b2[0].merge_i_n_0\ : STD_LOGIC;
  signal \b2[1].merge_i_n_0\ : STD_LOGIC;
  signal \b2[1].merge_i_n_1\ : STD_LOGIC;
  signal \b2[1].merge_i_n_10\ : STD_LOGIC;
  signal \b2[1].merge_i_n_11\ : STD_LOGIC;
  signal \b2[1].merge_i_n_12\ : STD_LOGIC;
  signal \b2[1].merge_i_n_13\ : STD_LOGIC;
  signal \b2[1].merge_i_n_14\ : STD_LOGIC;
  signal \b2[1].merge_i_n_15\ : STD_LOGIC;
  signal \b2[1].merge_i_n_16\ : STD_LOGIC;
  signal \b2[1].merge_i_n_17\ : STD_LOGIC;
  signal \b2[1].merge_i_n_18\ : STD_LOGIC;
  signal \b2[1].merge_i_n_19\ : STD_LOGIC;
  signal \b2[1].merge_i_n_2\ : STD_LOGIC;
  signal \b2[1].merge_i_n_20\ : STD_LOGIC;
  signal \b2[1].merge_i_n_21\ : STD_LOGIC;
  signal \b2[1].merge_i_n_22\ : STD_LOGIC;
  signal \b2[1].merge_i_n_23\ : STD_LOGIC;
  signal \b2[1].merge_i_n_24\ : STD_LOGIC;
  signal \b2[1].merge_i_n_25\ : STD_LOGIC;
  signal \b2[1].merge_i_n_26\ : STD_LOGIC;
  signal \b2[1].merge_i_n_27\ : STD_LOGIC;
  signal \b2[1].merge_i_n_28\ : STD_LOGIC;
  signal \b2[1].merge_i_n_29\ : STD_LOGIC;
  signal \b2[1].merge_i_n_3\ : STD_LOGIC;
  signal \b2[1].merge_i_n_30\ : STD_LOGIC;
  signal \b2[1].merge_i_n_31\ : STD_LOGIC;
  signal \b2[1].merge_i_n_32\ : STD_LOGIC;
  signal \b2[1].merge_i_n_33\ : STD_LOGIC;
  signal \b2[1].merge_i_n_34\ : STD_LOGIC;
  signal \b2[1].merge_i_n_35\ : STD_LOGIC;
  signal \b2[1].merge_i_n_36\ : STD_LOGIC;
  signal \b2[1].merge_i_n_37\ : STD_LOGIC;
  signal \b2[1].merge_i_n_38\ : STD_LOGIC;
  signal \b2[1].merge_i_n_39\ : STD_LOGIC;
  signal \b2[1].merge_i_n_4\ : STD_LOGIC;
  signal \b2[1].merge_i_n_40\ : STD_LOGIC;
  signal \b2[1].merge_i_n_41\ : STD_LOGIC;
  signal \b2[1].merge_i_n_42\ : STD_LOGIC;
  signal \b2[1].merge_i_n_43\ : STD_LOGIC;
  signal \b2[1].merge_i_n_44\ : STD_LOGIC;
  signal \b2[1].merge_i_n_45\ : STD_LOGIC;
  signal \b2[1].merge_i_n_46\ : STD_LOGIC;
  signal \b2[1].merge_i_n_47\ : STD_LOGIC;
  signal \b2[1].merge_i_n_48\ : STD_LOGIC;
  signal \b2[1].merge_i_n_49\ : STD_LOGIC;
  signal \b2[1].merge_i_n_5\ : STD_LOGIC;
  signal \b2[1].merge_i_n_50\ : STD_LOGIC;
  signal \b2[1].merge_i_n_51\ : STD_LOGIC;
  signal \b2[1].merge_i_n_52\ : STD_LOGIC;
  signal \b2[1].merge_i_n_53\ : STD_LOGIC;
  signal \b2[1].merge_i_n_54\ : STD_LOGIC;
  signal \b2[1].merge_i_n_55\ : STD_LOGIC;
  signal \b2[1].merge_i_n_56\ : STD_LOGIC;
  signal \b2[1].merge_i_n_57\ : STD_LOGIC;
  signal \b2[1].merge_i_n_58\ : STD_LOGIC;
  signal \b2[1].merge_i_n_59\ : STD_LOGIC;
  signal \b2[1].merge_i_n_6\ : STD_LOGIC;
  signal \b2[1].merge_i_n_60\ : STD_LOGIC;
  signal \b2[1].merge_i_n_61\ : STD_LOGIC;
  signal \b2[1].merge_i_n_62\ : STD_LOGIC;
  signal \b2[1].merge_i_n_63\ : STD_LOGIC;
  signal \b2[1].merge_i_n_64\ : STD_LOGIC;
  signal \b2[1].merge_i_n_7\ : STD_LOGIC;
  signal \b2[1].merge_i_n_8\ : STD_LOGIC;
  signal \b2[1].merge_i_n_9\ : STD_LOGIC;
  signal \b2[2].merge_i_n_10\ : STD_LOGIC;
  signal \b2[2].merge_i_n_11\ : STD_LOGIC;
  signal \b2[2].merge_i_n_12\ : STD_LOGIC;
  signal \b2[2].merge_i_n_13\ : STD_LOGIC;
  signal \b2[2].merge_i_n_14\ : STD_LOGIC;
  signal \b2[2].merge_i_n_15\ : STD_LOGIC;
  signal \b2[2].merge_i_n_16\ : STD_LOGIC;
  signal \b2[2].merge_i_n_17\ : STD_LOGIC;
  signal \b2[2].merge_i_n_18\ : STD_LOGIC;
  signal \b2[2].merge_i_n_19\ : STD_LOGIC;
  signal \b2[2].merge_i_n_2\ : STD_LOGIC;
  signal \b2[2].merge_i_n_20\ : STD_LOGIC;
  signal \b2[2].merge_i_n_21\ : STD_LOGIC;
  signal \b2[2].merge_i_n_22\ : STD_LOGIC;
  signal \b2[2].merge_i_n_23\ : STD_LOGIC;
  signal \b2[2].merge_i_n_24\ : STD_LOGIC;
  signal \b2[2].merge_i_n_25\ : STD_LOGIC;
  signal \b2[2].merge_i_n_26\ : STD_LOGIC;
  signal \b2[2].merge_i_n_27\ : STD_LOGIC;
  signal \b2[2].merge_i_n_28\ : STD_LOGIC;
  signal \b2[2].merge_i_n_29\ : STD_LOGIC;
  signal \b2[2].merge_i_n_3\ : STD_LOGIC;
  signal \b2[2].merge_i_n_30\ : STD_LOGIC;
  signal \b2[2].merge_i_n_31\ : STD_LOGIC;
  signal \b2[2].merge_i_n_32\ : STD_LOGIC;
  signal \b2[2].merge_i_n_33\ : STD_LOGIC;
  signal \b2[2].merge_i_n_34\ : STD_LOGIC;
  signal \b2[2].merge_i_n_35\ : STD_LOGIC;
  signal \b2[2].merge_i_n_36\ : STD_LOGIC;
  signal \b2[2].merge_i_n_37\ : STD_LOGIC;
  signal \b2[2].merge_i_n_38\ : STD_LOGIC;
  signal \b2[2].merge_i_n_39\ : STD_LOGIC;
  signal \b2[2].merge_i_n_4\ : STD_LOGIC;
  signal \b2[2].merge_i_n_40\ : STD_LOGIC;
  signal \b2[2].merge_i_n_41\ : STD_LOGIC;
  signal \b2[2].merge_i_n_42\ : STD_LOGIC;
  signal \b2[2].merge_i_n_43\ : STD_LOGIC;
  signal \b2[2].merge_i_n_44\ : STD_LOGIC;
  signal \b2[2].merge_i_n_45\ : STD_LOGIC;
  signal \b2[2].merge_i_n_46\ : STD_LOGIC;
  signal \b2[2].merge_i_n_47\ : STD_LOGIC;
  signal \b2[2].merge_i_n_48\ : STD_LOGIC;
  signal \b2[2].merge_i_n_49\ : STD_LOGIC;
  signal \b2[2].merge_i_n_5\ : STD_LOGIC;
  signal \b2[2].merge_i_n_50\ : STD_LOGIC;
  signal \b2[2].merge_i_n_51\ : STD_LOGIC;
  signal \b2[2].merge_i_n_52\ : STD_LOGIC;
  signal \b2[2].merge_i_n_53\ : STD_LOGIC;
  signal \b2[2].merge_i_n_54\ : STD_LOGIC;
  signal \b2[2].merge_i_n_55\ : STD_LOGIC;
  signal \b2[2].merge_i_n_56\ : STD_LOGIC;
  signal \b2[2].merge_i_n_57\ : STD_LOGIC;
  signal \b2[2].merge_i_n_58\ : STD_LOGIC;
  signal \b2[2].merge_i_n_59\ : STD_LOGIC;
  signal \b2[2].merge_i_n_6\ : STD_LOGIC;
  signal \b2[2].merge_i_n_60\ : STD_LOGIC;
  signal \b2[2].merge_i_n_61\ : STD_LOGIC;
  signal \b2[2].merge_i_n_62\ : STD_LOGIC;
  signal \b2[2].merge_i_n_63\ : STD_LOGIC;
  signal \b2[2].merge_i_n_64\ : STD_LOGIC;
  signal \b2[2].merge_i_n_65\ : STD_LOGIC;
  signal \b2[2].merge_i_n_7\ : STD_LOGIC;
  signal \b2[2].merge_i_n_8\ : STD_LOGIC;
  signal \b2[2].merge_i_n_9\ : STD_LOGIC;
  signal \b2[3].merge_i_n_1\ : STD_LOGIC;
  signal \b2[3].merge_i_n_10\ : STD_LOGIC;
  signal \b2[3].merge_i_n_11\ : STD_LOGIC;
  signal \b2[3].merge_i_n_12\ : STD_LOGIC;
  signal \b2[3].merge_i_n_13\ : STD_LOGIC;
  signal \b2[3].merge_i_n_14\ : STD_LOGIC;
  signal \b2[3].merge_i_n_15\ : STD_LOGIC;
  signal \b2[3].merge_i_n_16\ : STD_LOGIC;
  signal \b2[3].merge_i_n_17\ : STD_LOGIC;
  signal \b2[3].merge_i_n_18\ : STD_LOGIC;
  signal \b2[3].merge_i_n_19\ : STD_LOGIC;
  signal \b2[3].merge_i_n_2\ : STD_LOGIC;
  signal \b2[3].merge_i_n_20\ : STD_LOGIC;
  signal \b2[3].merge_i_n_21\ : STD_LOGIC;
  signal \b2[3].merge_i_n_22\ : STD_LOGIC;
  signal \b2[3].merge_i_n_23\ : STD_LOGIC;
  signal \b2[3].merge_i_n_24\ : STD_LOGIC;
  signal \b2[3].merge_i_n_25\ : STD_LOGIC;
  signal \b2[3].merge_i_n_26\ : STD_LOGIC;
  signal \b2[3].merge_i_n_27\ : STD_LOGIC;
  signal \b2[3].merge_i_n_28\ : STD_LOGIC;
  signal \b2[3].merge_i_n_29\ : STD_LOGIC;
  signal \b2[3].merge_i_n_3\ : STD_LOGIC;
  signal \b2[3].merge_i_n_30\ : STD_LOGIC;
  signal \b2[3].merge_i_n_31\ : STD_LOGIC;
  signal \b2[3].merge_i_n_32\ : STD_LOGIC;
  signal \b2[3].merge_i_n_33\ : STD_LOGIC;
  signal \b2[3].merge_i_n_34\ : STD_LOGIC;
  signal \b2[3].merge_i_n_35\ : STD_LOGIC;
  signal \b2[3].merge_i_n_36\ : STD_LOGIC;
  signal \b2[3].merge_i_n_37\ : STD_LOGIC;
  signal \b2[3].merge_i_n_38\ : STD_LOGIC;
  signal \b2[3].merge_i_n_39\ : STD_LOGIC;
  signal \b2[3].merge_i_n_4\ : STD_LOGIC;
  signal \b2[3].merge_i_n_40\ : STD_LOGIC;
  signal \b2[3].merge_i_n_41\ : STD_LOGIC;
  signal \b2[3].merge_i_n_42\ : STD_LOGIC;
  signal \b2[3].merge_i_n_43\ : STD_LOGIC;
  signal \b2[3].merge_i_n_44\ : STD_LOGIC;
  signal \b2[3].merge_i_n_45\ : STD_LOGIC;
  signal \b2[3].merge_i_n_46\ : STD_LOGIC;
  signal \b2[3].merge_i_n_47\ : STD_LOGIC;
  signal \b2[3].merge_i_n_48\ : STD_LOGIC;
  signal \b2[3].merge_i_n_49\ : STD_LOGIC;
  signal \b2[3].merge_i_n_5\ : STD_LOGIC;
  signal \b2[3].merge_i_n_50\ : STD_LOGIC;
  signal \b2[3].merge_i_n_51\ : STD_LOGIC;
  signal \b2[3].merge_i_n_52\ : STD_LOGIC;
  signal \b2[3].merge_i_n_53\ : STD_LOGIC;
  signal \b2[3].merge_i_n_54\ : STD_LOGIC;
  signal \b2[3].merge_i_n_55\ : STD_LOGIC;
  signal \b2[3].merge_i_n_56\ : STD_LOGIC;
  signal \b2[3].merge_i_n_57\ : STD_LOGIC;
  signal \b2[3].merge_i_n_58\ : STD_LOGIC;
  signal \b2[3].merge_i_n_59\ : STD_LOGIC;
  signal \b2[3].merge_i_n_6\ : STD_LOGIC;
  signal \b2[3].merge_i_n_60\ : STD_LOGIC;
  signal \b2[3].merge_i_n_61\ : STD_LOGIC;
  signal \b2[3].merge_i_n_62\ : STD_LOGIC;
  signal \b2[3].merge_i_n_63\ : STD_LOGIC;
  signal \b2[3].merge_i_n_64\ : STD_LOGIC;
  signal \b2[3].merge_i_n_7\ : STD_LOGIC;
  signal \b2[3].merge_i_n_8\ : STD_LOGIC;
  signal \b2[3].merge_i_n_9\ : STD_LOGIC;
  signal \b2[4].merge_i_n_10\ : STD_LOGIC;
  signal \b2[4].merge_i_n_11\ : STD_LOGIC;
  signal \b2[4].merge_i_n_12\ : STD_LOGIC;
  signal \b2[4].merge_i_n_13\ : STD_LOGIC;
  signal \b2[4].merge_i_n_14\ : STD_LOGIC;
  signal \b2[4].merge_i_n_15\ : STD_LOGIC;
  signal \b2[4].merge_i_n_16\ : STD_LOGIC;
  signal \b2[4].merge_i_n_17\ : STD_LOGIC;
  signal \b2[4].merge_i_n_18\ : STD_LOGIC;
  signal \b2[4].merge_i_n_19\ : STD_LOGIC;
  signal \b2[4].merge_i_n_20\ : STD_LOGIC;
  signal \b2[4].merge_i_n_21\ : STD_LOGIC;
  signal \b2[4].merge_i_n_22\ : STD_LOGIC;
  signal \b2[4].merge_i_n_23\ : STD_LOGIC;
  signal \b2[4].merge_i_n_24\ : STD_LOGIC;
  signal \b2[4].merge_i_n_25\ : STD_LOGIC;
  signal \b2[4].merge_i_n_26\ : STD_LOGIC;
  signal \b2[4].merge_i_n_27\ : STD_LOGIC;
  signal \b2[4].merge_i_n_28\ : STD_LOGIC;
  signal \b2[4].merge_i_n_29\ : STD_LOGIC;
  signal \b2[4].merge_i_n_3\ : STD_LOGIC;
  signal \b2[4].merge_i_n_30\ : STD_LOGIC;
  signal \b2[4].merge_i_n_31\ : STD_LOGIC;
  signal \b2[4].merge_i_n_32\ : STD_LOGIC;
  signal \b2[4].merge_i_n_33\ : STD_LOGIC;
  signal \b2[4].merge_i_n_34\ : STD_LOGIC;
  signal \b2[4].merge_i_n_35\ : STD_LOGIC;
  signal \b2[4].merge_i_n_36\ : STD_LOGIC;
  signal \b2[4].merge_i_n_37\ : STD_LOGIC;
  signal \b2[4].merge_i_n_38\ : STD_LOGIC;
  signal \b2[4].merge_i_n_39\ : STD_LOGIC;
  signal \b2[4].merge_i_n_4\ : STD_LOGIC;
  signal \b2[4].merge_i_n_40\ : STD_LOGIC;
  signal \b2[4].merge_i_n_41\ : STD_LOGIC;
  signal \b2[4].merge_i_n_42\ : STD_LOGIC;
  signal \b2[4].merge_i_n_43\ : STD_LOGIC;
  signal \b2[4].merge_i_n_44\ : STD_LOGIC;
  signal \b2[4].merge_i_n_45\ : STD_LOGIC;
  signal \b2[4].merge_i_n_46\ : STD_LOGIC;
  signal \b2[4].merge_i_n_47\ : STD_LOGIC;
  signal \b2[4].merge_i_n_48\ : STD_LOGIC;
  signal \b2[4].merge_i_n_49\ : STD_LOGIC;
  signal \b2[4].merge_i_n_5\ : STD_LOGIC;
  signal \b2[4].merge_i_n_50\ : STD_LOGIC;
  signal \b2[4].merge_i_n_51\ : STD_LOGIC;
  signal \b2[4].merge_i_n_52\ : STD_LOGIC;
  signal \b2[4].merge_i_n_53\ : STD_LOGIC;
  signal \b2[4].merge_i_n_54\ : STD_LOGIC;
  signal \b2[4].merge_i_n_55\ : STD_LOGIC;
  signal \b2[4].merge_i_n_56\ : STD_LOGIC;
  signal \b2[4].merge_i_n_57\ : STD_LOGIC;
  signal \b2[4].merge_i_n_58\ : STD_LOGIC;
  signal \b2[4].merge_i_n_59\ : STD_LOGIC;
  signal \b2[4].merge_i_n_6\ : STD_LOGIC;
  signal \b2[4].merge_i_n_60\ : STD_LOGIC;
  signal \b2[4].merge_i_n_61\ : STD_LOGIC;
  signal \b2[4].merge_i_n_62\ : STD_LOGIC;
  signal \b2[4].merge_i_n_63\ : STD_LOGIC;
  signal \b2[4].merge_i_n_64\ : STD_LOGIC;
  signal \b2[4].merge_i_n_65\ : STD_LOGIC;
  signal \b2[4].merge_i_n_66\ : STD_LOGIC;
  signal \b2[4].merge_i_n_67\ : STD_LOGIC;
  signal \b2[4].merge_i_n_7\ : STD_LOGIC;
  signal \b2[4].merge_i_n_8\ : STD_LOGIC;
  signal \b2[4].merge_i_n_9\ : STD_LOGIC;
  signal \b2[5].merge_i_n_1\ : STD_LOGIC;
  signal \b2[5].merge_i_n_10\ : STD_LOGIC;
  signal \b2[5].merge_i_n_11\ : STD_LOGIC;
  signal \b2[5].merge_i_n_12\ : STD_LOGIC;
  signal \b2[5].merge_i_n_13\ : STD_LOGIC;
  signal \b2[5].merge_i_n_14\ : STD_LOGIC;
  signal \b2[5].merge_i_n_15\ : STD_LOGIC;
  signal \b2[5].merge_i_n_16\ : STD_LOGIC;
  signal \b2[5].merge_i_n_17\ : STD_LOGIC;
  signal \b2[5].merge_i_n_18\ : STD_LOGIC;
  signal \b2[5].merge_i_n_19\ : STD_LOGIC;
  signal \b2[5].merge_i_n_2\ : STD_LOGIC;
  signal \b2[5].merge_i_n_20\ : STD_LOGIC;
  signal \b2[5].merge_i_n_21\ : STD_LOGIC;
  signal \b2[5].merge_i_n_22\ : STD_LOGIC;
  signal \b2[5].merge_i_n_23\ : STD_LOGIC;
  signal \b2[5].merge_i_n_24\ : STD_LOGIC;
  signal \b2[5].merge_i_n_25\ : STD_LOGIC;
  signal \b2[5].merge_i_n_26\ : STD_LOGIC;
  signal \b2[5].merge_i_n_27\ : STD_LOGIC;
  signal \b2[5].merge_i_n_28\ : STD_LOGIC;
  signal \b2[5].merge_i_n_29\ : STD_LOGIC;
  signal \b2[5].merge_i_n_3\ : STD_LOGIC;
  signal \b2[5].merge_i_n_30\ : STD_LOGIC;
  signal \b2[5].merge_i_n_31\ : STD_LOGIC;
  signal \b2[5].merge_i_n_32\ : STD_LOGIC;
  signal \b2[5].merge_i_n_33\ : STD_LOGIC;
  signal \b2[5].merge_i_n_34\ : STD_LOGIC;
  signal \b2[5].merge_i_n_35\ : STD_LOGIC;
  signal \b2[5].merge_i_n_36\ : STD_LOGIC;
  signal \b2[5].merge_i_n_37\ : STD_LOGIC;
  signal \b2[5].merge_i_n_38\ : STD_LOGIC;
  signal \b2[5].merge_i_n_39\ : STD_LOGIC;
  signal \b2[5].merge_i_n_4\ : STD_LOGIC;
  signal \b2[5].merge_i_n_40\ : STD_LOGIC;
  signal \b2[5].merge_i_n_41\ : STD_LOGIC;
  signal \b2[5].merge_i_n_42\ : STD_LOGIC;
  signal \b2[5].merge_i_n_43\ : STD_LOGIC;
  signal \b2[5].merge_i_n_44\ : STD_LOGIC;
  signal \b2[5].merge_i_n_45\ : STD_LOGIC;
  signal \b2[5].merge_i_n_46\ : STD_LOGIC;
  signal \b2[5].merge_i_n_47\ : STD_LOGIC;
  signal \b2[5].merge_i_n_48\ : STD_LOGIC;
  signal \b2[5].merge_i_n_49\ : STD_LOGIC;
  signal \b2[5].merge_i_n_5\ : STD_LOGIC;
  signal \b2[5].merge_i_n_50\ : STD_LOGIC;
  signal \b2[5].merge_i_n_51\ : STD_LOGIC;
  signal \b2[5].merge_i_n_52\ : STD_LOGIC;
  signal \b2[5].merge_i_n_53\ : STD_LOGIC;
  signal \b2[5].merge_i_n_54\ : STD_LOGIC;
  signal \b2[5].merge_i_n_55\ : STD_LOGIC;
  signal \b2[5].merge_i_n_56\ : STD_LOGIC;
  signal \b2[5].merge_i_n_57\ : STD_LOGIC;
  signal \b2[5].merge_i_n_58\ : STD_LOGIC;
  signal \b2[5].merge_i_n_59\ : STD_LOGIC;
  signal \b2[5].merge_i_n_6\ : STD_LOGIC;
  signal \b2[5].merge_i_n_60\ : STD_LOGIC;
  signal \b2[5].merge_i_n_61\ : STD_LOGIC;
  signal \b2[5].merge_i_n_62\ : STD_LOGIC;
  signal \b2[5].merge_i_n_63\ : STD_LOGIC;
  signal \b2[5].merge_i_n_64\ : STD_LOGIC;
  signal \b2[5].merge_i_n_7\ : STD_LOGIC;
  signal \b2[5].merge_i_n_8\ : STD_LOGIC;
  signal \b2[5].merge_i_n_9\ : STD_LOGIC;
  signal data_i : STD_LOGIC;
  signal data_i_3 : STD_LOGIC;
  signal data_i_5 : STD_LOGIC;
  signal \^have_data0\ : STD_LOGIC;
  signal have_data02_out_4 : STD_LOGIC;
  signal have_data02_out_6 : STD_LOGIC;
  signal \^have_data0_0\ : STD_LOGIC;
  signal \^have_data0_1\ : STD_LOGIC;
  signal have_data0_2 : STD_LOGIC;
  signal \^have_data_reg\ : STD_LOGIC;
  signal valid_1 : STD_LOGIC;
  signal valid_2 : STD_LOGIC;
  signal valid_3 : STD_LOGIC;
  signal valid_4 : STD_LOGIC;
  signal valid_5 : STD_LOGIC;
begin
  have_data0 <= \^have_data0\;
  have_data0_0 <= \^have_data0_0\;
  have_data0_1 <= \^have_data0_1\;
  have_data_reg <= \^have_data_reg\;
\b2[0].merge_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1
     port map (
      D(63) => \b2[1].merge_i_n_1\,
      D(62) => \b2[1].merge_i_n_2\,
      D(61) => \b2[1].merge_i_n_3\,
      D(60) => \b2[1].merge_i_n_4\,
      D(59) => \b2[1].merge_i_n_5\,
      D(58) => \b2[1].merge_i_n_6\,
      D(57) => \b2[1].merge_i_n_7\,
      D(56) => \b2[1].merge_i_n_8\,
      D(55) => \b2[1].merge_i_n_9\,
      D(54) => \b2[1].merge_i_n_10\,
      D(53) => \b2[1].merge_i_n_11\,
      D(52) => \b2[1].merge_i_n_12\,
      D(51) => \b2[1].merge_i_n_13\,
      D(50) => \b2[1].merge_i_n_14\,
      D(49) => \b2[1].merge_i_n_15\,
      D(48) => \b2[1].merge_i_n_16\,
      D(47) => \b2[1].merge_i_n_17\,
      D(46) => \b2[1].merge_i_n_18\,
      D(45) => \b2[1].merge_i_n_19\,
      D(44) => \b2[1].merge_i_n_20\,
      D(43) => \b2[1].merge_i_n_21\,
      D(42) => \b2[1].merge_i_n_22\,
      D(41) => \b2[1].merge_i_n_23\,
      D(40) => \b2[1].merge_i_n_24\,
      D(39) => \b2[1].merge_i_n_25\,
      D(38) => \b2[1].merge_i_n_26\,
      D(37) => \b2[1].merge_i_n_27\,
      D(36) => \b2[1].merge_i_n_28\,
      D(35) => \b2[1].merge_i_n_29\,
      D(34) => \b2[1].merge_i_n_30\,
      D(33) => \b2[1].merge_i_n_31\,
      D(32) => \b2[1].merge_i_n_32\,
      D(31) => \b2[1].merge_i_n_33\,
      D(30) => \b2[1].merge_i_n_34\,
      D(29) => \b2[1].merge_i_n_35\,
      D(28) => \b2[1].merge_i_n_36\,
      D(27) => \b2[1].merge_i_n_37\,
      D(26) => \b2[1].merge_i_n_38\,
      D(25) => \b2[1].merge_i_n_39\,
      D(24) => \b2[1].merge_i_n_40\,
      D(23) => \b2[1].merge_i_n_41\,
      D(22) => \b2[1].merge_i_n_42\,
      D(21) => \b2[1].merge_i_n_43\,
      D(20) => \b2[1].merge_i_n_44\,
      D(19) => \b2[1].merge_i_n_45\,
      D(18) => \b2[1].merge_i_n_46\,
      D(17) => \b2[1].merge_i_n_47\,
      D(16) => \b2[1].merge_i_n_48\,
      D(15) => \b2[1].merge_i_n_49\,
      D(14) => \b2[1].merge_i_n_50\,
      D(13) => \b2[1].merge_i_n_51\,
      D(12) => \b2[1].merge_i_n_52\,
      D(11) => \b2[1].merge_i_n_53\,
      D(10) => \b2[1].merge_i_n_54\,
      D(9) => \b2[1].merge_i_n_55\,
      D(8) => \b2[1].merge_i_n_56\,
      D(7) => \b2[1].merge_i_n_57\,
      D(6) => \b2[1].merge_i_n_58\,
      D(5) => \b2[1].merge_i_n_59\,
      D(4) => \b2[1].merge_i_n_60\,
      D(3) => \b2[1].merge_i_n_61\,
      D(2) => \b2[1].merge_i_n_62\,
      D(1) => \b2[1].merge_i_n_63\,
      D(0) => \b2[1].merge_i_n_64\,
      E(0) => data_i,
      \_trace_valid\(1 downto 0) => \_trace_valid\(5 downto 4),
      data_i => data_i_3,
      have_data0 => have_data0_2,
      have_data02_out => have_data02_out_4,
      have_data02_out_0 => have_data02_out_6,
      have_data0_0 => \^have_data0_0\,
      have_data0_1 => \^have_data0_1\,
      have_data_reg_0 => \^have_data0\,
      have_data_reg_1 => \^have_data_reg\,
      have_data_reg_2 => wrote0_reg_2,
      out_data(63 downto 0) => out_data(63 downto 0),
      out_ready => out_ready,
      trace_clk => trace_clk,
      valid_1 => valid_1,
      valid_2 => valid_2,
      valid_3 => valid_3,
      valid_4 => valid_4,
      valid_5 => valid_5,
      wrote0_reg_0 => \b2[0].merge_i_n_0\,
      wrote0_reg_1 => \b2[1].merge_i_n_0\
    );
\b2[1].merge_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_9
     port map (
      D(63) => \b2[1].merge_i_n_1\,
      D(62) => \b2[1].merge_i_n_2\,
      D(61) => \b2[1].merge_i_n_3\,
      D(60) => \b2[1].merge_i_n_4\,
      D(59) => \b2[1].merge_i_n_5\,
      D(58) => \b2[1].merge_i_n_6\,
      D(57) => \b2[1].merge_i_n_7\,
      D(56) => \b2[1].merge_i_n_8\,
      D(55) => \b2[1].merge_i_n_9\,
      D(54) => \b2[1].merge_i_n_10\,
      D(53) => \b2[1].merge_i_n_11\,
      D(52) => \b2[1].merge_i_n_12\,
      D(51) => \b2[1].merge_i_n_13\,
      D(50) => \b2[1].merge_i_n_14\,
      D(49) => \b2[1].merge_i_n_15\,
      D(48) => \b2[1].merge_i_n_16\,
      D(47) => \b2[1].merge_i_n_17\,
      D(46) => \b2[1].merge_i_n_18\,
      D(45) => \b2[1].merge_i_n_19\,
      D(44) => \b2[1].merge_i_n_20\,
      D(43) => \b2[1].merge_i_n_21\,
      D(42) => \b2[1].merge_i_n_22\,
      D(41) => \b2[1].merge_i_n_23\,
      D(40) => \b2[1].merge_i_n_24\,
      D(39) => \b2[1].merge_i_n_25\,
      D(38) => \b2[1].merge_i_n_26\,
      D(37) => \b2[1].merge_i_n_27\,
      D(36) => \b2[1].merge_i_n_28\,
      D(35) => \b2[1].merge_i_n_29\,
      D(34) => \b2[1].merge_i_n_30\,
      D(33) => \b2[1].merge_i_n_31\,
      D(32) => \b2[1].merge_i_n_32\,
      D(31) => \b2[1].merge_i_n_33\,
      D(30) => \b2[1].merge_i_n_34\,
      D(29) => \b2[1].merge_i_n_35\,
      D(28) => \b2[1].merge_i_n_36\,
      D(27) => \b2[1].merge_i_n_37\,
      D(26) => \b2[1].merge_i_n_38\,
      D(25) => \b2[1].merge_i_n_39\,
      D(24) => \b2[1].merge_i_n_40\,
      D(23) => \b2[1].merge_i_n_41\,
      D(22) => \b2[1].merge_i_n_42\,
      D(21) => \b2[1].merge_i_n_43\,
      D(20) => \b2[1].merge_i_n_44\,
      D(19) => \b2[1].merge_i_n_45\,
      D(18) => \b2[1].merge_i_n_46\,
      D(17) => \b2[1].merge_i_n_47\,
      D(16) => \b2[1].merge_i_n_48\,
      D(15) => \b2[1].merge_i_n_49\,
      D(14) => \b2[1].merge_i_n_50\,
      D(13) => \b2[1].merge_i_n_51\,
      D(12) => \b2[1].merge_i_n_52\,
      D(11) => \b2[1].merge_i_n_53\,
      D(10) => \b2[1].merge_i_n_54\,
      D(9) => \b2[1].merge_i_n_55\,
      D(8) => \b2[1].merge_i_n_56\,
      D(7) => \b2[1].merge_i_n_57\,
      D(6) => \b2[1].merge_i_n_58\,
      D(5) => \b2[1].merge_i_n_59\,
      D(4) => \b2[1].merge_i_n_60\,
      D(3) => \b2[1].merge_i_n_61\,
      D(2) => \b2[1].merge_i_n_62\,
      D(1) => \b2[1].merge_i_n_63\,
      D(0) => \b2[1].merge_i_n_64\,
      E(0) => data_i_5,
      \data_i_reg[0]_0\ => \b2[2].merge_i_n_65\,
      \data_i_reg[10]_0\ => \b2[2].merge_i_n_55\,
      \data_i_reg[11]_0\ => \b2[2].merge_i_n_54\,
      \data_i_reg[12]_0\ => \b2[2].merge_i_n_53\,
      \data_i_reg[13]_0\ => \b2[2].merge_i_n_52\,
      \data_i_reg[14]_0\ => \b2[2].merge_i_n_51\,
      \data_i_reg[15]_0\ => \b2[2].merge_i_n_50\,
      \data_i_reg[16]_0\ => \b2[2].merge_i_n_49\,
      \data_i_reg[17]_0\ => \b2[2].merge_i_n_48\,
      \data_i_reg[18]_0\ => \b2[2].merge_i_n_47\,
      \data_i_reg[19]_0\ => \b2[2].merge_i_n_46\,
      \data_i_reg[1]_0\ => \b2[2].merge_i_n_64\,
      \data_i_reg[20]_0\ => \b2[2].merge_i_n_45\,
      \data_i_reg[21]_0\ => \b2[2].merge_i_n_44\,
      \data_i_reg[22]_0\ => \b2[2].merge_i_n_43\,
      \data_i_reg[23]_0\ => \b2[2].merge_i_n_42\,
      \data_i_reg[24]_0\ => \b2[2].merge_i_n_41\,
      \data_i_reg[25]_0\ => \b2[2].merge_i_n_40\,
      \data_i_reg[26]_0\ => \b2[2].merge_i_n_39\,
      \data_i_reg[27]_0\ => \b2[2].merge_i_n_38\,
      \data_i_reg[28]_0\ => \b2[2].merge_i_n_37\,
      \data_i_reg[29]_0\ => \b2[2].merge_i_n_36\,
      \data_i_reg[2]_0\ => \b2[2].merge_i_n_63\,
      \data_i_reg[30]_0\ => \b2[2].merge_i_n_35\,
      \data_i_reg[31]_0\ => \b2[2].merge_i_n_34\,
      \data_i_reg[32]_0\ => \b2[2].merge_i_n_33\,
      \data_i_reg[33]_0\ => \b2[2].merge_i_n_32\,
      \data_i_reg[34]_0\ => \b2[2].merge_i_n_31\,
      \data_i_reg[35]_0\ => \b2[2].merge_i_n_30\,
      \data_i_reg[36]_0\ => \b2[2].merge_i_n_29\,
      \data_i_reg[37]_0\ => \b2[2].merge_i_n_28\,
      \data_i_reg[38]_0\ => \b2[2].merge_i_n_27\,
      \data_i_reg[39]_0\ => \b2[2].merge_i_n_26\,
      \data_i_reg[3]_0\ => \b2[2].merge_i_n_62\,
      \data_i_reg[40]_0\ => \b2[2].merge_i_n_25\,
      \data_i_reg[41]_0\ => \b2[2].merge_i_n_24\,
      \data_i_reg[42]_0\ => \b2[2].merge_i_n_23\,
      \data_i_reg[43]_0\ => \b2[2].merge_i_n_22\,
      \data_i_reg[44]_0\ => \b2[2].merge_i_n_21\,
      \data_i_reg[45]_0\ => \b2[2].merge_i_n_20\,
      \data_i_reg[46]_0\ => \b2[2].merge_i_n_19\,
      \data_i_reg[47]_0\ => \b2[2].merge_i_n_18\,
      \data_i_reg[48]_0\ => \b2[2].merge_i_n_17\,
      \data_i_reg[49]_0\ => \b2[2].merge_i_n_16\,
      \data_i_reg[4]_0\ => \b2[2].merge_i_n_61\,
      \data_i_reg[50]_0\ => \b2[2].merge_i_n_15\,
      \data_i_reg[51]_0\ => \b2[2].merge_i_n_14\,
      \data_i_reg[52]_0\ => \b2[2].merge_i_n_13\,
      \data_i_reg[53]_0\ => \b2[2].merge_i_n_12\,
      \data_i_reg[54]_0\ => \b2[2].merge_i_n_11\,
      \data_i_reg[55]_0\ => \b2[2].merge_i_n_10\,
      \data_i_reg[56]_0\ => \b2[2].merge_i_n_9\,
      \data_i_reg[57]_0\ => \b2[2].merge_i_n_8\,
      \data_i_reg[58]_0\ => \b2[2].merge_i_n_7\,
      \data_i_reg[59]_0\ => \b2[2].merge_i_n_6\,
      \data_i_reg[5]_0\ => \b2[2].merge_i_n_60\,
      \data_i_reg[60]_0\ => \b2[2].merge_i_n_5\,
      \data_i_reg[61]_0\ => \b2[2].merge_i_n_4\,
      \data_i_reg[62]_0\ => \b2[2].merge_i_n_3\,
      \data_i_reg[63]_0\ => \b2[0].merge_i_n_0\,
      \data_i_reg[63]_1\ => \b2[2].merge_i_n_2\,
      \data_i_reg[63]_2\(63) => \b2[3].merge_i_n_1\,
      \data_i_reg[63]_2\(62) => \b2[3].merge_i_n_2\,
      \data_i_reg[63]_2\(61) => \b2[3].merge_i_n_3\,
      \data_i_reg[63]_2\(60) => \b2[3].merge_i_n_4\,
      \data_i_reg[63]_2\(59) => \b2[3].merge_i_n_5\,
      \data_i_reg[63]_2\(58) => \b2[3].merge_i_n_6\,
      \data_i_reg[63]_2\(57) => \b2[3].merge_i_n_7\,
      \data_i_reg[63]_2\(56) => \b2[3].merge_i_n_8\,
      \data_i_reg[63]_2\(55) => \b2[3].merge_i_n_9\,
      \data_i_reg[63]_2\(54) => \b2[3].merge_i_n_10\,
      \data_i_reg[63]_2\(53) => \b2[3].merge_i_n_11\,
      \data_i_reg[63]_2\(52) => \b2[3].merge_i_n_12\,
      \data_i_reg[63]_2\(51) => \b2[3].merge_i_n_13\,
      \data_i_reg[63]_2\(50) => \b2[3].merge_i_n_14\,
      \data_i_reg[63]_2\(49) => \b2[3].merge_i_n_15\,
      \data_i_reg[63]_2\(48) => \b2[3].merge_i_n_16\,
      \data_i_reg[63]_2\(47) => \b2[3].merge_i_n_17\,
      \data_i_reg[63]_2\(46) => \b2[3].merge_i_n_18\,
      \data_i_reg[63]_2\(45) => \b2[3].merge_i_n_19\,
      \data_i_reg[63]_2\(44) => \b2[3].merge_i_n_20\,
      \data_i_reg[63]_2\(43) => \b2[3].merge_i_n_21\,
      \data_i_reg[63]_2\(42) => \b2[3].merge_i_n_22\,
      \data_i_reg[63]_2\(41) => \b2[3].merge_i_n_23\,
      \data_i_reg[63]_2\(40) => \b2[3].merge_i_n_24\,
      \data_i_reg[63]_2\(39) => \b2[3].merge_i_n_25\,
      \data_i_reg[63]_2\(38) => \b2[3].merge_i_n_26\,
      \data_i_reg[63]_2\(37) => \b2[3].merge_i_n_27\,
      \data_i_reg[63]_2\(36) => \b2[3].merge_i_n_28\,
      \data_i_reg[63]_2\(35) => \b2[3].merge_i_n_29\,
      \data_i_reg[63]_2\(34) => \b2[3].merge_i_n_30\,
      \data_i_reg[63]_2\(33) => \b2[3].merge_i_n_31\,
      \data_i_reg[63]_2\(32) => \b2[3].merge_i_n_32\,
      \data_i_reg[63]_2\(31) => \b2[3].merge_i_n_33\,
      \data_i_reg[63]_2\(30) => \b2[3].merge_i_n_34\,
      \data_i_reg[63]_2\(29) => \b2[3].merge_i_n_35\,
      \data_i_reg[63]_2\(28) => \b2[3].merge_i_n_36\,
      \data_i_reg[63]_2\(27) => \b2[3].merge_i_n_37\,
      \data_i_reg[63]_2\(26) => \b2[3].merge_i_n_38\,
      \data_i_reg[63]_2\(25) => \b2[3].merge_i_n_39\,
      \data_i_reg[63]_2\(24) => \b2[3].merge_i_n_40\,
      \data_i_reg[63]_2\(23) => \b2[3].merge_i_n_41\,
      \data_i_reg[63]_2\(22) => \b2[3].merge_i_n_42\,
      \data_i_reg[63]_2\(21) => \b2[3].merge_i_n_43\,
      \data_i_reg[63]_2\(20) => \b2[3].merge_i_n_44\,
      \data_i_reg[63]_2\(19) => \b2[3].merge_i_n_45\,
      \data_i_reg[63]_2\(18) => \b2[3].merge_i_n_46\,
      \data_i_reg[63]_2\(17) => \b2[3].merge_i_n_47\,
      \data_i_reg[63]_2\(16) => \b2[3].merge_i_n_48\,
      \data_i_reg[63]_2\(15) => \b2[3].merge_i_n_49\,
      \data_i_reg[63]_2\(14) => \b2[3].merge_i_n_50\,
      \data_i_reg[63]_2\(13) => \b2[3].merge_i_n_51\,
      \data_i_reg[63]_2\(12) => \b2[3].merge_i_n_52\,
      \data_i_reg[63]_2\(11) => \b2[3].merge_i_n_53\,
      \data_i_reg[63]_2\(10) => \b2[3].merge_i_n_54\,
      \data_i_reg[63]_2\(9) => \b2[3].merge_i_n_55\,
      \data_i_reg[63]_2\(8) => \b2[3].merge_i_n_56\,
      \data_i_reg[63]_2\(7) => \b2[3].merge_i_n_57\,
      \data_i_reg[63]_2\(6) => \b2[3].merge_i_n_58\,
      \data_i_reg[63]_2\(5) => \b2[3].merge_i_n_59\,
      \data_i_reg[63]_2\(4) => \b2[3].merge_i_n_60\,
      \data_i_reg[63]_2\(3) => \b2[3].merge_i_n_61\,
      \data_i_reg[63]_2\(2) => \b2[3].merge_i_n_62\,
      \data_i_reg[63]_2\(1) => \b2[3].merge_i_n_63\,
      \data_i_reg[63]_2\(0) => \b2[3].merge_i_n_64\,
      \data_i_reg[6]_0\ => \b2[2].merge_i_n_59\,
      \data_i_reg[7]_0\ => \b2[2].merge_i_n_58\,
      \data_i_reg[8]_0\ => \b2[2].merge_i_n_57\,
      \data_i_reg[9]_0\ => \b2[2].merge_i_n_56\,
      have_data02_out => have_data02_out_4,
      have_data02_out_0 => have_data02_out_6,
      have_data_reg_0 => \^have_data_reg\,
      out_ready => out_ready,
      trace_clk => trace_clk,
      valid_1 => valid_1,
      valid_2 => valid_2,
      valid_4 => valid_4,
      wrote0_reg_0 => \b2[1].merge_i_n_0\,
      wrote0_reg_1 => wrote0_reg_2,
      wrote0_reg_2 => \b2[4].merge_i_n_3\
    );
\b2[2].merge_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_10
     port map (
      Q(63) => \b2[5].merge_i_n_1\,
      Q(62) => \b2[5].merge_i_n_2\,
      Q(61) => \b2[5].merge_i_n_3\,
      Q(60) => \b2[5].merge_i_n_4\,
      Q(59) => \b2[5].merge_i_n_5\,
      Q(58) => \b2[5].merge_i_n_6\,
      Q(57) => \b2[5].merge_i_n_7\,
      Q(56) => \b2[5].merge_i_n_8\,
      Q(55) => \b2[5].merge_i_n_9\,
      Q(54) => \b2[5].merge_i_n_10\,
      Q(53) => \b2[5].merge_i_n_11\,
      Q(52) => \b2[5].merge_i_n_12\,
      Q(51) => \b2[5].merge_i_n_13\,
      Q(50) => \b2[5].merge_i_n_14\,
      Q(49) => \b2[5].merge_i_n_15\,
      Q(48) => \b2[5].merge_i_n_16\,
      Q(47) => \b2[5].merge_i_n_17\,
      Q(46) => \b2[5].merge_i_n_18\,
      Q(45) => \b2[5].merge_i_n_19\,
      Q(44) => \b2[5].merge_i_n_20\,
      Q(43) => \b2[5].merge_i_n_21\,
      Q(42) => \b2[5].merge_i_n_22\,
      Q(41) => \b2[5].merge_i_n_23\,
      Q(40) => \b2[5].merge_i_n_24\,
      Q(39) => \b2[5].merge_i_n_25\,
      Q(38) => \b2[5].merge_i_n_26\,
      Q(37) => \b2[5].merge_i_n_27\,
      Q(36) => \b2[5].merge_i_n_28\,
      Q(35) => \b2[5].merge_i_n_29\,
      Q(34) => \b2[5].merge_i_n_30\,
      Q(33) => \b2[5].merge_i_n_31\,
      Q(32) => \b2[5].merge_i_n_32\,
      Q(31) => \b2[5].merge_i_n_33\,
      Q(30) => \b2[5].merge_i_n_34\,
      Q(29) => \b2[5].merge_i_n_35\,
      Q(28) => \b2[5].merge_i_n_36\,
      Q(27) => \b2[5].merge_i_n_37\,
      Q(26) => \b2[5].merge_i_n_38\,
      Q(25) => \b2[5].merge_i_n_39\,
      Q(24) => \b2[5].merge_i_n_40\,
      Q(23) => \b2[5].merge_i_n_41\,
      Q(22) => \b2[5].merge_i_n_42\,
      Q(21) => \b2[5].merge_i_n_43\,
      Q(20) => \b2[5].merge_i_n_44\,
      Q(19) => \b2[5].merge_i_n_45\,
      Q(18) => \b2[5].merge_i_n_46\,
      Q(17) => \b2[5].merge_i_n_47\,
      Q(16) => \b2[5].merge_i_n_48\,
      Q(15) => \b2[5].merge_i_n_49\,
      Q(14) => \b2[5].merge_i_n_50\,
      Q(13) => \b2[5].merge_i_n_51\,
      Q(12) => \b2[5].merge_i_n_52\,
      Q(11) => \b2[5].merge_i_n_53\,
      Q(10) => \b2[5].merge_i_n_54\,
      Q(9) => \b2[5].merge_i_n_55\,
      Q(8) => \b2[5].merge_i_n_56\,
      Q(7) => \b2[5].merge_i_n_57\,
      Q(6) => \b2[5].merge_i_n_58\,
      Q(5) => \b2[5].merge_i_n_59\,
      Q(4) => \b2[5].merge_i_n_60\,
      Q(3) => \b2[5].merge_i_n_61\,
      Q(2) => \b2[5].merge_i_n_62\,
      Q(1) => \b2[5].merge_i_n_63\,
      Q(0) => \b2[5].merge_i_n_64\,
      data_i => data_i_3,
      \data_i_reg[0]_0\ => \b2[2].merge_i_n_65\,
      \data_i_reg[10]_0\ => \b2[2].merge_i_n_55\,
      \data_i_reg[11]_0\ => \b2[2].merge_i_n_54\,
      \data_i_reg[12]_0\ => \b2[2].merge_i_n_53\,
      \data_i_reg[13]_0\ => \b2[2].merge_i_n_52\,
      \data_i_reg[14]_0\ => \b2[2].merge_i_n_51\,
      \data_i_reg[15]_0\ => \b2[2].merge_i_n_50\,
      \data_i_reg[16]_0\ => \b2[2].merge_i_n_49\,
      \data_i_reg[17]_0\ => \b2[2].merge_i_n_48\,
      \data_i_reg[18]_0\ => \b2[2].merge_i_n_47\,
      \data_i_reg[19]_0\ => \b2[2].merge_i_n_46\,
      \data_i_reg[1]_0\ => \b2[2].merge_i_n_64\,
      \data_i_reg[20]_0\ => \b2[2].merge_i_n_45\,
      \data_i_reg[21]_0\ => \b2[2].merge_i_n_44\,
      \data_i_reg[22]_0\ => \b2[2].merge_i_n_43\,
      \data_i_reg[23]_0\ => \b2[2].merge_i_n_42\,
      \data_i_reg[24]_0\ => \b2[2].merge_i_n_41\,
      \data_i_reg[25]_0\ => \b2[2].merge_i_n_40\,
      \data_i_reg[26]_0\ => \b2[2].merge_i_n_39\,
      \data_i_reg[27]_0\ => \b2[2].merge_i_n_38\,
      \data_i_reg[28]_0\ => \b2[2].merge_i_n_37\,
      \data_i_reg[29]_0\ => \b2[2].merge_i_n_36\,
      \data_i_reg[2]_0\ => \b2[2].merge_i_n_63\,
      \data_i_reg[30]_0\ => \b2[2].merge_i_n_35\,
      \data_i_reg[31]_0\ => \b2[2].merge_i_n_34\,
      \data_i_reg[32]_0\ => \b2[2].merge_i_n_33\,
      \data_i_reg[33]_0\ => \b2[2].merge_i_n_32\,
      \data_i_reg[34]_0\ => \b2[2].merge_i_n_31\,
      \data_i_reg[35]_0\ => \b2[2].merge_i_n_30\,
      \data_i_reg[36]_0\ => \b2[2].merge_i_n_29\,
      \data_i_reg[37]_0\ => \b2[2].merge_i_n_28\,
      \data_i_reg[38]_0\ => \b2[2].merge_i_n_27\,
      \data_i_reg[39]_0\ => \b2[2].merge_i_n_26\,
      \data_i_reg[3]_0\ => \b2[2].merge_i_n_62\,
      \data_i_reg[40]_0\ => \b2[2].merge_i_n_25\,
      \data_i_reg[41]_0\ => \b2[2].merge_i_n_24\,
      \data_i_reg[42]_0\ => \b2[2].merge_i_n_23\,
      \data_i_reg[43]_0\ => \b2[2].merge_i_n_22\,
      \data_i_reg[44]_0\ => \b2[2].merge_i_n_21\,
      \data_i_reg[45]_0\ => \b2[2].merge_i_n_20\,
      \data_i_reg[46]_0\ => \b2[2].merge_i_n_19\,
      \data_i_reg[47]_0\ => \b2[2].merge_i_n_18\,
      \data_i_reg[48]_0\ => \b2[2].merge_i_n_17\,
      \data_i_reg[49]_0\ => \b2[2].merge_i_n_16\,
      \data_i_reg[4]_0\ => \b2[2].merge_i_n_61\,
      \data_i_reg[50]_0\ => \b2[2].merge_i_n_15\,
      \data_i_reg[51]_0\ => \b2[2].merge_i_n_14\,
      \data_i_reg[52]_0\ => \b2[2].merge_i_n_13\,
      \data_i_reg[53]_0\ => \b2[2].merge_i_n_12\,
      \data_i_reg[54]_0\ => \b2[2].merge_i_n_11\,
      \data_i_reg[55]_0\ => \b2[2].merge_i_n_10\,
      \data_i_reg[56]_0\ => \b2[2].merge_i_n_9\,
      \data_i_reg[57]_0\ => \b2[2].merge_i_n_8\,
      \data_i_reg[58]_0\ => \b2[2].merge_i_n_7\,
      \data_i_reg[59]_0\ => \b2[2].merge_i_n_6\,
      \data_i_reg[5]_0\ => \b2[2].merge_i_n_60\,
      \data_i_reg[60]_0\ => \b2[2].merge_i_n_5\,
      \data_i_reg[61]_0\ => \b2[2].merge_i_n_4\,
      \data_i_reg[62]_0\ => \b2[2].merge_i_n_3\,
      \data_i_reg[63]_0\ => \b2[2].merge_i_n_2\,
      \data_i_reg[6]_0\ => \b2[2].merge_i_n_59\,
      \data_i_reg[7]_0\ => \b2[2].merge_i_n_58\,
      \data_i_reg[8]_0\ => \b2[2].merge_i_n_57\,
      \data_i_reg[9]_0\ => \b2[2].merge_i_n_56\,
      have_data02_out => have_data02_out_4,
      have_data_reg_0 => \b2[0].merge_i_n_0\,
      have_data_reg_1 => \^have_data_reg\,
      have_data_reg_2 => wrote0_reg_2,
      out_ready => out_ready,
      trace_clk => trace_clk,
      valid_1 => valid_1,
      valid_2 => valid_2,
      valid_5 => valid_5
    );
\b2[3].merge_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_11
     port map (
      E(0) => data_i_5,
      Q(63) => \b2[4].merge_i_n_4\,
      Q(62) => \b2[4].merge_i_n_5\,
      Q(61) => \b2[4].merge_i_n_6\,
      Q(60) => \b2[4].merge_i_n_7\,
      Q(59) => \b2[4].merge_i_n_8\,
      Q(58) => \b2[4].merge_i_n_9\,
      Q(57) => \b2[4].merge_i_n_10\,
      Q(56) => \b2[4].merge_i_n_11\,
      Q(55) => \b2[4].merge_i_n_12\,
      Q(54) => \b2[4].merge_i_n_13\,
      Q(53) => \b2[4].merge_i_n_14\,
      Q(52) => \b2[4].merge_i_n_15\,
      Q(51) => \b2[4].merge_i_n_16\,
      Q(50) => \b2[4].merge_i_n_17\,
      Q(49) => \b2[4].merge_i_n_18\,
      Q(48) => \b2[4].merge_i_n_19\,
      Q(47) => \b2[4].merge_i_n_20\,
      Q(46) => \b2[4].merge_i_n_21\,
      Q(45) => \b2[4].merge_i_n_22\,
      Q(44) => \b2[4].merge_i_n_23\,
      Q(43) => \b2[4].merge_i_n_24\,
      Q(42) => \b2[4].merge_i_n_25\,
      Q(41) => \b2[4].merge_i_n_26\,
      Q(40) => \b2[4].merge_i_n_27\,
      Q(39) => \b2[4].merge_i_n_28\,
      Q(38) => \b2[4].merge_i_n_29\,
      Q(37) => \b2[4].merge_i_n_30\,
      Q(36) => \b2[4].merge_i_n_31\,
      Q(35) => \b2[4].merge_i_n_32\,
      Q(34) => \b2[4].merge_i_n_33\,
      Q(33) => \b2[4].merge_i_n_34\,
      Q(32) => \b2[4].merge_i_n_35\,
      Q(31) => \b2[4].merge_i_n_36\,
      Q(30) => \b2[4].merge_i_n_37\,
      Q(29) => \b2[4].merge_i_n_38\,
      Q(28) => \b2[4].merge_i_n_39\,
      Q(27) => \b2[4].merge_i_n_40\,
      Q(26) => \b2[4].merge_i_n_41\,
      Q(25) => \b2[4].merge_i_n_42\,
      Q(24) => \b2[4].merge_i_n_43\,
      Q(23) => \b2[4].merge_i_n_44\,
      Q(22) => \b2[4].merge_i_n_45\,
      Q(21) => \b2[4].merge_i_n_46\,
      Q(20) => \b2[4].merge_i_n_47\,
      Q(19) => \b2[4].merge_i_n_48\,
      Q(18) => \b2[4].merge_i_n_49\,
      Q(17) => \b2[4].merge_i_n_50\,
      Q(16) => \b2[4].merge_i_n_51\,
      Q(15) => \b2[4].merge_i_n_52\,
      Q(14) => \b2[4].merge_i_n_53\,
      Q(13) => \b2[4].merge_i_n_54\,
      Q(12) => \b2[4].merge_i_n_55\,
      Q(11) => \b2[4].merge_i_n_56\,
      Q(10) => \b2[4].merge_i_n_57\,
      Q(9) => \b2[4].merge_i_n_58\,
      Q(8) => \b2[4].merge_i_n_59\,
      Q(7) => \b2[4].merge_i_n_60\,
      Q(6) => \b2[4].merge_i_n_61\,
      Q(5) => \b2[4].merge_i_n_62\,
      Q(4) => \b2[4].merge_i_n_63\,
      Q(3) => \b2[4].merge_i_n_64\,
      Q(2) => \b2[4].merge_i_n_65\,
      Q(1) => \b2[4].merge_i_n_66\,
      Q(0) => \b2[4].merge_i_n_67\,
      \_trace_valid\(1 downto 0) => \_trace_valid\(1 downto 0),
      \data_i_reg[0]_0\(0) => \data_i_reg[0]\(0),
      \data_i_reg[63]_0\(63) => \b2[3].merge_i_n_1\,
      \data_i_reg[63]_0\(62) => \b2[3].merge_i_n_2\,
      \data_i_reg[63]_0\(61) => \b2[3].merge_i_n_3\,
      \data_i_reg[63]_0\(60) => \b2[3].merge_i_n_4\,
      \data_i_reg[63]_0\(59) => \b2[3].merge_i_n_5\,
      \data_i_reg[63]_0\(58) => \b2[3].merge_i_n_6\,
      \data_i_reg[63]_0\(57) => \b2[3].merge_i_n_7\,
      \data_i_reg[63]_0\(56) => \b2[3].merge_i_n_8\,
      \data_i_reg[63]_0\(55) => \b2[3].merge_i_n_9\,
      \data_i_reg[63]_0\(54) => \b2[3].merge_i_n_10\,
      \data_i_reg[63]_0\(53) => \b2[3].merge_i_n_11\,
      \data_i_reg[63]_0\(52) => \b2[3].merge_i_n_12\,
      \data_i_reg[63]_0\(51) => \b2[3].merge_i_n_13\,
      \data_i_reg[63]_0\(50) => \b2[3].merge_i_n_14\,
      \data_i_reg[63]_0\(49) => \b2[3].merge_i_n_15\,
      \data_i_reg[63]_0\(48) => \b2[3].merge_i_n_16\,
      \data_i_reg[63]_0\(47) => \b2[3].merge_i_n_17\,
      \data_i_reg[63]_0\(46) => \b2[3].merge_i_n_18\,
      \data_i_reg[63]_0\(45) => \b2[3].merge_i_n_19\,
      \data_i_reg[63]_0\(44) => \b2[3].merge_i_n_20\,
      \data_i_reg[63]_0\(43) => \b2[3].merge_i_n_21\,
      \data_i_reg[63]_0\(42) => \b2[3].merge_i_n_22\,
      \data_i_reg[63]_0\(41) => \b2[3].merge_i_n_23\,
      \data_i_reg[63]_0\(40) => \b2[3].merge_i_n_24\,
      \data_i_reg[63]_0\(39) => \b2[3].merge_i_n_25\,
      \data_i_reg[63]_0\(38) => \b2[3].merge_i_n_26\,
      \data_i_reg[63]_0\(37) => \b2[3].merge_i_n_27\,
      \data_i_reg[63]_0\(36) => \b2[3].merge_i_n_28\,
      \data_i_reg[63]_0\(35) => \b2[3].merge_i_n_29\,
      \data_i_reg[63]_0\(34) => \b2[3].merge_i_n_30\,
      \data_i_reg[63]_0\(33) => \b2[3].merge_i_n_31\,
      \data_i_reg[63]_0\(32) => \b2[3].merge_i_n_32\,
      \data_i_reg[63]_0\(31) => \b2[3].merge_i_n_33\,
      \data_i_reg[63]_0\(30) => \b2[3].merge_i_n_34\,
      \data_i_reg[63]_0\(29) => \b2[3].merge_i_n_35\,
      \data_i_reg[63]_0\(28) => \b2[3].merge_i_n_36\,
      \data_i_reg[63]_0\(27) => \b2[3].merge_i_n_37\,
      \data_i_reg[63]_0\(26) => \b2[3].merge_i_n_38\,
      \data_i_reg[63]_0\(25) => \b2[3].merge_i_n_39\,
      \data_i_reg[63]_0\(24) => \b2[3].merge_i_n_40\,
      \data_i_reg[63]_0\(23) => \b2[3].merge_i_n_41\,
      \data_i_reg[63]_0\(22) => \b2[3].merge_i_n_42\,
      \data_i_reg[63]_0\(21) => \b2[3].merge_i_n_43\,
      \data_i_reg[63]_0\(20) => \b2[3].merge_i_n_44\,
      \data_i_reg[63]_0\(19) => \b2[3].merge_i_n_45\,
      \data_i_reg[63]_0\(18) => \b2[3].merge_i_n_46\,
      \data_i_reg[63]_0\(17) => \b2[3].merge_i_n_47\,
      \data_i_reg[63]_0\(16) => \b2[3].merge_i_n_48\,
      \data_i_reg[63]_0\(15) => \b2[3].merge_i_n_49\,
      \data_i_reg[63]_0\(14) => \b2[3].merge_i_n_50\,
      \data_i_reg[63]_0\(13) => \b2[3].merge_i_n_51\,
      \data_i_reg[63]_0\(12) => \b2[3].merge_i_n_52\,
      \data_i_reg[63]_0\(11) => \b2[3].merge_i_n_53\,
      \data_i_reg[63]_0\(10) => \b2[3].merge_i_n_54\,
      \data_i_reg[63]_0\(9) => \b2[3].merge_i_n_55\,
      \data_i_reg[63]_0\(8) => \b2[3].merge_i_n_56\,
      \data_i_reg[63]_0\(7) => \b2[3].merge_i_n_57\,
      \data_i_reg[63]_0\(6) => \b2[3].merge_i_n_58\,
      \data_i_reg[63]_0\(5) => \b2[3].merge_i_n_59\,
      \data_i_reg[63]_0\(4) => \b2[3].merge_i_n_60\,
      \data_i_reg[63]_0\(3) => \b2[3].merge_i_n_61\,
      \data_i_reg[63]_0\(2) => \b2[3].merge_i_n_62\,
      \data_i_reg[63]_0\(1) => \b2[3].merge_i_n_63\,
      \data_i_reg[63]_0\(0) => \b2[3].merge_i_n_64\,
      \data_i_reg[63]_1\ => \b2[1].merge_i_n_0\,
      \data_i_reg[63]_2\(63 downto 0) => \data_i_reg[63]_0\(63 downto 0),
      have_data0 => have_data0_2,
      have_data0_0 => \^have_data0_0\,
      have_data_reg_0 => wrote0_reg_2,
      trace_clk => trace_clk,
      valid_3 => valid_3,
      valid_4 => valid_4,
      wrote0_reg_0 => wrote0_reg
    );
\b2[4].merge_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_12
     port map (
      E(0) => E(0),
      Q(63) => \b2[4].merge_i_n_4\,
      Q(62) => \b2[4].merge_i_n_5\,
      Q(61) => \b2[4].merge_i_n_6\,
      Q(60) => \b2[4].merge_i_n_7\,
      Q(59) => \b2[4].merge_i_n_8\,
      Q(58) => \b2[4].merge_i_n_9\,
      Q(57) => \b2[4].merge_i_n_10\,
      Q(56) => \b2[4].merge_i_n_11\,
      Q(55) => \b2[4].merge_i_n_12\,
      Q(54) => \b2[4].merge_i_n_13\,
      Q(53) => \b2[4].merge_i_n_14\,
      Q(52) => \b2[4].merge_i_n_15\,
      Q(51) => \b2[4].merge_i_n_16\,
      Q(50) => \b2[4].merge_i_n_17\,
      Q(49) => \b2[4].merge_i_n_18\,
      Q(48) => \b2[4].merge_i_n_19\,
      Q(47) => \b2[4].merge_i_n_20\,
      Q(46) => \b2[4].merge_i_n_21\,
      Q(45) => \b2[4].merge_i_n_22\,
      Q(44) => \b2[4].merge_i_n_23\,
      Q(43) => \b2[4].merge_i_n_24\,
      Q(42) => \b2[4].merge_i_n_25\,
      Q(41) => \b2[4].merge_i_n_26\,
      Q(40) => \b2[4].merge_i_n_27\,
      Q(39) => \b2[4].merge_i_n_28\,
      Q(38) => \b2[4].merge_i_n_29\,
      Q(37) => \b2[4].merge_i_n_30\,
      Q(36) => \b2[4].merge_i_n_31\,
      Q(35) => \b2[4].merge_i_n_32\,
      Q(34) => \b2[4].merge_i_n_33\,
      Q(33) => \b2[4].merge_i_n_34\,
      Q(32) => \b2[4].merge_i_n_35\,
      Q(31) => \b2[4].merge_i_n_36\,
      Q(30) => \b2[4].merge_i_n_37\,
      Q(29) => \b2[4].merge_i_n_38\,
      Q(28) => \b2[4].merge_i_n_39\,
      Q(27) => \b2[4].merge_i_n_40\,
      Q(26) => \b2[4].merge_i_n_41\,
      Q(25) => \b2[4].merge_i_n_42\,
      Q(24) => \b2[4].merge_i_n_43\,
      Q(23) => \b2[4].merge_i_n_44\,
      Q(22) => \b2[4].merge_i_n_45\,
      Q(21) => \b2[4].merge_i_n_46\,
      Q(20) => \b2[4].merge_i_n_47\,
      Q(19) => \b2[4].merge_i_n_48\,
      Q(18) => \b2[4].merge_i_n_49\,
      Q(17) => \b2[4].merge_i_n_50\,
      Q(16) => \b2[4].merge_i_n_51\,
      Q(15) => \b2[4].merge_i_n_52\,
      Q(14) => \b2[4].merge_i_n_53\,
      Q(13) => \b2[4].merge_i_n_54\,
      Q(12) => \b2[4].merge_i_n_55\,
      Q(11) => \b2[4].merge_i_n_56\,
      Q(10) => \b2[4].merge_i_n_57\,
      Q(9) => \b2[4].merge_i_n_58\,
      Q(8) => \b2[4].merge_i_n_59\,
      Q(7) => \b2[4].merge_i_n_60\,
      Q(6) => \b2[4].merge_i_n_61\,
      Q(5) => \b2[4].merge_i_n_62\,
      Q(4) => \b2[4].merge_i_n_63\,
      Q(3) => \b2[4].merge_i_n_64\,
      Q(2) => \b2[4].merge_i_n_65\,
      Q(1) => \b2[4].merge_i_n_66\,
      Q(0) => \b2[4].merge_i_n_67\,
      \_trace_valid\(1 downto 0) => \_trace_valid\(3 downto 2),
      \data_i_reg[63]_0\(63 downto 0) => \data_i_reg[63]\(63 downto 0),
      have_data0 => have_data0_2,
      have_data02_out => have_data02_out,
      have_data02_out_0 => have_data02_out_6,
      have_data0_1 => \^have_data0_1\,
      have_data_reg_0 => \b2[4].merge_i_n_3\,
      have_data_reg_1 => wrote0_reg_2,
      have_data_reg_2 => \b2[1].merge_i_n_0\,
      trace_clk => trace_clk,
      valid_3 => valid_3,
      valid_4 => valid_4,
      wrote0_reg_0 => wrote0_reg_0
    );
\b2[5].merge_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_merge2to1_13
     port map (
      D(63 downto 0) => D(63 downto 0),
      E(0) => data_i,
      Q(63) => \b2[5].merge_i_n_1\,
      Q(62) => \b2[5].merge_i_n_2\,
      Q(61) => \b2[5].merge_i_n_3\,
      Q(60) => \b2[5].merge_i_n_4\,
      Q(59) => \b2[5].merge_i_n_5\,
      Q(58) => \b2[5].merge_i_n_6\,
      Q(57) => \b2[5].merge_i_n_7\,
      Q(56) => \b2[5].merge_i_n_8\,
      Q(55) => \b2[5].merge_i_n_9\,
      Q(54) => \b2[5].merge_i_n_10\,
      Q(53) => \b2[5].merge_i_n_11\,
      Q(52) => \b2[5].merge_i_n_12\,
      Q(51) => \b2[5].merge_i_n_13\,
      Q(50) => \b2[5].merge_i_n_14\,
      Q(49) => \b2[5].merge_i_n_15\,
      Q(48) => \b2[5].merge_i_n_16\,
      Q(47) => \b2[5].merge_i_n_17\,
      Q(46) => \b2[5].merge_i_n_18\,
      Q(45) => \b2[5].merge_i_n_19\,
      Q(44) => \b2[5].merge_i_n_20\,
      Q(43) => \b2[5].merge_i_n_21\,
      Q(42) => \b2[5].merge_i_n_22\,
      Q(41) => \b2[5].merge_i_n_23\,
      Q(40) => \b2[5].merge_i_n_24\,
      Q(39) => \b2[5].merge_i_n_25\,
      Q(38) => \b2[5].merge_i_n_26\,
      Q(37) => \b2[5].merge_i_n_27\,
      Q(36) => \b2[5].merge_i_n_28\,
      Q(35) => \b2[5].merge_i_n_29\,
      Q(34) => \b2[5].merge_i_n_30\,
      Q(33) => \b2[5].merge_i_n_31\,
      Q(32) => \b2[5].merge_i_n_32\,
      Q(31) => \b2[5].merge_i_n_33\,
      Q(30) => \b2[5].merge_i_n_34\,
      Q(29) => \b2[5].merge_i_n_35\,
      Q(28) => \b2[5].merge_i_n_36\,
      Q(27) => \b2[5].merge_i_n_37\,
      Q(26) => \b2[5].merge_i_n_38\,
      Q(25) => \b2[5].merge_i_n_39\,
      Q(24) => \b2[5].merge_i_n_40\,
      Q(23) => \b2[5].merge_i_n_41\,
      Q(22) => \b2[5].merge_i_n_42\,
      Q(21) => \b2[5].merge_i_n_43\,
      Q(20) => \b2[5].merge_i_n_44\,
      Q(19) => \b2[5].merge_i_n_45\,
      Q(18) => \b2[5].merge_i_n_46\,
      Q(17) => \b2[5].merge_i_n_47\,
      Q(16) => \b2[5].merge_i_n_48\,
      Q(15) => \b2[5].merge_i_n_49\,
      Q(14) => \b2[5].merge_i_n_50\,
      Q(13) => \b2[5].merge_i_n_51\,
      Q(12) => \b2[5].merge_i_n_52\,
      Q(11) => \b2[5].merge_i_n_53\,
      Q(10) => \b2[5].merge_i_n_54\,
      Q(9) => \b2[5].merge_i_n_55\,
      Q(8) => \b2[5].merge_i_n_56\,
      Q(7) => \b2[5].merge_i_n_57\,
      Q(6) => \b2[5].merge_i_n_58\,
      Q(5) => \b2[5].merge_i_n_59\,
      Q(4) => \b2[5].merge_i_n_60\,
      Q(3) => \b2[5].merge_i_n_61\,
      Q(2) => \b2[5].merge_i_n_62\,
      Q(1) => \b2[5].merge_i_n_63\,
      Q(0) => \b2[5].merge_i_n_64\,
      \_trace_valid\(1 downto 0) => \_trace_valid\(5 downto 4),
      have_data0 => \^have_data0\,
      trace_clk => trace_clk,
      valid_5 => valid_5,
      wrote0_reg_0 => wrote0_reg_1,
      wrote0_reg_1 => wrote0_reg_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 44 downto 0 );
    src_send : in STD_LOGIC;
    src_rcv : out STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 44 downto 0 );
    dest_req : out STD_LOGIC;
    dest_ack : in STD_LOGIC
  );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 0;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is 45;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake : entity is "HANDSHAKE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake is
  signal dest_hsdata_en : STD_LOGIC;
  attribute DIRECT_ENABLE : boolean;
  attribute DIRECT_ENABLE of dest_hsdata_en : signal is std.standard.true;
  signal dest_hsdata_ff : STD_LOGIC_VECTOR ( 44 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of dest_hsdata_ff : signal is "true";
  attribute xpm_cdc of dest_hsdata_ff : signal is "HANDSHAKE";
  signal dest_req_ff : STD_LOGIC;
  signal dest_req_nxt : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal src_hsdata_ff : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal src_sendd_ff : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \dest_hsdata_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[0]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[10]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[10]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[11]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[11]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[12]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[12]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[13]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[13]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[14]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[14]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[15]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[15]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[16]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[16]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[17]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[17]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[18]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[18]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[19]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[19]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[1]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[20]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[20]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[21]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[21]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[22]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[22]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[23]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[23]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[24]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[24]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[25]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[25]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[26]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[26]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[27]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[27]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[28]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[28]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[29]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[29]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[2]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[30]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[30]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[31]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[31]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[32]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[32]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[33]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[33]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[34]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[34]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[35]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[35]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[36]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[36]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[37]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[37]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[38]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[38]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[39]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[39]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[3]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[40]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[40]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[41]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[41]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[42]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[42]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[43]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[43]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[44]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[44]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[4]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[5]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[5]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[6]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[6]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[7]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[7]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[8]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[8]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[9]\ : label is "true";
  attribute XPM_CDC of \dest_hsdata_ff_reg[9]\ : label is "HANDSHAKE";
  attribute DEST_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_dest2src_inst : label is 0;
  attribute VERSION of xpm_cdc_single_dest2src_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_dest2src_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_dest2src_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 4;
  attribute INIT_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_cdc_single_src2dest_inst : label is 0;
  attribute VERSION of xpm_cdc_single_src2dest_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_src2dest_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_src2dest_inst : label is "TRUE";
begin
  dest_out(44 downto 0) <= dest_hsdata_ff(44 downto 0);
\dest_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(0),
      Q => dest_hsdata_ff(0),
      R => '0'
    );
\dest_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(10),
      Q => dest_hsdata_ff(10),
      R => '0'
    );
\dest_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(11),
      Q => dest_hsdata_ff(11),
      R => '0'
    );
\dest_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(12),
      Q => dest_hsdata_ff(12),
      R => '0'
    );
\dest_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(13),
      Q => dest_hsdata_ff(13),
      R => '0'
    );
\dest_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(14),
      Q => dest_hsdata_ff(14),
      R => '0'
    );
\dest_hsdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(15),
      Q => dest_hsdata_ff(15),
      R => '0'
    );
\dest_hsdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(16),
      Q => dest_hsdata_ff(16),
      R => '0'
    );
\dest_hsdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(17),
      Q => dest_hsdata_ff(17),
      R => '0'
    );
\dest_hsdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(18),
      Q => dest_hsdata_ff(18),
      R => '0'
    );
\dest_hsdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(19),
      Q => dest_hsdata_ff(19),
      R => '0'
    );
\dest_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(1),
      Q => dest_hsdata_ff(1),
      R => '0'
    );
\dest_hsdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(20),
      Q => dest_hsdata_ff(20),
      R => '0'
    );
\dest_hsdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(21),
      Q => dest_hsdata_ff(21),
      R => '0'
    );
\dest_hsdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(22),
      Q => dest_hsdata_ff(22),
      R => '0'
    );
\dest_hsdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(23),
      Q => dest_hsdata_ff(23),
      R => '0'
    );
\dest_hsdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(24),
      Q => dest_hsdata_ff(24),
      R => '0'
    );
\dest_hsdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(25),
      Q => dest_hsdata_ff(25),
      R => '0'
    );
\dest_hsdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(26),
      Q => dest_hsdata_ff(26),
      R => '0'
    );
\dest_hsdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(27),
      Q => dest_hsdata_ff(27),
      R => '0'
    );
\dest_hsdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(28),
      Q => dest_hsdata_ff(28),
      R => '0'
    );
\dest_hsdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(29),
      Q => dest_hsdata_ff(29),
      R => '0'
    );
\dest_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(2),
      Q => dest_hsdata_ff(2),
      R => '0'
    );
\dest_hsdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(30),
      Q => dest_hsdata_ff(30),
      R => '0'
    );
\dest_hsdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(31),
      Q => dest_hsdata_ff(31),
      R => '0'
    );
\dest_hsdata_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(32),
      Q => dest_hsdata_ff(32),
      R => '0'
    );
\dest_hsdata_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(33),
      Q => dest_hsdata_ff(33),
      R => '0'
    );
\dest_hsdata_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(34),
      Q => dest_hsdata_ff(34),
      R => '0'
    );
\dest_hsdata_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(35),
      Q => dest_hsdata_ff(35),
      R => '0'
    );
\dest_hsdata_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(36),
      Q => dest_hsdata_ff(36),
      R => '0'
    );
\dest_hsdata_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(37),
      Q => dest_hsdata_ff(37),
      R => '0'
    );
\dest_hsdata_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(38),
      Q => dest_hsdata_ff(38),
      R => '0'
    );
\dest_hsdata_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(39),
      Q => dest_hsdata_ff(39),
      R => '0'
    );
\dest_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(3),
      Q => dest_hsdata_ff(3),
      R => '0'
    );
\dest_hsdata_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(40),
      Q => dest_hsdata_ff(40),
      R => '0'
    );
\dest_hsdata_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(41),
      Q => dest_hsdata_ff(41),
      R => '0'
    );
\dest_hsdata_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(42),
      Q => dest_hsdata_ff(42),
      R => '0'
    );
\dest_hsdata_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(43),
      Q => dest_hsdata_ff(43),
      R => '0'
    );
\dest_hsdata_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(44),
      Q => dest_hsdata_ff(44),
      R => '0'
    );
\dest_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(4),
      Q => dest_hsdata_ff(4),
      R => '0'
    );
\dest_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(5),
      Q => dest_hsdata_ff(5),
      R => '0'
    );
\dest_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(6),
      Q => dest_hsdata_ff(6),
      R => '0'
    );
\dest_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(7),
      Q => dest_hsdata_ff(7),
      R => '0'
    );
\dest_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(8),
      Q => dest_hsdata_ff(8),
      R => '0'
    );
\dest_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(9),
      Q => dest_hsdata_ff(9),
      R => '0'
    );
dest_req_ext_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dest_req_nxt,
      I1 => dest_req_ff,
      O => dest_hsdata_en
    );
dest_req_ext_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_hsdata_en,
      Q => dest_req,
      R => '0'
    );
dest_req_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_req_nxt,
      Q => dest_req_ff,
      R => '0'
    );
\src_hsdata_ff[44]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_sendd_ff,
      O => p_0_in
    );
\src_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(0),
      Q => src_hsdata_ff(0),
      R => '0'
    );
\src_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(10),
      Q => src_hsdata_ff(10),
      R => '0'
    );
\src_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(11),
      Q => src_hsdata_ff(11),
      R => '0'
    );
\src_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(12),
      Q => src_hsdata_ff(12),
      R => '0'
    );
\src_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(13),
      Q => src_hsdata_ff(13),
      R => '0'
    );
\src_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(14),
      Q => src_hsdata_ff(14),
      R => '0'
    );
\src_hsdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(15),
      Q => src_hsdata_ff(15),
      R => '0'
    );
\src_hsdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(16),
      Q => src_hsdata_ff(16),
      R => '0'
    );
\src_hsdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(17),
      Q => src_hsdata_ff(17),
      R => '0'
    );
\src_hsdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(18),
      Q => src_hsdata_ff(18),
      R => '0'
    );
\src_hsdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(19),
      Q => src_hsdata_ff(19),
      R => '0'
    );
\src_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(1),
      Q => src_hsdata_ff(1),
      R => '0'
    );
\src_hsdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(20),
      Q => src_hsdata_ff(20),
      R => '0'
    );
\src_hsdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(21),
      Q => src_hsdata_ff(21),
      R => '0'
    );
\src_hsdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(22),
      Q => src_hsdata_ff(22),
      R => '0'
    );
\src_hsdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(23),
      Q => src_hsdata_ff(23),
      R => '0'
    );
\src_hsdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(24),
      Q => src_hsdata_ff(24),
      R => '0'
    );
\src_hsdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(25),
      Q => src_hsdata_ff(25),
      R => '0'
    );
\src_hsdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(26),
      Q => src_hsdata_ff(26),
      R => '0'
    );
\src_hsdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(27),
      Q => src_hsdata_ff(27),
      R => '0'
    );
\src_hsdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(28),
      Q => src_hsdata_ff(28),
      R => '0'
    );
\src_hsdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(29),
      Q => src_hsdata_ff(29),
      R => '0'
    );
\src_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(2),
      Q => src_hsdata_ff(2),
      R => '0'
    );
\src_hsdata_ff_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(30),
      Q => src_hsdata_ff(30),
      R => '0'
    );
\src_hsdata_ff_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(31),
      Q => src_hsdata_ff(31),
      R => '0'
    );
\src_hsdata_ff_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(32),
      Q => src_hsdata_ff(32),
      R => '0'
    );
\src_hsdata_ff_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(33),
      Q => src_hsdata_ff(33),
      R => '0'
    );
\src_hsdata_ff_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(34),
      Q => src_hsdata_ff(34),
      R => '0'
    );
\src_hsdata_ff_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(35),
      Q => src_hsdata_ff(35),
      R => '0'
    );
\src_hsdata_ff_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(36),
      Q => src_hsdata_ff(36),
      R => '0'
    );
\src_hsdata_ff_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(37),
      Q => src_hsdata_ff(37),
      R => '0'
    );
\src_hsdata_ff_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(38),
      Q => src_hsdata_ff(38),
      R => '0'
    );
\src_hsdata_ff_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(39),
      Q => src_hsdata_ff(39),
      R => '0'
    );
\src_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(3),
      Q => src_hsdata_ff(3),
      R => '0'
    );
\src_hsdata_ff_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(40),
      Q => src_hsdata_ff(40),
      R => '0'
    );
\src_hsdata_ff_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(41),
      Q => src_hsdata_ff(41),
      R => '0'
    );
\src_hsdata_ff_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(42),
      Q => src_hsdata_ff(42),
      R => '0'
    );
\src_hsdata_ff_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(43),
      Q => src_hsdata_ff(43),
      R => '0'
    );
\src_hsdata_ff_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(44),
      Q => src_hsdata_ff(44),
      R => '0'
    );
\src_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(4),
      Q => src_hsdata_ff(4),
      R => '0'
    );
\src_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(5),
      Q => src_hsdata_ff(5),
      R => '0'
    );
\src_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(6),
      Q => src_hsdata_ff(6),
      R => '0'
    );
\src_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(7),
      Q => src_hsdata_ff(7),
      R => '0'
    );
\src_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(8),
      Q => src_hsdata_ff(8),
      R => '0'
    );
\src_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(9),
      Q => src_hsdata_ff(9),
      R => '0'
    );
src_sendd_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_send,
      Q => src_sendd_ff,
      R => '0'
    );
xpm_cdc_single_dest2src_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
     port map (
      dest_clk => src_clk,
      dest_out => src_rcv,
      src_clk => '0',
      src_in => dest_req_ff
    );
xpm_cdc_single_src2dest_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_req_nxt,
      src_clk => '0',
      src_in => src_sendd_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    \gen_rst_ic.fifo_rd_rst_ic_reg_0\ : out STD_LOGIC;
    wrst_busy : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rst_ic.fifo_rd_rst_ic_reg_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow_i0 : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \count_value_i_reg[3]\ : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \guf.underflow_i_reg\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \^gen_rst_ic.fifo_rd_rst_ic_reg_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair28";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair28";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \grdc.rd_data_count_i[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of wr_rst_busy_INST_0 : label is "soft_lutpair27";
begin
  \gen_rst_ic.fifo_rd_rst_ic_reg_0\ <= \^gen_rst_ic.fifo_rd_rst_ic_reg_0\;
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAE"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => ram_empty_i,
      I2 => Q(1),
      I3 => rd_en,
      I4 => Q(0),
      O => SR(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => \count_value_i_reg[3]\,
      I2 => \^wrst_busy\,
      I3 => rst_d1,
      O => E(0)
    );
\grdc.rd_data_count_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => \gen_rst_ic.fifo_rd_rst_ic_reg_1\(0)
    );
\guf.underflow_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \guf.underflow_i_reg\,
      I1 => \^gen_rst_ic.fifo_rd_rst_ic_reg_0\,
      I2 => rd_en,
      O => underflow_i0
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1024;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 64;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0707";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 64;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 6;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal count_value_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal diff_pntr_pe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal diff_pntr_pf_q0 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^empty\ : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_dc_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.wpr_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_fwft.count_rst\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal \gen_fwft.rdpp1_inst_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\ : STD_LOGIC;
  signal \grdc.diff_wr_rd_pntr_rdc\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \grdc.rd_data_count_i0\ : STD_LOGIC;
  signal \gwdc.diff_wr_rd_pntr1_out\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal overflow_i0 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC;
  signal \^prog_empty\ : STD_LOGIC;
  signal \^prog_full\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 3 to 3 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_pntr_wr_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdp_inst_n_10 : STD_LOGIC;
  signal rdp_inst_n_11 : STD_LOGIC;
  signal rdp_inst_n_12 : STD_LOGIC;
  signal rdp_inst_n_8 : STD_LOGIC;
  signal rdp_inst_n_9 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal rst_d1_inst_n_1 : STD_LOGIC;
  signal src_in_bin00_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal underflow_i0 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_pntr_plus1_pf : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal wr_pntr_plus1_pf_carry : STD_LOGIC;
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_pntr_rd_cdc_dc : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrpp1_inst_n_4 : STD_LOGIC;
  signal wrpp2_inst_n_0 : STD_LOGIC;
  signal wrpp2_inst_n_1 : STD_LOGIC;
  signal wrpp2_inst_n_2 : STD_LOGIC;
  signal wrpp2_inst_n_3 : STD_LOGIC;
  signal wrst_busy : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 4;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 5;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 4;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair30";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 1024;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 64;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair30";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  prog_empty <= \^prog_empty\;
  prog_full <= \^prog_full\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3FF0"
    )
        port map (
      I0 => ram_empty_i,
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => \^rd_rst_busy\
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => \^rd_rst_busy\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized1\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      src_clk => rd_clk,
      src_in_bin(4) => rdp_inst_n_9,
      src_in_bin(3) => rdp_inst_n_10,
      src_in_bin(2) => rdp_inst_n_11,
      src_in_bin(1) => src_in_bin00_out(1),
      src_in_bin(0) => rdp_inst_n_12
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      src_clk => rd_clk,
      src_in_bin(3 downto 0) => rd_pntr_ext(3 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec
     port map (
      D(3 downto 0) => rd_pntr_wr_cdc(3 downto 0),
      E(0) => wr_pntr_plus1_pf_carry,
      Q(0) => rd_pntr_wr(3),
      diff_pntr_pf_q0(0) => diff_pntr_pf_q0(4),
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ => wrpp1_inst_n_4,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]_0\ => \^full\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(3) => wrpp2_inst_n_0,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(2) => wrpp2_inst_n_1,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(1) => wrpp2_inst_n_2,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_0\(0) => wrpp2_inst_n_3,
      ram_full_i0 => ram_full_i0,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.rpw_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0\
     port map (
      D(2 downto 1) => \gwdc.diff_wr_rd_pntr1_out\(4 downto 3),
      D(0) => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      \gwdc.wr_data_count_i_reg[4]\(4 downto 0) => wr_pntr_ext(4 downto 0),
      \reg_out_i_reg[4]_0\(4 downto 0) => rd_pntr_wr_cdc_dc(4 downto 0),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec_5
     port map (
      D(1 downto 0) => diff_pntr_pe(1 downto 0),
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      enb => rdp_inst_n_8,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\(1 downto 0) => curr_fwft_state(1 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg\(3 downto 0) => rd_pntr_ext(3 downto 0),
      \gen_pf_ic_rc.ram_empty_i_reg_0\(3) => rdpp1_inst_n_0,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(2) => rdpp1_inst_n_1,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(1) => rdpp1_inst_n_2,
      \gen_pf_ic_rc.ram_empty_i_reg_0\(0) => rdpp1_inst_n_3,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[0]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[3]_0\(3 downto 0) => wr_pntr_rd_cdc(3 downto 0)
    );
\gen_cdc_pntr.wpr_gray_reg_dc\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_vec__parameterized0_6\
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q(4) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      Q(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      Q(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      Q(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      Q(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[1]\(1 downto 0) => count_value_i(1 downto 0),
      \grdc.rd_data_count_i_reg[4]\(2) => rd_pntr_ext(3),
      \grdc.rd_data_count_i_reg[4]\(1 downto 0) => rd_pntr_ext(1 downto 0),
      rd_clk => rd_clk,
      \reg_out_i_reg[3]_0\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      \reg_out_i_reg[4]_0\ => \^rd_rst_busy\,
      \reg_out_i_reg[4]_1\(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(4 downto 0) => wr_pntr_rd_cdc_dc(4 downto 0),
      src_clk => wr_clk,
      src_in_bin(4 downto 0) => wr_pntr_ext(4 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(3 downto 0) => wr_pntr_rd_cdc(3 downto 0),
      src_clk => wr_clk,
      src_in_bin(3 downto 0) => wr_pntr_ext(3 downto 0)
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \^empty\,
      O => empty_fwft_i0
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_fwft_i0,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_fwft.rdpp1_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
     port map (
      D(0) => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q(1 downto 0) => count_value_i(1 downto 0),
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[1]_0\ => \gen_fwft.rdpp1_inst_n_3\,
      \count_value_i_reg[1]_1\(1 downto 0) => curr_fwft_state(1 downto 0),
      \grdc.rd_data_count_i_reg[2]\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[2]\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[2]\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_5\,
      \grdc.rd_data_count_i_reg[2]_0\(2 downto 0) => rd_pntr_ext(2 downto 0),
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      src_in_bin(0) => src_in_bin00_out(1)
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(0),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(1),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(2),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => diff_pntr_pe(3),
      Q => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      R => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BBBBBBBBB"
    )
        port map (
      I0 => \^prog_empty\,
      I1 => \^empty\,
      I2 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[0]\,
      I3 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[1]\,
      I4 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[2]\,
      I5 => \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\
    );
\gen_pf_ic_rc.gpe_ic.prog_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_pf_ic_rc.gpe_ic.prog_empty_i_i_1_n_0\,
      Q => \^prog_empty\,
      S => \^rd_rst_busy\
    );
\gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => diff_pntr_pf_q0(4),
      Q => \p_1_in__0\,
      R => wrst_busy
    );
\gen_pf_ic_rc.gpf_ic.prog_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1_inst_n_1,
      Q => \^prog_full\,
      R => '0'
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(63 downto 0) => din(63 downto 0),
      dinb(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      douta(63 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(63 downto 0),
      doutb(63 downto 0) => dout(63 downto 0),
      ena => wr_pntr_plus1_pf_carry,
      enb => rdp_inst_n_8,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
\gof.overflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => overflow_i0,
      Q => overflow,
      R => '0'
    );
\grdc.rd_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(1),
      Q => rd_data_count(0),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(2),
      Q => rd_data_count(1),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(3),
      Q => rd_data_count(2),
      R => \grdc.rd_data_count_i0\
    );
\grdc.rd_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => rd_clk,
      CE => '1',
      D => \grdc.diff_wr_rd_pntr_rdc\(4),
      Q => rd_data_count(3),
      R => \grdc.rd_data_count_i0\
    );
\guf.underflow_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => underflow_i0,
      Q => underflow,
      R => '0'
    );
\gwdc.wr_data_count_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(1),
      Q => wr_data_count(0),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(2),
      Q => wr_data_count(1),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(3),
      Q => wr_data_count(2),
      R => wrst_busy
    );
\gwdc.wr_data_count_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => wr_clk,
      CE => '1',
      D => \gwdc.diff_wr_rd_pntr1_out\(4),
      Q => wr_data_count(3),
      R => wrst_busy
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0\
     port map (
      D(1 downto 0) => diff_pntr_pe(3 downto 2),
      E(0) => rdp_inst_n_8,
      Q(3 downto 0) => rd_pntr_ext(3 downto 0),
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[4]_0\ => \^rd_rst_busy\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(3) => \gen_cdc_pntr.wpr_gray_reg_n_2\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(2) => \gen_cdc_pntr.wpr_gray_reg_n_3\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(1) => \gen_cdc_pntr.wpr_gray_reg_n_4\,
      \gen_pf_ic_rc.gpe_ic.diff_pntr_pe_reg[3]\(0) => \gen_cdc_pntr.wpr_gray_reg_n_5\,
      \grdc.rd_data_count_i_reg[4]\ => \gen_fwft.rdpp1_inst_n_3\,
      \grdc.rd_data_count_i_reg[4]_0\(3) => \gen_cdc_pntr.wpr_gray_reg_dc_n_1\,
      \grdc.rd_data_count_i_reg[4]_0\(2) => \gen_cdc_pntr.wpr_gray_reg_dc_n_2\,
      \grdc.rd_data_count_i_reg[4]_0\(1) => \gen_cdc_pntr.wpr_gray_reg_dc_n_3\,
      \grdc.rd_data_count_i_reg[4]_0\(0) => \gen_cdc_pntr.wpr_gray_reg_dc_n_4\,
      \grdc.rd_data_count_i_reg[4]_1\ => \gen_cdc_pntr.wpr_gray_reg_dc_n_6\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      \reg_out_i_reg[2]\(1 downto 0) => \grdc.diff_wr_rd_pntr_rdc\(4 downto 3),
      \src_gray_ff_reg[4]\(1 downto 0) => count_value_i(1 downto 0),
      src_in_bin(3) => rdp_inst_n_9,
      src_in_bin(2) => rdp_inst_n_10,
      src_in_bin(1) => rdp_inst_n_11,
      src_in_bin(0) => rdp_inst_n_12
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1\
     port map (
      E(0) => rdp_inst_n_8,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\ => \^rd_rst_busy\,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\ => rst_d1_inst_n_1,
      \gen_pf_ic_rc.gpf_ic.prog_full_i_reg\ => \^full\,
      overflow_i0 => overflow_i0,
      \p_1_in__0\ => \p_1_in__0\,
      prog_full => \^prog_full\,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_7\
     port map (
      D(0) => \gwdc.diff_wr_rd_pntr1_out\(2),
      E(0) => wr_pntr_plus1_pf_carry,
      Q(4 downto 0) => wr_pntr_ext(4 downto 0),
      \gwdc.wr_data_count_i_reg[2]\(2) => \gen_cdc_pntr.rpw_gray_reg_dc_n_3\,
      \gwdc.wr_data_count_i_reg[2]\(1) => \gen_cdc_pntr.rpw_gray_reg_dc_n_4\,
      \gwdc.wr_data_count_i_reg[2]\(0) => \gen_cdc_pntr.rpw_gray_reg_dc_n_5\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_8\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3 downto 0) => wr_pntr_plus1_pf(4 downto 1),
      \count_value_i_reg[3]_0\ => wrpp1_inst_n_4,
      \gen_pf_ic_rc.gpf_ic.diff_pntr_pf_q_reg[4]\(0) => rd_pntr_wr(3),
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(3) => wrpp2_inst_n_0,
      Q(2) => wrpp2_inst_n_1,
      Q(1) => wrpp2_inst_n_2,
      Q(0) => wrpp2_inst_n_3,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      E(0) => wr_pntr_plus1_pf_carry,
      Q(1 downto 0) => curr_fwft_state(1 downto 0),
      SR(0) => \gen_fwft.count_rst\,
      \count_value_i_reg[3]\ => \^full\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_0\ => \^rd_rst_busy\,
      \gen_rst_ic.fifo_rd_rst_ic_reg_1\(0) => \grdc.rd_data_count_i0\,
      \guf.underflow_i_reg\ => \^empty\,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      rst_d1 => rst_d1,
      underflow_i0 => underflow_i0,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 63 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "distributed";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 64;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 64;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async : entity is "true";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0000011100000111";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1024;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 16;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 7;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 64;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0707";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 64;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 6;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  sbiterr <= \<const0>\;
  wr_ack <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\,
      data_valid => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(63 downto 0) => din(63 downto 0),
      dout(63 downto 0) => dout(63 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => overflow,
      prog_empty => prog_empty,
      prog_full => prog_full,
      rd_clk => rd_clk,
      rd_data_count(3 downto 0) => rd_data_count(3 downto 0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => underflow,
      wr_ack => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\,
      wr_clk => wr_clk,
      wr_data_count(3 downto 0) => wr_data_count(3 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_fifo is
  port (
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    empty : out STD_LOGIC;
    error_write_reg : out STD_LOGIC;
    \gen_rst_ic.wr_rst_busy_ic_reg\ : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 61 downto 0 );
    sw_read : in STD_LOGIC;
    error_write : in STD_LOGIC;
    error : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_fifo is
  signal \^full\ : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_async_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xpm_fifo_async_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_fifo_async_inst : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of xpm_fifo_async_inst : label is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of xpm_fifo_async_inst : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of xpm_fifo_async_inst : label is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of xpm_fifo_async_inst : label is "16'b0000011100000111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of xpm_fifo_async_inst : label is "distributed";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of xpm_fifo_async_inst : label is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_async_inst : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of xpm_fifo_async_inst : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of xpm_fifo_async_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of xpm_fifo_async_inst : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of xpm_fifo_async_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_fifo_async_inst : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of xpm_fifo_async_inst : label is 1;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of xpm_fifo_async_inst : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of xpm_fifo_async_inst : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_async_inst : label is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of xpm_fifo_async_inst : label is 64;
  attribute READ_MODE : string;
  attribute READ_MODE of xpm_fifo_async_inst : label is "fwft";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_async_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_fifo_async_inst : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of xpm_fifo_async_inst : label is "0707";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of xpm_fifo_async_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of xpm_fifo_async_inst : label is 64;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_async_inst : label is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_fifo_async_inst : label is "TRUE";
begin
  full <= \^full\;
error_write_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => error_write,
      I1 => \^full\,
      I2 => error,
      O => error_write_reg
    );
xpm_fifo_async_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_async
     port map (
      almost_empty => NLW_xpm_fifo_async_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_async_inst_almost_full_UNCONNECTED,
      data_valid => NLW_xpm_fifo_async_inst_data_valid_UNCONNECTED,
      dbiterr => NLW_xpm_fifo_async_inst_dbiterr_UNCONNECTED,
      din(63) => '1',
      din(62) => din(61),
      din(61) => '0',
      din(60 downto 0) => din(60 downto 0),
      dout(63 downto 0) => dout(63 downto 0),
      empty => empty,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_async_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_async_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_async_inst_prog_full_UNCONNECTED,
      rd_clk => trace_clk,
      rd_data_count(3 downto 0) => NLW_xpm_fifo_async_inst_rd_data_count_UNCONNECTED(3 downto 0),
      rd_en => sw_read,
      rd_rst_busy => NLW_xpm_fifo_async_inst_rd_rst_busy_UNCONNECTED,
      rst => \gen_rst_ic.wr_rst_busy_ic_reg\,
      sbiterr => NLW_xpm_fifo_async_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_xpm_fifo_async_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_async_inst_wr_ack_UNCONNECTED,
      wr_clk => trace_clk,
      wr_data_count(3 downto 0) => NLW_xpm_fifo_async_inst_wr_data_count_UNCONNECTED(3 downto 0),
      wr_en => wr_en,
      wr_rst_busy => NLW_xpm_fifo_async_inst_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sw_timestamper is
  port (
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 );
    empty : out STD_LOGIC;
    error_reg_0 : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 61 downto 0 );
    sw_read : in STD_LOGIC;
    error_reg_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sw_timestamper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sw_timestamper is
  signal error : STD_LOGIC;
  signal error_i_1_n_0 : STD_LOGIC;
  signal error_write : STD_LOGIC;
  signal fifo_i_n_66 : STD_LOGIC;
  signal full_i : STD_LOGIC;
  signal \write__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of error_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of write : label is "soft_lutpair31";
begin
error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => full_i,
      I1 => error_reg_1,
      I2 => error,
      O => error_i_1_n_0
    );
error_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => '1',
      D => error_i_1_n_0,
      Q => error,
      R => error_reg_0
    );
error_write_reg: unisim.vcomponents.FDSE
     port map (
      C => trace_clk,
      CE => '1',
      D => fifo_i_n_66,
      Q => error_write,
      S => error_reg_0
    );
fifo_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_fifo
     port map (
      din(61 downto 0) => din(61 downto 0),
      dout(63 downto 0) => dout(63 downto 0),
      empty => empty,
      error => error,
      error_write => error_write,
      error_write_reg => fifo_i_n_66,
      full => full_i,
      \gen_rst_ic.wr_rst_busy_ic_reg\ => error_reg_0,
      sw_read => sw_read,
      trace_clk => trace_clk,
      wr_en => \write__0\
    );
write: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => error_reg_1,
      I1 => error,
      I2 => error_write,
      O => \write__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator is
  port (
    trace_clk : in STD_LOGIC;
    trace_resetn : in STD_LOGIC;
    mon_clk : in STD_LOGIC;
    mon_resetn : in STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    out_valid : out STD_LOGIC;
    out_ready : in STD_LOGIC;
    pass_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    pass_valid : in STD_LOGIC;
    pass_ready : out STD_LOGIC;
    trace_rst : out STD_LOGIC;
    trace0_counter_overflow : out STD_LOGIC;
    trace0_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace0_event : in STD_LOGIC;
    trace0_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace0_valid : in STD_LOGIC;
    trace0_read : out STD_LOGIC;
    trace1_counter_overflow : out STD_LOGIC;
    trace1_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace1_event : in STD_LOGIC;
    trace1_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace1_valid : in STD_LOGIC;
    trace1_read : out STD_LOGIC;
    trace2_counter_overflow : out STD_LOGIC;
    trace2_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace2_event : in STD_LOGIC;
    trace2_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace2_valid : in STD_LOGIC;
    trace2_read : out STD_LOGIC;
    trace3_counter_overflow : out STD_LOGIC;
    trace3_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace3_event : in STD_LOGIC;
    trace3_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace3_valid : in STD_LOGIC;
    trace3_read : out STD_LOGIC;
    trace4_counter_overflow : out STD_LOGIC;
    trace4_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace4_event : in STD_LOGIC;
    trace4_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace4_valid : in STD_LOGIC;
    trace4_read : out STD_LOGIC;
    trace5_counter_overflow : out STD_LOGIC;
    trace5_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace5_event : in STD_LOGIC;
    trace5_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace5_valid : in STD_LOGIC;
    trace5_read : out STD_LOGIC;
    trace6_counter_overflow : out STD_LOGIC;
    trace6_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace6_event : in STD_LOGIC;
    trace6_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace6_valid : in STD_LOGIC;
    trace6_read : out STD_LOGIC;
    trace7_counter_overflow : out STD_LOGIC;
    trace7_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace7_event : in STD_LOGIC;
    trace7_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace7_valid : in STD_LOGIC;
    trace7_read : out STD_LOGIC;
    trace8_counter_overflow : out STD_LOGIC;
    trace8_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace8_event : in STD_LOGIC;
    trace8_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace8_valid : in STD_LOGIC;
    trace8_read : out STD_LOGIC;
    trace9_counter_overflow : out STD_LOGIC;
    trace9_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace9_event : in STD_LOGIC;
    trace9_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace9_valid : in STD_LOGIC;
    trace9_read : out STD_LOGIC;
    trace10_counter_overflow : out STD_LOGIC;
    trace10_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace10_event : in STD_LOGIC;
    trace10_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace10_valid : in STD_LOGIC;
    trace10_read : out STD_LOGIC;
    trace11_counter_overflow : out STD_LOGIC;
    trace11_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace11_event : in STD_LOGIC;
    trace11_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace11_valid : in STD_LOGIC;
    trace11_read : out STD_LOGIC;
    trace12_counter_overflow : out STD_LOGIC;
    trace12_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace12_event : in STD_LOGIC;
    trace12_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace12_valid : in STD_LOGIC;
    trace12_read : out STD_LOGIC;
    trace13_counter_overflow : out STD_LOGIC;
    trace13_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace13_event : in STD_LOGIC;
    trace13_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace13_valid : in STD_LOGIC;
    trace13_read : out STD_LOGIC;
    trace14_counter_overflow : out STD_LOGIC;
    trace14_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace14_event : in STD_LOGIC;
    trace14_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace14_valid : in STD_LOGIC;
    trace14_read : out STD_LOGIC;
    trace15_counter_overflow : out STD_LOGIC;
    trace15_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace15_event : in STD_LOGIC;
    trace15_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace15_valid : in STD_LOGIC;
    trace15_read : out STD_LOGIC;
    trace16_counter_overflow : out STD_LOGIC;
    trace16_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace16_event : in STD_LOGIC;
    trace16_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace16_valid : in STD_LOGIC;
    trace16_read : out STD_LOGIC;
    trace17_counter_overflow : out STD_LOGIC;
    trace17_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace17_event : in STD_LOGIC;
    trace17_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace17_valid : in STD_LOGIC;
    trace17_read : out STD_LOGIC;
    trace18_counter_overflow : out STD_LOGIC;
    trace18_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace18_event : in STD_LOGIC;
    trace18_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace18_valid : in STD_LOGIC;
    trace18_read : out STD_LOGIC;
    trace19_counter_overflow : out STD_LOGIC;
    trace19_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace19_event : in STD_LOGIC;
    trace19_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace19_valid : in STD_LOGIC;
    trace19_read : out STD_LOGIC;
    trace20_counter_overflow : out STD_LOGIC;
    trace20_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace20_event : in STD_LOGIC;
    trace20_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace20_valid : in STD_LOGIC;
    trace20_read : out STD_LOGIC;
    trace21_counter_overflow : out STD_LOGIC;
    trace21_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace21_event : in STD_LOGIC;
    trace21_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace21_valid : in STD_LOGIC;
    trace21_read : out STD_LOGIC;
    trace22_counter_overflow : out STD_LOGIC;
    trace22_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace22_event : in STD_LOGIC;
    trace22_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace22_valid : in STD_LOGIC;
    trace22_read : out STD_LOGIC;
    trace23_counter_overflow : out STD_LOGIC;
    trace23_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace23_event : in STD_LOGIC;
    trace23_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace23_valid : in STD_LOGIC;
    trace23_read : out STD_LOGIC;
    trace24_counter_overflow : out STD_LOGIC;
    trace24_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace24_event : in STD_LOGIC;
    trace24_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace24_valid : in STD_LOGIC;
    trace24_read : out STD_LOGIC;
    trace25_counter_overflow : out STD_LOGIC;
    trace25_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace25_event : in STD_LOGIC;
    trace25_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace25_valid : in STD_LOGIC;
    trace25_read : out STD_LOGIC;
    trace26_counter_overflow : out STD_LOGIC;
    trace26_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace26_event : in STD_LOGIC;
    trace26_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace26_valid : in STD_LOGIC;
    trace26_read : out STD_LOGIC;
    trace27_counter_overflow : out STD_LOGIC;
    trace27_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace27_event : in STD_LOGIC;
    trace27_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace27_valid : in STD_LOGIC;
    trace27_read : out STD_LOGIC;
    trace28_counter_overflow : out STD_LOGIC;
    trace28_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace28_event : in STD_LOGIC;
    trace28_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace28_valid : in STD_LOGIC;
    trace28_read : out STD_LOGIC;
    trace29_counter_overflow : out STD_LOGIC;
    trace29_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace29_event : in STD_LOGIC;
    trace29_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace29_valid : in STD_LOGIC;
    trace29_read : out STD_LOGIC;
    trace30_counter_overflow : out STD_LOGIC;
    trace30_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace30_event : in STD_LOGIC;
    trace30_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace30_valid : in STD_LOGIC;
    trace30_read : out STD_LOGIC;
    trace31_counter_overflow : out STD_LOGIC;
    trace31_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace31_event : in STD_LOGIC;
    trace31_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace31_valid : in STD_LOGIC;
    trace31_read : out STD_LOGIC;
    trace32_counter_overflow : out STD_LOGIC;
    trace32_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace32_event : in STD_LOGIC;
    trace32_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace32_valid : in STD_LOGIC;
    trace32_read : out STD_LOGIC;
    trace33_counter_overflow : out STD_LOGIC;
    trace33_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace33_event : in STD_LOGIC;
    trace33_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace33_valid : in STD_LOGIC;
    trace33_read : out STD_LOGIC;
    trace34_counter_overflow : out STD_LOGIC;
    trace34_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace34_event : in STD_LOGIC;
    trace34_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace34_valid : in STD_LOGIC;
    trace34_read : out STD_LOGIC;
    trace35_counter_overflow : out STD_LOGIC;
    trace35_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace35_event : in STD_LOGIC;
    trace35_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace35_valid : in STD_LOGIC;
    trace35_read : out STD_LOGIC;
    trace36_counter_overflow : out STD_LOGIC;
    trace36_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace36_event : in STD_LOGIC;
    trace36_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace36_valid : in STD_LOGIC;
    trace36_read : out STD_LOGIC;
    trace37_counter_overflow : out STD_LOGIC;
    trace37_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace37_event : in STD_LOGIC;
    trace37_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace37_valid : in STD_LOGIC;
    trace37_read : out STD_LOGIC;
    trace38_counter_overflow : out STD_LOGIC;
    trace38_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace38_event : in STD_LOGIC;
    trace38_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace38_valid : in STD_LOGIC;
    trace38_read : out STD_LOGIC;
    trace39_counter_overflow : out STD_LOGIC;
    trace39_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace39_event : in STD_LOGIC;
    trace39_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace39_valid : in STD_LOGIC;
    trace39_read : out STD_LOGIC;
    trace40_counter_overflow : out STD_LOGIC;
    trace40_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace40_event : in STD_LOGIC;
    trace40_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace40_valid : in STD_LOGIC;
    trace40_read : out STD_LOGIC;
    trace41_counter_overflow : out STD_LOGIC;
    trace41_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace41_event : in STD_LOGIC;
    trace41_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace41_valid : in STD_LOGIC;
    trace41_read : out STD_LOGIC;
    trace42_counter_overflow : out STD_LOGIC;
    trace42_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace42_event : in STD_LOGIC;
    trace42_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace42_valid : in STD_LOGIC;
    trace42_read : out STD_LOGIC;
    trace43_counter_overflow : out STD_LOGIC;
    trace43_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace43_event : in STD_LOGIC;
    trace43_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace43_valid : in STD_LOGIC;
    trace43_read : out STD_LOGIC;
    trace44_counter_overflow : out STD_LOGIC;
    trace44_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace44_event : in STD_LOGIC;
    trace44_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace44_valid : in STD_LOGIC;
    trace44_read : out STD_LOGIC;
    trace45_counter_overflow : out STD_LOGIC;
    trace45_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace45_event : in STD_LOGIC;
    trace45_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace45_valid : in STD_LOGIC;
    trace45_read : out STD_LOGIC;
    trace46_counter_overflow : out STD_LOGIC;
    trace46_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace46_event : in STD_LOGIC;
    trace46_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace46_valid : in STD_LOGIC;
    trace46_read : out STD_LOGIC;
    trace47_counter_overflow : out STD_LOGIC;
    trace47_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace47_event : in STD_LOGIC;
    trace47_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace47_valid : in STD_LOGIC;
    trace47_read : out STD_LOGIC;
    trace48_counter_overflow : out STD_LOGIC;
    trace48_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace48_event : in STD_LOGIC;
    trace48_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace48_valid : in STD_LOGIC;
    trace48_read : out STD_LOGIC;
    trace49_counter_overflow : out STD_LOGIC;
    trace49_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace49_event : in STD_LOGIC;
    trace49_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace49_valid : in STD_LOGIC;
    trace49_read : out STD_LOGIC;
    trace50_counter_overflow : out STD_LOGIC;
    trace50_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace50_event : in STD_LOGIC;
    trace50_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace50_valid : in STD_LOGIC;
    trace50_read : out STD_LOGIC;
    trace51_counter_overflow : out STD_LOGIC;
    trace51_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace51_event : in STD_LOGIC;
    trace51_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace51_valid : in STD_LOGIC;
    trace51_read : out STD_LOGIC;
    trace52_counter_overflow : out STD_LOGIC;
    trace52_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace52_event : in STD_LOGIC;
    trace52_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace52_valid : in STD_LOGIC;
    trace52_read : out STD_LOGIC;
    trace53_counter_overflow : out STD_LOGIC;
    trace53_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace53_event : in STD_LOGIC;
    trace53_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace53_valid : in STD_LOGIC;
    trace53_read : out STD_LOGIC;
    trace54_counter_overflow : out STD_LOGIC;
    trace54_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace54_event : in STD_LOGIC;
    trace54_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace54_valid : in STD_LOGIC;
    trace54_read : out STD_LOGIC;
    trace55_counter_overflow : out STD_LOGIC;
    trace55_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace55_event : in STD_LOGIC;
    trace55_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace55_valid : in STD_LOGIC;
    trace55_read : out STD_LOGIC;
    trace56_counter_overflow : out STD_LOGIC;
    trace56_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace56_event : in STD_LOGIC;
    trace56_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace56_valid : in STD_LOGIC;
    trace56_read : out STD_LOGIC;
    trace57_counter_overflow : out STD_LOGIC;
    trace57_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace57_event : in STD_LOGIC;
    trace57_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace57_valid : in STD_LOGIC;
    trace57_read : out STD_LOGIC;
    trace58_counter_overflow : out STD_LOGIC;
    trace58_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace58_event : in STD_LOGIC;
    trace58_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace58_valid : in STD_LOGIC;
    trace58_read : out STD_LOGIC;
    trace59_counter_overflow : out STD_LOGIC;
    trace59_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace59_event : in STD_LOGIC;
    trace59_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace59_valid : in STD_LOGIC;
    trace59_read : out STD_LOGIC;
    trace60_counter_overflow : out STD_LOGIC;
    trace60_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace60_event : in STD_LOGIC;
    trace60_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace60_valid : in STD_LOGIC;
    trace60_read : out STD_LOGIC;
    trace61_counter_overflow : out STD_LOGIC;
    trace61_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace61_event : in STD_LOGIC;
    trace61_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace61_valid : in STD_LOGIC;
    trace61_read : out STD_LOGIC;
    trace62_counter_overflow : out STD_LOGIC;
    trace62_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace62_event : in STD_LOGIC;
    trace62_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace62_valid : in STD_LOGIC;
    trace62_read : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute EMULATION : string;
  attribute EMULATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is "1'b0";
  attribute EXT_MON_RST : integer;
  attribute EXT_MON_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is 1;
  attribute EXT_TRACE_RST : integer;
  attribute EXT_TRACE_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is 1;
  attribute NUM_TRACE_PORTS : integer;
  attribute NUM_TRACE_PORTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is 5;
  attribute USE_PASSTHROUGH : string;
  attribute USE_PASSTHROUGH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is "1'b0";
  attribute \_NUM_LOG_PORTS\ : integer;
  attribute \_NUM_LOG_PORTS\ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is 8;
  attribute \_NUM_TRACE_PORTS\ : integer;
  attribute \_NUM_TRACE_PORTS\ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator : entity is 6;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator is
  signal \<const0>\ : STD_LOGIC;
  signal \_trace_valid\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_lite_if_i_n_6 : STD_LOGIC;
  signal axi_lite_if_i_n_7 : STD_LOGIC;
  signal axi_lite_if_i_n_9 : STD_LOGIC;
  signal \b1[0].ss_i_n_10\ : STD_LOGIC;
  signal \b1[0].ss_i_n_11\ : STD_LOGIC;
  signal \b1[0].ss_i_n_12\ : STD_LOGIC;
  signal \b1[0].ss_i_n_13\ : STD_LOGIC;
  signal \b1[0].ss_i_n_14\ : STD_LOGIC;
  signal \b1[0].ss_i_n_15\ : STD_LOGIC;
  signal \b1[0].ss_i_n_16\ : STD_LOGIC;
  signal \b1[0].ss_i_n_17\ : STD_LOGIC;
  signal \b1[0].ss_i_n_18\ : STD_LOGIC;
  signal \b1[0].ss_i_n_19\ : STD_LOGIC;
  signal \b1[0].ss_i_n_2\ : STD_LOGIC;
  signal \b1[0].ss_i_n_20\ : STD_LOGIC;
  signal \b1[0].ss_i_n_21\ : STD_LOGIC;
  signal \b1[0].ss_i_n_22\ : STD_LOGIC;
  signal \b1[0].ss_i_n_23\ : STD_LOGIC;
  signal \b1[0].ss_i_n_24\ : STD_LOGIC;
  signal \b1[0].ss_i_n_25\ : STD_LOGIC;
  signal \b1[0].ss_i_n_26\ : STD_LOGIC;
  signal \b1[0].ss_i_n_27\ : STD_LOGIC;
  signal \b1[0].ss_i_n_28\ : STD_LOGIC;
  signal \b1[0].ss_i_n_29\ : STD_LOGIC;
  signal \b1[0].ss_i_n_3\ : STD_LOGIC;
  signal \b1[0].ss_i_n_30\ : STD_LOGIC;
  signal \b1[0].ss_i_n_31\ : STD_LOGIC;
  signal \b1[0].ss_i_n_32\ : STD_LOGIC;
  signal \b1[0].ss_i_n_33\ : STD_LOGIC;
  signal \b1[0].ss_i_n_34\ : STD_LOGIC;
  signal \b1[0].ss_i_n_35\ : STD_LOGIC;
  signal \b1[0].ss_i_n_36\ : STD_LOGIC;
  signal \b1[0].ss_i_n_37\ : STD_LOGIC;
  signal \b1[0].ss_i_n_38\ : STD_LOGIC;
  signal \b1[0].ss_i_n_39\ : STD_LOGIC;
  signal \b1[0].ss_i_n_4\ : STD_LOGIC;
  signal \b1[0].ss_i_n_40\ : STD_LOGIC;
  signal \b1[0].ss_i_n_41\ : STD_LOGIC;
  signal \b1[0].ss_i_n_42\ : STD_LOGIC;
  signal \b1[0].ss_i_n_43\ : STD_LOGIC;
  signal \b1[0].ss_i_n_44\ : STD_LOGIC;
  signal \b1[0].ss_i_n_45\ : STD_LOGIC;
  signal \b1[0].ss_i_n_46\ : STD_LOGIC;
  signal \b1[0].ss_i_n_47\ : STD_LOGIC;
  signal \b1[0].ss_i_n_48\ : STD_LOGIC;
  signal \b1[0].ss_i_n_49\ : STD_LOGIC;
  signal \b1[0].ss_i_n_5\ : STD_LOGIC;
  signal \b1[0].ss_i_n_50\ : STD_LOGIC;
  signal \b1[0].ss_i_n_51\ : STD_LOGIC;
  signal \b1[0].ss_i_n_52\ : STD_LOGIC;
  signal \b1[0].ss_i_n_53\ : STD_LOGIC;
  signal \b1[0].ss_i_n_54\ : STD_LOGIC;
  signal \b1[0].ss_i_n_55\ : STD_LOGIC;
  signal \b1[0].ss_i_n_56\ : STD_LOGIC;
  signal \b1[0].ss_i_n_57\ : STD_LOGIC;
  signal \b1[0].ss_i_n_58\ : STD_LOGIC;
  signal \b1[0].ss_i_n_59\ : STD_LOGIC;
  signal \b1[0].ss_i_n_6\ : STD_LOGIC;
  signal \b1[0].ss_i_n_60\ : STD_LOGIC;
  signal \b1[0].ss_i_n_61\ : STD_LOGIC;
  signal \b1[0].ss_i_n_62\ : STD_LOGIC;
  signal \b1[0].ss_i_n_63\ : STD_LOGIC;
  signal \b1[0].ss_i_n_64\ : STD_LOGIC;
  signal \b1[0].ss_i_n_65\ : STD_LOGIC;
  signal \b1[0].ss_i_n_7\ : STD_LOGIC;
  signal \b1[0].ss_i_n_8\ : STD_LOGIC;
  signal \b1[0].ss_i_n_9\ : STD_LOGIC;
  signal \b1[1].ss_i_n_10\ : STD_LOGIC;
  signal \b1[1].ss_i_n_11\ : STD_LOGIC;
  signal \b1[1].ss_i_n_12\ : STD_LOGIC;
  signal \b1[1].ss_i_n_13\ : STD_LOGIC;
  signal \b1[1].ss_i_n_14\ : STD_LOGIC;
  signal \b1[1].ss_i_n_15\ : STD_LOGIC;
  signal \b1[1].ss_i_n_16\ : STD_LOGIC;
  signal \b1[1].ss_i_n_17\ : STD_LOGIC;
  signal \b1[1].ss_i_n_18\ : STD_LOGIC;
  signal \b1[1].ss_i_n_19\ : STD_LOGIC;
  signal \b1[1].ss_i_n_2\ : STD_LOGIC;
  signal \b1[1].ss_i_n_20\ : STD_LOGIC;
  signal \b1[1].ss_i_n_21\ : STD_LOGIC;
  signal \b1[1].ss_i_n_22\ : STD_LOGIC;
  signal \b1[1].ss_i_n_23\ : STD_LOGIC;
  signal \b1[1].ss_i_n_24\ : STD_LOGIC;
  signal \b1[1].ss_i_n_25\ : STD_LOGIC;
  signal \b1[1].ss_i_n_26\ : STD_LOGIC;
  signal \b1[1].ss_i_n_27\ : STD_LOGIC;
  signal \b1[1].ss_i_n_28\ : STD_LOGIC;
  signal \b1[1].ss_i_n_29\ : STD_LOGIC;
  signal \b1[1].ss_i_n_3\ : STD_LOGIC;
  signal \b1[1].ss_i_n_30\ : STD_LOGIC;
  signal \b1[1].ss_i_n_31\ : STD_LOGIC;
  signal \b1[1].ss_i_n_32\ : STD_LOGIC;
  signal \b1[1].ss_i_n_33\ : STD_LOGIC;
  signal \b1[1].ss_i_n_34\ : STD_LOGIC;
  signal \b1[1].ss_i_n_35\ : STD_LOGIC;
  signal \b1[1].ss_i_n_36\ : STD_LOGIC;
  signal \b1[1].ss_i_n_37\ : STD_LOGIC;
  signal \b1[1].ss_i_n_38\ : STD_LOGIC;
  signal \b1[1].ss_i_n_39\ : STD_LOGIC;
  signal \b1[1].ss_i_n_4\ : STD_LOGIC;
  signal \b1[1].ss_i_n_40\ : STD_LOGIC;
  signal \b1[1].ss_i_n_41\ : STD_LOGIC;
  signal \b1[1].ss_i_n_42\ : STD_LOGIC;
  signal \b1[1].ss_i_n_43\ : STD_LOGIC;
  signal \b1[1].ss_i_n_44\ : STD_LOGIC;
  signal \b1[1].ss_i_n_45\ : STD_LOGIC;
  signal \b1[1].ss_i_n_46\ : STD_LOGIC;
  signal \b1[1].ss_i_n_47\ : STD_LOGIC;
  signal \b1[1].ss_i_n_48\ : STD_LOGIC;
  signal \b1[1].ss_i_n_49\ : STD_LOGIC;
  signal \b1[1].ss_i_n_5\ : STD_LOGIC;
  signal \b1[1].ss_i_n_50\ : STD_LOGIC;
  signal \b1[1].ss_i_n_51\ : STD_LOGIC;
  signal \b1[1].ss_i_n_52\ : STD_LOGIC;
  signal \b1[1].ss_i_n_53\ : STD_LOGIC;
  signal \b1[1].ss_i_n_54\ : STD_LOGIC;
  signal \b1[1].ss_i_n_55\ : STD_LOGIC;
  signal \b1[1].ss_i_n_56\ : STD_LOGIC;
  signal \b1[1].ss_i_n_57\ : STD_LOGIC;
  signal \b1[1].ss_i_n_58\ : STD_LOGIC;
  signal \b1[1].ss_i_n_59\ : STD_LOGIC;
  signal \b1[1].ss_i_n_6\ : STD_LOGIC;
  signal \b1[1].ss_i_n_60\ : STD_LOGIC;
  signal \b1[1].ss_i_n_61\ : STD_LOGIC;
  signal \b1[1].ss_i_n_62\ : STD_LOGIC;
  signal \b1[1].ss_i_n_63\ : STD_LOGIC;
  signal \b1[1].ss_i_n_64\ : STD_LOGIC;
  signal \b1[1].ss_i_n_65\ : STD_LOGIC;
  signal \b1[1].ss_i_n_7\ : STD_LOGIC;
  signal \b1[1].ss_i_n_8\ : STD_LOGIC;
  signal \b1[1].ss_i_n_9\ : STD_LOGIC;
  signal \b1[2].ss_i_n_10\ : STD_LOGIC;
  signal \b1[2].ss_i_n_11\ : STD_LOGIC;
  signal \b1[2].ss_i_n_12\ : STD_LOGIC;
  signal \b1[2].ss_i_n_13\ : STD_LOGIC;
  signal \b1[2].ss_i_n_14\ : STD_LOGIC;
  signal \b1[2].ss_i_n_15\ : STD_LOGIC;
  signal \b1[2].ss_i_n_16\ : STD_LOGIC;
  signal \b1[2].ss_i_n_17\ : STD_LOGIC;
  signal \b1[2].ss_i_n_18\ : STD_LOGIC;
  signal \b1[2].ss_i_n_19\ : STD_LOGIC;
  signal \b1[2].ss_i_n_2\ : STD_LOGIC;
  signal \b1[2].ss_i_n_20\ : STD_LOGIC;
  signal \b1[2].ss_i_n_21\ : STD_LOGIC;
  signal \b1[2].ss_i_n_22\ : STD_LOGIC;
  signal \b1[2].ss_i_n_23\ : STD_LOGIC;
  signal \b1[2].ss_i_n_24\ : STD_LOGIC;
  signal \b1[2].ss_i_n_25\ : STD_LOGIC;
  signal \b1[2].ss_i_n_26\ : STD_LOGIC;
  signal \b1[2].ss_i_n_27\ : STD_LOGIC;
  signal \b1[2].ss_i_n_28\ : STD_LOGIC;
  signal \b1[2].ss_i_n_29\ : STD_LOGIC;
  signal \b1[2].ss_i_n_3\ : STD_LOGIC;
  signal \b1[2].ss_i_n_30\ : STD_LOGIC;
  signal \b1[2].ss_i_n_31\ : STD_LOGIC;
  signal \b1[2].ss_i_n_32\ : STD_LOGIC;
  signal \b1[2].ss_i_n_33\ : STD_LOGIC;
  signal \b1[2].ss_i_n_34\ : STD_LOGIC;
  signal \b1[2].ss_i_n_35\ : STD_LOGIC;
  signal \b1[2].ss_i_n_36\ : STD_LOGIC;
  signal \b1[2].ss_i_n_37\ : STD_LOGIC;
  signal \b1[2].ss_i_n_38\ : STD_LOGIC;
  signal \b1[2].ss_i_n_39\ : STD_LOGIC;
  signal \b1[2].ss_i_n_4\ : STD_LOGIC;
  signal \b1[2].ss_i_n_40\ : STD_LOGIC;
  signal \b1[2].ss_i_n_41\ : STD_LOGIC;
  signal \b1[2].ss_i_n_42\ : STD_LOGIC;
  signal \b1[2].ss_i_n_43\ : STD_LOGIC;
  signal \b1[2].ss_i_n_44\ : STD_LOGIC;
  signal \b1[2].ss_i_n_45\ : STD_LOGIC;
  signal \b1[2].ss_i_n_46\ : STD_LOGIC;
  signal \b1[2].ss_i_n_47\ : STD_LOGIC;
  signal \b1[2].ss_i_n_48\ : STD_LOGIC;
  signal \b1[2].ss_i_n_49\ : STD_LOGIC;
  signal \b1[2].ss_i_n_5\ : STD_LOGIC;
  signal \b1[2].ss_i_n_50\ : STD_LOGIC;
  signal \b1[2].ss_i_n_51\ : STD_LOGIC;
  signal \b1[2].ss_i_n_52\ : STD_LOGIC;
  signal \b1[2].ss_i_n_53\ : STD_LOGIC;
  signal \b1[2].ss_i_n_54\ : STD_LOGIC;
  signal \b1[2].ss_i_n_55\ : STD_LOGIC;
  signal \b1[2].ss_i_n_56\ : STD_LOGIC;
  signal \b1[2].ss_i_n_57\ : STD_LOGIC;
  signal \b1[2].ss_i_n_58\ : STD_LOGIC;
  signal \b1[2].ss_i_n_59\ : STD_LOGIC;
  signal \b1[2].ss_i_n_6\ : STD_LOGIC;
  signal \b1[2].ss_i_n_60\ : STD_LOGIC;
  signal \b1[2].ss_i_n_61\ : STD_LOGIC;
  signal \b1[2].ss_i_n_62\ : STD_LOGIC;
  signal \b1[2].ss_i_n_63\ : STD_LOGIC;
  signal \b1[2].ss_i_n_64\ : STD_LOGIC;
  signal \b1[2].ss_i_n_65\ : STD_LOGIC;
  signal \b1[2].ss_i_n_7\ : STD_LOGIC;
  signal \b1[2].ss_i_n_8\ : STD_LOGIC;
  signal \b1[2].ss_i_n_9\ : STD_LOGIC;
  signal \b1[3].ss_i_n_10\ : STD_LOGIC;
  signal \b1[3].ss_i_n_11\ : STD_LOGIC;
  signal \b1[3].ss_i_n_12\ : STD_LOGIC;
  signal \b1[3].ss_i_n_13\ : STD_LOGIC;
  signal \b1[3].ss_i_n_14\ : STD_LOGIC;
  signal \b1[3].ss_i_n_15\ : STD_LOGIC;
  signal \b1[3].ss_i_n_16\ : STD_LOGIC;
  signal \b1[3].ss_i_n_17\ : STD_LOGIC;
  signal \b1[3].ss_i_n_18\ : STD_LOGIC;
  signal \b1[3].ss_i_n_19\ : STD_LOGIC;
  signal \b1[3].ss_i_n_20\ : STD_LOGIC;
  signal \b1[3].ss_i_n_21\ : STD_LOGIC;
  signal \b1[3].ss_i_n_22\ : STD_LOGIC;
  signal \b1[3].ss_i_n_23\ : STD_LOGIC;
  signal \b1[3].ss_i_n_24\ : STD_LOGIC;
  signal \b1[3].ss_i_n_25\ : STD_LOGIC;
  signal \b1[3].ss_i_n_26\ : STD_LOGIC;
  signal \b1[3].ss_i_n_27\ : STD_LOGIC;
  signal \b1[3].ss_i_n_28\ : STD_LOGIC;
  signal \b1[3].ss_i_n_29\ : STD_LOGIC;
  signal \b1[3].ss_i_n_3\ : STD_LOGIC;
  signal \b1[3].ss_i_n_30\ : STD_LOGIC;
  signal \b1[3].ss_i_n_31\ : STD_LOGIC;
  signal \b1[3].ss_i_n_32\ : STD_LOGIC;
  signal \b1[3].ss_i_n_33\ : STD_LOGIC;
  signal \b1[3].ss_i_n_34\ : STD_LOGIC;
  signal \b1[3].ss_i_n_35\ : STD_LOGIC;
  signal \b1[3].ss_i_n_36\ : STD_LOGIC;
  signal \b1[3].ss_i_n_37\ : STD_LOGIC;
  signal \b1[3].ss_i_n_38\ : STD_LOGIC;
  signal \b1[3].ss_i_n_39\ : STD_LOGIC;
  signal \b1[3].ss_i_n_4\ : STD_LOGIC;
  signal \b1[3].ss_i_n_40\ : STD_LOGIC;
  signal \b1[3].ss_i_n_41\ : STD_LOGIC;
  signal \b1[3].ss_i_n_42\ : STD_LOGIC;
  signal \b1[3].ss_i_n_43\ : STD_LOGIC;
  signal \b1[3].ss_i_n_44\ : STD_LOGIC;
  signal \b1[3].ss_i_n_45\ : STD_LOGIC;
  signal \b1[3].ss_i_n_46\ : STD_LOGIC;
  signal \b1[3].ss_i_n_47\ : STD_LOGIC;
  signal \b1[3].ss_i_n_48\ : STD_LOGIC;
  signal \b1[3].ss_i_n_49\ : STD_LOGIC;
  signal \b1[3].ss_i_n_5\ : STD_LOGIC;
  signal \b1[3].ss_i_n_50\ : STD_LOGIC;
  signal \b1[3].ss_i_n_51\ : STD_LOGIC;
  signal \b1[3].ss_i_n_52\ : STD_LOGIC;
  signal \b1[3].ss_i_n_53\ : STD_LOGIC;
  signal \b1[3].ss_i_n_54\ : STD_LOGIC;
  signal \b1[3].ss_i_n_55\ : STD_LOGIC;
  signal \b1[3].ss_i_n_56\ : STD_LOGIC;
  signal \b1[3].ss_i_n_57\ : STD_LOGIC;
  signal \b1[3].ss_i_n_58\ : STD_LOGIC;
  signal \b1[3].ss_i_n_59\ : STD_LOGIC;
  signal \b1[3].ss_i_n_6\ : STD_LOGIC;
  signal \b1[3].ss_i_n_60\ : STD_LOGIC;
  signal \b1[3].ss_i_n_61\ : STD_LOGIC;
  signal \b1[3].ss_i_n_62\ : STD_LOGIC;
  signal \b1[3].ss_i_n_63\ : STD_LOGIC;
  signal \b1[3].ss_i_n_64\ : STD_LOGIC;
  signal \b1[3].ss_i_n_65\ : STD_LOGIC;
  signal \b1[3].ss_i_n_66\ : STD_LOGIC;
  signal \b1[3].ss_i_n_7\ : STD_LOGIC;
  signal \b1[3].ss_i_n_8\ : STD_LOGIC;
  signal \b1[3].ss_i_n_9\ : STD_LOGIC;
  signal \b1[4].ss_i_n_10\ : STD_LOGIC;
  signal \b1[4].ss_i_n_11\ : STD_LOGIC;
  signal \b1[4].ss_i_n_12\ : STD_LOGIC;
  signal \b1[4].ss_i_n_13\ : STD_LOGIC;
  signal \b1[4].ss_i_n_14\ : STD_LOGIC;
  signal \b1[4].ss_i_n_15\ : STD_LOGIC;
  signal \b1[4].ss_i_n_16\ : STD_LOGIC;
  signal \b1[4].ss_i_n_17\ : STD_LOGIC;
  signal \b1[4].ss_i_n_18\ : STD_LOGIC;
  signal \b1[4].ss_i_n_19\ : STD_LOGIC;
  signal \b1[4].ss_i_n_2\ : STD_LOGIC;
  signal \b1[4].ss_i_n_20\ : STD_LOGIC;
  signal \b1[4].ss_i_n_21\ : STD_LOGIC;
  signal \b1[4].ss_i_n_22\ : STD_LOGIC;
  signal \b1[4].ss_i_n_23\ : STD_LOGIC;
  signal \b1[4].ss_i_n_24\ : STD_LOGIC;
  signal \b1[4].ss_i_n_25\ : STD_LOGIC;
  signal \b1[4].ss_i_n_26\ : STD_LOGIC;
  signal \b1[4].ss_i_n_27\ : STD_LOGIC;
  signal \b1[4].ss_i_n_28\ : STD_LOGIC;
  signal \b1[4].ss_i_n_29\ : STD_LOGIC;
  signal \b1[4].ss_i_n_3\ : STD_LOGIC;
  signal \b1[4].ss_i_n_30\ : STD_LOGIC;
  signal \b1[4].ss_i_n_31\ : STD_LOGIC;
  signal \b1[4].ss_i_n_32\ : STD_LOGIC;
  signal \b1[4].ss_i_n_33\ : STD_LOGIC;
  signal \b1[4].ss_i_n_34\ : STD_LOGIC;
  signal \b1[4].ss_i_n_35\ : STD_LOGIC;
  signal \b1[4].ss_i_n_36\ : STD_LOGIC;
  signal \b1[4].ss_i_n_37\ : STD_LOGIC;
  signal \b1[4].ss_i_n_38\ : STD_LOGIC;
  signal \b1[4].ss_i_n_39\ : STD_LOGIC;
  signal \b1[4].ss_i_n_4\ : STD_LOGIC;
  signal \b1[4].ss_i_n_40\ : STD_LOGIC;
  signal \b1[4].ss_i_n_41\ : STD_LOGIC;
  signal \b1[4].ss_i_n_42\ : STD_LOGIC;
  signal \b1[4].ss_i_n_43\ : STD_LOGIC;
  signal \b1[4].ss_i_n_44\ : STD_LOGIC;
  signal \b1[4].ss_i_n_45\ : STD_LOGIC;
  signal \b1[4].ss_i_n_46\ : STD_LOGIC;
  signal \b1[4].ss_i_n_47\ : STD_LOGIC;
  signal \b1[4].ss_i_n_48\ : STD_LOGIC;
  signal \b1[4].ss_i_n_49\ : STD_LOGIC;
  signal \b1[4].ss_i_n_5\ : STD_LOGIC;
  signal \b1[4].ss_i_n_50\ : STD_LOGIC;
  signal \b1[4].ss_i_n_51\ : STD_LOGIC;
  signal \b1[4].ss_i_n_52\ : STD_LOGIC;
  signal \b1[4].ss_i_n_53\ : STD_LOGIC;
  signal \b1[4].ss_i_n_54\ : STD_LOGIC;
  signal \b1[4].ss_i_n_55\ : STD_LOGIC;
  signal \b1[4].ss_i_n_56\ : STD_LOGIC;
  signal \b1[4].ss_i_n_57\ : STD_LOGIC;
  signal \b1[4].ss_i_n_58\ : STD_LOGIC;
  signal \b1[4].ss_i_n_59\ : STD_LOGIC;
  signal \b1[4].ss_i_n_6\ : STD_LOGIC;
  signal \b1[4].ss_i_n_60\ : STD_LOGIC;
  signal \b1[4].ss_i_n_61\ : STD_LOGIC;
  signal \b1[4].ss_i_n_62\ : STD_LOGIC;
  signal \b1[4].ss_i_n_63\ : STD_LOGIC;
  signal \b1[4].ss_i_n_64\ : STD_LOGIC;
  signal \b1[4].ss_i_n_65\ : STD_LOGIC;
  signal \b1[4].ss_i_n_7\ : STD_LOGIC;
  signal \b1[4].ss_i_n_8\ : STD_LOGIC;
  signal \b1[4].ss_i_n_9\ : STD_LOGIC;
  signal \b1[5].ss_i_n_10\ : STD_LOGIC;
  signal \b1[5].ss_i_n_11\ : STD_LOGIC;
  signal \b1[5].ss_i_n_12\ : STD_LOGIC;
  signal \b1[5].ss_i_n_13\ : STD_LOGIC;
  signal \b1[5].ss_i_n_14\ : STD_LOGIC;
  signal \b1[5].ss_i_n_15\ : STD_LOGIC;
  signal \b1[5].ss_i_n_16\ : STD_LOGIC;
  signal \b1[5].ss_i_n_17\ : STD_LOGIC;
  signal \b1[5].ss_i_n_18\ : STD_LOGIC;
  signal \b1[5].ss_i_n_19\ : STD_LOGIC;
  signal \b1[5].ss_i_n_2\ : STD_LOGIC;
  signal \b1[5].ss_i_n_20\ : STD_LOGIC;
  signal \b1[5].ss_i_n_21\ : STD_LOGIC;
  signal \b1[5].ss_i_n_22\ : STD_LOGIC;
  signal \b1[5].ss_i_n_23\ : STD_LOGIC;
  signal \b1[5].ss_i_n_24\ : STD_LOGIC;
  signal \b1[5].ss_i_n_25\ : STD_LOGIC;
  signal \b1[5].ss_i_n_26\ : STD_LOGIC;
  signal \b1[5].ss_i_n_27\ : STD_LOGIC;
  signal \b1[5].ss_i_n_28\ : STD_LOGIC;
  signal \b1[5].ss_i_n_29\ : STD_LOGIC;
  signal \b1[5].ss_i_n_3\ : STD_LOGIC;
  signal \b1[5].ss_i_n_30\ : STD_LOGIC;
  signal \b1[5].ss_i_n_31\ : STD_LOGIC;
  signal \b1[5].ss_i_n_32\ : STD_LOGIC;
  signal \b1[5].ss_i_n_33\ : STD_LOGIC;
  signal \b1[5].ss_i_n_34\ : STD_LOGIC;
  signal \b1[5].ss_i_n_35\ : STD_LOGIC;
  signal \b1[5].ss_i_n_36\ : STD_LOGIC;
  signal \b1[5].ss_i_n_37\ : STD_LOGIC;
  signal \b1[5].ss_i_n_38\ : STD_LOGIC;
  signal \b1[5].ss_i_n_39\ : STD_LOGIC;
  signal \b1[5].ss_i_n_4\ : STD_LOGIC;
  signal \b1[5].ss_i_n_40\ : STD_LOGIC;
  signal \b1[5].ss_i_n_41\ : STD_LOGIC;
  signal \b1[5].ss_i_n_42\ : STD_LOGIC;
  signal \b1[5].ss_i_n_43\ : STD_LOGIC;
  signal \b1[5].ss_i_n_44\ : STD_LOGIC;
  signal \b1[5].ss_i_n_45\ : STD_LOGIC;
  signal \b1[5].ss_i_n_46\ : STD_LOGIC;
  signal \b1[5].ss_i_n_47\ : STD_LOGIC;
  signal \b1[5].ss_i_n_48\ : STD_LOGIC;
  signal \b1[5].ss_i_n_49\ : STD_LOGIC;
  signal \b1[5].ss_i_n_5\ : STD_LOGIC;
  signal \b1[5].ss_i_n_50\ : STD_LOGIC;
  signal \b1[5].ss_i_n_51\ : STD_LOGIC;
  signal \b1[5].ss_i_n_52\ : STD_LOGIC;
  signal \b1[5].ss_i_n_53\ : STD_LOGIC;
  signal \b1[5].ss_i_n_54\ : STD_LOGIC;
  signal \b1[5].ss_i_n_55\ : STD_LOGIC;
  signal \b1[5].ss_i_n_56\ : STD_LOGIC;
  signal \b1[5].ss_i_n_57\ : STD_LOGIC;
  signal \b1[5].ss_i_n_58\ : STD_LOGIC;
  signal \b1[5].ss_i_n_59\ : STD_LOGIC;
  signal \b1[5].ss_i_n_6\ : STD_LOGIC;
  signal \b1[5].ss_i_n_60\ : STD_LOGIC;
  signal \b1[5].ss_i_n_61\ : STD_LOGIC;
  signal \b1[5].ss_i_n_62\ : STD_LOGIC;
  signal \b1[5].ss_i_n_63\ : STD_LOGIC;
  signal \b1[5].ss_i_n_64\ : STD_LOGIC;
  signal \b1[5].ss_i_n_65\ : STD_LOGIC;
  signal \b1[5].ss_i_n_7\ : STD_LOGIC;
  signal \b1[5].ss_i_n_8\ : STD_LOGIC;
  signal \b1[5].ss_i_n_9\ : STD_LOGIC;
  signal \b2[3].merge_i/data_i\ : STD_LOGIC;
  signal \b2[3].merge_i/have_data0\ : STD_LOGIC;
  signal \b2[4].merge_i/data_i\ : STD_LOGIC;
  signal \b2[4].merge_i/have_data0\ : STD_LOGIC;
  signal \b2[4].merge_i/have_data02_out\ : STD_LOGIC;
  signal \b2[5].merge_i/have_data0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal counter_overflow_i_10_n_0 : STD_LOGIC;
  signal counter_overflow_i_1_n_0 : STD_LOGIC;
  signal counter_overflow_i_2_n_0 : STD_LOGIC;
  signal counter_overflow_i_3_n_0 : STD_LOGIC;
  signal counter_overflow_i_4_n_0 : STD_LOGIC;
  signal counter_overflow_i_5_n_0 : STD_LOGIC;
  signal counter_overflow_i_6_n_0 : STD_LOGIC;
  signal counter_overflow_i_7_n_0 : STD_LOGIC;
  signal counter_overflow_i_8_n_0 : STD_LOGIC;
  signal counter_overflow_i_9_n_0 : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[31]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[39]_i_1_n_9\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal ctr_dest_out : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal ctr_dest_req : STD_LOGIC;
  signal ctr_of_dest_out : STD_LOGIC;
  signal ctr_src_rcv : STD_LOGIC;
  signal ctr_src_send : STD_LOGIC;
  signal ctr_src_send_i_1_n_0 : STD_LOGIC;
  signal event_empty_i : STD_LOGIC;
  signal merge_tree_i_n_0 : STD_LOGIC;
  signal merge_tree_i_n_1 : STD_LOGIC;
  signal merge_tree_i_n_2 : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 28 to 28 );
  signal sw_counter : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal sw_counter_overflow : STD_LOGIC;
  signal sw_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal sw_read : STD_LOGIC;
  signal sw_reset_mon : STD_LOGIC;
  signal sw_trace_data : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \sw_trace_data_reg_n_0_[9]\ : STD_LOGIC;
  signal sw_trace_write_reg_n_0 : STD_LOGIC;
  signal \^trace4_counter\ : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal \^trace4_counter_overflow\ : STD_LOGIC;
  signal \^trace_rst\ : STD_LOGIC;
  signal \NLW_counter_reg[44]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_counter_reg[44]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[31]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[39]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[44]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg[7]_i_1\ : label is 16;
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of xpm_cdc_handshake_inst : label is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of xpm_cdc_handshake_inst : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of xpm_cdc_handshake_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_cdc_handshake_inst : label is 0;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of xpm_cdc_handshake_inst : label is 4;
  attribute VERSION : integer;
  attribute VERSION of xpm_cdc_handshake_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of xpm_cdc_handshake_inst : label is 45;
  attribute XPM_CDC : string;
  attribute XPM_CDC of xpm_cdc_handshake_inst : label is "HANDSHAKE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_cdc_handshake_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_inst : label is 3;
  attribute INIT_SYNC_FF of xpm_cdc_single_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_inst : label is 1;
  attribute VERSION of xpm_cdc_single_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_sw_rst_inst : label is 3;
  attribute INIT_SYNC_FF of xpm_cdc_single_sw_rst_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_cdc_single_sw_rst_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_cdc_single_sw_rst_inst : label is 0;
  attribute VERSION of xpm_cdc_single_sw_rst_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_sw_rst_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_sw_rst_inst : label is "TRUE";
begin
  pass_ready <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \^s_axi_rdata\(28);
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \^s_axi_rdata\(28);
  s_axi_rdata(27) <= \^s_axi_rdata\(28);
  s_axi_rdata(26) <= \^s_axi_rdata\(28);
  s_axi_rdata(25) <= \^s_axi_rdata\(28);
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \^s_axi_rdata\(28);
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \^s_axi_rdata\(28);
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \^s_axi_rdata\(28);
  s_axi_rdata(18) <= \^s_axi_rdata\(28);
  s_axi_rdata(17) <= \^s_axi_rdata\(28);
  s_axi_rdata(16) <= \^s_axi_rdata\(28);
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \^s_axi_rdata\(28);
  s_axi_rdata(2) <= \^s_axi_rdata\(28);
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \^s_axi_rdata\(28);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  trace0_counter(44 downto 0) <= \^trace4_counter\(44 downto 0);
  trace0_counter_overflow <= \^trace4_counter_overflow\;
  trace10_counter(44) <= \<const0>\;
  trace10_counter(43) <= \<const0>\;
  trace10_counter(42) <= \<const0>\;
  trace10_counter(41) <= \<const0>\;
  trace10_counter(40) <= \<const0>\;
  trace10_counter(39) <= \<const0>\;
  trace10_counter(38) <= \<const0>\;
  trace10_counter(37) <= \<const0>\;
  trace10_counter(36) <= \<const0>\;
  trace10_counter(35) <= \<const0>\;
  trace10_counter(34) <= \<const0>\;
  trace10_counter(33) <= \<const0>\;
  trace10_counter(32) <= \<const0>\;
  trace10_counter(31) <= \<const0>\;
  trace10_counter(30) <= \<const0>\;
  trace10_counter(29) <= \<const0>\;
  trace10_counter(28) <= \<const0>\;
  trace10_counter(27) <= \<const0>\;
  trace10_counter(26) <= \<const0>\;
  trace10_counter(25) <= \<const0>\;
  trace10_counter(24) <= \<const0>\;
  trace10_counter(23) <= \<const0>\;
  trace10_counter(22) <= \<const0>\;
  trace10_counter(21) <= \<const0>\;
  trace10_counter(20) <= \<const0>\;
  trace10_counter(19) <= \<const0>\;
  trace10_counter(18) <= \<const0>\;
  trace10_counter(17) <= \<const0>\;
  trace10_counter(16) <= \<const0>\;
  trace10_counter(15) <= \<const0>\;
  trace10_counter(14) <= \<const0>\;
  trace10_counter(13) <= \<const0>\;
  trace10_counter(12) <= \<const0>\;
  trace10_counter(11) <= \<const0>\;
  trace10_counter(10) <= \<const0>\;
  trace10_counter(9) <= \<const0>\;
  trace10_counter(8) <= \<const0>\;
  trace10_counter(7) <= \<const0>\;
  trace10_counter(6) <= \<const0>\;
  trace10_counter(5) <= \<const0>\;
  trace10_counter(4) <= \<const0>\;
  trace10_counter(3) <= \<const0>\;
  trace10_counter(2) <= \<const0>\;
  trace10_counter(1) <= \<const0>\;
  trace10_counter(0) <= \<const0>\;
  trace10_counter_overflow <= \<const0>\;
  trace10_read <= \<const0>\;
  trace11_counter(44) <= \<const0>\;
  trace11_counter(43) <= \<const0>\;
  trace11_counter(42) <= \<const0>\;
  trace11_counter(41) <= \<const0>\;
  trace11_counter(40) <= \<const0>\;
  trace11_counter(39) <= \<const0>\;
  trace11_counter(38) <= \<const0>\;
  trace11_counter(37) <= \<const0>\;
  trace11_counter(36) <= \<const0>\;
  trace11_counter(35) <= \<const0>\;
  trace11_counter(34) <= \<const0>\;
  trace11_counter(33) <= \<const0>\;
  trace11_counter(32) <= \<const0>\;
  trace11_counter(31) <= \<const0>\;
  trace11_counter(30) <= \<const0>\;
  trace11_counter(29) <= \<const0>\;
  trace11_counter(28) <= \<const0>\;
  trace11_counter(27) <= \<const0>\;
  trace11_counter(26) <= \<const0>\;
  trace11_counter(25) <= \<const0>\;
  trace11_counter(24) <= \<const0>\;
  trace11_counter(23) <= \<const0>\;
  trace11_counter(22) <= \<const0>\;
  trace11_counter(21) <= \<const0>\;
  trace11_counter(20) <= \<const0>\;
  trace11_counter(19) <= \<const0>\;
  trace11_counter(18) <= \<const0>\;
  trace11_counter(17) <= \<const0>\;
  trace11_counter(16) <= \<const0>\;
  trace11_counter(15) <= \<const0>\;
  trace11_counter(14) <= \<const0>\;
  trace11_counter(13) <= \<const0>\;
  trace11_counter(12) <= \<const0>\;
  trace11_counter(11) <= \<const0>\;
  trace11_counter(10) <= \<const0>\;
  trace11_counter(9) <= \<const0>\;
  trace11_counter(8) <= \<const0>\;
  trace11_counter(7) <= \<const0>\;
  trace11_counter(6) <= \<const0>\;
  trace11_counter(5) <= \<const0>\;
  trace11_counter(4) <= \<const0>\;
  trace11_counter(3) <= \<const0>\;
  trace11_counter(2) <= \<const0>\;
  trace11_counter(1) <= \<const0>\;
  trace11_counter(0) <= \<const0>\;
  trace11_counter_overflow <= \<const0>\;
  trace11_read <= \<const0>\;
  trace12_counter(44) <= \<const0>\;
  trace12_counter(43) <= \<const0>\;
  trace12_counter(42) <= \<const0>\;
  trace12_counter(41) <= \<const0>\;
  trace12_counter(40) <= \<const0>\;
  trace12_counter(39) <= \<const0>\;
  trace12_counter(38) <= \<const0>\;
  trace12_counter(37) <= \<const0>\;
  trace12_counter(36) <= \<const0>\;
  trace12_counter(35) <= \<const0>\;
  trace12_counter(34) <= \<const0>\;
  trace12_counter(33) <= \<const0>\;
  trace12_counter(32) <= \<const0>\;
  trace12_counter(31) <= \<const0>\;
  trace12_counter(30) <= \<const0>\;
  trace12_counter(29) <= \<const0>\;
  trace12_counter(28) <= \<const0>\;
  trace12_counter(27) <= \<const0>\;
  trace12_counter(26) <= \<const0>\;
  trace12_counter(25) <= \<const0>\;
  trace12_counter(24) <= \<const0>\;
  trace12_counter(23) <= \<const0>\;
  trace12_counter(22) <= \<const0>\;
  trace12_counter(21) <= \<const0>\;
  trace12_counter(20) <= \<const0>\;
  trace12_counter(19) <= \<const0>\;
  trace12_counter(18) <= \<const0>\;
  trace12_counter(17) <= \<const0>\;
  trace12_counter(16) <= \<const0>\;
  trace12_counter(15) <= \<const0>\;
  trace12_counter(14) <= \<const0>\;
  trace12_counter(13) <= \<const0>\;
  trace12_counter(12) <= \<const0>\;
  trace12_counter(11) <= \<const0>\;
  trace12_counter(10) <= \<const0>\;
  trace12_counter(9) <= \<const0>\;
  trace12_counter(8) <= \<const0>\;
  trace12_counter(7) <= \<const0>\;
  trace12_counter(6) <= \<const0>\;
  trace12_counter(5) <= \<const0>\;
  trace12_counter(4) <= \<const0>\;
  trace12_counter(3) <= \<const0>\;
  trace12_counter(2) <= \<const0>\;
  trace12_counter(1) <= \<const0>\;
  trace12_counter(0) <= \<const0>\;
  trace12_counter_overflow <= \<const0>\;
  trace12_read <= \<const0>\;
  trace13_counter(44) <= \<const0>\;
  trace13_counter(43) <= \<const0>\;
  trace13_counter(42) <= \<const0>\;
  trace13_counter(41) <= \<const0>\;
  trace13_counter(40) <= \<const0>\;
  trace13_counter(39) <= \<const0>\;
  trace13_counter(38) <= \<const0>\;
  trace13_counter(37) <= \<const0>\;
  trace13_counter(36) <= \<const0>\;
  trace13_counter(35) <= \<const0>\;
  trace13_counter(34) <= \<const0>\;
  trace13_counter(33) <= \<const0>\;
  trace13_counter(32) <= \<const0>\;
  trace13_counter(31) <= \<const0>\;
  trace13_counter(30) <= \<const0>\;
  trace13_counter(29) <= \<const0>\;
  trace13_counter(28) <= \<const0>\;
  trace13_counter(27) <= \<const0>\;
  trace13_counter(26) <= \<const0>\;
  trace13_counter(25) <= \<const0>\;
  trace13_counter(24) <= \<const0>\;
  trace13_counter(23) <= \<const0>\;
  trace13_counter(22) <= \<const0>\;
  trace13_counter(21) <= \<const0>\;
  trace13_counter(20) <= \<const0>\;
  trace13_counter(19) <= \<const0>\;
  trace13_counter(18) <= \<const0>\;
  trace13_counter(17) <= \<const0>\;
  trace13_counter(16) <= \<const0>\;
  trace13_counter(15) <= \<const0>\;
  trace13_counter(14) <= \<const0>\;
  trace13_counter(13) <= \<const0>\;
  trace13_counter(12) <= \<const0>\;
  trace13_counter(11) <= \<const0>\;
  trace13_counter(10) <= \<const0>\;
  trace13_counter(9) <= \<const0>\;
  trace13_counter(8) <= \<const0>\;
  trace13_counter(7) <= \<const0>\;
  trace13_counter(6) <= \<const0>\;
  trace13_counter(5) <= \<const0>\;
  trace13_counter(4) <= \<const0>\;
  trace13_counter(3) <= \<const0>\;
  trace13_counter(2) <= \<const0>\;
  trace13_counter(1) <= \<const0>\;
  trace13_counter(0) <= \<const0>\;
  trace13_counter_overflow <= \<const0>\;
  trace13_read <= \<const0>\;
  trace14_counter(44) <= \<const0>\;
  trace14_counter(43) <= \<const0>\;
  trace14_counter(42) <= \<const0>\;
  trace14_counter(41) <= \<const0>\;
  trace14_counter(40) <= \<const0>\;
  trace14_counter(39) <= \<const0>\;
  trace14_counter(38) <= \<const0>\;
  trace14_counter(37) <= \<const0>\;
  trace14_counter(36) <= \<const0>\;
  trace14_counter(35) <= \<const0>\;
  trace14_counter(34) <= \<const0>\;
  trace14_counter(33) <= \<const0>\;
  trace14_counter(32) <= \<const0>\;
  trace14_counter(31) <= \<const0>\;
  trace14_counter(30) <= \<const0>\;
  trace14_counter(29) <= \<const0>\;
  trace14_counter(28) <= \<const0>\;
  trace14_counter(27) <= \<const0>\;
  trace14_counter(26) <= \<const0>\;
  trace14_counter(25) <= \<const0>\;
  trace14_counter(24) <= \<const0>\;
  trace14_counter(23) <= \<const0>\;
  trace14_counter(22) <= \<const0>\;
  trace14_counter(21) <= \<const0>\;
  trace14_counter(20) <= \<const0>\;
  trace14_counter(19) <= \<const0>\;
  trace14_counter(18) <= \<const0>\;
  trace14_counter(17) <= \<const0>\;
  trace14_counter(16) <= \<const0>\;
  trace14_counter(15) <= \<const0>\;
  trace14_counter(14) <= \<const0>\;
  trace14_counter(13) <= \<const0>\;
  trace14_counter(12) <= \<const0>\;
  trace14_counter(11) <= \<const0>\;
  trace14_counter(10) <= \<const0>\;
  trace14_counter(9) <= \<const0>\;
  trace14_counter(8) <= \<const0>\;
  trace14_counter(7) <= \<const0>\;
  trace14_counter(6) <= \<const0>\;
  trace14_counter(5) <= \<const0>\;
  trace14_counter(4) <= \<const0>\;
  trace14_counter(3) <= \<const0>\;
  trace14_counter(2) <= \<const0>\;
  trace14_counter(1) <= \<const0>\;
  trace14_counter(0) <= \<const0>\;
  trace14_counter_overflow <= \<const0>\;
  trace14_read <= \<const0>\;
  trace15_counter(44) <= \<const0>\;
  trace15_counter(43) <= \<const0>\;
  trace15_counter(42) <= \<const0>\;
  trace15_counter(41) <= \<const0>\;
  trace15_counter(40) <= \<const0>\;
  trace15_counter(39) <= \<const0>\;
  trace15_counter(38) <= \<const0>\;
  trace15_counter(37) <= \<const0>\;
  trace15_counter(36) <= \<const0>\;
  trace15_counter(35) <= \<const0>\;
  trace15_counter(34) <= \<const0>\;
  trace15_counter(33) <= \<const0>\;
  trace15_counter(32) <= \<const0>\;
  trace15_counter(31) <= \<const0>\;
  trace15_counter(30) <= \<const0>\;
  trace15_counter(29) <= \<const0>\;
  trace15_counter(28) <= \<const0>\;
  trace15_counter(27) <= \<const0>\;
  trace15_counter(26) <= \<const0>\;
  trace15_counter(25) <= \<const0>\;
  trace15_counter(24) <= \<const0>\;
  trace15_counter(23) <= \<const0>\;
  trace15_counter(22) <= \<const0>\;
  trace15_counter(21) <= \<const0>\;
  trace15_counter(20) <= \<const0>\;
  trace15_counter(19) <= \<const0>\;
  trace15_counter(18) <= \<const0>\;
  trace15_counter(17) <= \<const0>\;
  trace15_counter(16) <= \<const0>\;
  trace15_counter(15) <= \<const0>\;
  trace15_counter(14) <= \<const0>\;
  trace15_counter(13) <= \<const0>\;
  trace15_counter(12) <= \<const0>\;
  trace15_counter(11) <= \<const0>\;
  trace15_counter(10) <= \<const0>\;
  trace15_counter(9) <= \<const0>\;
  trace15_counter(8) <= \<const0>\;
  trace15_counter(7) <= \<const0>\;
  trace15_counter(6) <= \<const0>\;
  trace15_counter(5) <= \<const0>\;
  trace15_counter(4) <= \<const0>\;
  trace15_counter(3) <= \<const0>\;
  trace15_counter(2) <= \<const0>\;
  trace15_counter(1) <= \<const0>\;
  trace15_counter(0) <= \<const0>\;
  trace15_counter_overflow <= \<const0>\;
  trace15_read <= \<const0>\;
  trace16_counter(44) <= \<const0>\;
  trace16_counter(43) <= \<const0>\;
  trace16_counter(42) <= \<const0>\;
  trace16_counter(41) <= \<const0>\;
  trace16_counter(40) <= \<const0>\;
  trace16_counter(39) <= \<const0>\;
  trace16_counter(38) <= \<const0>\;
  trace16_counter(37) <= \<const0>\;
  trace16_counter(36) <= \<const0>\;
  trace16_counter(35) <= \<const0>\;
  trace16_counter(34) <= \<const0>\;
  trace16_counter(33) <= \<const0>\;
  trace16_counter(32) <= \<const0>\;
  trace16_counter(31) <= \<const0>\;
  trace16_counter(30) <= \<const0>\;
  trace16_counter(29) <= \<const0>\;
  trace16_counter(28) <= \<const0>\;
  trace16_counter(27) <= \<const0>\;
  trace16_counter(26) <= \<const0>\;
  trace16_counter(25) <= \<const0>\;
  trace16_counter(24) <= \<const0>\;
  trace16_counter(23) <= \<const0>\;
  trace16_counter(22) <= \<const0>\;
  trace16_counter(21) <= \<const0>\;
  trace16_counter(20) <= \<const0>\;
  trace16_counter(19) <= \<const0>\;
  trace16_counter(18) <= \<const0>\;
  trace16_counter(17) <= \<const0>\;
  trace16_counter(16) <= \<const0>\;
  trace16_counter(15) <= \<const0>\;
  trace16_counter(14) <= \<const0>\;
  trace16_counter(13) <= \<const0>\;
  trace16_counter(12) <= \<const0>\;
  trace16_counter(11) <= \<const0>\;
  trace16_counter(10) <= \<const0>\;
  trace16_counter(9) <= \<const0>\;
  trace16_counter(8) <= \<const0>\;
  trace16_counter(7) <= \<const0>\;
  trace16_counter(6) <= \<const0>\;
  trace16_counter(5) <= \<const0>\;
  trace16_counter(4) <= \<const0>\;
  trace16_counter(3) <= \<const0>\;
  trace16_counter(2) <= \<const0>\;
  trace16_counter(1) <= \<const0>\;
  trace16_counter(0) <= \<const0>\;
  trace16_counter_overflow <= \<const0>\;
  trace16_read <= \<const0>\;
  trace17_counter(44) <= \<const0>\;
  trace17_counter(43) <= \<const0>\;
  trace17_counter(42) <= \<const0>\;
  trace17_counter(41) <= \<const0>\;
  trace17_counter(40) <= \<const0>\;
  trace17_counter(39) <= \<const0>\;
  trace17_counter(38) <= \<const0>\;
  trace17_counter(37) <= \<const0>\;
  trace17_counter(36) <= \<const0>\;
  trace17_counter(35) <= \<const0>\;
  trace17_counter(34) <= \<const0>\;
  trace17_counter(33) <= \<const0>\;
  trace17_counter(32) <= \<const0>\;
  trace17_counter(31) <= \<const0>\;
  trace17_counter(30) <= \<const0>\;
  trace17_counter(29) <= \<const0>\;
  trace17_counter(28) <= \<const0>\;
  trace17_counter(27) <= \<const0>\;
  trace17_counter(26) <= \<const0>\;
  trace17_counter(25) <= \<const0>\;
  trace17_counter(24) <= \<const0>\;
  trace17_counter(23) <= \<const0>\;
  trace17_counter(22) <= \<const0>\;
  trace17_counter(21) <= \<const0>\;
  trace17_counter(20) <= \<const0>\;
  trace17_counter(19) <= \<const0>\;
  trace17_counter(18) <= \<const0>\;
  trace17_counter(17) <= \<const0>\;
  trace17_counter(16) <= \<const0>\;
  trace17_counter(15) <= \<const0>\;
  trace17_counter(14) <= \<const0>\;
  trace17_counter(13) <= \<const0>\;
  trace17_counter(12) <= \<const0>\;
  trace17_counter(11) <= \<const0>\;
  trace17_counter(10) <= \<const0>\;
  trace17_counter(9) <= \<const0>\;
  trace17_counter(8) <= \<const0>\;
  trace17_counter(7) <= \<const0>\;
  trace17_counter(6) <= \<const0>\;
  trace17_counter(5) <= \<const0>\;
  trace17_counter(4) <= \<const0>\;
  trace17_counter(3) <= \<const0>\;
  trace17_counter(2) <= \<const0>\;
  trace17_counter(1) <= \<const0>\;
  trace17_counter(0) <= \<const0>\;
  trace17_counter_overflow <= \<const0>\;
  trace17_read <= \<const0>\;
  trace18_counter(44) <= \<const0>\;
  trace18_counter(43) <= \<const0>\;
  trace18_counter(42) <= \<const0>\;
  trace18_counter(41) <= \<const0>\;
  trace18_counter(40) <= \<const0>\;
  trace18_counter(39) <= \<const0>\;
  trace18_counter(38) <= \<const0>\;
  trace18_counter(37) <= \<const0>\;
  trace18_counter(36) <= \<const0>\;
  trace18_counter(35) <= \<const0>\;
  trace18_counter(34) <= \<const0>\;
  trace18_counter(33) <= \<const0>\;
  trace18_counter(32) <= \<const0>\;
  trace18_counter(31) <= \<const0>\;
  trace18_counter(30) <= \<const0>\;
  trace18_counter(29) <= \<const0>\;
  trace18_counter(28) <= \<const0>\;
  trace18_counter(27) <= \<const0>\;
  trace18_counter(26) <= \<const0>\;
  trace18_counter(25) <= \<const0>\;
  trace18_counter(24) <= \<const0>\;
  trace18_counter(23) <= \<const0>\;
  trace18_counter(22) <= \<const0>\;
  trace18_counter(21) <= \<const0>\;
  trace18_counter(20) <= \<const0>\;
  trace18_counter(19) <= \<const0>\;
  trace18_counter(18) <= \<const0>\;
  trace18_counter(17) <= \<const0>\;
  trace18_counter(16) <= \<const0>\;
  trace18_counter(15) <= \<const0>\;
  trace18_counter(14) <= \<const0>\;
  trace18_counter(13) <= \<const0>\;
  trace18_counter(12) <= \<const0>\;
  trace18_counter(11) <= \<const0>\;
  trace18_counter(10) <= \<const0>\;
  trace18_counter(9) <= \<const0>\;
  trace18_counter(8) <= \<const0>\;
  trace18_counter(7) <= \<const0>\;
  trace18_counter(6) <= \<const0>\;
  trace18_counter(5) <= \<const0>\;
  trace18_counter(4) <= \<const0>\;
  trace18_counter(3) <= \<const0>\;
  trace18_counter(2) <= \<const0>\;
  trace18_counter(1) <= \<const0>\;
  trace18_counter(0) <= \<const0>\;
  trace18_counter_overflow <= \<const0>\;
  trace18_read <= \<const0>\;
  trace19_counter(44) <= \<const0>\;
  trace19_counter(43) <= \<const0>\;
  trace19_counter(42) <= \<const0>\;
  trace19_counter(41) <= \<const0>\;
  trace19_counter(40) <= \<const0>\;
  trace19_counter(39) <= \<const0>\;
  trace19_counter(38) <= \<const0>\;
  trace19_counter(37) <= \<const0>\;
  trace19_counter(36) <= \<const0>\;
  trace19_counter(35) <= \<const0>\;
  trace19_counter(34) <= \<const0>\;
  trace19_counter(33) <= \<const0>\;
  trace19_counter(32) <= \<const0>\;
  trace19_counter(31) <= \<const0>\;
  trace19_counter(30) <= \<const0>\;
  trace19_counter(29) <= \<const0>\;
  trace19_counter(28) <= \<const0>\;
  trace19_counter(27) <= \<const0>\;
  trace19_counter(26) <= \<const0>\;
  trace19_counter(25) <= \<const0>\;
  trace19_counter(24) <= \<const0>\;
  trace19_counter(23) <= \<const0>\;
  trace19_counter(22) <= \<const0>\;
  trace19_counter(21) <= \<const0>\;
  trace19_counter(20) <= \<const0>\;
  trace19_counter(19) <= \<const0>\;
  trace19_counter(18) <= \<const0>\;
  trace19_counter(17) <= \<const0>\;
  trace19_counter(16) <= \<const0>\;
  trace19_counter(15) <= \<const0>\;
  trace19_counter(14) <= \<const0>\;
  trace19_counter(13) <= \<const0>\;
  trace19_counter(12) <= \<const0>\;
  trace19_counter(11) <= \<const0>\;
  trace19_counter(10) <= \<const0>\;
  trace19_counter(9) <= \<const0>\;
  trace19_counter(8) <= \<const0>\;
  trace19_counter(7) <= \<const0>\;
  trace19_counter(6) <= \<const0>\;
  trace19_counter(5) <= \<const0>\;
  trace19_counter(4) <= \<const0>\;
  trace19_counter(3) <= \<const0>\;
  trace19_counter(2) <= \<const0>\;
  trace19_counter(1) <= \<const0>\;
  trace19_counter(0) <= \<const0>\;
  trace19_counter_overflow <= \<const0>\;
  trace19_read <= \<const0>\;
  trace1_counter(44 downto 0) <= \^trace4_counter\(44 downto 0);
  trace1_counter_overflow <= \^trace4_counter_overflow\;
  trace20_counter(44) <= \<const0>\;
  trace20_counter(43) <= \<const0>\;
  trace20_counter(42) <= \<const0>\;
  trace20_counter(41) <= \<const0>\;
  trace20_counter(40) <= \<const0>\;
  trace20_counter(39) <= \<const0>\;
  trace20_counter(38) <= \<const0>\;
  trace20_counter(37) <= \<const0>\;
  trace20_counter(36) <= \<const0>\;
  trace20_counter(35) <= \<const0>\;
  trace20_counter(34) <= \<const0>\;
  trace20_counter(33) <= \<const0>\;
  trace20_counter(32) <= \<const0>\;
  trace20_counter(31) <= \<const0>\;
  trace20_counter(30) <= \<const0>\;
  trace20_counter(29) <= \<const0>\;
  trace20_counter(28) <= \<const0>\;
  trace20_counter(27) <= \<const0>\;
  trace20_counter(26) <= \<const0>\;
  trace20_counter(25) <= \<const0>\;
  trace20_counter(24) <= \<const0>\;
  trace20_counter(23) <= \<const0>\;
  trace20_counter(22) <= \<const0>\;
  trace20_counter(21) <= \<const0>\;
  trace20_counter(20) <= \<const0>\;
  trace20_counter(19) <= \<const0>\;
  trace20_counter(18) <= \<const0>\;
  trace20_counter(17) <= \<const0>\;
  trace20_counter(16) <= \<const0>\;
  trace20_counter(15) <= \<const0>\;
  trace20_counter(14) <= \<const0>\;
  trace20_counter(13) <= \<const0>\;
  trace20_counter(12) <= \<const0>\;
  trace20_counter(11) <= \<const0>\;
  trace20_counter(10) <= \<const0>\;
  trace20_counter(9) <= \<const0>\;
  trace20_counter(8) <= \<const0>\;
  trace20_counter(7) <= \<const0>\;
  trace20_counter(6) <= \<const0>\;
  trace20_counter(5) <= \<const0>\;
  trace20_counter(4) <= \<const0>\;
  trace20_counter(3) <= \<const0>\;
  trace20_counter(2) <= \<const0>\;
  trace20_counter(1) <= \<const0>\;
  trace20_counter(0) <= \<const0>\;
  trace20_counter_overflow <= \<const0>\;
  trace20_read <= \<const0>\;
  trace21_counter(44) <= \<const0>\;
  trace21_counter(43) <= \<const0>\;
  trace21_counter(42) <= \<const0>\;
  trace21_counter(41) <= \<const0>\;
  trace21_counter(40) <= \<const0>\;
  trace21_counter(39) <= \<const0>\;
  trace21_counter(38) <= \<const0>\;
  trace21_counter(37) <= \<const0>\;
  trace21_counter(36) <= \<const0>\;
  trace21_counter(35) <= \<const0>\;
  trace21_counter(34) <= \<const0>\;
  trace21_counter(33) <= \<const0>\;
  trace21_counter(32) <= \<const0>\;
  trace21_counter(31) <= \<const0>\;
  trace21_counter(30) <= \<const0>\;
  trace21_counter(29) <= \<const0>\;
  trace21_counter(28) <= \<const0>\;
  trace21_counter(27) <= \<const0>\;
  trace21_counter(26) <= \<const0>\;
  trace21_counter(25) <= \<const0>\;
  trace21_counter(24) <= \<const0>\;
  trace21_counter(23) <= \<const0>\;
  trace21_counter(22) <= \<const0>\;
  trace21_counter(21) <= \<const0>\;
  trace21_counter(20) <= \<const0>\;
  trace21_counter(19) <= \<const0>\;
  trace21_counter(18) <= \<const0>\;
  trace21_counter(17) <= \<const0>\;
  trace21_counter(16) <= \<const0>\;
  trace21_counter(15) <= \<const0>\;
  trace21_counter(14) <= \<const0>\;
  trace21_counter(13) <= \<const0>\;
  trace21_counter(12) <= \<const0>\;
  trace21_counter(11) <= \<const0>\;
  trace21_counter(10) <= \<const0>\;
  trace21_counter(9) <= \<const0>\;
  trace21_counter(8) <= \<const0>\;
  trace21_counter(7) <= \<const0>\;
  trace21_counter(6) <= \<const0>\;
  trace21_counter(5) <= \<const0>\;
  trace21_counter(4) <= \<const0>\;
  trace21_counter(3) <= \<const0>\;
  trace21_counter(2) <= \<const0>\;
  trace21_counter(1) <= \<const0>\;
  trace21_counter(0) <= \<const0>\;
  trace21_counter_overflow <= \<const0>\;
  trace21_read <= \<const0>\;
  trace22_counter(44) <= \<const0>\;
  trace22_counter(43) <= \<const0>\;
  trace22_counter(42) <= \<const0>\;
  trace22_counter(41) <= \<const0>\;
  trace22_counter(40) <= \<const0>\;
  trace22_counter(39) <= \<const0>\;
  trace22_counter(38) <= \<const0>\;
  trace22_counter(37) <= \<const0>\;
  trace22_counter(36) <= \<const0>\;
  trace22_counter(35) <= \<const0>\;
  trace22_counter(34) <= \<const0>\;
  trace22_counter(33) <= \<const0>\;
  trace22_counter(32) <= \<const0>\;
  trace22_counter(31) <= \<const0>\;
  trace22_counter(30) <= \<const0>\;
  trace22_counter(29) <= \<const0>\;
  trace22_counter(28) <= \<const0>\;
  trace22_counter(27) <= \<const0>\;
  trace22_counter(26) <= \<const0>\;
  trace22_counter(25) <= \<const0>\;
  trace22_counter(24) <= \<const0>\;
  trace22_counter(23) <= \<const0>\;
  trace22_counter(22) <= \<const0>\;
  trace22_counter(21) <= \<const0>\;
  trace22_counter(20) <= \<const0>\;
  trace22_counter(19) <= \<const0>\;
  trace22_counter(18) <= \<const0>\;
  trace22_counter(17) <= \<const0>\;
  trace22_counter(16) <= \<const0>\;
  trace22_counter(15) <= \<const0>\;
  trace22_counter(14) <= \<const0>\;
  trace22_counter(13) <= \<const0>\;
  trace22_counter(12) <= \<const0>\;
  trace22_counter(11) <= \<const0>\;
  trace22_counter(10) <= \<const0>\;
  trace22_counter(9) <= \<const0>\;
  trace22_counter(8) <= \<const0>\;
  trace22_counter(7) <= \<const0>\;
  trace22_counter(6) <= \<const0>\;
  trace22_counter(5) <= \<const0>\;
  trace22_counter(4) <= \<const0>\;
  trace22_counter(3) <= \<const0>\;
  trace22_counter(2) <= \<const0>\;
  trace22_counter(1) <= \<const0>\;
  trace22_counter(0) <= \<const0>\;
  trace22_counter_overflow <= \<const0>\;
  trace22_read <= \<const0>\;
  trace23_counter(44) <= \<const0>\;
  trace23_counter(43) <= \<const0>\;
  trace23_counter(42) <= \<const0>\;
  trace23_counter(41) <= \<const0>\;
  trace23_counter(40) <= \<const0>\;
  trace23_counter(39) <= \<const0>\;
  trace23_counter(38) <= \<const0>\;
  trace23_counter(37) <= \<const0>\;
  trace23_counter(36) <= \<const0>\;
  trace23_counter(35) <= \<const0>\;
  trace23_counter(34) <= \<const0>\;
  trace23_counter(33) <= \<const0>\;
  trace23_counter(32) <= \<const0>\;
  trace23_counter(31) <= \<const0>\;
  trace23_counter(30) <= \<const0>\;
  trace23_counter(29) <= \<const0>\;
  trace23_counter(28) <= \<const0>\;
  trace23_counter(27) <= \<const0>\;
  trace23_counter(26) <= \<const0>\;
  trace23_counter(25) <= \<const0>\;
  trace23_counter(24) <= \<const0>\;
  trace23_counter(23) <= \<const0>\;
  trace23_counter(22) <= \<const0>\;
  trace23_counter(21) <= \<const0>\;
  trace23_counter(20) <= \<const0>\;
  trace23_counter(19) <= \<const0>\;
  trace23_counter(18) <= \<const0>\;
  trace23_counter(17) <= \<const0>\;
  trace23_counter(16) <= \<const0>\;
  trace23_counter(15) <= \<const0>\;
  trace23_counter(14) <= \<const0>\;
  trace23_counter(13) <= \<const0>\;
  trace23_counter(12) <= \<const0>\;
  trace23_counter(11) <= \<const0>\;
  trace23_counter(10) <= \<const0>\;
  trace23_counter(9) <= \<const0>\;
  trace23_counter(8) <= \<const0>\;
  trace23_counter(7) <= \<const0>\;
  trace23_counter(6) <= \<const0>\;
  trace23_counter(5) <= \<const0>\;
  trace23_counter(4) <= \<const0>\;
  trace23_counter(3) <= \<const0>\;
  trace23_counter(2) <= \<const0>\;
  trace23_counter(1) <= \<const0>\;
  trace23_counter(0) <= \<const0>\;
  trace23_counter_overflow <= \<const0>\;
  trace23_read <= \<const0>\;
  trace24_counter(44) <= \<const0>\;
  trace24_counter(43) <= \<const0>\;
  trace24_counter(42) <= \<const0>\;
  trace24_counter(41) <= \<const0>\;
  trace24_counter(40) <= \<const0>\;
  trace24_counter(39) <= \<const0>\;
  trace24_counter(38) <= \<const0>\;
  trace24_counter(37) <= \<const0>\;
  trace24_counter(36) <= \<const0>\;
  trace24_counter(35) <= \<const0>\;
  trace24_counter(34) <= \<const0>\;
  trace24_counter(33) <= \<const0>\;
  trace24_counter(32) <= \<const0>\;
  trace24_counter(31) <= \<const0>\;
  trace24_counter(30) <= \<const0>\;
  trace24_counter(29) <= \<const0>\;
  trace24_counter(28) <= \<const0>\;
  trace24_counter(27) <= \<const0>\;
  trace24_counter(26) <= \<const0>\;
  trace24_counter(25) <= \<const0>\;
  trace24_counter(24) <= \<const0>\;
  trace24_counter(23) <= \<const0>\;
  trace24_counter(22) <= \<const0>\;
  trace24_counter(21) <= \<const0>\;
  trace24_counter(20) <= \<const0>\;
  trace24_counter(19) <= \<const0>\;
  trace24_counter(18) <= \<const0>\;
  trace24_counter(17) <= \<const0>\;
  trace24_counter(16) <= \<const0>\;
  trace24_counter(15) <= \<const0>\;
  trace24_counter(14) <= \<const0>\;
  trace24_counter(13) <= \<const0>\;
  trace24_counter(12) <= \<const0>\;
  trace24_counter(11) <= \<const0>\;
  trace24_counter(10) <= \<const0>\;
  trace24_counter(9) <= \<const0>\;
  trace24_counter(8) <= \<const0>\;
  trace24_counter(7) <= \<const0>\;
  trace24_counter(6) <= \<const0>\;
  trace24_counter(5) <= \<const0>\;
  trace24_counter(4) <= \<const0>\;
  trace24_counter(3) <= \<const0>\;
  trace24_counter(2) <= \<const0>\;
  trace24_counter(1) <= \<const0>\;
  trace24_counter(0) <= \<const0>\;
  trace24_counter_overflow <= \<const0>\;
  trace24_read <= \<const0>\;
  trace25_counter(44) <= \<const0>\;
  trace25_counter(43) <= \<const0>\;
  trace25_counter(42) <= \<const0>\;
  trace25_counter(41) <= \<const0>\;
  trace25_counter(40) <= \<const0>\;
  trace25_counter(39) <= \<const0>\;
  trace25_counter(38) <= \<const0>\;
  trace25_counter(37) <= \<const0>\;
  trace25_counter(36) <= \<const0>\;
  trace25_counter(35) <= \<const0>\;
  trace25_counter(34) <= \<const0>\;
  trace25_counter(33) <= \<const0>\;
  trace25_counter(32) <= \<const0>\;
  trace25_counter(31) <= \<const0>\;
  trace25_counter(30) <= \<const0>\;
  trace25_counter(29) <= \<const0>\;
  trace25_counter(28) <= \<const0>\;
  trace25_counter(27) <= \<const0>\;
  trace25_counter(26) <= \<const0>\;
  trace25_counter(25) <= \<const0>\;
  trace25_counter(24) <= \<const0>\;
  trace25_counter(23) <= \<const0>\;
  trace25_counter(22) <= \<const0>\;
  trace25_counter(21) <= \<const0>\;
  trace25_counter(20) <= \<const0>\;
  trace25_counter(19) <= \<const0>\;
  trace25_counter(18) <= \<const0>\;
  trace25_counter(17) <= \<const0>\;
  trace25_counter(16) <= \<const0>\;
  trace25_counter(15) <= \<const0>\;
  trace25_counter(14) <= \<const0>\;
  trace25_counter(13) <= \<const0>\;
  trace25_counter(12) <= \<const0>\;
  trace25_counter(11) <= \<const0>\;
  trace25_counter(10) <= \<const0>\;
  trace25_counter(9) <= \<const0>\;
  trace25_counter(8) <= \<const0>\;
  trace25_counter(7) <= \<const0>\;
  trace25_counter(6) <= \<const0>\;
  trace25_counter(5) <= \<const0>\;
  trace25_counter(4) <= \<const0>\;
  trace25_counter(3) <= \<const0>\;
  trace25_counter(2) <= \<const0>\;
  trace25_counter(1) <= \<const0>\;
  trace25_counter(0) <= \<const0>\;
  trace25_counter_overflow <= \<const0>\;
  trace25_read <= \<const0>\;
  trace26_counter(44) <= \<const0>\;
  trace26_counter(43) <= \<const0>\;
  trace26_counter(42) <= \<const0>\;
  trace26_counter(41) <= \<const0>\;
  trace26_counter(40) <= \<const0>\;
  trace26_counter(39) <= \<const0>\;
  trace26_counter(38) <= \<const0>\;
  trace26_counter(37) <= \<const0>\;
  trace26_counter(36) <= \<const0>\;
  trace26_counter(35) <= \<const0>\;
  trace26_counter(34) <= \<const0>\;
  trace26_counter(33) <= \<const0>\;
  trace26_counter(32) <= \<const0>\;
  trace26_counter(31) <= \<const0>\;
  trace26_counter(30) <= \<const0>\;
  trace26_counter(29) <= \<const0>\;
  trace26_counter(28) <= \<const0>\;
  trace26_counter(27) <= \<const0>\;
  trace26_counter(26) <= \<const0>\;
  trace26_counter(25) <= \<const0>\;
  trace26_counter(24) <= \<const0>\;
  trace26_counter(23) <= \<const0>\;
  trace26_counter(22) <= \<const0>\;
  trace26_counter(21) <= \<const0>\;
  trace26_counter(20) <= \<const0>\;
  trace26_counter(19) <= \<const0>\;
  trace26_counter(18) <= \<const0>\;
  trace26_counter(17) <= \<const0>\;
  trace26_counter(16) <= \<const0>\;
  trace26_counter(15) <= \<const0>\;
  trace26_counter(14) <= \<const0>\;
  trace26_counter(13) <= \<const0>\;
  trace26_counter(12) <= \<const0>\;
  trace26_counter(11) <= \<const0>\;
  trace26_counter(10) <= \<const0>\;
  trace26_counter(9) <= \<const0>\;
  trace26_counter(8) <= \<const0>\;
  trace26_counter(7) <= \<const0>\;
  trace26_counter(6) <= \<const0>\;
  trace26_counter(5) <= \<const0>\;
  trace26_counter(4) <= \<const0>\;
  trace26_counter(3) <= \<const0>\;
  trace26_counter(2) <= \<const0>\;
  trace26_counter(1) <= \<const0>\;
  trace26_counter(0) <= \<const0>\;
  trace26_counter_overflow <= \<const0>\;
  trace26_read <= \<const0>\;
  trace27_counter(44) <= \<const0>\;
  trace27_counter(43) <= \<const0>\;
  trace27_counter(42) <= \<const0>\;
  trace27_counter(41) <= \<const0>\;
  trace27_counter(40) <= \<const0>\;
  trace27_counter(39) <= \<const0>\;
  trace27_counter(38) <= \<const0>\;
  trace27_counter(37) <= \<const0>\;
  trace27_counter(36) <= \<const0>\;
  trace27_counter(35) <= \<const0>\;
  trace27_counter(34) <= \<const0>\;
  trace27_counter(33) <= \<const0>\;
  trace27_counter(32) <= \<const0>\;
  trace27_counter(31) <= \<const0>\;
  trace27_counter(30) <= \<const0>\;
  trace27_counter(29) <= \<const0>\;
  trace27_counter(28) <= \<const0>\;
  trace27_counter(27) <= \<const0>\;
  trace27_counter(26) <= \<const0>\;
  trace27_counter(25) <= \<const0>\;
  trace27_counter(24) <= \<const0>\;
  trace27_counter(23) <= \<const0>\;
  trace27_counter(22) <= \<const0>\;
  trace27_counter(21) <= \<const0>\;
  trace27_counter(20) <= \<const0>\;
  trace27_counter(19) <= \<const0>\;
  trace27_counter(18) <= \<const0>\;
  trace27_counter(17) <= \<const0>\;
  trace27_counter(16) <= \<const0>\;
  trace27_counter(15) <= \<const0>\;
  trace27_counter(14) <= \<const0>\;
  trace27_counter(13) <= \<const0>\;
  trace27_counter(12) <= \<const0>\;
  trace27_counter(11) <= \<const0>\;
  trace27_counter(10) <= \<const0>\;
  trace27_counter(9) <= \<const0>\;
  trace27_counter(8) <= \<const0>\;
  trace27_counter(7) <= \<const0>\;
  trace27_counter(6) <= \<const0>\;
  trace27_counter(5) <= \<const0>\;
  trace27_counter(4) <= \<const0>\;
  trace27_counter(3) <= \<const0>\;
  trace27_counter(2) <= \<const0>\;
  trace27_counter(1) <= \<const0>\;
  trace27_counter(0) <= \<const0>\;
  trace27_counter_overflow <= \<const0>\;
  trace27_read <= \<const0>\;
  trace28_counter(44) <= \<const0>\;
  trace28_counter(43) <= \<const0>\;
  trace28_counter(42) <= \<const0>\;
  trace28_counter(41) <= \<const0>\;
  trace28_counter(40) <= \<const0>\;
  trace28_counter(39) <= \<const0>\;
  trace28_counter(38) <= \<const0>\;
  trace28_counter(37) <= \<const0>\;
  trace28_counter(36) <= \<const0>\;
  trace28_counter(35) <= \<const0>\;
  trace28_counter(34) <= \<const0>\;
  trace28_counter(33) <= \<const0>\;
  trace28_counter(32) <= \<const0>\;
  trace28_counter(31) <= \<const0>\;
  trace28_counter(30) <= \<const0>\;
  trace28_counter(29) <= \<const0>\;
  trace28_counter(28) <= \<const0>\;
  trace28_counter(27) <= \<const0>\;
  trace28_counter(26) <= \<const0>\;
  trace28_counter(25) <= \<const0>\;
  trace28_counter(24) <= \<const0>\;
  trace28_counter(23) <= \<const0>\;
  trace28_counter(22) <= \<const0>\;
  trace28_counter(21) <= \<const0>\;
  trace28_counter(20) <= \<const0>\;
  trace28_counter(19) <= \<const0>\;
  trace28_counter(18) <= \<const0>\;
  trace28_counter(17) <= \<const0>\;
  trace28_counter(16) <= \<const0>\;
  trace28_counter(15) <= \<const0>\;
  trace28_counter(14) <= \<const0>\;
  trace28_counter(13) <= \<const0>\;
  trace28_counter(12) <= \<const0>\;
  trace28_counter(11) <= \<const0>\;
  trace28_counter(10) <= \<const0>\;
  trace28_counter(9) <= \<const0>\;
  trace28_counter(8) <= \<const0>\;
  trace28_counter(7) <= \<const0>\;
  trace28_counter(6) <= \<const0>\;
  trace28_counter(5) <= \<const0>\;
  trace28_counter(4) <= \<const0>\;
  trace28_counter(3) <= \<const0>\;
  trace28_counter(2) <= \<const0>\;
  trace28_counter(1) <= \<const0>\;
  trace28_counter(0) <= \<const0>\;
  trace28_counter_overflow <= \<const0>\;
  trace28_read <= \<const0>\;
  trace29_counter(44) <= \<const0>\;
  trace29_counter(43) <= \<const0>\;
  trace29_counter(42) <= \<const0>\;
  trace29_counter(41) <= \<const0>\;
  trace29_counter(40) <= \<const0>\;
  trace29_counter(39) <= \<const0>\;
  trace29_counter(38) <= \<const0>\;
  trace29_counter(37) <= \<const0>\;
  trace29_counter(36) <= \<const0>\;
  trace29_counter(35) <= \<const0>\;
  trace29_counter(34) <= \<const0>\;
  trace29_counter(33) <= \<const0>\;
  trace29_counter(32) <= \<const0>\;
  trace29_counter(31) <= \<const0>\;
  trace29_counter(30) <= \<const0>\;
  trace29_counter(29) <= \<const0>\;
  trace29_counter(28) <= \<const0>\;
  trace29_counter(27) <= \<const0>\;
  trace29_counter(26) <= \<const0>\;
  trace29_counter(25) <= \<const0>\;
  trace29_counter(24) <= \<const0>\;
  trace29_counter(23) <= \<const0>\;
  trace29_counter(22) <= \<const0>\;
  trace29_counter(21) <= \<const0>\;
  trace29_counter(20) <= \<const0>\;
  trace29_counter(19) <= \<const0>\;
  trace29_counter(18) <= \<const0>\;
  trace29_counter(17) <= \<const0>\;
  trace29_counter(16) <= \<const0>\;
  trace29_counter(15) <= \<const0>\;
  trace29_counter(14) <= \<const0>\;
  trace29_counter(13) <= \<const0>\;
  trace29_counter(12) <= \<const0>\;
  trace29_counter(11) <= \<const0>\;
  trace29_counter(10) <= \<const0>\;
  trace29_counter(9) <= \<const0>\;
  trace29_counter(8) <= \<const0>\;
  trace29_counter(7) <= \<const0>\;
  trace29_counter(6) <= \<const0>\;
  trace29_counter(5) <= \<const0>\;
  trace29_counter(4) <= \<const0>\;
  trace29_counter(3) <= \<const0>\;
  trace29_counter(2) <= \<const0>\;
  trace29_counter(1) <= \<const0>\;
  trace29_counter(0) <= \<const0>\;
  trace29_counter_overflow <= \<const0>\;
  trace29_read <= \<const0>\;
  trace2_counter(44 downto 0) <= \^trace4_counter\(44 downto 0);
  trace2_counter_overflow <= \^trace4_counter_overflow\;
  trace30_counter(44) <= \<const0>\;
  trace30_counter(43) <= \<const0>\;
  trace30_counter(42) <= \<const0>\;
  trace30_counter(41) <= \<const0>\;
  trace30_counter(40) <= \<const0>\;
  trace30_counter(39) <= \<const0>\;
  trace30_counter(38) <= \<const0>\;
  trace30_counter(37) <= \<const0>\;
  trace30_counter(36) <= \<const0>\;
  trace30_counter(35) <= \<const0>\;
  trace30_counter(34) <= \<const0>\;
  trace30_counter(33) <= \<const0>\;
  trace30_counter(32) <= \<const0>\;
  trace30_counter(31) <= \<const0>\;
  trace30_counter(30) <= \<const0>\;
  trace30_counter(29) <= \<const0>\;
  trace30_counter(28) <= \<const0>\;
  trace30_counter(27) <= \<const0>\;
  trace30_counter(26) <= \<const0>\;
  trace30_counter(25) <= \<const0>\;
  trace30_counter(24) <= \<const0>\;
  trace30_counter(23) <= \<const0>\;
  trace30_counter(22) <= \<const0>\;
  trace30_counter(21) <= \<const0>\;
  trace30_counter(20) <= \<const0>\;
  trace30_counter(19) <= \<const0>\;
  trace30_counter(18) <= \<const0>\;
  trace30_counter(17) <= \<const0>\;
  trace30_counter(16) <= \<const0>\;
  trace30_counter(15) <= \<const0>\;
  trace30_counter(14) <= \<const0>\;
  trace30_counter(13) <= \<const0>\;
  trace30_counter(12) <= \<const0>\;
  trace30_counter(11) <= \<const0>\;
  trace30_counter(10) <= \<const0>\;
  trace30_counter(9) <= \<const0>\;
  trace30_counter(8) <= \<const0>\;
  trace30_counter(7) <= \<const0>\;
  trace30_counter(6) <= \<const0>\;
  trace30_counter(5) <= \<const0>\;
  trace30_counter(4) <= \<const0>\;
  trace30_counter(3) <= \<const0>\;
  trace30_counter(2) <= \<const0>\;
  trace30_counter(1) <= \<const0>\;
  trace30_counter(0) <= \<const0>\;
  trace30_counter_overflow <= \<const0>\;
  trace30_read <= \<const0>\;
  trace31_counter(44) <= \<const0>\;
  trace31_counter(43) <= \<const0>\;
  trace31_counter(42) <= \<const0>\;
  trace31_counter(41) <= \<const0>\;
  trace31_counter(40) <= \<const0>\;
  trace31_counter(39) <= \<const0>\;
  trace31_counter(38) <= \<const0>\;
  trace31_counter(37) <= \<const0>\;
  trace31_counter(36) <= \<const0>\;
  trace31_counter(35) <= \<const0>\;
  trace31_counter(34) <= \<const0>\;
  trace31_counter(33) <= \<const0>\;
  trace31_counter(32) <= \<const0>\;
  trace31_counter(31) <= \<const0>\;
  trace31_counter(30) <= \<const0>\;
  trace31_counter(29) <= \<const0>\;
  trace31_counter(28) <= \<const0>\;
  trace31_counter(27) <= \<const0>\;
  trace31_counter(26) <= \<const0>\;
  trace31_counter(25) <= \<const0>\;
  trace31_counter(24) <= \<const0>\;
  trace31_counter(23) <= \<const0>\;
  trace31_counter(22) <= \<const0>\;
  trace31_counter(21) <= \<const0>\;
  trace31_counter(20) <= \<const0>\;
  trace31_counter(19) <= \<const0>\;
  trace31_counter(18) <= \<const0>\;
  trace31_counter(17) <= \<const0>\;
  trace31_counter(16) <= \<const0>\;
  trace31_counter(15) <= \<const0>\;
  trace31_counter(14) <= \<const0>\;
  trace31_counter(13) <= \<const0>\;
  trace31_counter(12) <= \<const0>\;
  trace31_counter(11) <= \<const0>\;
  trace31_counter(10) <= \<const0>\;
  trace31_counter(9) <= \<const0>\;
  trace31_counter(8) <= \<const0>\;
  trace31_counter(7) <= \<const0>\;
  trace31_counter(6) <= \<const0>\;
  trace31_counter(5) <= \<const0>\;
  trace31_counter(4) <= \<const0>\;
  trace31_counter(3) <= \<const0>\;
  trace31_counter(2) <= \<const0>\;
  trace31_counter(1) <= \<const0>\;
  trace31_counter(0) <= \<const0>\;
  trace31_counter_overflow <= \<const0>\;
  trace31_read <= \<const0>\;
  trace32_counter(44) <= \<const0>\;
  trace32_counter(43) <= \<const0>\;
  trace32_counter(42) <= \<const0>\;
  trace32_counter(41) <= \<const0>\;
  trace32_counter(40) <= \<const0>\;
  trace32_counter(39) <= \<const0>\;
  trace32_counter(38) <= \<const0>\;
  trace32_counter(37) <= \<const0>\;
  trace32_counter(36) <= \<const0>\;
  trace32_counter(35) <= \<const0>\;
  trace32_counter(34) <= \<const0>\;
  trace32_counter(33) <= \<const0>\;
  trace32_counter(32) <= \<const0>\;
  trace32_counter(31) <= \<const0>\;
  trace32_counter(30) <= \<const0>\;
  trace32_counter(29) <= \<const0>\;
  trace32_counter(28) <= \<const0>\;
  trace32_counter(27) <= \<const0>\;
  trace32_counter(26) <= \<const0>\;
  trace32_counter(25) <= \<const0>\;
  trace32_counter(24) <= \<const0>\;
  trace32_counter(23) <= \<const0>\;
  trace32_counter(22) <= \<const0>\;
  trace32_counter(21) <= \<const0>\;
  trace32_counter(20) <= \<const0>\;
  trace32_counter(19) <= \<const0>\;
  trace32_counter(18) <= \<const0>\;
  trace32_counter(17) <= \<const0>\;
  trace32_counter(16) <= \<const0>\;
  trace32_counter(15) <= \<const0>\;
  trace32_counter(14) <= \<const0>\;
  trace32_counter(13) <= \<const0>\;
  trace32_counter(12) <= \<const0>\;
  trace32_counter(11) <= \<const0>\;
  trace32_counter(10) <= \<const0>\;
  trace32_counter(9) <= \<const0>\;
  trace32_counter(8) <= \<const0>\;
  trace32_counter(7) <= \<const0>\;
  trace32_counter(6) <= \<const0>\;
  trace32_counter(5) <= \<const0>\;
  trace32_counter(4) <= \<const0>\;
  trace32_counter(3) <= \<const0>\;
  trace32_counter(2) <= \<const0>\;
  trace32_counter(1) <= \<const0>\;
  trace32_counter(0) <= \<const0>\;
  trace32_counter_overflow <= \<const0>\;
  trace32_read <= \<const0>\;
  trace33_counter(44) <= \<const0>\;
  trace33_counter(43) <= \<const0>\;
  trace33_counter(42) <= \<const0>\;
  trace33_counter(41) <= \<const0>\;
  trace33_counter(40) <= \<const0>\;
  trace33_counter(39) <= \<const0>\;
  trace33_counter(38) <= \<const0>\;
  trace33_counter(37) <= \<const0>\;
  trace33_counter(36) <= \<const0>\;
  trace33_counter(35) <= \<const0>\;
  trace33_counter(34) <= \<const0>\;
  trace33_counter(33) <= \<const0>\;
  trace33_counter(32) <= \<const0>\;
  trace33_counter(31) <= \<const0>\;
  trace33_counter(30) <= \<const0>\;
  trace33_counter(29) <= \<const0>\;
  trace33_counter(28) <= \<const0>\;
  trace33_counter(27) <= \<const0>\;
  trace33_counter(26) <= \<const0>\;
  trace33_counter(25) <= \<const0>\;
  trace33_counter(24) <= \<const0>\;
  trace33_counter(23) <= \<const0>\;
  trace33_counter(22) <= \<const0>\;
  trace33_counter(21) <= \<const0>\;
  trace33_counter(20) <= \<const0>\;
  trace33_counter(19) <= \<const0>\;
  trace33_counter(18) <= \<const0>\;
  trace33_counter(17) <= \<const0>\;
  trace33_counter(16) <= \<const0>\;
  trace33_counter(15) <= \<const0>\;
  trace33_counter(14) <= \<const0>\;
  trace33_counter(13) <= \<const0>\;
  trace33_counter(12) <= \<const0>\;
  trace33_counter(11) <= \<const0>\;
  trace33_counter(10) <= \<const0>\;
  trace33_counter(9) <= \<const0>\;
  trace33_counter(8) <= \<const0>\;
  trace33_counter(7) <= \<const0>\;
  trace33_counter(6) <= \<const0>\;
  trace33_counter(5) <= \<const0>\;
  trace33_counter(4) <= \<const0>\;
  trace33_counter(3) <= \<const0>\;
  trace33_counter(2) <= \<const0>\;
  trace33_counter(1) <= \<const0>\;
  trace33_counter(0) <= \<const0>\;
  trace33_counter_overflow <= \<const0>\;
  trace33_read <= \<const0>\;
  trace34_counter(44) <= \<const0>\;
  trace34_counter(43) <= \<const0>\;
  trace34_counter(42) <= \<const0>\;
  trace34_counter(41) <= \<const0>\;
  trace34_counter(40) <= \<const0>\;
  trace34_counter(39) <= \<const0>\;
  trace34_counter(38) <= \<const0>\;
  trace34_counter(37) <= \<const0>\;
  trace34_counter(36) <= \<const0>\;
  trace34_counter(35) <= \<const0>\;
  trace34_counter(34) <= \<const0>\;
  trace34_counter(33) <= \<const0>\;
  trace34_counter(32) <= \<const0>\;
  trace34_counter(31) <= \<const0>\;
  trace34_counter(30) <= \<const0>\;
  trace34_counter(29) <= \<const0>\;
  trace34_counter(28) <= \<const0>\;
  trace34_counter(27) <= \<const0>\;
  trace34_counter(26) <= \<const0>\;
  trace34_counter(25) <= \<const0>\;
  trace34_counter(24) <= \<const0>\;
  trace34_counter(23) <= \<const0>\;
  trace34_counter(22) <= \<const0>\;
  trace34_counter(21) <= \<const0>\;
  trace34_counter(20) <= \<const0>\;
  trace34_counter(19) <= \<const0>\;
  trace34_counter(18) <= \<const0>\;
  trace34_counter(17) <= \<const0>\;
  trace34_counter(16) <= \<const0>\;
  trace34_counter(15) <= \<const0>\;
  trace34_counter(14) <= \<const0>\;
  trace34_counter(13) <= \<const0>\;
  trace34_counter(12) <= \<const0>\;
  trace34_counter(11) <= \<const0>\;
  trace34_counter(10) <= \<const0>\;
  trace34_counter(9) <= \<const0>\;
  trace34_counter(8) <= \<const0>\;
  trace34_counter(7) <= \<const0>\;
  trace34_counter(6) <= \<const0>\;
  trace34_counter(5) <= \<const0>\;
  trace34_counter(4) <= \<const0>\;
  trace34_counter(3) <= \<const0>\;
  trace34_counter(2) <= \<const0>\;
  trace34_counter(1) <= \<const0>\;
  trace34_counter(0) <= \<const0>\;
  trace34_counter_overflow <= \<const0>\;
  trace34_read <= \<const0>\;
  trace35_counter(44) <= \<const0>\;
  trace35_counter(43) <= \<const0>\;
  trace35_counter(42) <= \<const0>\;
  trace35_counter(41) <= \<const0>\;
  trace35_counter(40) <= \<const0>\;
  trace35_counter(39) <= \<const0>\;
  trace35_counter(38) <= \<const0>\;
  trace35_counter(37) <= \<const0>\;
  trace35_counter(36) <= \<const0>\;
  trace35_counter(35) <= \<const0>\;
  trace35_counter(34) <= \<const0>\;
  trace35_counter(33) <= \<const0>\;
  trace35_counter(32) <= \<const0>\;
  trace35_counter(31) <= \<const0>\;
  trace35_counter(30) <= \<const0>\;
  trace35_counter(29) <= \<const0>\;
  trace35_counter(28) <= \<const0>\;
  trace35_counter(27) <= \<const0>\;
  trace35_counter(26) <= \<const0>\;
  trace35_counter(25) <= \<const0>\;
  trace35_counter(24) <= \<const0>\;
  trace35_counter(23) <= \<const0>\;
  trace35_counter(22) <= \<const0>\;
  trace35_counter(21) <= \<const0>\;
  trace35_counter(20) <= \<const0>\;
  trace35_counter(19) <= \<const0>\;
  trace35_counter(18) <= \<const0>\;
  trace35_counter(17) <= \<const0>\;
  trace35_counter(16) <= \<const0>\;
  trace35_counter(15) <= \<const0>\;
  trace35_counter(14) <= \<const0>\;
  trace35_counter(13) <= \<const0>\;
  trace35_counter(12) <= \<const0>\;
  trace35_counter(11) <= \<const0>\;
  trace35_counter(10) <= \<const0>\;
  trace35_counter(9) <= \<const0>\;
  trace35_counter(8) <= \<const0>\;
  trace35_counter(7) <= \<const0>\;
  trace35_counter(6) <= \<const0>\;
  trace35_counter(5) <= \<const0>\;
  trace35_counter(4) <= \<const0>\;
  trace35_counter(3) <= \<const0>\;
  trace35_counter(2) <= \<const0>\;
  trace35_counter(1) <= \<const0>\;
  trace35_counter(0) <= \<const0>\;
  trace35_counter_overflow <= \<const0>\;
  trace35_read <= \<const0>\;
  trace36_counter(44) <= \<const0>\;
  trace36_counter(43) <= \<const0>\;
  trace36_counter(42) <= \<const0>\;
  trace36_counter(41) <= \<const0>\;
  trace36_counter(40) <= \<const0>\;
  trace36_counter(39) <= \<const0>\;
  trace36_counter(38) <= \<const0>\;
  trace36_counter(37) <= \<const0>\;
  trace36_counter(36) <= \<const0>\;
  trace36_counter(35) <= \<const0>\;
  trace36_counter(34) <= \<const0>\;
  trace36_counter(33) <= \<const0>\;
  trace36_counter(32) <= \<const0>\;
  trace36_counter(31) <= \<const0>\;
  trace36_counter(30) <= \<const0>\;
  trace36_counter(29) <= \<const0>\;
  trace36_counter(28) <= \<const0>\;
  trace36_counter(27) <= \<const0>\;
  trace36_counter(26) <= \<const0>\;
  trace36_counter(25) <= \<const0>\;
  trace36_counter(24) <= \<const0>\;
  trace36_counter(23) <= \<const0>\;
  trace36_counter(22) <= \<const0>\;
  trace36_counter(21) <= \<const0>\;
  trace36_counter(20) <= \<const0>\;
  trace36_counter(19) <= \<const0>\;
  trace36_counter(18) <= \<const0>\;
  trace36_counter(17) <= \<const0>\;
  trace36_counter(16) <= \<const0>\;
  trace36_counter(15) <= \<const0>\;
  trace36_counter(14) <= \<const0>\;
  trace36_counter(13) <= \<const0>\;
  trace36_counter(12) <= \<const0>\;
  trace36_counter(11) <= \<const0>\;
  trace36_counter(10) <= \<const0>\;
  trace36_counter(9) <= \<const0>\;
  trace36_counter(8) <= \<const0>\;
  trace36_counter(7) <= \<const0>\;
  trace36_counter(6) <= \<const0>\;
  trace36_counter(5) <= \<const0>\;
  trace36_counter(4) <= \<const0>\;
  trace36_counter(3) <= \<const0>\;
  trace36_counter(2) <= \<const0>\;
  trace36_counter(1) <= \<const0>\;
  trace36_counter(0) <= \<const0>\;
  trace36_counter_overflow <= \<const0>\;
  trace36_read <= \<const0>\;
  trace37_counter(44) <= \<const0>\;
  trace37_counter(43) <= \<const0>\;
  trace37_counter(42) <= \<const0>\;
  trace37_counter(41) <= \<const0>\;
  trace37_counter(40) <= \<const0>\;
  trace37_counter(39) <= \<const0>\;
  trace37_counter(38) <= \<const0>\;
  trace37_counter(37) <= \<const0>\;
  trace37_counter(36) <= \<const0>\;
  trace37_counter(35) <= \<const0>\;
  trace37_counter(34) <= \<const0>\;
  trace37_counter(33) <= \<const0>\;
  trace37_counter(32) <= \<const0>\;
  trace37_counter(31) <= \<const0>\;
  trace37_counter(30) <= \<const0>\;
  trace37_counter(29) <= \<const0>\;
  trace37_counter(28) <= \<const0>\;
  trace37_counter(27) <= \<const0>\;
  trace37_counter(26) <= \<const0>\;
  trace37_counter(25) <= \<const0>\;
  trace37_counter(24) <= \<const0>\;
  trace37_counter(23) <= \<const0>\;
  trace37_counter(22) <= \<const0>\;
  trace37_counter(21) <= \<const0>\;
  trace37_counter(20) <= \<const0>\;
  trace37_counter(19) <= \<const0>\;
  trace37_counter(18) <= \<const0>\;
  trace37_counter(17) <= \<const0>\;
  trace37_counter(16) <= \<const0>\;
  trace37_counter(15) <= \<const0>\;
  trace37_counter(14) <= \<const0>\;
  trace37_counter(13) <= \<const0>\;
  trace37_counter(12) <= \<const0>\;
  trace37_counter(11) <= \<const0>\;
  trace37_counter(10) <= \<const0>\;
  trace37_counter(9) <= \<const0>\;
  trace37_counter(8) <= \<const0>\;
  trace37_counter(7) <= \<const0>\;
  trace37_counter(6) <= \<const0>\;
  trace37_counter(5) <= \<const0>\;
  trace37_counter(4) <= \<const0>\;
  trace37_counter(3) <= \<const0>\;
  trace37_counter(2) <= \<const0>\;
  trace37_counter(1) <= \<const0>\;
  trace37_counter(0) <= \<const0>\;
  trace37_counter_overflow <= \<const0>\;
  trace37_read <= \<const0>\;
  trace38_counter(44) <= \<const0>\;
  trace38_counter(43) <= \<const0>\;
  trace38_counter(42) <= \<const0>\;
  trace38_counter(41) <= \<const0>\;
  trace38_counter(40) <= \<const0>\;
  trace38_counter(39) <= \<const0>\;
  trace38_counter(38) <= \<const0>\;
  trace38_counter(37) <= \<const0>\;
  trace38_counter(36) <= \<const0>\;
  trace38_counter(35) <= \<const0>\;
  trace38_counter(34) <= \<const0>\;
  trace38_counter(33) <= \<const0>\;
  trace38_counter(32) <= \<const0>\;
  trace38_counter(31) <= \<const0>\;
  trace38_counter(30) <= \<const0>\;
  trace38_counter(29) <= \<const0>\;
  trace38_counter(28) <= \<const0>\;
  trace38_counter(27) <= \<const0>\;
  trace38_counter(26) <= \<const0>\;
  trace38_counter(25) <= \<const0>\;
  trace38_counter(24) <= \<const0>\;
  trace38_counter(23) <= \<const0>\;
  trace38_counter(22) <= \<const0>\;
  trace38_counter(21) <= \<const0>\;
  trace38_counter(20) <= \<const0>\;
  trace38_counter(19) <= \<const0>\;
  trace38_counter(18) <= \<const0>\;
  trace38_counter(17) <= \<const0>\;
  trace38_counter(16) <= \<const0>\;
  trace38_counter(15) <= \<const0>\;
  trace38_counter(14) <= \<const0>\;
  trace38_counter(13) <= \<const0>\;
  trace38_counter(12) <= \<const0>\;
  trace38_counter(11) <= \<const0>\;
  trace38_counter(10) <= \<const0>\;
  trace38_counter(9) <= \<const0>\;
  trace38_counter(8) <= \<const0>\;
  trace38_counter(7) <= \<const0>\;
  trace38_counter(6) <= \<const0>\;
  trace38_counter(5) <= \<const0>\;
  trace38_counter(4) <= \<const0>\;
  trace38_counter(3) <= \<const0>\;
  trace38_counter(2) <= \<const0>\;
  trace38_counter(1) <= \<const0>\;
  trace38_counter(0) <= \<const0>\;
  trace38_counter_overflow <= \<const0>\;
  trace38_read <= \<const0>\;
  trace39_counter(44) <= \<const0>\;
  trace39_counter(43) <= \<const0>\;
  trace39_counter(42) <= \<const0>\;
  trace39_counter(41) <= \<const0>\;
  trace39_counter(40) <= \<const0>\;
  trace39_counter(39) <= \<const0>\;
  trace39_counter(38) <= \<const0>\;
  trace39_counter(37) <= \<const0>\;
  trace39_counter(36) <= \<const0>\;
  trace39_counter(35) <= \<const0>\;
  trace39_counter(34) <= \<const0>\;
  trace39_counter(33) <= \<const0>\;
  trace39_counter(32) <= \<const0>\;
  trace39_counter(31) <= \<const0>\;
  trace39_counter(30) <= \<const0>\;
  trace39_counter(29) <= \<const0>\;
  trace39_counter(28) <= \<const0>\;
  trace39_counter(27) <= \<const0>\;
  trace39_counter(26) <= \<const0>\;
  trace39_counter(25) <= \<const0>\;
  trace39_counter(24) <= \<const0>\;
  trace39_counter(23) <= \<const0>\;
  trace39_counter(22) <= \<const0>\;
  trace39_counter(21) <= \<const0>\;
  trace39_counter(20) <= \<const0>\;
  trace39_counter(19) <= \<const0>\;
  trace39_counter(18) <= \<const0>\;
  trace39_counter(17) <= \<const0>\;
  trace39_counter(16) <= \<const0>\;
  trace39_counter(15) <= \<const0>\;
  trace39_counter(14) <= \<const0>\;
  trace39_counter(13) <= \<const0>\;
  trace39_counter(12) <= \<const0>\;
  trace39_counter(11) <= \<const0>\;
  trace39_counter(10) <= \<const0>\;
  trace39_counter(9) <= \<const0>\;
  trace39_counter(8) <= \<const0>\;
  trace39_counter(7) <= \<const0>\;
  trace39_counter(6) <= \<const0>\;
  trace39_counter(5) <= \<const0>\;
  trace39_counter(4) <= \<const0>\;
  trace39_counter(3) <= \<const0>\;
  trace39_counter(2) <= \<const0>\;
  trace39_counter(1) <= \<const0>\;
  trace39_counter(0) <= \<const0>\;
  trace39_counter_overflow <= \<const0>\;
  trace39_read <= \<const0>\;
  trace3_counter(44 downto 0) <= \^trace4_counter\(44 downto 0);
  trace3_counter_overflow <= \^trace4_counter_overflow\;
  trace40_counter(44) <= \<const0>\;
  trace40_counter(43) <= \<const0>\;
  trace40_counter(42) <= \<const0>\;
  trace40_counter(41) <= \<const0>\;
  trace40_counter(40) <= \<const0>\;
  trace40_counter(39) <= \<const0>\;
  trace40_counter(38) <= \<const0>\;
  trace40_counter(37) <= \<const0>\;
  trace40_counter(36) <= \<const0>\;
  trace40_counter(35) <= \<const0>\;
  trace40_counter(34) <= \<const0>\;
  trace40_counter(33) <= \<const0>\;
  trace40_counter(32) <= \<const0>\;
  trace40_counter(31) <= \<const0>\;
  trace40_counter(30) <= \<const0>\;
  trace40_counter(29) <= \<const0>\;
  trace40_counter(28) <= \<const0>\;
  trace40_counter(27) <= \<const0>\;
  trace40_counter(26) <= \<const0>\;
  trace40_counter(25) <= \<const0>\;
  trace40_counter(24) <= \<const0>\;
  trace40_counter(23) <= \<const0>\;
  trace40_counter(22) <= \<const0>\;
  trace40_counter(21) <= \<const0>\;
  trace40_counter(20) <= \<const0>\;
  trace40_counter(19) <= \<const0>\;
  trace40_counter(18) <= \<const0>\;
  trace40_counter(17) <= \<const0>\;
  trace40_counter(16) <= \<const0>\;
  trace40_counter(15) <= \<const0>\;
  trace40_counter(14) <= \<const0>\;
  trace40_counter(13) <= \<const0>\;
  trace40_counter(12) <= \<const0>\;
  trace40_counter(11) <= \<const0>\;
  trace40_counter(10) <= \<const0>\;
  trace40_counter(9) <= \<const0>\;
  trace40_counter(8) <= \<const0>\;
  trace40_counter(7) <= \<const0>\;
  trace40_counter(6) <= \<const0>\;
  trace40_counter(5) <= \<const0>\;
  trace40_counter(4) <= \<const0>\;
  trace40_counter(3) <= \<const0>\;
  trace40_counter(2) <= \<const0>\;
  trace40_counter(1) <= \<const0>\;
  trace40_counter(0) <= \<const0>\;
  trace40_counter_overflow <= \<const0>\;
  trace40_read <= \<const0>\;
  trace41_counter(44) <= \<const0>\;
  trace41_counter(43) <= \<const0>\;
  trace41_counter(42) <= \<const0>\;
  trace41_counter(41) <= \<const0>\;
  trace41_counter(40) <= \<const0>\;
  trace41_counter(39) <= \<const0>\;
  trace41_counter(38) <= \<const0>\;
  trace41_counter(37) <= \<const0>\;
  trace41_counter(36) <= \<const0>\;
  trace41_counter(35) <= \<const0>\;
  trace41_counter(34) <= \<const0>\;
  trace41_counter(33) <= \<const0>\;
  trace41_counter(32) <= \<const0>\;
  trace41_counter(31) <= \<const0>\;
  trace41_counter(30) <= \<const0>\;
  trace41_counter(29) <= \<const0>\;
  trace41_counter(28) <= \<const0>\;
  trace41_counter(27) <= \<const0>\;
  trace41_counter(26) <= \<const0>\;
  trace41_counter(25) <= \<const0>\;
  trace41_counter(24) <= \<const0>\;
  trace41_counter(23) <= \<const0>\;
  trace41_counter(22) <= \<const0>\;
  trace41_counter(21) <= \<const0>\;
  trace41_counter(20) <= \<const0>\;
  trace41_counter(19) <= \<const0>\;
  trace41_counter(18) <= \<const0>\;
  trace41_counter(17) <= \<const0>\;
  trace41_counter(16) <= \<const0>\;
  trace41_counter(15) <= \<const0>\;
  trace41_counter(14) <= \<const0>\;
  trace41_counter(13) <= \<const0>\;
  trace41_counter(12) <= \<const0>\;
  trace41_counter(11) <= \<const0>\;
  trace41_counter(10) <= \<const0>\;
  trace41_counter(9) <= \<const0>\;
  trace41_counter(8) <= \<const0>\;
  trace41_counter(7) <= \<const0>\;
  trace41_counter(6) <= \<const0>\;
  trace41_counter(5) <= \<const0>\;
  trace41_counter(4) <= \<const0>\;
  trace41_counter(3) <= \<const0>\;
  trace41_counter(2) <= \<const0>\;
  trace41_counter(1) <= \<const0>\;
  trace41_counter(0) <= \<const0>\;
  trace41_counter_overflow <= \<const0>\;
  trace41_read <= \<const0>\;
  trace42_counter(44) <= \<const0>\;
  trace42_counter(43) <= \<const0>\;
  trace42_counter(42) <= \<const0>\;
  trace42_counter(41) <= \<const0>\;
  trace42_counter(40) <= \<const0>\;
  trace42_counter(39) <= \<const0>\;
  trace42_counter(38) <= \<const0>\;
  trace42_counter(37) <= \<const0>\;
  trace42_counter(36) <= \<const0>\;
  trace42_counter(35) <= \<const0>\;
  trace42_counter(34) <= \<const0>\;
  trace42_counter(33) <= \<const0>\;
  trace42_counter(32) <= \<const0>\;
  trace42_counter(31) <= \<const0>\;
  trace42_counter(30) <= \<const0>\;
  trace42_counter(29) <= \<const0>\;
  trace42_counter(28) <= \<const0>\;
  trace42_counter(27) <= \<const0>\;
  trace42_counter(26) <= \<const0>\;
  trace42_counter(25) <= \<const0>\;
  trace42_counter(24) <= \<const0>\;
  trace42_counter(23) <= \<const0>\;
  trace42_counter(22) <= \<const0>\;
  trace42_counter(21) <= \<const0>\;
  trace42_counter(20) <= \<const0>\;
  trace42_counter(19) <= \<const0>\;
  trace42_counter(18) <= \<const0>\;
  trace42_counter(17) <= \<const0>\;
  trace42_counter(16) <= \<const0>\;
  trace42_counter(15) <= \<const0>\;
  trace42_counter(14) <= \<const0>\;
  trace42_counter(13) <= \<const0>\;
  trace42_counter(12) <= \<const0>\;
  trace42_counter(11) <= \<const0>\;
  trace42_counter(10) <= \<const0>\;
  trace42_counter(9) <= \<const0>\;
  trace42_counter(8) <= \<const0>\;
  trace42_counter(7) <= \<const0>\;
  trace42_counter(6) <= \<const0>\;
  trace42_counter(5) <= \<const0>\;
  trace42_counter(4) <= \<const0>\;
  trace42_counter(3) <= \<const0>\;
  trace42_counter(2) <= \<const0>\;
  trace42_counter(1) <= \<const0>\;
  trace42_counter(0) <= \<const0>\;
  trace42_counter_overflow <= \<const0>\;
  trace42_read <= \<const0>\;
  trace43_counter(44) <= \<const0>\;
  trace43_counter(43) <= \<const0>\;
  trace43_counter(42) <= \<const0>\;
  trace43_counter(41) <= \<const0>\;
  trace43_counter(40) <= \<const0>\;
  trace43_counter(39) <= \<const0>\;
  trace43_counter(38) <= \<const0>\;
  trace43_counter(37) <= \<const0>\;
  trace43_counter(36) <= \<const0>\;
  trace43_counter(35) <= \<const0>\;
  trace43_counter(34) <= \<const0>\;
  trace43_counter(33) <= \<const0>\;
  trace43_counter(32) <= \<const0>\;
  trace43_counter(31) <= \<const0>\;
  trace43_counter(30) <= \<const0>\;
  trace43_counter(29) <= \<const0>\;
  trace43_counter(28) <= \<const0>\;
  trace43_counter(27) <= \<const0>\;
  trace43_counter(26) <= \<const0>\;
  trace43_counter(25) <= \<const0>\;
  trace43_counter(24) <= \<const0>\;
  trace43_counter(23) <= \<const0>\;
  trace43_counter(22) <= \<const0>\;
  trace43_counter(21) <= \<const0>\;
  trace43_counter(20) <= \<const0>\;
  trace43_counter(19) <= \<const0>\;
  trace43_counter(18) <= \<const0>\;
  trace43_counter(17) <= \<const0>\;
  trace43_counter(16) <= \<const0>\;
  trace43_counter(15) <= \<const0>\;
  trace43_counter(14) <= \<const0>\;
  trace43_counter(13) <= \<const0>\;
  trace43_counter(12) <= \<const0>\;
  trace43_counter(11) <= \<const0>\;
  trace43_counter(10) <= \<const0>\;
  trace43_counter(9) <= \<const0>\;
  trace43_counter(8) <= \<const0>\;
  trace43_counter(7) <= \<const0>\;
  trace43_counter(6) <= \<const0>\;
  trace43_counter(5) <= \<const0>\;
  trace43_counter(4) <= \<const0>\;
  trace43_counter(3) <= \<const0>\;
  trace43_counter(2) <= \<const0>\;
  trace43_counter(1) <= \<const0>\;
  trace43_counter(0) <= \<const0>\;
  trace43_counter_overflow <= \<const0>\;
  trace43_read <= \<const0>\;
  trace44_counter(44) <= \<const0>\;
  trace44_counter(43) <= \<const0>\;
  trace44_counter(42) <= \<const0>\;
  trace44_counter(41) <= \<const0>\;
  trace44_counter(40) <= \<const0>\;
  trace44_counter(39) <= \<const0>\;
  trace44_counter(38) <= \<const0>\;
  trace44_counter(37) <= \<const0>\;
  trace44_counter(36) <= \<const0>\;
  trace44_counter(35) <= \<const0>\;
  trace44_counter(34) <= \<const0>\;
  trace44_counter(33) <= \<const0>\;
  trace44_counter(32) <= \<const0>\;
  trace44_counter(31) <= \<const0>\;
  trace44_counter(30) <= \<const0>\;
  trace44_counter(29) <= \<const0>\;
  trace44_counter(28) <= \<const0>\;
  trace44_counter(27) <= \<const0>\;
  trace44_counter(26) <= \<const0>\;
  trace44_counter(25) <= \<const0>\;
  trace44_counter(24) <= \<const0>\;
  trace44_counter(23) <= \<const0>\;
  trace44_counter(22) <= \<const0>\;
  trace44_counter(21) <= \<const0>\;
  trace44_counter(20) <= \<const0>\;
  trace44_counter(19) <= \<const0>\;
  trace44_counter(18) <= \<const0>\;
  trace44_counter(17) <= \<const0>\;
  trace44_counter(16) <= \<const0>\;
  trace44_counter(15) <= \<const0>\;
  trace44_counter(14) <= \<const0>\;
  trace44_counter(13) <= \<const0>\;
  trace44_counter(12) <= \<const0>\;
  trace44_counter(11) <= \<const0>\;
  trace44_counter(10) <= \<const0>\;
  trace44_counter(9) <= \<const0>\;
  trace44_counter(8) <= \<const0>\;
  trace44_counter(7) <= \<const0>\;
  trace44_counter(6) <= \<const0>\;
  trace44_counter(5) <= \<const0>\;
  trace44_counter(4) <= \<const0>\;
  trace44_counter(3) <= \<const0>\;
  trace44_counter(2) <= \<const0>\;
  trace44_counter(1) <= \<const0>\;
  trace44_counter(0) <= \<const0>\;
  trace44_counter_overflow <= \<const0>\;
  trace44_read <= \<const0>\;
  trace45_counter(44) <= \<const0>\;
  trace45_counter(43) <= \<const0>\;
  trace45_counter(42) <= \<const0>\;
  trace45_counter(41) <= \<const0>\;
  trace45_counter(40) <= \<const0>\;
  trace45_counter(39) <= \<const0>\;
  trace45_counter(38) <= \<const0>\;
  trace45_counter(37) <= \<const0>\;
  trace45_counter(36) <= \<const0>\;
  trace45_counter(35) <= \<const0>\;
  trace45_counter(34) <= \<const0>\;
  trace45_counter(33) <= \<const0>\;
  trace45_counter(32) <= \<const0>\;
  trace45_counter(31) <= \<const0>\;
  trace45_counter(30) <= \<const0>\;
  trace45_counter(29) <= \<const0>\;
  trace45_counter(28) <= \<const0>\;
  trace45_counter(27) <= \<const0>\;
  trace45_counter(26) <= \<const0>\;
  trace45_counter(25) <= \<const0>\;
  trace45_counter(24) <= \<const0>\;
  trace45_counter(23) <= \<const0>\;
  trace45_counter(22) <= \<const0>\;
  trace45_counter(21) <= \<const0>\;
  trace45_counter(20) <= \<const0>\;
  trace45_counter(19) <= \<const0>\;
  trace45_counter(18) <= \<const0>\;
  trace45_counter(17) <= \<const0>\;
  trace45_counter(16) <= \<const0>\;
  trace45_counter(15) <= \<const0>\;
  trace45_counter(14) <= \<const0>\;
  trace45_counter(13) <= \<const0>\;
  trace45_counter(12) <= \<const0>\;
  trace45_counter(11) <= \<const0>\;
  trace45_counter(10) <= \<const0>\;
  trace45_counter(9) <= \<const0>\;
  trace45_counter(8) <= \<const0>\;
  trace45_counter(7) <= \<const0>\;
  trace45_counter(6) <= \<const0>\;
  trace45_counter(5) <= \<const0>\;
  trace45_counter(4) <= \<const0>\;
  trace45_counter(3) <= \<const0>\;
  trace45_counter(2) <= \<const0>\;
  trace45_counter(1) <= \<const0>\;
  trace45_counter(0) <= \<const0>\;
  trace45_counter_overflow <= \<const0>\;
  trace45_read <= \<const0>\;
  trace46_counter(44) <= \<const0>\;
  trace46_counter(43) <= \<const0>\;
  trace46_counter(42) <= \<const0>\;
  trace46_counter(41) <= \<const0>\;
  trace46_counter(40) <= \<const0>\;
  trace46_counter(39) <= \<const0>\;
  trace46_counter(38) <= \<const0>\;
  trace46_counter(37) <= \<const0>\;
  trace46_counter(36) <= \<const0>\;
  trace46_counter(35) <= \<const0>\;
  trace46_counter(34) <= \<const0>\;
  trace46_counter(33) <= \<const0>\;
  trace46_counter(32) <= \<const0>\;
  trace46_counter(31) <= \<const0>\;
  trace46_counter(30) <= \<const0>\;
  trace46_counter(29) <= \<const0>\;
  trace46_counter(28) <= \<const0>\;
  trace46_counter(27) <= \<const0>\;
  trace46_counter(26) <= \<const0>\;
  trace46_counter(25) <= \<const0>\;
  trace46_counter(24) <= \<const0>\;
  trace46_counter(23) <= \<const0>\;
  trace46_counter(22) <= \<const0>\;
  trace46_counter(21) <= \<const0>\;
  trace46_counter(20) <= \<const0>\;
  trace46_counter(19) <= \<const0>\;
  trace46_counter(18) <= \<const0>\;
  trace46_counter(17) <= \<const0>\;
  trace46_counter(16) <= \<const0>\;
  trace46_counter(15) <= \<const0>\;
  trace46_counter(14) <= \<const0>\;
  trace46_counter(13) <= \<const0>\;
  trace46_counter(12) <= \<const0>\;
  trace46_counter(11) <= \<const0>\;
  trace46_counter(10) <= \<const0>\;
  trace46_counter(9) <= \<const0>\;
  trace46_counter(8) <= \<const0>\;
  trace46_counter(7) <= \<const0>\;
  trace46_counter(6) <= \<const0>\;
  trace46_counter(5) <= \<const0>\;
  trace46_counter(4) <= \<const0>\;
  trace46_counter(3) <= \<const0>\;
  trace46_counter(2) <= \<const0>\;
  trace46_counter(1) <= \<const0>\;
  trace46_counter(0) <= \<const0>\;
  trace46_counter_overflow <= \<const0>\;
  trace46_read <= \<const0>\;
  trace47_counter(44) <= \<const0>\;
  trace47_counter(43) <= \<const0>\;
  trace47_counter(42) <= \<const0>\;
  trace47_counter(41) <= \<const0>\;
  trace47_counter(40) <= \<const0>\;
  trace47_counter(39) <= \<const0>\;
  trace47_counter(38) <= \<const0>\;
  trace47_counter(37) <= \<const0>\;
  trace47_counter(36) <= \<const0>\;
  trace47_counter(35) <= \<const0>\;
  trace47_counter(34) <= \<const0>\;
  trace47_counter(33) <= \<const0>\;
  trace47_counter(32) <= \<const0>\;
  trace47_counter(31) <= \<const0>\;
  trace47_counter(30) <= \<const0>\;
  trace47_counter(29) <= \<const0>\;
  trace47_counter(28) <= \<const0>\;
  trace47_counter(27) <= \<const0>\;
  trace47_counter(26) <= \<const0>\;
  trace47_counter(25) <= \<const0>\;
  trace47_counter(24) <= \<const0>\;
  trace47_counter(23) <= \<const0>\;
  trace47_counter(22) <= \<const0>\;
  trace47_counter(21) <= \<const0>\;
  trace47_counter(20) <= \<const0>\;
  trace47_counter(19) <= \<const0>\;
  trace47_counter(18) <= \<const0>\;
  trace47_counter(17) <= \<const0>\;
  trace47_counter(16) <= \<const0>\;
  trace47_counter(15) <= \<const0>\;
  trace47_counter(14) <= \<const0>\;
  trace47_counter(13) <= \<const0>\;
  trace47_counter(12) <= \<const0>\;
  trace47_counter(11) <= \<const0>\;
  trace47_counter(10) <= \<const0>\;
  trace47_counter(9) <= \<const0>\;
  trace47_counter(8) <= \<const0>\;
  trace47_counter(7) <= \<const0>\;
  trace47_counter(6) <= \<const0>\;
  trace47_counter(5) <= \<const0>\;
  trace47_counter(4) <= \<const0>\;
  trace47_counter(3) <= \<const0>\;
  trace47_counter(2) <= \<const0>\;
  trace47_counter(1) <= \<const0>\;
  trace47_counter(0) <= \<const0>\;
  trace47_counter_overflow <= \<const0>\;
  trace47_read <= \<const0>\;
  trace48_counter(44) <= \<const0>\;
  trace48_counter(43) <= \<const0>\;
  trace48_counter(42) <= \<const0>\;
  trace48_counter(41) <= \<const0>\;
  trace48_counter(40) <= \<const0>\;
  trace48_counter(39) <= \<const0>\;
  trace48_counter(38) <= \<const0>\;
  trace48_counter(37) <= \<const0>\;
  trace48_counter(36) <= \<const0>\;
  trace48_counter(35) <= \<const0>\;
  trace48_counter(34) <= \<const0>\;
  trace48_counter(33) <= \<const0>\;
  trace48_counter(32) <= \<const0>\;
  trace48_counter(31) <= \<const0>\;
  trace48_counter(30) <= \<const0>\;
  trace48_counter(29) <= \<const0>\;
  trace48_counter(28) <= \<const0>\;
  trace48_counter(27) <= \<const0>\;
  trace48_counter(26) <= \<const0>\;
  trace48_counter(25) <= \<const0>\;
  trace48_counter(24) <= \<const0>\;
  trace48_counter(23) <= \<const0>\;
  trace48_counter(22) <= \<const0>\;
  trace48_counter(21) <= \<const0>\;
  trace48_counter(20) <= \<const0>\;
  trace48_counter(19) <= \<const0>\;
  trace48_counter(18) <= \<const0>\;
  trace48_counter(17) <= \<const0>\;
  trace48_counter(16) <= \<const0>\;
  trace48_counter(15) <= \<const0>\;
  trace48_counter(14) <= \<const0>\;
  trace48_counter(13) <= \<const0>\;
  trace48_counter(12) <= \<const0>\;
  trace48_counter(11) <= \<const0>\;
  trace48_counter(10) <= \<const0>\;
  trace48_counter(9) <= \<const0>\;
  trace48_counter(8) <= \<const0>\;
  trace48_counter(7) <= \<const0>\;
  trace48_counter(6) <= \<const0>\;
  trace48_counter(5) <= \<const0>\;
  trace48_counter(4) <= \<const0>\;
  trace48_counter(3) <= \<const0>\;
  trace48_counter(2) <= \<const0>\;
  trace48_counter(1) <= \<const0>\;
  trace48_counter(0) <= \<const0>\;
  trace48_counter_overflow <= \<const0>\;
  trace48_read <= \<const0>\;
  trace49_counter(44) <= \<const0>\;
  trace49_counter(43) <= \<const0>\;
  trace49_counter(42) <= \<const0>\;
  trace49_counter(41) <= \<const0>\;
  trace49_counter(40) <= \<const0>\;
  trace49_counter(39) <= \<const0>\;
  trace49_counter(38) <= \<const0>\;
  trace49_counter(37) <= \<const0>\;
  trace49_counter(36) <= \<const0>\;
  trace49_counter(35) <= \<const0>\;
  trace49_counter(34) <= \<const0>\;
  trace49_counter(33) <= \<const0>\;
  trace49_counter(32) <= \<const0>\;
  trace49_counter(31) <= \<const0>\;
  trace49_counter(30) <= \<const0>\;
  trace49_counter(29) <= \<const0>\;
  trace49_counter(28) <= \<const0>\;
  trace49_counter(27) <= \<const0>\;
  trace49_counter(26) <= \<const0>\;
  trace49_counter(25) <= \<const0>\;
  trace49_counter(24) <= \<const0>\;
  trace49_counter(23) <= \<const0>\;
  trace49_counter(22) <= \<const0>\;
  trace49_counter(21) <= \<const0>\;
  trace49_counter(20) <= \<const0>\;
  trace49_counter(19) <= \<const0>\;
  trace49_counter(18) <= \<const0>\;
  trace49_counter(17) <= \<const0>\;
  trace49_counter(16) <= \<const0>\;
  trace49_counter(15) <= \<const0>\;
  trace49_counter(14) <= \<const0>\;
  trace49_counter(13) <= \<const0>\;
  trace49_counter(12) <= \<const0>\;
  trace49_counter(11) <= \<const0>\;
  trace49_counter(10) <= \<const0>\;
  trace49_counter(9) <= \<const0>\;
  trace49_counter(8) <= \<const0>\;
  trace49_counter(7) <= \<const0>\;
  trace49_counter(6) <= \<const0>\;
  trace49_counter(5) <= \<const0>\;
  trace49_counter(4) <= \<const0>\;
  trace49_counter(3) <= \<const0>\;
  trace49_counter(2) <= \<const0>\;
  trace49_counter(1) <= \<const0>\;
  trace49_counter(0) <= \<const0>\;
  trace49_counter_overflow <= \<const0>\;
  trace49_read <= \<const0>\;
  trace4_counter(44 downto 0) <= \^trace4_counter\(44 downto 0);
  trace4_counter_overflow <= \^trace4_counter_overflow\;
  trace50_counter(44) <= \<const0>\;
  trace50_counter(43) <= \<const0>\;
  trace50_counter(42) <= \<const0>\;
  trace50_counter(41) <= \<const0>\;
  trace50_counter(40) <= \<const0>\;
  trace50_counter(39) <= \<const0>\;
  trace50_counter(38) <= \<const0>\;
  trace50_counter(37) <= \<const0>\;
  trace50_counter(36) <= \<const0>\;
  trace50_counter(35) <= \<const0>\;
  trace50_counter(34) <= \<const0>\;
  trace50_counter(33) <= \<const0>\;
  trace50_counter(32) <= \<const0>\;
  trace50_counter(31) <= \<const0>\;
  trace50_counter(30) <= \<const0>\;
  trace50_counter(29) <= \<const0>\;
  trace50_counter(28) <= \<const0>\;
  trace50_counter(27) <= \<const0>\;
  trace50_counter(26) <= \<const0>\;
  trace50_counter(25) <= \<const0>\;
  trace50_counter(24) <= \<const0>\;
  trace50_counter(23) <= \<const0>\;
  trace50_counter(22) <= \<const0>\;
  trace50_counter(21) <= \<const0>\;
  trace50_counter(20) <= \<const0>\;
  trace50_counter(19) <= \<const0>\;
  trace50_counter(18) <= \<const0>\;
  trace50_counter(17) <= \<const0>\;
  trace50_counter(16) <= \<const0>\;
  trace50_counter(15) <= \<const0>\;
  trace50_counter(14) <= \<const0>\;
  trace50_counter(13) <= \<const0>\;
  trace50_counter(12) <= \<const0>\;
  trace50_counter(11) <= \<const0>\;
  trace50_counter(10) <= \<const0>\;
  trace50_counter(9) <= \<const0>\;
  trace50_counter(8) <= \<const0>\;
  trace50_counter(7) <= \<const0>\;
  trace50_counter(6) <= \<const0>\;
  trace50_counter(5) <= \<const0>\;
  trace50_counter(4) <= \<const0>\;
  trace50_counter(3) <= \<const0>\;
  trace50_counter(2) <= \<const0>\;
  trace50_counter(1) <= \<const0>\;
  trace50_counter(0) <= \<const0>\;
  trace50_counter_overflow <= \<const0>\;
  trace50_read <= \<const0>\;
  trace51_counter(44) <= \<const0>\;
  trace51_counter(43) <= \<const0>\;
  trace51_counter(42) <= \<const0>\;
  trace51_counter(41) <= \<const0>\;
  trace51_counter(40) <= \<const0>\;
  trace51_counter(39) <= \<const0>\;
  trace51_counter(38) <= \<const0>\;
  trace51_counter(37) <= \<const0>\;
  trace51_counter(36) <= \<const0>\;
  trace51_counter(35) <= \<const0>\;
  trace51_counter(34) <= \<const0>\;
  trace51_counter(33) <= \<const0>\;
  trace51_counter(32) <= \<const0>\;
  trace51_counter(31) <= \<const0>\;
  trace51_counter(30) <= \<const0>\;
  trace51_counter(29) <= \<const0>\;
  trace51_counter(28) <= \<const0>\;
  trace51_counter(27) <= \<const0>\;
  trace51_counter(26) <= \<const0>\;
  trace51_counter(25) <= \<const0>\;
  trace51_counter(24) <= \<const0>\;
  trace51_counter(23) <= \<const0>\;
  trace51_counter(22) <= \<const0>\;
  trace51_counter(21) <= \<const0>\;
  trace51_counter(20) <= \<const0>\;
  trace51_counter(19) <= \<const0>\;
  trace51_counter(18) <= \<const0>\;
  trace51_counter(17) <= \<const0>\;
  trace51_counter(16) <= \<const0>\;
  trace51_counter(15) <= \<const0>\;
  trace51_counter(14) <= \<const0>\;
  trace51_counter(13) <= \<const0>\;
  trace51_counter(12) <= \<const0>\;
  trace51_counter(11) <= \<const0>\;
  trace51_counter(10) <= \<const0>\;
  trace51_counter(9) <= \<const0>\;
  trace51_counter(8) <= \<const0>\;
  trace51_counter(7) <= \<const0>\;
  trace51_counter(6) <= \<const0>\;
  trace51_counter(5) <= \<const0>\;
  trace51_counter(4) <= \<const0>\;
  trace51_counter(3) <= \<const0>\;
  trace51_counter(2) <= \<const0>\;
  trace51_counter(1) <= \<const0>\;
  trace51_counter(0) <= \<const0>\;
  trace51_counter_overflow <= \<const0>\;
  trace51_read <= \<const0>\;
  trace52_counter(44) <= \<const0>\;
  trace52_counter(43) <= \<const0>\;
  trace52_counter(42) <= \<const0>\;
  trace52_counter(41) <= \<const0>\;
  trace52_counter(40) <= \<const0>\;
  trace52_counter(39) <= \<const0>\;
  trace52_counter(38) <= \<const0>\;
  trace52_counter(37) <= \<const0>\;
  trace52_counter(36) <= \<const0>\;
  trace52_counter(35) <= \<const0>\;
  trace52_counter(34) <= \<const0>\;
  trace52_counter(33) <= \<const0>\;
  trace52_counter(32) <= \<const0>\;
  trace52_counter(31) <= \<const0>\;
  trace52_counter(30) <= \<const0>\;
  trace52_counter(29) <= \<const0>\;
  trace52_counter(28) <= \<const0>\;
  trace52_counter(27) <= \<const0>\;
  trace52_counter(26) <= \<const0>\;
  trace52_counter(25) <= \<const0>\;
  trace52_counter(24) <= \<const0>\;
  trace52_counter(23) <= \<const0>\;
  trace52_counter(22) <= \<const0>\;
  trace52_counter(21) <= \<const0>\;
  trace52_counter(20) <= \<const0>\;
  trace52_counter(19) <= \<const0>\;
  trace52_counter(18) <= \<const0>\;
  trace52_counter(17) <= \<const0>\;
  trace52_counter(16) <= \<const0>\;
  trace52_counter(15) <= \<const0>\;
  trace52_counter(14) <= \<const0>\;
  trace52_counter(13) <= \<const0>\;
  trace52_counter(12) <= \<const0>\;
  trace52_counter(11) <= \<const0>\;
  trace52_counter(10) <= \<const0>\;
  trace52_counter(9) <= \<const0>\;
  trace52_counter(8) <= \<const0>\;
  trace52_counter(7) <= \<const0>\;
  trace52_counter(6) <= \<const0>\;
  trace52_counter(5) <= \<const0>\;
  trace52_counter(4) <= \<const0>\;
  trace52_counter(3) <= \<const0>\;
  trace52_counter(2) <= \<const0>\;
  trace52_counter(1) <= \<const0>\;
  trace52_counter(0) <= \<const0>\;
  trace52_counter_overflow <= \<const0>\;
  trace52_read <= \<const0>\;
  trace53_counter(44) <= \<const0>\;
  trace53_counter(43) <= \<const0>\;
  trace53_counter(42) <= \<const0>\;
  trace53_counter(41) <= \<const0>\;
  trace53_counter(40) <= \<const0>\;
  trace53_counter(39) <= \<const0>\;
  trace53_counter(38) <= \<const0>\;
  trace53_counter(37) <= \<const0>\;
  trace53_counter(36) <= \<const0>\;
  trace53_counter(35) <= \<const0>\;
  trace53_counter(34) <= \<const0>\;
  trace53_counter(33) <= \<const0>\;
  trace53_counter(32) <= \<const0>\;
  trace53_counter(31) <= \<const0>\;
  trace53_counter(30) <= \<const0>\;
  trace53_counter(29) <= \<const0>\;
  trace53_counter(28) <= \<const0>\;
  trace53_counter(27) <= \<const0>\;
  trace53_counter(26) <= \<const0>\;
  trace53_counter(25) <= \<const0>\;
  trace53_counter(24) <= \<const0>\;
  trace53_counter(23) <= \<const0>\;
  trace53_counter(22) <= \<const0>\;
  trace53_counter(21) <= \<const0>\;
  trace53_counter(20) <= \<const0>\;
  trace53_counter(19) <= \<const0>\;
  trace53_counter(18) <= \<const0>\;
  trace53_counter(17) <= \<const0>\;
  trace53_counter(16) <= \<const0>\;
  trace53_counter(15) <= \<const0>\;
  trace53_counter(14) <= \<const0>\;
  trace53_counter(13) <= \<const0>\;
  trace53_counter(12) <= \<const0>\;
  trace53_counter(11) <= \<const0>\;
  trace53_counter(10) <= \<const0>\;
  trace53_counter(9) <= \<const0>\;
  trace53_counter(8) <= \<const0>\;
  trace53_counter(7) <= \<const0>\;
  trace53_counter(6) <= \<const0>\;
  trace53_counter(5) <= \<const0>\;
  trace53_counter(4) <= \<const0>\;
  trace53_counter(3) <= \<const0>\;
  trace53_counter(2) <= \<const0>\;
  trace53_counter(1) <= \<const0>\;
  trace53_counter(0) <= \<const0>\;
  trace53_counter_overflow <= \<const0>\;
  trace53_read <= \<const0>\;
  trace54_counter(44) <= \<const0>\;
  trace54_counter(43) <= \<const0>\;
  trace54_counter(42) <= \<const0>\;
  trace54_counter(41) <= \<const0>\;
  trace54_counter(40) <= \<const0>\;
  trace54_counter(39) <= \<const0>\;
  trace54_counter(38) <= \<const0>\;
  trace54_counter(37) <= \<const0>\;
  trace54_counter(36) <= \<const0>\;
  trace54_counter(35) <= \<const0>\;
  trace54_counter(34) <= \<const0>\;
  trace54_counter(33) <= \<const0>\;
  trace54_counter(32) <= \<const0>\;
  trace54_counter(31) <= \<const0>\;
  trace54_counter(30) <= \<const0>\;
  trace54_counter(29) <= \<const0>\;
  trace54_counter(28) <= \<const0>\;
  trace54_counter(27) <= \<const0>\;
  trace54_counter(26) <= \<const0>\;
  trace54_counter(25) <= \<const0>\;
  trace54_counter(24) <= \<const0>\;
  trace54_counter(23) <= \<const0>\;
  trace54_counter(22) <= \<const0>\;
  trace54_counter(21) <= \<const0>\;
  trace54_counter(20) <= \<const0>\;
  trace54_counter(19) <= \<const0>\;
  trace54_counter(18) <= \<const0>\;
  trace54_counter(17) <= \<const0>\;
  trace54_counter(16) <= \<const0>\;
  trace54_counter(15) <= \<const0>\;
  trace54_counter(14) <= \<const0>\;
  trace54_counter(13) <= \<const0>\;
  trace54_counter(12) <= \<const0>\;
  trace54_counter(11) <= \<const0>\;
  trace54_counter(10) <= \<const0>\;
  trace54_counter(9) <= \<const0>\;
  trace54_counter(8) <= \<const0>\;
  trace54_counter(7) <= \<const0>\;
  trace54_counter(6) <= \<const0>\;
  trace54_counter(5) <= \<const0>\;
  trace54_counter(4) <= \<const0>\;
  trace54_counter(3) <= \<const0>\;
  trace54_counter(2) <= \<const0>\;
  trace54_counter(1) <= \<const0>\;
  trace54_counter(0) <= \<const0>\;
  trace54_counter_overflow <= \<const0>\;
  trace54_read <= \<const0>\;
  trace55_counter(44) <= \<const0>\;
  trace55_counter(43) <= \<const0>\;
  trace55_counter(42) <= \<const0>\;
  trace55_counter(41) <= \<const0>\;
  trace55_counter(40) <= \<const0>\;
  trace55_counter(39) <= \<const0>\;
  trace55_counter(38) <= \<const0>\;
  trace55_counter(37) <= \<const0>\;
  trace55_counter(36) <= \<const0>\;
  trace55_counter(35) <= \<const0>\;
  trace55_counter(34) <= \<const0>\;
  trace55_counter(33) <= \<const0>\;
  trace55_counter(32) <= \<const0>\;
  trace55_counter(31) <= \<const0>\;
  trace55_counter(30) <= \<const0>\;
  trace55_counter(29) <= \<const0>\;
  trace55_counter(28) <= \<const0>\;
  trace55_counter(27) <= \<const0>\;
  trace55_counter(26) <= \<const0>\;
  trace55_counter(25) <= \<const0>\;
  trace55_counter(24) <= \<const0>\;
  trace55_counter(23) <= \<const0>\;
  trace55_counter(22) <= \<const0>\;
  trace55_counter(21) <= \<const0>\;
  trace55_counter(20) <= \<const0>\;
  trace55_counter(19) <= \<const0>\;
  trace55_counter(18) <= \<const0>\;
  trace55_counter(17) <= \<const0>\;
  trace55_counter(16) <= \<const0>\;
  trace55_counter(15) <= \<const0>\;
  trace55_counter(14) <= \<const0>\;
  trace55_counter(13) <= \<const0>\;
  trace55_counter(12) <= \<const0>\;
  trace55_counter(11) <= \<const0>\;
  trace55_counter(10) <= \<const0>\;
  trace55_counter(9) <= \<const0>\;
  trace55_counter(8) <= \<const0>\;
  trace55_counter(7) <= \<const0>\;
  trace55_counter(6) <= \<const0>\;
  trace55_counter(5) <= \<const0>\;
  trace55_counter(4) <= \<const0>\;
  trace55_counter(3) <= \<const0>\;
  trace55_counter(2) <= \<const0>\;
  trace55_counter(1) <= \<const0>\;
  trace55_counter(0) <= \<const0>\;
  trace55_counter_overflow <= \<const0>\;
  trace55_read <= \<const0>\;
  trace56_counter(44) <= \<const0>\;
  trace56_counter(43) <= \<const0>\;
  trace56_counter(42) <= \<const0>\;
  trace56_counter(41) <= \<const0>\;
  trace56_counter(40) <= \<const0>\;
  trace56_counter(39) <= \<const0>\;
  trace56_counter(38) <= \<const0>\;
  trace56_counter(37) <= \<const0>\;
  trace56_counter(36) <= \<const0>\;
  trace56_counter(35) <= \<const0>\;
  trace56_counter(34) <= \<const0>\;
  trace56_counter(33) <= \<const0>\;
  trace56_counter(32) <= \<const0>\;
  trace56_counter(31) <= \<const0>\;
  trace56_counter(30) <= \<const0>\;
  trace56_counter(29) <= \<const0>\;
  trace56_counter(28) <= \<const0>\;
  trace56_counter(27) <= \<const0>\;
  trace56_counter(26) <= \<const0>\;
  trace56_counter(25) <= \<const0>\;
  trace56_counter(24) <= \<const0>\;
  trace56_counter(23) <= \<const0>\;
  trace56_counter(22) <= \<const0>\;
  trace56_counter(21) <= \<const0>\;
  trace56_counter(20) <= \<const0>\;
  trace56_counter(19) <= \<const0>\;
  trace56_counter(18) <= \<const0>\;
  trace56_counter(17) <= \<const0>\;
  trace56_counter(16) <= \<const0>\;
  trace56_counter(15) <= \<const0>\;
  trace56_counter(14) <= \<const0>\;
  trace56_counter(13) <= \<const0>\;
  trace56_counter(12) <= \<const0>\;
  trace56_counter(11) <= \<const0>\;
  trace56_counter(10) <= \<const0>\;
  trace56_counter(9) <= \<const0>\;
  trace56_counter(8) <= \<const0>\;
  trace56_counter(7) <= \<const0>\;
  trace56_counter(6) <= \<const0>\;
  trace56_counter(5) <= \<const0>\;
  trace56_counter(4) <= \<const0>\;
  trace56_counter(3) <= \<const0>\;
  trace56_counter(2) <= \<const0>\;
  trace56_counter(1) <= \<const0>\;
  trace56_counter(0) <= \<const0>\;
  trace56_counter_overflow <= \<const0>\;
  trace56_read <= \<const0>\;
  trace57_counter(44) <= \<const0>\;
  trace57_counter(43) <= \<const0>\;
  trace57_counter(42) <= \<const0>\;
  trace57_counter(41) <= \<const0>\;
  trace57_counter(40) <= \<const0>\;
  trace57_counter(39) <= \<const0>\;
  trace57_counter(38) <= \<const0>\;
  trace57_counter(37) <= \<const0>\;
  trace57_counter(36) <= \<const0>\;
  trace57_counter(35) <= \<const0>\;
  trace57_counter(34) <= \<const0>\;
  trace57_counter(33) <= \<const0>\;
  trace57_counter(32) <= \<const0>\;
  trace57_counter(31) <= \<const0>\;
  trace57_counter(30) <= \<const0>\;
  trace57_counter(29) <= \<const0>\;
  trace57_counter(28) <= \<const0>\;
  trace57_counter(27) <= \<const0>\;
  trace57_counter(26) <= \<const0>\;
  trace57_counter(25) <= \<const0>\;
  trace57_counter(24) <= \<const0>\;
  trace57_counter(23) <= \<const0>\;
  trace57_counter(22) <= \<const0>\;
  trace57_counter(21) <= \<const0>\;
  trace57_counter(20) <= \<const0>\;
  trace57_counter(19) <= \<const0>\;
  trace57_counter(18) <= \<const0>\;
  trace57_counter(17) <= \<const0>\;
  trace57_counter(16) <= \<const0>\;
  trace57_counter(15) <= \<const0>\;
  trace57_counter(14) <= \<const0>\;
  trace57_counter(13) <= \<const0>\;
  trace57_counter(12) <= \<const0>\;
  trace57_counter(11) <= \<const0>\;
  trace57_counter(10) <= \<const0>\;
  trace57_counter(9) <= \<const0>\;
  trace57_counter(8) <= \<const0>\;
  trace57_counter(7) <= \<const0>\;
  trace57_counter(6) <= \<const0>\;
  trace57_counter(5) <= \<const0>\;
  trace57_counter(4) <= \<const0>\;
  trace57_counter(3) <= \<const0>\;
  trace57_counter(2) <= \<const0>\;
  trace57_counter(1) <= \<const0>\;
  trace57_counter(0) <= \<const0>\;
  trace57_counter_overflow <= \<const0>\;
  trace57_read <= \<const0>\;
  trace58_counter(44) <= \<const0>\;
  trace58_counter(43) <= \<const0>\;
  trace58_counter(42) <= \<const0>\;
  trace58_counter(41) <= \<const0>\;
  trace58_counter(40) <= \<const0>\;
  trace58_counter(39) <= \<const0>\;
  trace58_counter(38) <= \<const0>\;
  trace58_counter(37) <= \<const0>\;
  trace58_counter(36) <= \<const0>\;
  trace58_counter(35) <= \<const0>\;
  trace58_counter(34) <= \<const0>\;
  trace58_counter(33) <= \<const0>\;
  trace58_counter(32) <= \<const0>\;
  trace58_counter(31) <= \<const0>\;
  trace58_counter(30) <= \<const0>\;
  trace58_counter(29) <= \<const0>\;
  trace58_counter(28) <= \<const0>\;
  trace58_counter(27) <= \<const0>\;
  trace58_counter(26) <= \<const0>\;
  trace58_counter(25) <= \<const0>\;
  trace58_counter(24) <= \<const0>\;
  trace58_counter(23) <= \<const0>\;
  trace58_counter(22) <= \<const0>\;
  trace58_counter(21) <= \<const0>\;
  trace58_counter(20) <= \<const0>\;
  trace58_counter(19) <= \<const0>\;
  trace58_counter(18) <= \<const0>\;
  trace58_counter(17) <= \<const0>\;
  trace58_counter(16) <= \<const0>\;
  trace58_counter(15) <= \<const0>\;
  trace58_counter(14) <= \<const0>\;
  trace58_counter(13) <= \<const0>\;
  trace58_counter(12) <= \<const0>\;
  trace58_counter(11) <= \<const0>\;
  trace58_counter(10) <= \<const0>\;
  trace58_counter(9) <= \<const0>\;
  trace58_counter(8) <= \<const0>\;
  trace58_counter(7) <= \<const0>\;
  trace58_counter(6) <= \<const0>\;
  trace58_counter(5) <= \<const0>\;
  trace58_counter(4) <= \<const0>\;
  trace58_counter(3) <= \<const0>\;
  trace58_counter(2) <= \<const0>\;
  trace58_counter(1) <= \<const0>\;
  trace58_counter(0) <= \<const0>\;
  trace58_counter_overflow <= \<const0>\;
  trace58_read <= \<const0>\;
  trace59_counter(44) <= \<const0>\;
  trace59_counter(43) <= \<const0>\;
  trace59_counter(42) <= \<const0>\;
  trace59_counter(41) <= \<const0>\;
  trace59_counter(40) <= \<const0>\;
  trace59_counter(39) <= \<const0>\;
  trace59_counter(38) <= \<const0>\;
  trace59_counter(37) <= \<const0>\;
  trace59_counter(36) <= \<const0>\;
  trace59_counter(35) <= \<const0>\;
  trace59_counter(34) <= \<const0>\;
  trace59_counter(33) <= \<const0>\;
  trace59_counter(32) <= \<const0>\;
  trace59_counter(31) <= \<const0>\;
  trace59_counter(30) <= \<const0>\;
  trace59_counter(29) <= \<const0>\;
  trace59_counter(28) <= \<const0>\;
  trace59_counter(27) <= \<const0>\;
  trace59_counter(26) <= \<const0>\;
  trace59_counter(25) <= \<const0>\;
  trace59_counter(24) <= \<const0>\;
  trace59_counter(23) <= \<const0>\;
  trace59_counter(22) <= \<const0>\;
  trace59_counter(21) <= \<const0>\;
  trace59_counter(20) <= \<const0>\;
  trace59_counter(19) <= \<const0>\;
  trace59_counter(18) <= \<const0>\;
  trace59_counter(17) <= \<const0>\;
  trace59_counter(16) <= \<const0>\;
  trace59_counter(15) <= \<const0>\;
  trace59_counter(14) <= \<const0>\;
  trace59_counter(13) <= \<const0>\;
  trace59_counter(12) <= \<const0>\;
  trace59_counter(11) <= \<const0>\;
  trace59_counter(10) <= \<const0>\;
  trace59_counter(9) <= \<const0>\;
  trace59_counter(8) <= \<const0>\;
  trace59_counter(7) <= \<const0>\;
  trace59_counter(6) <= \<const0>\;
  trace59_counter(5) <= \<const0>\;
  trace59_counter(4) <= \<const0>\;
  trace59_counter(3) <= \<const0>\;
  trace59_counter(2) <= \<const0>\;
  trace59_counter(1) <= \<const0>\;
  trace59_counter(0) <= \<const0>\;
  trace59_counter_overflow <= \<const0>\;
  trace59_read <= \<const0>\;
  trace5_counter(44) <= \<const0>\;
  trace5_counter(43) <= \<const0>\;
  trace5_counter(42) <= \<const0>\;
  trace5_counter(41) <= \<const0>\;
  trace5_counter(40) <= \<const0>\;
  trace5_counter(39) <= \<const0>\;
  trace5_counter(38) <= \<const0>\;
  trace5_counter(37) <= \<const0>\;
  trace5_counter(36) <= \<const0>\;
  trace5_counter(35) <= \<const0>\;
  trace5_counter(34) <= \<const0>\;
  trace5_counter(33) <= \<const0>\;
  trace5_counter(32) <= \<const0>\;
  trace5_counter(31) <= \<const0>\;
  trace5_counter(30) <= \<const0>\;
  trace5_counter(29) <= \<const0>\;
  trace5_counter(28) <= \<const0>\;
  trace5_counter(27) <= \<const0>\;
  trace5_counter(26) <= \<const0>\;
  trace5_counter(25) <= \<const0>\;
  trace5_counter(24) <= \<const0>\;
  trace5_counter(23) <= \<const0>\;
  trace5_counter(22) <= \<const0>\;
  trace5_counter(21) <= \<const0>\;
  trace5_counter(20) <= \<const0>\;
  trace5_counter(19) <= \<const0>\;
  trace5_counter(18) <= \<const0>\;
  trace5_counter(17) <= \<const0>\;
  trace5_counter(16) <= \<const0>\;
  trace5_counter(15) <= \<const0>\;
  trace5_counter(14) <= \<const0>\;
  trace5_counter(13) <= \<const0>\;
  trace5_counter(12) <= \<const0>\;
  trace5_counter(11) <= \<const0>\;
  trace5_counter(10) <= \<const0>\;
  trace5_counter(9) <= \<const0>\;
  trace5_counter(8) <= \<const0>\;
  trace5_counter(7) <= \<const0>\;
  trace5_counter(6) <= \<const0>\;
  trace5_counter(5) <= \<const0>\;
  trace5_counter(4) <= \<const0>\;
  trace5_counter(3) <= \<const0>\;
  trace5_counter(2) <= \<const0>\;
  trace5_counter(1) <= \<const0>\;
  trace5_counter(0) <= \<const0>\;
  trace5_counter_overflow <= \<const0>\;
  trace5_read <= \<const0>\;
  trace60_counter(44) <= \<const0>\;
  trace60_counter(43) <= \<const0>\;
  trace60_counter(42) <= \<const0>\;
  trace60_counter(41) <= \<const0>\;
  trace60_counter(40) <= \<const0>\;
  trace60_counter(39) <= \<const0>\;
  trace60_counter(38) <= \<const0>\;
  trace60_counter(37) <= \<const0>\;
  trace60_counter(36) <= \<const0>\;
  trace60_counter(35) <= \<const0>\;
  trace60_counter(34) <= \<const0>\;
  trace60_counter(33) <= \<const0>\;
  trace60_counter(32) <= \<const0>\;
  trace60_counter(31) <= \<const0>\;
  trace60_counter(30) <= \<const0>\;
  trace60_counter(29) <= \<const0>\;
  trace60_counter(28) <= \<const0>\;
  trace60_counter(27) <= \<const0>\;
  trace60_counter(26) <= \<const0>\;
  trace60_counter(25) <= \<const0>\;
  trace60_counter(24) <= \<const0>\;
  trace60_counter(23) <= \<const0>\;
  trace60_counter(22) <= \<const0>\;
  trace60_counter(21) <= \<const0>\;
  trace60_counter(20) <= \<const0>\;
  trace60_counter(19) <= \<const0>\;
  trace60_counter(18) <= \<const0>\;
  trace60_counter(17) <= \<const0>\;
  trace60_counter(16) <= \<const0>\;
  trace60_counter(15) <= \<const0>\;
  trace60_counter(14) <= \<const0>\;
  trace60_counter(13) <= \<const0>\;
  trace60_counter(12) <= \<const0>\;
  trace60_counter(11) <= \<const0>\;
  trace60_counter(10) <= \<const0>\;
  trace60_counter(9) <= \<const0>\;
  trace60_counter(8) <= \<const0>\;
  trace60_counter(7) <= \<const0>\;
  trace60_counter(6) <= \<const0>\;
  trace60_counter(5) <= \<const0>\;
  trace60_counter(4) <= \<const0>\;
  trace60_counter(3) <= \<const0>\;
  trace60_counter(2) <= \<const0>\;
  trace60_counter(1) <= \<const0>\;
  trace60_counter(0) <= \<const0>\;
  trace60_counter_overflow <= \<const0>\;
  trace60_read <= \<const0>\;
  trace61_counter(44) <= \<const0>\;
  trace61_counter(43) <= \<const0>\;
  trace61_counter(42) <= \<const0>\;
  trace61_counter(41) <= \<const0>\;
  trace61_counter(40) <= \<const0>\;
  trace61_counter(39) <= \<const0>\;
  trace61_counter(38) <= \<const0>\;
  trace61_counter(37) <= \<const0>\;
  trace61_counter(36) <= \<const0>\;
  trace61_counter(35) <= \<const0>\;
  trace61_counter(34) <= \<const0>\;
  trace61_counter(33) <= \<const0>\;
  trace61_counter(32) <= \<const0>\;
  trace61_counter(31) <= \<const0>\;
  trace61_counter(30) <= \<const0>\;
  trace61_counter(29) <= \<const0>\;
  trace61_counter(28) <= \<const0>\;
  trace61_counter(27) <= \<const0>\;
  trace61_counter(26) <= \<const0>\;
  trace61_counter(25) <= \<const0>\;
  trace61_counter(24) <= \<const0>\;
  trace61_counter(23) <= \<const0>\;
  trace61_counter(22) <= \<const0>\;
  trace61_counter(21) <= \<const0>\;
  trace61_counter(20) <= \<const0>\;
  trace61_counter(19) <= \<const0>\;
  trace61_counter(18) <= \<const0>\;
  trace61_counter(17) <= \<const0>\;
  trace61_counter(16) <= \<const0>\;
  trace61_counter(15) <= \<const0>\;
  trace61_counter(14) <= \<const0>\;
  trace61_counter(13) <= \<const0>\;
  trace61_counter(12) <= \<const0>\;
  trace61_counter(11) <= \<const0>\;
  trace61_counter(10) <= \<const0>\;
  trace61_counter(9) <= \<const0>\;
  trace61_counter(8) <= \<const0>\;
  trace61_counter(7) <= \<const0>\;
  trace61_counter(6) <= \<const0>\;
  trace61_counter(5) <= \<const0>\;
  trace61_counter(4) <= \<const0>\;
  trace61_counter(3) <= \<const0>\;
  trace61_counter(2) <= \<const0>\;
  trace61_counter(1) <= \<const0>\;
  trace61_counter(0) <= \<const0>\;
  trace61_counter_overflow <= \<const0>\;
  trace61_read <= \<const0>\;
  trace62_counter(44) <= \<const0>\;
  trace62_counter(43) <= \<const0>\;
  trace62_counter(42) <= \<const0>\;
  trace62_counter(41) <= \<const0>\;
  trace62_counter(40) <= \<const0>\;
  trace62_counter(39) <= \<const0>\;
  trace62_counter(38) <= \<const0>\;
  trace62_counter(37) <= \<const0>\;
  trace62_counter(36) <= \<const0>\;
  trace62_counter(35) <= \<const0>\;
  trace62_counter(34) <= \<const0>\;
  trace62_counter(33) <= \<const0>\;
  trace62_counter(32) <= \<const0>\;
  trace62_counter(31) <= \<const0>\;
  trace62_counter(30) <= \<const0>\;
  trace62_counter(29) <= \<const0>\;
  trace62_counter(28) <= \<const0>\;
  trace62_counter(27) <= \<const0>\;
  trace62_counter(26) <= \<const0>\;
  trace62_counter(25) <= \<const0>\;
  trace62_counter(24) <= \<const0>\;
  trace62_counter(23) <= \<const0>\;
  trace62_counter(22) <= \<const0>\;
  trace62_counter(21) <= \<const0>\;
  trace62_counter(20) <= \<const0>\;
  trace62_counter(19) <= \<const0>\;
  trace62_counter(18) <= \<const0>\;
  trace62_counter(17) <= \<const0>\;
  trace62_counter(16) <= \<const0>\;
  trace62_counter(15) <= \<const0>\;
  trace62_counter(14) <= \<const0>\;
  trace62_counter(13) <= \<const0>\;
  trace62_counter(12) <= \<const0>\;
  trace62_counter(11) <= \<const0>\;
  trace62_counter(10) <= \<const0>\;
  trace62_counter(9) <= \<const0>\;
  trace62_counter(8) <= \<const0>\;
  trace62_counter(7) <= \<const0>\;
  trace62_counter(6) <= \<const0>\;
  trace62_counter(5) <= \<const0>\;
  trace62_counter(4) <= \<const0>\;
  trace62_counter(3) <= \<const0>\;
  trace62_counter(2) <= \<const0>\;
  trace62_counter(1) <= \<const0>\;
  trace62_counter(0) <= \<const0>\;
  trace62_counter_overflow <= \<const0>\;
  trace62_read <= \<const0>\;
  trace6_counter(44) <= \<const0>\;
  trace6_counter(43) <= \<const0>\;
  trace6_counter(42) <= \<const0>\;
  trace6_counter(41) <= \<const0>\;
  trace6_counter(40) <= \<const0>\;
  trace6_counter(39) <= \<const0>\;
  trace6_counter(38) <= \<const0>\;
  trace6_counter(37) <= \<const0>\;
  trace6_counter(36) <= \<const0>\;
  trace6_counter(35) <= \<const0>\;
  trace6_counter(34) <= \<const0>\;
  trace6_counter(33) <= \<const0>\;
  trace6_counter(32) <= \<const0>\;
  trace6_counter(31) <= \<const0>\;
  trace6_counter(30) <= \<const0>\;
  trace6_counter(29) <= \<const0>\;
  trace6_counter(28) <= \<const0>\;
  trace6_counter(27) <= \<const0>\;
  trace6_counter(26) <= \<const0>\;
  trace6_counter(25) <= \<const0>\;
  trace6_counter(24) <= \<const0>\;
  trace6_counter(23) <= \<const0>\;
  trace6_counter(22) <= \<const0>\;
  trace6_counter(21) <= \<const0>\;
  trace6_counter(20) <= \<const0>\;
  trace6_counter(19) <= \<const0>\;
  trace6_counter(18) <= \<const0>\;
  trace6_counter(17) <= \<const0>\;
  trace6_counter(16) <= \<const0>\;
  trace6_counter(15) <= \<const0>\;
  trace6_counter(14) <= \<const0>\;
  trace6_counter(13) <= \<const0>\;
  trace6_counter(12) <= \<const0>\;
  trace6_counter(11) <= \<const0>\;
  trace6_counter(10) <= \<const0>\;
  trace6_counter(9) <= \<const0>\;
  trace6_counter(8) <= \<const0>\;
  trace6_counter(7) <= \<const0>\;
  trace6_counter(6) <= \<const0>\;
  trace6_counter(5) <= \<const0>\;
  trace6_counter(4) <= \<const0>\;
  trace6_counter(3) <= \<const0>\;
  trace6_counter(2) <= \<const0>\;
  trace6_counter(1) <= \<const0>\;
  trace6_counter(0) <= \<const0>\;
  trace6_counter_overflow <= \<const0>\;
  trace6_read <= \<const0>\;
  trace7_counter(44) <= \<const0>\;
  trace7_counter(43) <= \<const0>\;
  trace7_counter(42) <= \<const0>\;
  trace7_counter(41) <= \<const0>\;
  trace7_counter(40) <= \<const0>\;
  trace7_counter(39) <= \<const0>\;
  trace7_counter(38) <= \<const0>\;
  trace7_counter(37) <= \<const0>\;
  trace7_counter(36) <= \<const0>\;
  trace7_counter(35) <= \<const0>\;
  trace7_counter(34) <= \<const0>\;
  trace7_counter(33) <= \<const0>\;
  trace7_counter(32) <= \<const0>\;
  trace7_counter(31) <= \<const0>\;
  trace7_counter(30) <= \<const0>\;
  trace7_counter(29) <= \<const0>\;
  trace7_counter(28) <= \<const0>\;
  trace7_counter(27) <= \<const0>\;
  trace7_counter(26) <= \<const0>\;
  trace7_counter(25) <= \<const0>\;
  trace7_counter(24) <= \<const0>\;
  trace7_counter(23) <= \<const0>\;
  trace7_counter(22) <= \<const0>\;
  trace7_counter(21) <= \<const0>\;
  trace7_counter(20) <= \<const0>\;
  trace7_counter(19) <= \<const0>\;
  trace7_counter(18) <= \<const0>\;
  trace7_counter(17) <= \<const0>\;
  trace7_counter(16) <= \<const0>\;
  trace7_counter(15) <= \<const0>\;
  trace7_counter(14) <= \<const0>\;
  trace7_counter(13) <= \<const0>\;
  trace7_counter(12) <= \<const0>\;
  trace7_counter(11) <= \<const0>\;
  trace7_counter(10) <= \<const0>\;
  trace7_counter(9) <= \<const0>\;
  trace7_counter(8) <= \<const0>\;
  trace7_counter(7) <= \<const0>\;
  trace7_counter(6) <= \<const0>\;
  trace7_counter(5) <= \<const0>\;
  trace7_counter(4) <= \<const0>\;
  trace7_counter(3) <= \<const0>\;
  trace7_counter(2) <= \<const0>\;
  trace7_counter(1) <= \<const0>\;
  trace7_counter(0) <= \<const0>\;
  trace7_counter_overflow <= \<const0>\;
  trace7_read <= \<const0>\;
  trace8_counter(44) <= \<const0>\;
  trace8_counter(43) <= \<const0>\;
  trace8_counter(42) <= \<const0>\;
  trace8_counter(41) <= \<const0>\;
  trace8_counter(40) <= \<const0>\;
  trace8_counter(39) <= \<const0>\;
  trace8_counter(38) <= \<const0>\;
  trace8_counter(37) <= \<const0>\;
  trace8_counter(36) <= \<const0>\;
  trace8_counter(35) <= \<const0>\;
  trace8_counter(34) <= \<const0>\;
  trace8_counter(33) <= \<const0>\;
  trace8_counter(32) <= \<const0>\;
  trace8_counter(31) <= \<const0>\;
  trace8_counter(30) <= \<const0>\;
  trace8_counter(29) <= \<const0>\;
  trace8_counter(28) <= \<const0>\;
  trace8_counter(27) <= \<const0>\;
  trace8_counter(26) <= \<const0>\;
  trace8_counter(25) <= \<const0>\;
  trace8_counter(24) <= \<const0>\;
  trace8_counter(23) <= \<const0>\;
  trace8_counter(22) <= \<const0>\;
  trace8_counter(21) <= \<const0>\;
  trace8_counter(20) <= \<const0>\;
  trace8_counter(19) <= \<const0>\;
  trace8_counter(18) <= \<const0>\;
  trace8_counter(17) <= \<const0>\;
  trace8_counter(16) <= \<const0>\;
  trace8_counter(15) <= \<const0>\;
  trace8_counter(14) <= \<const0>\;
  trace8_counter(13) <= \<const0>\;
  trace8_counter(12) <= \<const0>\;
  trace8_counter(11) <= \<const0>\;
  trace8_counter(10) <= \<const0>\;
  trace8_counter(9) <= \<const0>\;
  trace8_counter(8) <= \<const0>\;
  trace8_counter(7) <= \<const0>\;
  trace8_counter(6) <= \<const0>\;
  trace8_counter(5) <= \<const0>\;
  trace8_counter(4) <= \<const0>\;
  trace8_counter(3) <= \<const0>\;
  trace8_counter(2) <= \<const0>\;
  trace8_counter(1) <= \<const0>\;
  trace8_counter(0) <= \<const0>\;
  trace8_counter_overflow <= \<const0>\;
  trace8_read <= \<const0>\;
  trace9_counter(44) <= \<const0>\;
  trace9_counter(43) <= \<const0>\;
  trace9_counter(42) <= \<const0>\;
  trace9_counter(41) <= \<const0>\;
  trace9_counter(40) <= \<const0>\;
  trace9_counter(39) <= \<const0>\;
  trace9_counter(38) <= \<const0>\;
  trace9_counter(37) <= \<const0>\;
  trace9_counter(36) <= \<const0>\;
  trace9_counter(35) <= \<const0>\;
  trace9_counter(34) <= \<const0>\;
  trace9_counter(33) <= \<const0>\;
  trace9_counter(32) <= \<const0>\;
  trace9_counter(31) <= \<const0>\;
  trace9_counter(30) <= \<const0>\;
  trace9_counter(29) <= \<const0>\;
  trace9_counter(28) <= \<const0>\;
  trace9_counter(27) <= \<const0>\;
  trace9_counter(26) <= \<const0>\;
  trace9_counter(25) <= \<const0>\;
  trace9_counter(24) <= \<const0>\;
  trace9_counter(23) <= \<const0>\;
  trace9_counter(22) <= \<const0>\;
  trace9_counter(21) <= \<const0>\;
  trace9_counter(20) <= \<const0>\;
  trace9_counter(19) <= \<const0>\;
  trace9_counter(18) <= \<const0>\;
  trace9_counter(17) <= \<const0>\;
  trace9_counter(16) <= \<const0>\;
  trace9_counter(15) <= \<const0>\;
  trace9_counter(14) <= \<const0>\;
  trace9_counter(13) <= \<const0>\;
  trace9_counter(12) <= \<const0>\;
  trace9_counter(11) <= \<const0>\;
  trace9_counter(10) <= \<const0>\;
  trace9_counter(9) <= \<const0>\;
  trace9_counter(8) <= \<const0>\;
  trace9_counter(7) <= \<const0>\;
  trace9_counter(6) <= \<const0>\;
  trace9_counter(5) <= \<const0>\;
  trace9_counter(4) <= \<const0>\;
  trace9_counter(3) <= \<const0>\;
  trace9_counter(2) <= \<const0>\;
  trace9_counter(1) <= \<const0>\;
  trace9_counter(0) <= \<const0>\;
  trace9_counter_overflow <= \<const0>\;
  trace9_read <= \<const0>\;
  trace_rst <= \^trace_rst\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axi_lite_if_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_LITE_IF
     port map (
      E(0) => axi_lite_if_i_n_7,
      axi_arready_reg_0 => s_axi_arready,
      axi_awready_reg_0 => s_axi_awready,
      axi_wready_reg_0 => s_axi_wready,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      \s_axi_awaddr[3]\ => axi_lite_if_i_n_9,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(0) => \^s_axi_rdata\(28),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(0) => s_axi_wdata(0),
      s_axi_wvalid => s_axi_wvalid,
      sw_trace_data => sw_trace_data,
      trace_clk => trace_clk,
      trace_resetn => trace_resetn,
      trace_resetn_0 => axi_lite_if_i_n_6
    );
\b1[0].ss_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice
     port map (
      D(63) => \b1[0].ss_i_n_2\,
      D(62) => \b1[0].ss_i_n_3\,
      D(61) => \b1[0].ss_i_n_4\,
      D(60) => \b1[0].ss_i_n_5\,
      D(59) => \b1[0].ss_i_n_6\,
      D(58) => \b1[0].ss_i_n_7\,
      D(57) => \b1[0].ss_i_n_8\,
      D(56) => \b1[0].ss_i_n_9\,
      D(55) => \b1[0].ss_i_n_10\,
      D(54) => \b1[0].ss_i_n_11\,
      D(53) => \b1[0].ss_i_n_12\,
      D(52) => \b1[0].ss_i_n_13\,
      D(51) => \b1[0].ss_i_n_14\,
      D(50) => \b1[0].ss_i_n_15\,
      D(49) => \b1[0].ss_i_n_16\,
      D(48) => \b1[0].ss_i_n_17\,
      D(47) => \b1[0].ss_i_n_18\,
      D(46) => \b1[0].ss_i_n_19\,
      D(45) => \b1[0].ss_i_n_20\,
      D(44) => \b1[0].ss_i_n_21\,
      D(43) => \b1[0].ss_i_n_22\,
      D(42) => \b1[0].ss_i_n_23\,
      D(41) => \b1[0].ss_i_n_24\,
      D(40) => \b1[0].ss_i_n_25\,
      D(39) => \b1[0].ss_i_n_26\,
      D(38) => \b1[0].ss_i_n_27\,
      D(37) => \b1[0].ss_i_n_28\,
      D(36) => \b1[0].ss_i_n_29\,
      D(35) => \b1[0].ss_i_n_30\,
      D(34) => \b1[0].ss_i_n_31\,
      D(33) => \b1[0].ss_i_n_32\,
      D(32) => \b1[0].ss_i_n_33\,
      D(31) => \b1[0].ss_i_n_34\,
      D(30) => \b1[0].ss_i_n_35\,
      D(29) => \b1[0].ss_i_n_36\,
      D(28) => \b1[0].ss_i_n_37\,
      D(27) => \b1[0].ss_i_n_38\,
      D(26) => \b1[0].ss_i_n_39\,
      D(25) => \b1[0].ss_i_n_40\,
      D(24) => \b1[0].ss_i_n_41\,
      D(23) => \b1[0].ss_i_n_42\,
      D(22) => \b1[0].ss_i_n_43\,
      D(21) => \b1[0].ss_i_n_44\,
      D(20) => \b1[0].ss_i_n_45\,
      D(19) => \b1[0].ss_i_n_46\,
      D(18) => \b1[0].ss_i_n_47\,
      D(17) => \b1[0].ss_i_n_48\,
      D(16) => \b1[0].ss_i_n_49\,
      D(15) => \b1[0].ss_i_n_50\,
      D(14) => \b1[0].ss_i_n_51\,
      D(13) => \b1[0].ss_i_n_52\,
      D(12) => \b1[0].ss_i_n_53\,
      D(11) => \b1[0].ss_i_n_54\,
      D(10) => \b1[0].ss_i_n_55\,
      D(9) => \b1[0].ss_i_n_56\,
      D(8) => \b1[0].ss_i_n_57\,
      D(7) => \b1[0].ss_i_n_58\,
      D(6) => \b1[0].ss_i_n_59\,
      D(5) => \b1[0].ss_i_n_60\,
      D(4) => \b1[0].ss_i_n_61\,
      D(3) => \b1[0].ss_i_n_62\,
      D(2) => \b1[0].ss_i_n_63\,
      D(1) => \b1[0].ss_i_n_64\,
      D(0) => \b1[0].ss_i_n_65\,
      E(0) => \b2[3].merge_i/data_i\,
      \_trace_valid\(0) => \_trace_valid\(0),
      \data_i_reg[0]\ => \b1[1].ss_i_n_65\,
      \data_i_reg[10]\ => \b1[1].ss_i_n_55\,
      \data_i_reg[11]\ => \b1[1].ss_i_n_54\,
      \data_i_reg[12]\ => \b1[1].ss_i_n_53\,
      \data_i_reg[13]\ => \b1[1].ss_i_n_52\,
      \data_i_reg[14]\ => \b1[1].ss_i_n_51\,
      \data_i_reg[15]\ => \b1[1].ss_i_n_50\,
      \data_i_reg[16]\ => \b1[1].ss_i_n_49\,
      \data_i_reg[17]\ => \b1[1].ss_i_n_48\,
      \data_i_reg[18]\ => \b1[1].ss_i_n_47\,
      \data_i_reg[19]\ => \b1[1].ss_i_n_46\,
      \data_i_reg[1]\ => \b1[1].ss_i_n_64\,
      \data_i_reg[20]\ => \b1[1].ss_i_n_45\,
      \data_i_reg[21]\ => \b1[1].ss_i_n_44\,
      \data_i_reg[22]\ => \b1[1].ss_i_n_43\,
      \data_i_reg[23]\ => \b1[1].ss_i_n_42\,
      \data_i_reg[24]\ => \b1[1].ss_i_n_41\,
      \data_i_reg[25]\ => \b1[1].ss_i_n_40\,
      \data_i_reg[26]\ => \b1[1].ss_i_n_39\,
      \data_i_reg[27]\ => \b1[1].ss_i_n_38\,
      \data_i_reg[28]\ => \b1[1].ss_i_n_37\,
      \data_i_reg[29]\ => \b1[1].ss_i_n_36\,
      \data_i_reg[2]\ => \b1[1].ss_i_n_63\,
      \data_i_reg[30]\ => \b1[1].ss_i_n_35\,
      \data_i_reg[31]\ => \b1[1].ss_i_n_34\,
      \data_i_reg[32]\ => \b1[1].ss_i_n_33\,
      \data_i_reg[33]\ => \b1[1].ss_i_n_32\,
      \data_i_reg[34]\ => \b1[1].ss_i_n_31\,
      \data_i_reg[35]\ => \b1[1].ss_i_n_30\,
      \data_i_reg[36]\ => \b1[1].ss_i_n_29\,
      \data_i_reg[37]\ => \b1[1].ss_i_n_28\,
      \data_i_reg[38]\ => \b1[1].ss_i_n_27\,
      \data_i_reg[39]\ => \b1[1].ss_i_n_26\,
      \data_i_reg[3]\ => \b1[1].ss_i_n_62\,
      \data_i_reg[40]\ => \b1[1].ss_i_n_25\,
      \data_i_reg[41]\ => \b1[1].ss_i_n_24\,
      \data_i_reg[42]\ => \b1[1].ss_i_n_23\,
      \data_i_reg[43]\ => \b1[1].ss_i_n_22\,
      \data_i_reg[44]\ => \b1[1].ss_i_n_21\,
      \data_i_reg[45]\ => \b1[1].ss_i_n_20\,
      \data_i_reg[46]\ => \b1[1].ss_i_n_19\,
      \data_i_reg[47]\ => \b1[1].ss_i_n_18\,
      \data_i_reg[48]\ => \b1[1].ss_i_n_17\,
      \data_i_reg[49]\ => \b1[1].ss_i_n_16\,
      \data_i_reg[4]\ => \b1[1].ss_i_n_61\,
      \data_i_reg[50]\ => \b1[1].ss_i_n_15\,
      \data_i_reg[51]\ => \b1[1].ss_i_n_14\,
      \data_i_reg[52]\ => \b1[1].ss_i_n_13\,
      \data_i_reg[53]\ => \b1[1].ss_i_n_12\,
      \data_i_reg[54]\ => \b1[1].ss_i_n_11\,
      \data_i_reg[55]\ => \b1[1].ss_i_n_10\,
      \data_i_reg[56]\ => \b1[1].ss_i_n_9\,
      \data_i_reg[57]\ => \b1[1].ss_i_n_8\,
      \data_i_reg[58]\ => \b1[1].ss_i_n_7\,
      \data_i_reg[59]\ => \b1[1].ss_i_n_6\,
      \data_i_reg[5]\ => \b1[1].ss_i_n_60\,
      \data_i_reg[60]\ => \b1[1].ss_i_n_5\,
      \data_i_reg[61]\ => \b1[1].ss_i_n_4\,
      \data_i_reg[62]\ => \b1[1].ss_i_n_3\,
      \data_i_reg[63]\ => \b1[1].ss_i_n_2\,
      \data_i_reg[6]\ => \b1[1].ss_i_n_59\,
      \data_i_reg[7]\ => \b1[1].ss_i_n_58\,
      \data_i_reg[8]\ => \b1[1].ss_i_n_57\,
      \data_i_reg[9]\ => \b1[1].ss_i_n_56\,
      dout(63 downto 0) => sw_data(63 downto 0),
      empty => event_empty_i,
      have_data0 => \b2[3].merge_i/have_data0\,
      have_data_reg_0 => \^trace_rst\,
      ready_i_reg_reg_0 => merge_tree_i_n_0,
      ready_i_reg_reg_1(0) => \_trace_valid\(1),
      sw_read => sw_read,
      trace_clk => trace_clk
    );
\b1[1].ss_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_0
     port map (
      \_trace_valid\(0) => \_trace_valid\(0),
      \buffer_reg[0]_0\ => \b1[1].ss_i_n_65\,
      \buffer_reg[10]_0\ => \b1[1].ss_i_n_55\,
      \buffer_reg[11]_0\ => \b1[1].ss_i_n_54\,
      \buffer_reg[12]_0\ => \b1[1].ss_i_n_53\,
      \buffer_reg[13]_0\ => \b1[1].ss_i_n_52\,
      \buffer_reg[14]_0\ => \b1[1].ss_i_n_51\,
      \buffer_reg[15]_0\ => \b1[1].ss_i_n_50\,
      \buffer_reg[16]_0\ => \b1[1].ss_i_n_49\,
      \buffer_reg[17]_0\ => \b1[1].ss_i_n_48\,
      \buffer_reg[18]_0\ => \b1[1].ss_i_n_47\,
      \buffer_reg[19]_0\ => \b1[1].ss_i_n_46\,
      \buffer_reg[1]_0\ => \b1[1].ss_i_n_64\,
      \buffer_reg[20]_0\ => \b1[1].ss_i_n_45\,
      \buffer_reg[21]_0\ => \b1[1].ss_i_n_44\,
      \buffer_reg[22]_0\ => \b1[1].ss_i_n_43\,
      \buffer_reg[23]_0\ => \b1[1].ss_i_n_42\,
      \buffer_reg[24]_0\ => \b1[1].ss_i_n_41\,
      \buffer_reg[25]_0\ => \b1[1].ss_i_n_40\,
      \buffer_reg[26]_0\ => \b1[1].ss_i_n_39\,
      \buffer_reg[27]_0\ => \b1[1].ss_i_n_38\,
      \buffer_reg[28]_0\ => \b1[1].ss_i_n_37\,
      \buffer_reg[29]_0\ => \b1[1].ss_i_n_36\,
      \buffer_reg[2]_0\ => \b1[1].ss_i_n_63\,
      \buffer_reg[30]_0\ => \b1[1].ss_i_n_35\,
      \buffer_reg[31]_0\ => \b1[1].ss_i_n_34\,
      \buffer_reg[32]_0\ => \b1[1].ss_i_n_33\,
      \buffer_reg[33]_0\ => \b1[1].ss_i_n_32\,
      \buffer_reg[34]_0\ => \b1[1].ss_i_n_31\,
      \buffer_reg[35]_0\ => \b1[1].ss_i_n_30\,
      \buffer_reg[36]_0\ => \b1[1].ss_i_n_29\,
      \buffer_reg[37]_0\ => \b1[1].ss_i_n_28\,
      \buffer_reg[38]_0\ => \b1[1].ss_i_n_27\,
      \buffer_reg[39]_0\ => \b1[1].ss_i_n_26\,
      \buffer_reg[3]_0\ => \b1[1].ss_i_n_62\,
      \buffer_reg[40]_0\ => \b1[1].ss_i_n_25\,
      \buffer_reg[41]_0\ => \b1[1].ss_i_n_24\,
      \buffer_reg[42]_0\ => \b1[1].ss_i_n_23\,
      \buffer_reg[43]_0\ => \b1[1].ss_i_n_22\,
      \buffer_reg[44]_0\ => \b1[1].ss_i_n_21\,
      \buffer_reg[45]_0\ => \b1[1].ss_i_n_20\,
      \buffer_reg[46]_0\ => \b1[1].ss_i_n_19\,
      \buffer_reg[47]_0\ => \b1[1].ss_i_n_18\,
      \buffer_reg[48]_0\ => \b1[1].ss_i_n_17\,
      \buffer_reg[49]_0\ => \b1[1].ss_i_n_16\,
      \buffer_reg[4]_0\ => \b1[1].ss_i_n_61\,
      \buffer_reg[50]_0\ => \b1[1].ss_i_n_15\,
      \buffer_reg[51]_0\ => \b1[1].ss_i_n_14\,
      \buffer_reg[52]_0\ => \b1[1].ss_i_n_13\,
      \buffer_reg[53]_0\ => \b1[1].ss_i_n_12\,
      \buffer_reg[54]_0\ => \b1[1].ss_i_n_11\,
      \buffer_reg[55]_0\ => \b1[1].ss_i_n_10\,
      \buffer_reg[56]_0\ => \b1[1].ss_i_n_9\,
      \buffer_reg[57]_0\ => \b1[1].ss_i_n_8\,
      \buffer_reg[58]_0\ => \b1[1].ss_i_n_7\,
      \buffer_reg[59]_0\ => \b1[1].ss_i_n_6\,
      \buffer_reg[5]_0\ => \b1[1].ss_i_n_60\,
      \buffer_reg[60]_0\ => \b1[1].ss_i_n_5\,
      \buffer_reg[61]_0\ => \b1[1].ss_i_n_4\,
      \buffer_reg[62]_0\ => \b1[1].ss_i_n_3\,
      \buffer_reg[63]_0\ => \b1[1].ss_i_n_2\,
      \buffer_reg[6]_0\ => \b1[1].ss_i_n_59\,
      \buffer_reg[7]_0\ => \b1[1].ss_i_n_58\,
      \buffer_reg[8]_0\ => \b1[1].ss_i_n_57\,
      \buffer_reg[9]_0\ => \b1[1].ss_i_n_56\,
      have_data0 => \b2[3].merge_i/have_data0\,
      have_data_reg_0(0) => \_trace_valid\(1),
      have_data_reg_1 => \^trace_rst\,
      ready_i_reg_reg_0 => trace0_read,
      ready_i_reg_reg_1 => merge_tree_i_n_0,
      trace0_data(63 downto 0) => trace0_data(63 downto 0),
      trace0_valid => trace0_valid,
      trace_clk => trace_clk
    );
\b1[2].ss_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_1
     port map (
      D(63) => \b1[2].ss_i_n_2\,
      D(62) => \b1[2].ss_i_n_3\,
      D(61) => \b1[2].ss_i_n_4\,
      D(60) => \b1[2].ss_i_n_5\,
      D(59) => \b1[2].ss_i_n_6\,
      D(58) => \b1[2].ss_i_n_7\,
      D(57) => \b1[2].ss_i_n_8\,
      D(56) => \b1[2].ss_i_n_9\,
      D(55) => \b1[2].ss_i_n_10\,
      D(54) => \b1[2].ss_i_n_11\,
      D(53) => \b1[2].ss_i_n_12\,
      D(52) => \b1[2].ss_i_n_13\,
      D(51) => \b1[2].ss_i_n_14\,
      D(50) => \b1[2].ss_i_n_15\,
      D(49) => \b1[2].ss_i_n_16\,
      D(48) => \b1[2].ss_i_n_17\,
      D(47) => \b1[2].ss_i_n_18\,
      D(46) => \b1[2].ss_i_n_19\,
      D(45) => \b1[2].ss_i_n_20\,
      D(44) => \b1[2].ss_i_n_21\,
      D(43) => \b1[2].ss_i_n_22\,
      D(42) => \b1[2].ss_i_n_23\,
      D(41) => \b1[2].ss_i_n_24\,
      D(40) => \b1[2].ss_i_n_25\,
      D(39) => \b1[2].ss_i_n_26\,
      D(38) => \b1[2].ss_i_n_27\,
      D(37) => \b1[2].ss_i_n_28\,
      D(36) => \b1[2].ss_i_n_29\,
      D(35) => \b1[2].ss_i_n_30\,
      D(34) => \b1[2].ss_i_n_31\,
      D(33) => \b1[2].ss_i_n_32\,
      D(32) => \b1[2].ss_i_n_33\,
      D(31) => \b1[2].ss_i_n_34\,
      D(30) => \b1[2].ss_i_n_35\,
      D(29) => \b1[2].ss_i_n_36\,
      D(28) => \b1[2].ss_i_n_37\,
      D(27) => \b1[2].ss_i_n_38\,
      D(26) => \b1[2].ss_i_n_39\,
      D(25) => \b1[2].ss_i_n_40\,
      D(24) => \b1[2].ss_i_n_41\,
      D(23) => \b1[2].ss_i_n_42\,
      D(22) => \b1[2].ss_i_n_43\,
      D(21) => \b1[2].ss_i_n_44\,
      D(20) => \b1[2].ss_i_n_45\,
      D(19) => \b1[2].ss_i_n_46\,
      D(18) => \b1[2].ss_i_n_47\,
      D(17) => \b1[2].ss_i_n_48\,
      D(16) => \b1[2].ss_i_n_49\,
      D(15) => \b1[2].ss_i_n_50\,
      D(14) => \b1[2].ss_i_n_51\,
      D(13) => \b1[2].ss_i_n_52\,
      D(12) => \b1[2].ss_i_n_53\,
      D(11) => \b1[2].ss_i_n_54\,
      D(10) => \b1[2].ss_i_n_55\,
      D(9) => \b1[2].ss_i_n_56\,
      D(8) => \b1[2].ss_i_n_57\,
      D(7) => \b1[2].ss_i_n_58\,
      D(6) => \b1[2].ss_i_n_59\,
      D(5) => \b1[2].ss_i_n_60\,
      D(4) => \b1[2].ss_i_n_61\,
      D(3) => \b1[2].ss_i_n_62\,
      D(2) => \b1[2].ss_i_n_63\,
      D(1) => \b1[2].ss_i_n_64\,
      D(0) => \b1[2].ss_i_n_65\,
      E(0) => \b2[4].merge_i/data_i\,
      \_trace_valid\(0) => \_trace_valid\(2),
      \data_i_reg[0]\ => \b1[3].ss_i_n_66\,
      \data_i_reg[10]\ => \b1[3].ss_i_n_56\,
      \data_i_reg[11]\ => \b1[3].ss_i_n_55\,
      \data_i_reg[12]\ => \b1[3].ss_i_n_54\,
      \data_i_reg[13]\ => \b1[3].ss_i_n_53\,
      \data_i_reg[14]\ => \b1[3].ss_i_n_52\,
      \data_i_reg[15]\ => \b1[3].ss_i_n_51\,
      \data_i_reg[16]\ => \b1[3].ss_i_n_50\,
      \data_i_reg[17]\ => \b1[3].ss_i_n_49\,
      \data_i_reg[18]\ => \b1[3].ss_i_n_48\,
      \data_i_reg[19]\ => \b1[3].ss_i_n_47\,
      \data_i_reg[1]\ => \b1[3].ss_i_n_65\,
      \data_i_reg[20]\ => \b1[3].ss_i_n_46\,
      \data_i_reg[21]\ => \b1[3].ss_i_n_45\,
      \data_i_reg[22]\ => \b1[3].ss_i_n_44\,
      \data_i_reg[23]\ => \b1[3].ss_i_n_43\,
      \data_i_reg[24]\ => \b1[3].ss_i_n_42\,
      \data_i_reg[25]\ => \b1[3].ss_i_n_41\,
      \data_i_reg[26]\ => \b1[3].ss_i_n_40\,
      \data_i_reg[27]\ => \b1[3].ss_i_n_39\,
      \data_i_reg[28]\ => \b1[3].ss_i_n_38\,
      \data_i_reg[29]\ => \b1[3].ss_i_n_37\,
      \data_i_reg[2]\ => \b1[3].ss_i_n_64\,
      \data_i_reg[30]\ => \b1[3].ss_i_n_36\,
      \data_i_reg[31]\ => \b1[3].ss_i_n_35\,
      \data_i_reg[32]\ => \b1[3].ss_i_n_34\,
      \data_i_reg[33]\ => \b1[3].ss_i_n_33\,
      \data_i_reg[34]\ => \b1[3].ss_i_n_32\,
      \data_i_reg[35]\ => \b1[3].ss_i_n_31\,
      \data_i_reg[36]\ => \b1[3].ss_i_n_30\,
      \data_i_reg[37]\ => \b1[3].ss_i_n_29\,
      \data_i_reg[38]\ => \b1[3].ss_i_n_28\,
      \data_i_reg[39]\ => \b1[3].ss_i_n_27\,
      \data_i_reg[3]\ => \b1[3].ss_i_n_63\,
      \data_i_reg[40]\ => \b1[3].ss_i_n_26\,
      \data_i_reg[41]\ => \b1[3].ss_i_n_25\,
      \data_i_reg[42]\ => \b1[3].ss_i_n_24\,
      \data_i_reg[43]\ => \b1[3].ss_i_n_23\,
      \data_i_reg[44]\ => \b1[3].ss_i_n_22\,
      \data_i_reg[45]\ => \b1[3].ss_i_n_21\,
      \data_i_reg[46]\ => \b1[3].ss_i_n_20\,
      \data_i_reg[47]\ => \b1[3].ss_i_n_19\,
      \data_i_reg[48]\ => \b1[3].ss_i_n_18\,
      \data_i_reg[49]\ => \b1[3].ss_i_n_17\,
      \data_i_reg[4]\ => \b1[3].ss_i_n_62\,
      \data_i_reg[50]\ => \b1[3].ss_i_n_16\,
      \data_i_reg[51]\ => \b1[3].ss_i_n_15\,
      \data_i_reg[52]\ => \b1[3].ss_i_n_14\,
      \data_i_reg[53]\ => \b1[3].ss_i_n_13\,
      \data_i_reg[54]\ => \b1[3].ss_i_n_12\,
      \data_i_reg[55]\ => \b1[3].ss_i_n_11\,
      \data_i_reg[56]\ => \b1[3].ss_i_n_10\,
      \data_i_reg[57]\ => \b1[3].ss_i_n_9\,
      \data_i_reg[58]\ => \b1[3].ss_i_n_8\,
      \data_i_reg[59]\ => \b1[3].ss_i_n_7\,
      \data_i_reg[5]\ => \b1[3].ss_i_n_61\,
      \data_i_reg[60]\ => \b1[3].ss_i_n_6\,
      \data_i_reg[61]\ => \b1[3].ss_i_n_5\,
      \data_i_reg[62]\ => \b1[3].ss_i_n_4\,
      \data_i_reg[63]\ => \b1[3].ss_i_n_3\,
      \data_i_reg[6]\ => \b1[3].ss_i_n_60\,
      \data_i_reg[7]\ => \b1[3].ss_i_n_59\,
      \data_i_reg[8]\ => \b1[3].ss_i_n_58\,
      \data_i_reg[9]\ => \b1[3].ss_i_n_57\,
      have_data0 => \b2[4].merge_i/have_data0\,
      have_data_reg_0 => \^trace_rst\,
      ready_i_reg_reg_0 => trace1_read,
      ready_i_reg_reg_1 => merge_tree_i_n_1,
      ready_i_reg_reg_2(0) => \_trace_valid\(3),
      trace1_data(63 downto 0) => trace1_data(63 downto 0),
      trace1_valid => trace1_valid,
      trace_clk => trace_clk
    );
\b1[3].ss_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_2
     port map (
      \_trace_valid\(0) => \_trace_valid\(2),
      \buffer_reg[0]_0\ => \b1[3].ss_i_n_66\,
      \buffer_reg[10]_0\ => \b1[3].ss_i_n_56\,
      \buffer_reg[11]_0\ => \b1[3].ss_i_n_55\,
      \buffer_reg[12]_0\ => \b1[3].ss_i_n_54\,
      \buffer_reg[13]_0\ => \b1[3].ss_i_n_53\,
      \buffer_reg[14]_0\ => \b1[3].ss_i_n_52\,
      \buffer_reg[15]_0\ => \b1[3].ss_i_n_51\,
      \buffer_reg[16]_0\ => \b1[3].ss_i_n_50\,
      \buffer_reg[17]_0\ => \b1[3].ss_i_n_49\,
      \buffer_reg[18]_0\ => \b1[3].ss_i_n_48\,
      \buffer_reg[19]_0\ => \b1[3].ss_i_n_47\,
      \buffer_reg[1]_0\ => \b1[3].ss_i_n_65\,
      \buffer_reg[20]_0\ => \b1[3].ss_i_n_46\,
      \buffer_reg[21]_0\ => \b1[3].ss_i_n_45\,
      \buffer_reg[22]_0\ => \b1[3].ss_i_n_44\,
      \buffer_reg[23]_0\ => \b1[3].ss_i_n_43\,
      \buffer_reg[24]_0\ => \b1[3].ss_i_n_42\,
      \buffer_reg[25]_0\ => \b1[3].ss_i_n_41\,
      \buffer_reg[26]_0\ => \b1[3].ss_i_n_40\,
      \buffer_reg[27]_0\ => \b1[3].ss_i_n_39\,
      \buffer_reg[28]_0\ => \b1[3].ss_i_n_38\,
      \buffer_reg[29]_0\ => \b1[3].ss_i_n_37\,
      \buffer_reg[2]_0\ => \b1[3].ss_i_n_64\,
      \buffer_reg[30]_0\ => \b1[3].ss_i_n_36\,
      \buffer_reg[31]_0\ => \b1[3].ss_i_n_35\,
      \buffer_reg[32]_0\ => \b1[3].ss_i_n_34\,
      \buffer_reg[33]_0\ => \b1[3].ss_i_n_33\,
      \buffer_reg[34]_0\ => \b1[3].ss_i_n_32\,
      \buffer_reg[35]_0\ => \b1[3].ss_i_n_31\,
      \buffer_reg[36]_0\ => \b1[3].ss_i_n_30\,
      \buffer_reg[37]_0\ => \b1[3].ss_i_n_29\,
      \buffer_reg[38]_0\ => \b1[3].ss_i_n_28\,
      \buffer_reg[39]_0\ => \b1[3].ss_i_n_27\,
      \buffer_reg[3]_0\ => \b1[3].ss_i_n_63\,
      \buffer_reg[40]_0\ => \b1[3].ss_i_n_26\,
      \buffer_reg[41]_0\ => \b1[3].ss_i_n_25\,
      \buffer_reg[42]_0\ => \b1[3].ss_i_n_24\,
      \buffer_reg[43]_0\ => \b1[3].ss_i_n_23\,
      \buffer_reg[44]_0\ => \b1[3].ss_i_n_22\,
      \buffer_reg[45]_0\ => \b1[3].ss_i_n_21\,
      \buffer_reg[46]_0\ => \b1[3].ss_i_n_20\,
      \buffer_reg[47]_0\ => \b1[3].ss_i_n_19\,
      \buffer_reg[48]_0\ => \b1[3].ss_i_n_18\,
      \buffer_reg[49]_0\ => \b1[3].ss_i_n_17\,
      \buffer_reg[4]_0\ => \b1[3].ss_i_n_62\,
      \buffer_reg[50]_0\ => \b1[3].ss_i_n_16\,
      \buffer_reg[51]_0\ => \b1[3].ss_i_n_15\,
      \buffer_reg[52]_0\ => \b1[3].ss_i_n_14\,
      \buffer_reg[53]_0\ => \b1[3].ss_i_n_13\,
      \buffer_reg[54]_0\ => \b1[3].ss_i_n_12\,
      \buffer_reg[55]_0\ => \b1[3].ss_i_n_11\,
      \buffer_reg[56]_0\ => \b1[3].ss_i_n_10\,
      \buffer_reg[57]_0\ => \b1[3].ss_i_n_9\,
      \buffer_reg[58]_0\ => \b1[3].ss_i_n_8\,
      \buffer_reg[59]_0\ => \b1[3].ss_i_n_7\,
      \buffer_reg[5]_0\ => \b1[3].ss_i_n_61\,
      \buffer_reg[60]_0\ => \b1[3].ss_i_n_6\,
      \buffer_reg[61]_0\ => \b1[3].ss_i_n_5\,
      \buffer_reg[62]_0\ => \b1[3].ss_i_n_4\,
      \buffer_reg[63]_0\ => \b1[3].ss_i_n_3\,
      \buffer_reg[6]_0\ => \b1[3].ss_i_n_60\,
      \buffer_reg[7]_0\ => \b1[3].ss_i_n_59\,
      \buffer_reg[8]_0\ => \b1[3].ss_i_n_58\,
      \buffer_reg[9]_0\ => \b1[3].ss_i_n_57\,
      have_data0 => \b2[4].merge_i/have_data0\,
      have_data02_out => \b2[4].merge_i/have_data02_out\,
      have_data_reg_0(0) => \_trace_valid\(3),
      have_data_reg_1 => \^trace_rst\,
      ready_i_reg_reg_0 => trace2_read,
      ready_i_reg_reg_1 => merge_tree_i_n_1,
      trace2_data(63 downto 0) => trace2_data(63 downto 0),
      trace2_valid => trace2_valid,
      trace_clk => trace_clk
    );
\b1[4].ss_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_3
     port map (
      D(63) => \b1[4].ss_i_n_2\,
      D(62) => \b1[4].ss_i_n_3\,
      D(61) => \b1[4].ss_i_n_4\,
      D(60) => \b1[4].ss_i_n_5\,
      D(59) => \b1[4].ss_i_n_6\,
      D(58) => \b1[4].ss_i_n_7\,
      D(57) => \b1[4].ss_i_n_8\,
      D(56) => \b1[4].ss_i_n_9\,
      D(55) => \b1[4].ss_i_n_10\,
      D(54) => \b1[4].ss_i_n_11\,
      D(53) => \b1[4].ss_i_n_12\,
      D(52) => \b1[4].ss_i_n_13\,
      D(51) => \b1[4].ss_i_n_14\,
      D(50) => \b1[4].ss_i_n_15\,
      D(49) => \b1[4].ss_i_n_16\,
      D(48) => \b1[4].ss_i_n_17\,
      D(47) => \b1[4].ss_i_n_18\,
      D(46) => \b1[4].ss_i_n_19\,
      D(45) => \b1[4].ss_i_n_20\,
      D(44) => \b1[4].ss_i_n_21\,
      D(43) => \b1[4].ss_i_n_22\,
      D(42) => \b1[4].ss_i_n_23\,
      D(41) => \b1[4].ss_i_n_24\,
      D(40) => \b1[4].ss_i_n_25\,
      D(39) => \b1[4].ss_i_n_26\,
      D(38) => \b1[4].ss_i_n_27\,
      D(37) => \b1[4].ss_i_n_28\,
      D(36) => \b1[4].ss_i_n_29\,
      D(35) => \b1[4].ss_i_n_30\,
      D(34) => \b1[4].ss_i_n_31\,
      D(33) => \b1[4].ss_i_n_32\,
      D(32) => \b1[4].ss_i_n_33\,
      D(31) => \b1[4].ss_i_n_34\,
      D(30) => \b1[4].ss_i_n_35\,
      D(29) => \b1[4].ss_i_n_36\,
      D(28) => \b1[4].ss_i_n_37\,
      D(27) => \b1[4].ss_i_n_38\,
      D(26) => \b1[4].ss_i_n_39\,
      D(25) => \b1[4].ss_i_n_40\,
      D(24) => \b1[4].ss_i_n_41\,
      D(23) => \b1[4].ss_i_n_42\,
      D(22) => \b1[4].ss_i_n_43\,
      D(21) => \b1[4].ss_i_n_44\,
      D(20) => \b1[4].ss_i_n_45\,
      D(19) => \b1[4].ss_i_n_46\,
      D(18) => \b1[4].ss_i_n_47\,
      D(17) => \b1[4].ss_i_n_48\,
      D(16) => \b1[4].ss_i_n_49\,
      D(15) => \b1[4].ss_i_n_50\,
      D(14) => \b1[4].ss_i_n_51\,
      D(13) => \b1[4].ss_i_n_52\,
      D(12) => \b1[4].ss_i_n_53\,
      D(11) => \b1[4].ss_i_n_54\,
      D(10) => \b1[4].ss_i_n_55\,
      D(9) => \b1[4].ss_i_n_56\,
      D(8) => \b1[4].ss_i_n_57\,
      D(7) => \b1[4].ss_i_n_58\,
      D(6) => \b1[4].ss_i_n_59\,
      D(5) => \b1[4].ss_i_n_60\,
      D(4) => \b1[4].ss_i_n_61\,
      D(3) => \b1[4].ss_i_n_62\,
      D(2) => \b1[4].ss_i_n_63\,
      D(1) => \b1[4].ss_i_n_64\,
      D(0) => \b1[4].ss_i_n_65\,
      \_trace_valid\(0) => \_trace_valid\(4),
      \data_i_reg[0]\ => \b1[5].ss_i_n_65\,
      \data_i_reg[10]\ => \b1[5].ss_i_n_55\,
      \data_i_reg[11]\ => \b1[5].ss_i_n_54\,
      \data_i_reg[12]\ => \b1[5].ss_i_n_53\,
      \data_i_reg[13]\ => \b1[5].ss_i_n_52\,
      \data_i_reg[14]\ => \b1[5].ss_i_n_51\,
      \data_i_reg[15]\ => \b1[5].ss_i_n_50\,
      \data_i_reg[16]\ => \b1[5].ss_i_n_49\,
      \data_i_reg[17]\ => \b1[5].ss_i_n_48\,
      \data_i_reg[18]\ => \b1[5].ss_i_n_47\,
      \data_i_reg[19]\ => \b1[5].ss_i_n_46\,
      \data_i_reg[1]\ => \b1[5].ss_i_n_64\,
      \data_i_reg[20]\ => \b1[5].ss_i_n_45\,
      \data_i_reg[21]\ => \b1[5].ss_i_n_44\,
      \data_i_reg[22]\ => \b1[5].ss_i_n_43\,
      \data_i_reg[23]\ => \b1[5].ss_i_n_42\,
      \data_i_reg[24]\ => \b1[5].ss_i_n_41\,
      \data_i_reg[25]\ => \b1[5].ss_i_n_40\,
      \data_i_reg[26]\ => \b1[5].ss_i_n_39\,
      \data_i_reg[27]\ => \b1[5].ss_i_n_38\,
      \data_i_reg[28]\ => \b1[5].ss_i_n_37\,
      \data_i_reg[29]\ => \b1[5].ss_i_n_36\,
      \data_i_reg[2]\ => \b1[5].ss_i_n_63\,
      \data_i_reg[30]\ => \b1[5].ss_i_n_35\,
      \data_i_reg[31]\ => \b1[5].ss_i_n_34\,
      \data_i_reg[32]\ => \b1[5].ss_i_n_33\,
      \data_i_reg[33]\ => \b1[5].ss_i_n_32\,
      \data_i_reg[34]\ => \b1[5].ss_i_n_31\,
      \data_i_reg[35]\ => \b1[5].ss_i_n_30\,
      \data_i_reg[36]\ => \b1[5].ss_i_n_29\,
      \data_i_reg[37]\ => \b1[5].ss_i_n_28\,
      \data_i_reg[38]\ => \b1[5].ss_i_n_27\,
      \data_i_reg[39]\ => \b1[5].ss_i_n_26\,
      \data_i_reg[3]\ => \b1[5].ss_i_n_62\,
      \data_i_reg[40]\ => \b1[5].ss_i_n_25\,
      \data_i_reg[41]\ => \b1[5].ss_i_n_24\,
      \data_i_reg[42]\ => \b1[5].ss_i_n_23\,
      \data_i_reg[43]\ => \b1[5].ss_i_n_22\,
      \data_i_reg[44]\ => \b1[5].ss_i_n_21\,
      \data_i_reg[45]\ => \b1[5].ss_i_n_20\,
      \data_i_reg[46]\ => \b1[5].ss_i_n_19\,
      \data_i_reg[47]\ => \b1[5].ss_i_n_18\,
      \data_i_reg[48]\ => \b1[5].ss_i_n_17\,
      \data_i_reg[49]\ => \b1[5].ss_i_n_16\,
      \data_i_reg[4]\ => \b1[5].ss_i_n_61\,
      \data_i_reg[50]\ => \b1[5].ss_i_n_15\,
      \data_i_reg[51]\ => \b1[5].ss_i_n_14\,
      \data_i_reg[52]\ => \b1[5].ss_i_n_13\,
      \data_i_reg[53]\ => \b1[5].ss_i_n_12\,
      \data_i_reg[54]\ => \b1[5].ss_i_n_11\,
      \data_i_reg[55]\ => \b1[5].ss_i_n_10\,
      \data_i_reg[56]\ => \b1[5].ss_i_n_9\,
      \data_i_reg[57]\ => \b1[5].ss_i_n_8\,
      \data_i_reg[58]\ => \b1[5].ss_i_n_7\,
      \data_i_reg[59]\ => \b1[5].ss_i_n_6\,
      \data_i_reg[5]\ => \b1[5].ss_i_n_60\,
      \data_i_reg[60]\ => \b1[5].ss_i_n_5\,
      \data_i_reg[61]\ => \b1[5].ss_i_n_4\,
      \data_i_reg[62]\ => \b1[5].ss_i_n_3\,
      \data_i_reg[63]\ => \b1[5].ss_i_n_2\,
      \data_i_reg[6]\ => \b1[5].ss_i_n_59\,
      \data_i_reg[7]\ => \b1[5].ss_i_n_58\,
      \data_i_reg[8]\ => \b1[5].ss_i_n_57\,
      \data_i_reg[9]\ => \b1[5].ss_i_n_56\,
      have_data0 => \b2[5].merge_i/have_data0\,
      have_data_reg_0 => \^trace_rst\,
      ready_i_reg_reg_0 => trace3_read,
      ready_i_reg_reg_1 => merge_tree_i_n_2,
      ready_i_reg_reg_2(0) => \_trace_valid\(5),
      trace3_data(63 downto 0) => trace3_data(63 downto 0),
      trace3_valid => trace3_valid,
      trace_clk => trace_clk
    );
\b1[5].ss_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stream_slice_4
     port map (
      \_trace_valid\(0) => \_trace_valid\(4),
      \buffer_reg[0]_0\ => \b1[5].ss_i_n_65\,
      \buffer_reg[10]_0\ => \b1[5].ss_i_n_55\,
      \buffer_reg[11]_0\ => \b1[5].ss_i_n_54\,
      \buffer_reg[12]_0\ => \b1[5].ss_i_n_53\,
      \buffer_reg[13]_0\ => \b1[5].ss_i_n_52\,
      \buffer_reg[14]_0\ => \b1[5].ss_i_n_51\,
      \buffer_reg[15]_0\ => \b1[5].ss_i_n_50\,
      \buffer_reg[16]_0\ => \b1[5].ss_i_n_49\,
      \buffer_reg[17]_0\ => \b1[5].ss_i_n_48\,
      \buffer_reg[18]_0\ => \b1[5].ss_i_n_47\,
      \buffer_reg[19]_0\ => \b1[5].ss_i_n_46\,
      \buffer_reg[1]_0\ => \b1[5].ss_i_n_64\,
      \buffer_reg[20]_0\ => \b1[5].ss_i_n_45\,
      \buffer_reg[21]_0\ => \b1[5].ss_i_n_44\,
      \buffer_reg[22]_0\ => \b1[5].ss_i_n_43\,
      \buffer_reg[23]_0\ => \b1[5].ss_i_n_42\,
      \buffer_reg[24]_0\ => \b1[5].ss_i_n_41\,
      \buffer_reg[25]_0\ => \b1[5].ss_i_n_40\,
      \buffer_reg[26]_0\ => \b1[5].ss_i_n_39\,
      \buffer_reg[27]_0\ => \b1[5].ss_i_n_38\,
      \buffer_reg[28]_0\ => \b1[5].ss_i_n_37\,
      \buffer_reg[29]_0\ => \b1[5].ss_i_n_36\,
      \buffer_reg[2]_0\ => \b1[5].ss_i_n_63\,
      \buffer_reg[30]_0\ => \b1[5].ss_i_n_35\,
      \buffer_reg[31]_0\ => \b1[5].ss_i_n_34\,
      \buffer_reg[32]_0\ => \b1[5].ss_i_n_33\,
      \buffer_reg[33]_0\ => \b1[5].ss_i_n_32\,
      \buffer_reg[34]_0\ => \b1[5].ss_i_n_31\,
      \buffer_reg[35]_0\ => \b1[5].ss_i_n_30\,
      \buffer_reg[36]_0\ => \b1[5].ss_i_n_29\,
      \buffer_reg[37]_0\ => \b1[5].ss_i_n_28\,
      \buffer_reg[38]_0\ => \b1[5].ss_i_n_27\,
      \buffer_reg[39]_0\ => \b1[5].ss_i_n_26\,
      \buffer_reg[3]_0\ => \b1[5].ss_i_n_62\,
      \buffer_reg[40]_0\ => \b1[5].ss_i_n_25\,
      \buffer_reg[41]_0\ => \b1[5].ss_i_n_24\,
      \buffer_reg[42]_0\ => \b1[5].ss_i_n_23\,
      \buffer_reg[43]_0\ => \b1[5].ss_i_n_22\,
      \buffer_reg[44]_0\ => \b1[5].ss_i_n_21\,
      \buffer_reg[45]_0\ => \b1[5].ss_i_n_20\,
      \buffer_reg[46]_0\ => \b1[5].ss_i_n_19\,
      \buffer_reg[47]_0\ => \b1[5].ss_i_n_18\,
      \buffer_reg[48]_0\ => \b1[5].ss_i_n_17\,
      \buffer_reg[49]_0\ => \b1[5].ss_i_n_16\,
      \buffer_reg[4]_0\ => \b1[5].ss_i_n_61\,
      \buffer_reg[50]_0\ => \b1[5].ss_i_n_15\,
      \buffer_reg[51]_0\ => \b1[5].ss_i_n_14\,
      \buffer_reg[52]_0\ => \b1[5].ss_i_n_13\,
      \buffer_reg[53]_0\ => \b1[5].ss_i_n_12\,
      \buffer_reg[54]_0\ => \b1[5].ss_i_n_11\,
      \buffer_reg[55]_0\ => \b1[5].ss_i_n_10\,
      \buffer_reg[56]_0\ => \b1[5].ss_i_n_9\,
      \buffer_reg[57]_0\ => \b1[5].ss_i_n_8\,
      \buffer_reg[58]_0\ => \b1[5].ss_i_n_7\,
      \buffer_reg[59]_0\ => \b1[5].ss_i_n_6\,
      \buffer_reg[5]_0\ => \b1[5].ss_i_n_60\,
      \buffer_reg[60]_0\ => \b1[5].ss_i_n_5\,
      \buffer_reg[61]_0\ => \b1[5].ss_i_n_4\,
      \buffer_reg[62]_0\ => \b1[5].ss_i_n_3\,
      \buffer_reg[63]_0\ => \b1[5].ss_i_n_2\,
      \buffer_reg[6]_0\ => \b1[5].ss_i_n_59\,
      \buffer_reg[7]_0\ => \b1[5].ss_i_n_58\,
      \buffer_reg[8]_0\ => \b1[5].ss_i_n_57\,
      \buffer_reg[9]_0\ => \b1[5].ss_i_n_56\,
      have_data0 => \b2[5].merge_i/have_data0\,
      have_data_reg_0(0) => \_trace_valid\(5),
      have_data_reg_1 => \^trace_rst\,
      ready_i_reg_reg_0 => trace4_read,
      ready_i_reg_reg_1 => merge_tree_i_n_2,
      trace4_data(63 downto 0) => trace4_data(63 downto 0),
      trace4_valid => trace4_valid,
      trace_clk => trace_clk
    );
\counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^trace4_counter\(0),
      O => \counter[7]_i_2_n_0\
    );
counter_overflow_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sw_reset_mon,
      I1 => mon_resetn,
      O => counter_overflow_i_1_n_0
    );
counter_overflow_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(5),
      I1 => \^trace4_counter\(6),
      I2 => \^trace4_counter\(3),
      I3 => \^trace4_counter\(4),
      I4 => \^trace4_counter\(8),
      I5 => \^trace4_counter\(7),
      O => counter_overflow_i_10_n_0
    );
counter_overflow_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => counter_overflow_i_3_n_0,
      I1 => counter_overflow_i_4_n_0,
      I2 => counter_overflow_i_5_n_0,
      I3 => counter_overflow_i_6_n_0,
      I4 => counter_overflow_i_7_n_0,
      I5 => \^trace4_counter_overflow\,
      O => counter_overflow_i_2_n_0
    );
counter_overflow_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => counter_overflow_i_8_n_0,
      I1 => counter_overflow_i_9_n_0,
      I2 => counter_overflow_i_10_n_0,
      I3 => \^trace4_counter\(2),
      I4 => \^trace4_counter\(1),
      I5 => \^trace4_counter\(0),
      O => counter_overflow_i_3_n_0
    );
counter_overflow_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(35),
      I1 => \^trace4_counter\(36),
      I2 => \^trace4_counter\(33),
      I3 => \^trace4_counter\(34),
      I4 => \^trace4_counter\(38),
      I5 => \^trace4_counter\(37),
      O => counter_overflow_i_4_n_0
    );
counter_overflow_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(41),
      I1 => \^trace4_counter\(42),
      I2 => \^trace4_counter\(39),
      I3 => \^trace4_counter\(40),
      I4 => \^trace4_counter\(44),
      I5 => \^trace4_counter\(43),
      O => counter_overflow_i_5_n_0
    );
counter_overflow_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(23),
      I1 => \^trace4_counter\(24),
      I2 => \^trace4_counter\(21),
      I3 => \^trace4_counter\(22),
      I4 => \^trace4_counter\(26),
      I5 => \^trace4_counter\(25),
      O => counter_overflow_i_6_n_0
    );
counter_overflow_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(29),
      I1 => \^trace4_counter\(30),
      I2 => \^trace4_counter\(27),
      I3 => \^trace4_counter\(28),
      I4 => \^trace4_counter\(32),
      I5 => \^trace4_counter\(31),
      O => counter_overflow_i_7_n_0
    );
counter_overflow_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(11),
      I1 => \^trace4_counter\(12),
      I2 => \^trace4_counter\(9),
      I3 => \^trace4_counter\(10),
      I4 => \^trace4_counter\(14),
      I5 => \^trace4_counter\(13),
      O => counter_overflow_i_8_n_0
    );
counter_overflow_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^trace4_counter\(17),
      I1 => \^trace4_counter\(18),
      I2 => \^trace4_counter\(15),
      I3 => \^trace4_counter\(16),
      I4 => \^trace4_counter\(20),
      I5 => \^trace4_counter\(19),
      O => counter_overflow_i_9_n_0
    );
counter_overflow_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => counter_overflow_i_2_n_0,
      Q => \^trace4_counter_overflow\,
      R => counter_overflow_i_1_n_0
    );
\counter_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_15\,
      Q => \^trace4_counter\(0),
      S => counter_overflow_i_1_n_0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_13\,
      Q => \^trace4_counter\(10),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_12\,
      Q => \^trace4_counter\(11),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_11\,
      Q => \^trace4_counter\(12),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_10\,
      Q => \^trace4_counter\(13),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_9\,
      Q => \^trace4_counter\(14),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_8\,
      Q => \^trace4_counter\(15),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[15]_i_1_n_0\,
      CO(6) => \counter_reg[15]_i_1_n_1\,
      CO(5) => \counter_reg[15]_i_1_n_2\,
      CO(4) => \counter_reg[15]_i_1_n_3\,
      CO(3) => \counter_reg[15]_i_1_n_4\,
      CO(2) => \counter_reg[15]_i_1_n_5\,
      CO(1) => \counter_reg[15]_i_1_n_6\,
      CO(0) => \counter_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[15]_i_1_n_8\,
      O(6) => \counter_reg[15]_i_1_n_9\,
      O(5) => \counter_reg[15]_i_1_n_10\,
      O(4) => \counter_reg[15]_i_1_n_11\,
      O(3) => \counter_reg[15]_i_1_n_12\,
      O(2) => \counter_reg[15]_i_1_n_13\,
      O(1) => \counter_reg[15]_i_1_n_14\,
      O(0) => \counter_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^trace4_counter\(15 downto 8)
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_15\,
      Q => \^trace4_counter\(16),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_14\,
      Q => \^trace4_counter\(17),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_13\,
      Q => \^trace4_counter\(18),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_12\,
      Q => \^trace4_counter\(19),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_14\,
      Q => \^trace4_counter\(1),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_11\,
      Q => \^trace4_counter\(20),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_10\,
      Q => \^trace4_counter\(21),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_9\,
      Q => \^trace4_counter\(22),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_8\,
      Q => \^trace4_counter\(23),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[23]_i_1_n_0\,
      CO(6) => \counter_reg[23]_i_1_n_1\,
      CO(5) => \counter_reg[23]_i_1_n_2\,
      CO(4) => \counter_reg[23]_i_1_n_3\,
      CO(3) => \counter_reg[23]_i_1_n_4\,
      CO(2) => \counter_reg[23]_i_1_n_5\,
      CO(1) => \counter_reg[23]_i_1_n_6\,
      CO(0) => \counter_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[23]_i_1_n_8\,
      O(6) => \counter_reg[23]_i_1_n_9\,
      O(5) => \counter_reg[23]_i_1_n_10\,
      O(4) => \counter_reg[23]_i_1_n_11\,
      O(3) => \counter_reg[23]_i_1_n_12\,
      O(2) => \counter_reg[23]_i_1_n_13\,
      O(1) => \counter_reg[23]_i_1_n_14\,
      O(0) => \counter_reg[23]_i_1_n_15\,
      S(7 downto 0) => \^trace4_counter\(23 downto 16)
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_15\,
      Q => \^trace4_counter\(24),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_14\,
      Q => \^trace4_counter\(25),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_13\,
      Q => \^trace4_counter\(26),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_12\,
      Q => \^trace4_counter\(27),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_11\,
      Q => \^trace4_counter\(28),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_10\,
      Q => \^trace4_counter\(29),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_13\,
      Q => \^trace4_counter\(2),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_9\,
      Q => \^trace4_counter\(30),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[31]_i_1_n_8\,
      Q => \^trace4_counter\(31),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[31]_i_1_n_0\,
      CO(6) => \counter_reg[31]_i_1_n_1\,
      CO(5) => \counter_reg[31]_i_1_n_2\,
      CO(4) => \counter_reg[31]_i_1_n_3\,
      CO(3) => \counter_reg[31]_i_1_n_4\,
      CO(2) => \counter_reg[31]_i_1_n_5\,
      CO(1) => \counter_reg[31]_i_1_n_6\,
      CO(0) => \counter_reg[31]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[31]_i_1_n_8\,
      O(6) => \counter_reg[31]_i_1_n_9\,
      O(5) => \counter_reg[31]_i_1_n_10\,
      O(4) => \counter_reg[31]_i_1_n_11\,
      O(3) => \counter_reg[31]_i_1_n_12\,
      O(2) => \counter_reg[31]_i_1_n_13\,
      O(1) => \counter_reg[31]_i_1_n_14\,
      O(0) => \counter_reg[31]_i_1_n_15\,
      S(7 downto 0) => \^trace4_counter\(31 downto 24)
    );
\counter_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_15\,
      Q => \^trace4_counter\(32),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_14\,
      Q => \^trace4_counter\(33),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_13\,
      Q => \^trace4_counter\(34),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_12\,
      Q => \^trace4_counter\(35),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_11\,
      Q => \^trace4_counter\(36),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_10\,
      Q => \^trace4_counter\(37),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_9\,
      Q => \^trace4_counter\(38),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[39]_i_1_n_8\,
      Q => \^trace4_counter\(39),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[39]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[31]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg[39]_i_1_n_0\,
      CO(6) => \counter_reg[39]_i_1_n_1\,
      CO(5) => \counter_reg[39]_i_1_n_2\,
      CO(4) => \counter_reg[39]_i_1_n_3\,
      CO(3) => \counter_reg[39]_i_1_n_4\,
      CO(2) => \counter_reg[39]_i_1_n_5\,
      CO(1) => \counter_reg[39]_i_1_n_6\,
      CO(0) => \counter_reg[39]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \counter_reg[39]_i_1_n_8\,
      O(6) => \counter_reg[39]_i_1_n_9\,
      O(5) => \counter_reg[39]_i_1_n_10\,
      O(4) => \counter_reg[39]_i_1_n_11\,
      O(3) => \counter_reg[39]_i_1_n_12\,
      O(2) => \counter_reg[39]_i_1_n_13\,
      O(1) => \counter_reg[39]_i_1_n_14\,
      O(0) => \counter_reg[39]_i_1_n_15\,
      S(7 downto 0) => \^trace4_counter\(39 downto 32)
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_12\,
      Q => \^trace4_counter\(3),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[44]_i_1_n_15\,
      Q => \^trace4_counter\(40),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[44]_i_1_n_14\,
      Q => \^trace4_counter\(41),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[44]_i_1_n_13\,
      Q => \^trace4_counter\(42),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[44]_i_1_n_12\,
      Q => \^trace4_counter\(43),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[44]_i_1_n_11\,
      Q => \^trace4_counter\(44),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[44]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg[39]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_counter_reg[44]_i_1_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \counter_reg[44]_i_1_n_4\,
      CO(2) => \counter_reg[44]_i_1_n_5\,
      CO(1) => \counter_reg[44]_i_1_n_6\,
      CO(0) => \counter_reg[44]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_counter_reg[44]_i_1_O_UNCONNECTED\(7 downto 5),
      O(4) => \counter_reg[44]_i_1_n_11\,
      O(3) => \counter_reg[44]_i_1_n_12\,
      O(2) => \counter_reg[44]_i_1_n_13\,
      O(1) => \counter_reg[44]_i_1_n_14\,
      O(0) => \counter_reg[44]_i_1_n_15\,
      S(7 downto 5) => B"000",
      S(4 downto 0) => \^trace4_counter\(44 downto 40)
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_11\,
      Q => \^trace4_counter\(4),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_10\,
      Q => \^trace4_counter\(5),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_9\,
      Q => \^trace4_counter\(6),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_8\,
      Q => \^trace4_counter\(7),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg[7]_i_1_n_0\,
      CO(6) => \counter_reg[7]_i_1_n_1\,
      CO(5) => \counter_reg[7]_i_1_n_2\,
      CO(4) => \counter_reg[7]_i_1_n_3\,
      CO(3) => \counter_reg[7]_i_1_n_4\,
      CO(2) => \counter_reg[7]_i_1_n_5\,
      CO(1) => \counter_reg[7]_i_1_n_6\,
      CO(0) => \counter_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \counter_reg[7]_i_1_n_8\,
      O(6) => \counter_reg[7]_i_1_n_9\,
      O(5) => \counter_reg[7]_i_1_n_10\,
      O(4) => \counter_reg[7]_i_1_n_11\,
      O(3) => \counter_reg[7]_i_1_n_12\,
      O(2) => \counter_reg[7]_i_1_n_13\,
      O(1) => \counter_reg[7]_i_1_n_14\,
      O(0) => \counter_reg[7]_i_1_n_15\,
      S(7 downto 1) => \^trace4_counter\(7 downto 1),
      S(0) => \counter[7]_i_2_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_15\,
      Q => \^trace4_counter\(8),
      R => counter_overflow_i_1_n_0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => mon_clk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_14\,
      Q => \^trace4_counter\(9),
      R => counter_overflow_i_1_n_0
    );
ctr_src_send_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctr_src_rcv,
      I1 => mon_resetn,
      O => ctr_src_send_i_1_n_0
    );
ctr_src_send_reg: unisim.vcomponents.FDRE
     port map (
      C => mon_clk,
      CE => '1',
      D => ctr_src_send_i_1_n_0,
      Q => ctr_src_send,
      R => '0'
    );
merge_tree_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_merge_tree
     port map (
      D(63) => \b1[4].ss_i_n_2\,
      D(62) => \b1[4].ss_i_n_3\,
      D(61) => \b1[4].ss_i_n_4\,
      D(60) => \b1[4].ss_i_n_5\,
      D(59) => \b1[4].ss_i_n_6\,
      D(58) => \b1[4].ss_i_n_7\,
      D(57) => \b1[4].ss_i_n_8\,
      D(56) => \b1[4].ss_i_n_9\,
      D(55) => \b1[4].ss_i_n_10\,
      D(54) => \b1[4].ss_i_n_11\,
      D(53) => \b1[4].ss_i_n_12\,
      D(52) => \b1[4].ss_i_n_13\,
      D(51) => \b1[4].ss_i_n_14\,
      D(50) => \b1[4].ss_i_n_15\,
      D(49) => \b1[4].ss_i_n_16\,
      D(48) => \b1[4].ss_i_n_17\,
      D(47) => \b1[4].ss_i_n_18\,
      D(46) => \b1[4].ss_i_n_19\,
      D(45) => \b1[4].ss_i_n_20\,
      D(44) => \b1[4].ss_i_n_21\,
      D(43) => \b1[4].ss_i_n_22\,
      D(42) => \b1[4].ss_i_n_23\,
      D(41) => \b1[4].ss_i_n_24\,
      D(40) => \b1[4].ss_i_n_25\,
      D(39) => \b1[4].ss_i_n_26\,
      D(38) => \b1[4].ss_i_n_27\,
      D(37) => \b1[4].ss_i_n_28\,
      D(36) => \b1[4].ss_i_n_29\,
      D(35) => \b1[4].ss_i_n_30\,
      D(34) => \b1[4].ss_i_n_31\,
      D(33) => \b1[4].ss_i_n_32\,
      D(32) => \b1[4].ss_i_n_33\,
      D(31) => \b1[4].ss_i_n_34\,
      D(30) => \b1[4].ss_i_n_35\,
      D(29) => \b1[4].ss_i_n_36\,
      D(28) => \b1[4].ss_i_n_37\,
      D(27) => \b1[4].ss_i_n_38\,
      D(26) => \b1[4].ss_i_n_39\,
      D(25) => \b1[4].ss_i_n_40\,
      D(24) => \b1[4].ss_i_n_41\,
      D(23) => \b1[4].ss_i_n_42\,
      D(22) => \b1[4].ss_i_n_43\,
      D(21) => \b1[4].ss_i_n_44\,
      D(20) => \b1[4].ss_i_n_45\,
      D(19) => \b1[4].ss_i_n_46\,
      D(18) => \b1[4].ss_i_n_47\,
      D(17) => \b1[4].ss_i_n_48\,
      D(16) => \b1[4].ss_i_n_49\,
      D(15) => \b1[4].ss_i_n_50\,
      D(14) => \b1[4].ss_i_n_51\,
      D(13) => \b1[4].ss_i_n_52\,
      D(12) => \b1[4].ss_i_n_53\,
      D(11) => \b1[4].ss_i_n_54\,
      D(10) => \b1[4].ss_i_n_55\,
      D(9) => \b1[4].ss_i_n_56\,
      D(8) => \b1[4].ss_i_n_57\,
      D(7) => \b1[4].ss_i_n_58\,
      D(6) => \b1[4].ss_i_n_59\,
      D(5) => \b1[4].ss_i_n_60\,
      D(4) => \b1[4].ss_i_n_61\,
      D(3) => \b1[4].ss_i_n_62\,
      D(2) => \b1[4].ss_i_n_63\,
      D(1) => \b1[4].ss_i_n_64\,
      D(0) => \b1[4].ss_i_n_65\,
      E(0) => \b2[4].merge_i/data_i\,
      \_trace_valid\(5 downto 0) => \_trace_valid\(5 downto 0),
      \data_i_reg[0]\(0) => \b2[3].merge_i/data_i\,
      \data_i_reg[63]\(63) => \b1[2].ss_i_n_2\,
      \data_i_reg[63]\(62) => \b1[2].ss_i_n_3\,
      \data_i_reg[63]\(61) => \b1[2].ss_i_n_4\,
      \data_i_reg[63]\(60) => \b1[2].ss_i_n_5\,
      \data_i_reg[63]\(59) => \b1[2].ss_i_n_6\,
      \data_i_reg[63]\(58) => \b1[2].ss_i_n_7\,
      \data_i_reg[63]\(57) => \b1[2].ss_i_n_8\,
      \data_i_reg[63]\(56) => \b1[2].ss_i_n_9\,
      \data_i_reg[63]\(55) => \b1[2].ss_i_n_10\,
      \data_i_reg[63]\(54) => \b1[2].ss_i_n_11\,
      \data_i_reg[63]\(53) => \b1[2].ss_i_n_12\,
      \data_i_reg[63]\(52) => \b1[2].ss_i_n_13\,
      \data_i_reg[63]\(51) => \b1[2].ss_i_n_14\,
      \data_i_reg[63]\(50) => \b1[2].ss_i_n_15\,
      \data_i_reg[63]\(49) => \b1[2].ss_i_n_16\,
      \data_i_reg[63]\(48) => \b1[2].ss_i_n_17\,
      \data_i_reg[63]\(47) => \b1[2].ss_i_n_18\,
      \data_i_reg[63]\(46) => \b1[2].ss_i_n_19\,
      \data_i_reg[63]\(45) => \b1[2].ss_i_n_20\,
      \data_i_reg[63]\(44) => \b1[2].ss_i_n_21\,
      \data_i_reg[63]\(43) => \b1[2].ss_i_n_22\,
      \data_i_reg[63]\(42) => \b1[2].ss_i_n_23\,
      \data_i_reg[63]\(41) => \b1[2].ss_i_n_24\,
      \data_i_reg[63]\(40) => \b1[2].ss_i_n_25\,
      \data_i_reg[63]\(39) => \b1[2].ss_i_n_26\,
      \data_i_reg[63]\(38) => \b1[2].ss_i_n_27\,
      \data_i_reg[63]\(37) => \b1[2].ss_i_n_28\,
      \data_i_reg[63]\(36) => \b1[2].ss_i_n_29\,
      \data_i_reg[63]\(35) => \b1[2].ss_i_n_30\,
      \data_i_reg[63]\(34) => \b1[2].ss_i_n_31\,
      \data_i_reg[63]\(33) => \b1[2].ss_i_n_32\,
      \data_i_reg[63]\(32) => \b1[2].ss_i_n_33\,
      \data_i_reg[63]\(31) => \b1[2].ss_i_n_34\,
      \data_i_reg[63]\(30) => \b1[2].ss_i_n_35\,
      \data_i_reg[63]\(29) => \b1[2].ss_i_n_36\,
      \data_i_reg[63]\(28) => \b1[2].ss_i_n_37\,
      \data_i_reg[63]\(27) => \b1[2].ss_i_n_38\,
      \data_i_reg[63]\(26) => \b1[2].ss_i_n_39\,
      \data_i_reg[63]\(25) => \b1[2].ss_i_n_40\,
      \data_i_reg[63]\(24) => \b1[2].ss_i_n_41\,
      \data_i_reg[63]\(23) => \b1[2].ss_i_n_42\,
      \data_i_reg[63]\(22) => \b1[2].ss_i_n_43\,
      \data_i_reg[63]\(21) => \b1[2].ss_i_n_44\,
      \data_i_reg[63]\(20) => \b1[2].ss_i_n_45\,
      \data_i_reg[63]\(19) => \b1[2].ss_i_n_46\,
      \data_i_reg[63]\(18) => \b1[2].ss_i_n_47\,
      \data_i_reg[63]\(17) => \b1[2].ss_i_n_48\,
      \data_i_reg[63]\(16) => \b1[2].ss_i_n_49\,
      \data_i_reg[63]\(15) => \b1[2].ss_i_n_50\,
      \data_i_reg[63]\(14) => \b1[2].ss_i_n_51\,
      \data_i_reg[63]\(13) => \b1[2].ss_i_n_52\,
      \data_i_reg[63]\(12) => \b1[2].ss_i_n_53\,
      \data_i_reg[63]\(11) => \b1[2].ss_i_n_54\,
      \data_i_reg[63]\(10) => \b1[2].ss_i_n_55\,
      \data_i_reg[63]\(9) => \b1[2].ss_i_n_56\,
      \data_i_reg[63]\(8) => \b1[2].ss_i_n_57\,
      \data_i_reg[63]\(7) => \b1[2].ss_i_n_58\,
      \data_i_reg[63]\(6) => \b1[2].ss_i_n_59\,
      \data_i_reg[63]\(5) => \b1[2].ss_i_n_60\,
      \data_i_reg[63]\(4) => \b1[2].ss_i_n_61\,
      \data_i_reg[63]\(3) => \b1[2].ss_i_n_62\,
      \data_i_reg[63]\(2) => \b1[2].ss_i_n_63\,
      \data_i_reg[63]\(1) => \b1[2].ss_i_n_64\,
      \data_i_reg[63]\(0) => \b1[2].ss_i_n_65\,
      \data_i_reg[63]_0\(63) => \b1[0].ss_i_n_2\,
      \data_i_reg[63]_0\(62) => \b1[0].ss_i_n_3\,
      \data_i_reg[63]_0\(61) => \b1[0].ss_i_n_4\,
      \data_i_reg[63]_0\(60) => \b1[0].ss_i_n_5\,
      \data_i_reg[63]_0\(59) => \b1[0].ss_i_n_6\,
      \data_i_reg[63]_0\(58) => \b1[0].ss_i_n_7\,
      \data_i_reg[63]_0\(57) => \b1[0].ss_i_n_8\,
      \data_i_reg[63]_0\(56) => \b1[0].ss_i_n_9\,
      \data_i_reg[63]_0\(55) => \b1[0].ss_i_n_10\,
      \data_i_reg[63]_0\(54) => \b1[0].ss_i_n_11\,
      \data_i_reg[63]_0\(53) => \b1[0].ss_i_n_12\,
      \data_i_reg[63]_0\(52) => \b1[0].ss_i_n_13\,
      \data_i_reg[63]_0\(51) => \b1[0].ss_i_n_14\,
      \data_i_reg[63]_0\(50) => \b1[0].ss_i_n_15\,
      \data_i_reg[63]_0\(49) => \b1[0].ss_i_n_16\,
      \data_i_reg[63]_0\(48) => \b1[0].ss_i_n_17\,
      \data_i_reg[63]_0\(47) => \b1[0].ss_i_n_18\,
      \data_i_reg[63]_0\(46) => \b1[0].ss_i_n_19\,
      \data_i_reg[63]_0\(45) => \b1[0].ss_i_n_20\,
      \data_i_reg[63]_0\(44) => \b1[0].ss_i_n_21\,
      \data_i_reg[63]_0\(43) => \b1[0].ss_i_n_22\,
      \data_i_reg[63]_0\(42) => \b1[0].ss_i_n_23\,
      \data_i_reg[63]_0\(41) => \b1[0].ss_i_n_24\,
      \data_i_reg[63]_0\(40) => \b1[0].ss_i_n_25\,
      \data_i_reg[63]_0\(39) => \b1[0].ss_i_n_26\,
      \data_i_reg[63]_0\(38) => \b1[0].ss_i_n_27\,
      \data_i_reg[63]_0\(37) => \b1[0].ss_i_n_28\,
      \data_i_reg[63]_0\(36) => \b1[0].ss_i_n_29\,
      \data_i_reg[63]_0\(35) => \b1[0].ss_i_n_30\,
      \data_i_reg[63]_0\(34) => \b1[0].ss_i_n_31\,
      \data_i_reg[63]_0\(33) => \b1[0].ss_i_n_32\,
      \data_i_reg[63]_0\(32) => \b1[0].ss_i_n_33\,
      \data_i_reg[63]_0\(31) => \b1[0].ss_i_n_34\,
      \data_i_reg[63]_0\(30) => \b1[0].ss_i_n_35\,
      \data_i_reg[63]_0\(29) => \b1[0].ss_i_n_36\,
      \data_i_reg[63]_0\(28) => \b1[0].ss_i_n_37\,
      \data_i_reg[63]_0\(27) => \b1[0].ss_i_n_38\,
      \data_i_reg[63]_0\(26) => \b1[0].ss_i_n_39\,
      \data_i_reg[63]_0\(25) => \b1[0].ss_i_n_40\,
      \data_i_reg[63]_0\(24) => \b1[0].ss_i_n_41\,
      \data_i_reg[63]_0\(23) => \b1[0].ss_i_n_42\,
      \data_i_reg[63]_0\(22) => \b1[0].ss_i_n_43\,
      \data_i_reg[63]_0\(21) => \b1[0].ss_i_n_44\,
      \data_i_reg[63]_0\(20) => \b1[0].ss_i_n_45\,
      \data_i_reg[63]_0\(19) => \b1[0].ss_i_n_46\,
      \data_i_reg[63]_0\(18) => \b1[0].ss_i_n_47\,
      \data_i_reg[63]_0\(17) => \b1[0].ss_i_n_48\,
      \data_i_reg[63]_0\(16) => \b1[0].ss_i_n_49\,
      \data_i_reg[63]_0\(15) => \b1[0].ss_i_n_50\,
      \data_i_reg[63]_0\(14) => \b1[0].ss_i_n_51\,
      \data_i_reg[63]_0\(13) => \b1[0].ss_i_n_52\,
      \data_i_reg[63]_0\(12) => \b1[0].ss_i_n_53\,
      \data_i_reg[63]_0\(11) => \b1[0].ss_i_n_54\,
      \data_i_reg[63]_0\(10) => \b1[0].ss_i_n_55\,
      \data_i_reg[63]_0\(9) => \b1[0].ss_i_n_56\,
      \data_i_reg[63]_0\(8) => \b1[0].ss_i_n_57\,
      \data_i_reg[63]_0\(7) => \b1[0].ss_i_n_58\,
      \data_i_reg[63]_0\(6) => \b1[0].ss_i_n_59\,
      \data_i_reg[63]_0\(5) => \b1[0].ss_i_n_60\,
      \data_i_reg[63]_0\(4) => \b1[0].ss_i_n_61\,
      \data_i_reg[63]_0\(3) => \b1[0].ss_i_n_62\,
      \data_i_reg[63]_0\(2) => \b1[0].ss_i_n_63\,
      \data_i_reg[63]_0\(1) => \b1[0].ss_i_n_64\,
      \data_i_reg[63]_0\(0) => \b1[0].ss_i_n_65\,
      have_data0 => \b2[5].merge_i/have_data0\,
      have_data02_out => \b2[4].merge_i/have_data02_out\,
      have_data0_0 => \b2[3].merge_i/have_data0\,
      have_data0_1 => \b2[4].merge_i/have_data0\,
      have_data_reg => out_valid,
      out_data(63 downto 0) => out_data(63 downto 0),
      out_ready => out_ready,
      trace_clk => trace_clk,
      wrote0_reg => merge_tree_i_n_0,
      wrote0_reg_0 => merge_tree_i_n_1,
      wrote0_reg_1 => merge_tree_i_n_2,
      wrote0_reg_2 => \^trace_rst\
    );
sw_counter_overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => ctr_of_dest_out,
      Q => sw_counter_overflow,
      R => '0'
    );
\sw_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(0),
      Q => sw_counter(0),
      R => '0'
    );
\sw_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(10),
      Q => sw_counter(10),
      R => '0'
    );
\sw_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(11),
      Q => sw_counter(11),
      R => '0'
    );
\sw_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(12),
      Q => sw_counter(12),
      R => '0'
    );
\sw_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(13),
      Q => sw_counter(13),
      R => '0'
    );
\sw_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(14),
      Q => sw_counter(14),
      R => '0'
    );
\sw_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(15),
      Q => sw_counter(15),
      R => '0'
    );
\sw_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(16),
      Q => sw_counter(16),
      R => '0'
    );
\sw_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(17),
      Q => sw_counter(17),
      R => '0'
    );
\sw_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(18),
      Q => sw_counter(18),
      R => '0'
    );
\sw_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(19),
      Q => sw_counter(19),
      R => '0'
    );
\sw_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(1),
      Q => sw_counter(1),
      R => '0'
    );
\sw_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(20),
      Q => sw_counter(20),
      R => '0'
    );
\sw_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(21),
      Q => sw_counter(21),
      R => '0'
    );
\sw_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(22),
      Q => sw_counter(22),
      R => '0'
    );
\sw_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(23),
      Q => sw_counter(23),
      R => '0'
    );
\sw_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(24),
      Q => sw_counter(24),
      R => '0'
    );
\sw_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(25),
      Q => sw_counter(25),
      R => '0'
    );
\sw_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(26),
      Q => sw_counter(26),
      R => '0'
    );
\sw_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(27),
      Q => sw_counter(27),
      R => '0'
    );
\sw_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(28),
      Q => sw_counter(28),
      R => '0'
    );
\sw_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(29),
      Q => sw_counter(29),
      R => '0'
    );
\sw_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(2),
      Q => sw_counter(2),
      R => '0'
    );
\sw_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(30),
      Q => sw_counter(30),
      R => '0'
    );
\sw_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(31),
      Q => sw_counter(31),
      R => '0'
    );
\sw_counter_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(32),
      Q => sw_counter(32),
      R => '0'
    );
\sw_counter_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(33),
      Q => sw_counter(33),
      R => '0'
    );
\sw_counter_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(34),
      Q => sw_counter(34),
      R => '0'
    );
\sw_counter_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(35),
      Q => sw_counter(35),
      R => '0'
    );
\sw_counter_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(36),
      Q => sw_counter(36),
      R => '0'
    );
\sw_counter_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(37),
      Q => sw_counter(37),
      R => '0'
    );
\sw_counter_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(38),
      Q => sw_counter(38),
      R => '0'
    );
\sw_counter_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(39),
      Q => sw_counter(39),
      R => '0'
    );
\sw_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(3),
      Q => sw_counter(3),
      R => '0'
    );
\sw_counter_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(40),
      Q => sw_counter(40),
      R => '0'
    );
\sw_counter_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(41),
      Q => sw_counter(41),
      R => '0'
    );
\sw_counter_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(42),
      Q => sw_counter(42),
      R => '0'
    );
\sw_counter_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(43),
      Q => sw_counter(43),
      R => '0'
    );
\sw_counter_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(44),
      Q => sw_counter(44),
      R => '0'
    );
\sw_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(4),
      Q => sw_counter(4),
      R => '0'
    );
\sw_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(5),
      Q => sw_counter(5),
      R => '0'
    );
\sw_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(6),
      Q => sw_counter(6),
      R => '0'
    );
\sw_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(7),
      Q => sw_counter(7),
      R => '0'
    );
\sw_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(8),
      Q => sw_counter(8),
      R => '0'
    );
\sw_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => ctr_dest_req,
      D => ctr_dest_out(9),
      Q => sw_counter(9),
      R => '0'
    );
sw_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => axi_lite_if_i_n_9,
      Q => \^trace_rst\,
      R => axi_lite_if_i_n_6
    );
\sw_trace_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(0),
      Q => \sw_trace_data_reg_n_0_[0]\,
      R => '0'
    );
\sw_trace_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(10),
      Q => \sw_trace_data_reg_n_0_[10]\,
      R => '0'
    );
\sw_trace_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(11),
      Q => \sw_trace_data_reg_n_0_[11]\,
      R => '0'
    );
\sw_trace_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(12),
      Q => \sw_trace_data_reg_n_0_[12]\,
      R => '0'
    );
\sw_trace_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(13),
      Q => \sw_trace_data_reg_n_0_[13]\,
      R => '0'
    );
\sw_trace_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(14),
      Q => \sw_trace_data_reg_n_0_[14]\,
      R => '0'
    );
\sw_trace_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(15),
      Q => \sw_trace_data_reg_n_0_[15]\,
      R => '0'
    );
\sw_trace_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(1),
      Q => \sw_trace_data_reg_n_0_[1]\,
      R => '0'
    );
\sw_trace_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(2),
      Q => \sw_trace_data_reg_n_0_[2]\,
      R => '0'
    );
\sw_trace_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(3),
      Q => \sw_trace_data_reg_n_0_[3]\,
      R => '0'
    );
\sw_trace_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(4),
      Q => \sw_trace_data_reg_n_0_[4]\,
      R => '0'
    );
\sw_trace_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(5),
      Q => \sw_trace_data_reg_n_0_[5]\,
      R => '0'
    );
\sw_trace_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(6),
      Q => \sw_trace_data_reg_n_0_[6]\,
      R => '0'
    );
\sw_trace_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(7),
      Q => \sw_trace_data_reg_n_0_[7]\,
      R => '0'
    );
\sw_trace_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(8),
      Q => \sw_trace_data_reg_n_0_[8]\,
      R => '0'
    );
\sw_trace_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => trace_clk,
      CE => axi_lite_if_i_n_7,
      D => s_axi_wdata(9),
      Q => \sw_trace_data_reg_n_0_[9]\,
      R => '0'
    );
sw_trace_write_reg: unisim.vcomponents.FDRE
     port map (
      C => trace_clk,
      CE => '1',
      D => sw_trace_data,
      Q => sw_trace_write_reg_n_0,
      R => axi_lite_if_i_n_6
    );
sw_ts: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sw_timestamper
     port map (
      din(61) => sw_counter_overflow,
      din(60) => \sw_trace_data_reg_n_0_[15]\,
      din(59) => \sw_trace_data_reg_n_0_[14]\,
      din(58) => \sw_trace_data_reg_n_0_[13]\,
      din(57) => \sw_trace_data_reg_n_0_[12]\,
      din(56) => \sw_trace_data_reg_n_0_[11]\,
      din(55) => \sw_trace_data_reg_n_0_[10]\,
      din(54) => \sw_trace_data_reg_n_0_[9]\,
      din(53) => \sw_trace_data_reg_n_0_[8]\,
      din(52) => \sw_trace_data_reg_n_0_[7]\,
      din(51) => \sw_trace_data_reg_n_0_[6]\,
      din(50) => \sw_trace_data_reg_n_0_[5]\,
      din(49) => \sw_trace_data_reg_n_0_[4]\,
      din(48) => \sw_trace_data_reg_n_0_[3]\,
      din(47) => \sw_trace_data_reg_n_0_[2]\,
      din(46) => \sw_trace_data_reg_n_0_[1]\,
      din(45) => \sw_trace_data_reg_n_0_[0]\,
      din(44 downto 0) => sw_counter(44 downto 0),
      dout(63 downto 0) => sw_data(63 downto 0),
      empty => event_empty_i,
      error_reg_0 => \^trace_rst\,
      error_reg_1 => sw_trace_write_reg_n_0,
      sw_read => sw_read,
      trace_clk => trace_clk
    );
xpm_cdc_handshake_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_handshake
     port map (
      dest_ack => '0',
      dest_clk => trace_clk,
      dest_out(44 downto 0) => ctr_dest_out(44 downto 0),
      dest_req => ctr_dest_req,
      src_clk => mon_clk,
      src_in(44 downto 0) => \^trace4_counter\(44 downto 0),
      src_rcv => ctr_src_rcv,
      src_send => ctr_src_send
    );
xpm_cdc_single_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized0\
     port map (
      dest_clk => trace_clk,
      dest_out => ctr_of_dest_out,
      src_clk => mon_clk,
      src_in => \^trace4_counter_overflow\
    );
xpm_cdc_single_sw_rst_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__parameterized1\
     port map (
      dest_clk => mon_clk,
      dest_out => sw_reset_mon,
      src_clk => '0',
      src_in => \^trace_rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    mon_clk : in STD_LOGIC;
    mon_resetn : in STD_LOGIC;
    trace_clk : in STD_LOGIC;
    trace_resetn : in STD_LOGIC;
    trace_rst : out STD_LOGIC;
    out_valid : out STD_LOGIC;
    out_ready : in STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    trace0_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace0_read : out STD_LOGIC;
    trace0_event : in STD_LOGIC;
    trace0_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace0_counter_overflow : out STD_LOGIC;
    trace0_valid : in STD_LOGIC;
    trace1_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace1_read : out STD_LOGIC;
    trace1_event : in STD_LOGIC;
    trace1_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace1_counter_overflow : out STD_LOGIC;
    trace1_valid : in STD_LOGIC;
    trace2_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace2_read : out STD_LOGIC;
    trace2_event : in STD_LOGIC;
    trace2_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace2_counter_overflow : out STD_LOGIC;
    trace2_valid : in STD_LOGIC;
    trace3_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace3_read : out STD_LOGIC;
    trace3_event : in STD_LOGIC;
    trace3_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace3_counter_overflow : out STD_LOGIC;
    trace3_valid : in STD_LOGIC;
    trace4_counter : out STD_LOGIC_VECTOR ( 44 downto 0 );
    trace4_read : out STD_LOGIC;
    trace4_event : in STD_LOGIC;
    trace4_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    trace4_counter_overflow : out STD_LOGIC;
    trace4_valid : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_dpa_hub_0,trace_integrator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "trace_integrator,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal NLW_inst_pass_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace10_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace10_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace11_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace11_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace12_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace12_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace13_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace13_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace14_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace14_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace15_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace15_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace16_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace16_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace17_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace17_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace18_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace18_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace19_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace19_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace20_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace20_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace21_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace21_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace22_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace22_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace23_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace23_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace24_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace24_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace25_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace25_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace26_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace26_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace27_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace27_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace28_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace28_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace29_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace29_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace30_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace30_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace31_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace31_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace32_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace32_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace33_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace33_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace34_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace34_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace35_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace35_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace36_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace36_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace37_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace37_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace38_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace38_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace39_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace39_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace40_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace40_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace41_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace41_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace42_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace42_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace43_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace43_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace44_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace44_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace45_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace45_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace46_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace46_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace47_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace47_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace48_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace48_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace49_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace49_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace50_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace50_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace51_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace51_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace52_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace52_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace53_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace53_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace54_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace54_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace55_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace55_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace56_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace56_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace57_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace57_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace58_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace58_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace59_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace59_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace5_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace5_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace60_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace60_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace61_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace61_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace62_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace62_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace6_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace6_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace7_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace7_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace8_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace8_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace9_counter_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_trace9_read_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_trace10_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace11_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace12_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace13_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace14_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace15_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace16_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace17_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace18_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace19_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace20_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace21_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace22_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace23_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace24_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace25_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace26_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace27_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace28_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace29_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace30_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace31_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace32_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace33_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace34_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace35_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace36_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace37_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace38_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace39_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace40_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace41_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace42_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace43_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace44_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace45_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace46_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace47_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace48_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace49_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace50_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace51_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace52_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace53_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace54_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace55_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace56_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace57_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace58_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace59_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace5_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace60_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace61_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace62_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace6_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace7_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace8_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  signal NLW_inst_trace9_counter_UNCONNECTED : STD_LOGIC_VECTOR ( 44 downto 0 );
  attribute EMULATION : string;
  attribute EMULATION of inst : label is "1'b0";
  attribute EXT_MON_RST : integer;
  attribute EXT_MON_RST of inst : label is 1;
  attribute EXT_TRACE_RST : integer;
  attribute EXT_TRACE_RST of inst : label is 1;
  attribute NUM_TRACE_PORTS : integer;
  attribute NUM_TRACE_PORTS of inst : label is 5;
  attribute USE_PASSTHROUGH : string;
  attribute USE_PASSTHROUGH of inst : label is "1'b0";
  attribute \_NUM_LOG_PORTS\ : integer;
  attribute \_NUM_LOG_PORTS\ of inst : label is 8;
  attribute \_NUM_TRACE_PORTS\ : integer;
  attribute \_NUM_TRACE_PORTS\ of inst : label is 6;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of mon_clk : signal is "xilinx.com:signal:clock:1.0 mon_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of mon_clk : signal is "XIL_INTERFACENAME mon_clk, ASSOCIATED_RESET mon_resetn, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mon_resetn : signal is "xilinx.com:signal:reset:1.0 mon_resetn RST";
  attribute X_INTERFACE_PARAMETER of mon_resetn : signal is "XIL_INTERFACENAME mon_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_ready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of out_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of trace0_counter_overflow : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 counter_overflow";
  attribute X_INTERFACE_INFO of trace0_event : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 event";
  attribute X_INTERFACE_INFO of trace0_read : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 read";
  attribute X_INTERFACE_INFO of trace0_valid : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 valid";
  attribute X_INTERFACE_INFO of trace1_counter_overflow : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 counter_overflow";
  attribute X_INTERFACE_INFO of trace1_event : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 event";
  attribute X_INTERFACE_INFO of trace1_read : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 read";
  attribute X_INTERFACE_INFO of trace1_valid : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 valid";
  attribute X_INTERFACE_INFO of trace2_counter_overflow : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 counter_overflow";
  attribute X_INTERFACE_INFO of trace2_event : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 event";
  attribute X_INTERFACE_INFO of trace2_read : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 read";
  attribute X_INTERFACE_INFO of trace2_valid : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 valid";
  attribute X_INTERFACE_INFO of trace3_counter_overflow : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 counter_overflow";
  attribute X_INTERFACE_INFO of trace3_event : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 event";
  attribute X_INTERFACE_INFO of trace3_read : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 read";
  attribute X_INTERFACE_INFO of trace3_valid : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 valid";
  attribute X_INTERFACE_INFO of trace4_counter_overflow : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 counter_overflow";
  attribute X_INTERFACE_INFO of trace4_event : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 event";
  attribute X_INTERFACE_INFO of trace4_read : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 read";
  attribute X_INTERFACE_INFO of trace4_valid : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 valid";
  attribute X_INTERFACE_INFO of trace_clk : signal is "xilinx.com:signal:clock:1.0 trace_clk CLK";
  attribute X_INTERFACE_PARAMETER of trace_clk : signal is "XIL_INTERFACENAME trace_clk, ASSOCIATED_RESET trace_resetn:trace_rst, ASSOCIATED_BUSIF S_AXI:M_AXIS:S_AXIS, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of trace_resetn : signal is "xilinx.com:signal:reset:1.0 trace_resetn RST";
  attribute X_INTERFACE_PARAMETER of trace_resetn : signal is "XIL_INTERFACENAME trace_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of trace_rst : signal is "xilinx.com:signal:reset:1.0 trace_rst RST";
  attribute X_INTERFACE_PARAMETER of trace_rst : signal is "XIL_INTERFACENAME trace_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_data : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of out_data : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 300000000, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of trace0_counter : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 counter";
  attribute X_INTERFACE_INFO of trace0_data : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 data";
  attribute X_INTERFACE_INFO of trace1_counter : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 counter";
  attribute X_INTERFACE_INFO of trace1_data : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 data";
  attribute X_INTERFACE_INFO of trace2_counter : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 counter";
  attribute X_INTERFACE_INFO of trace2_data : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 data";
  attribute X_INTERFACE_INFO of trace3_counter : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 counter";
  attribute X_INTERFACE_INFO of trace3_data : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_3 data";
  attribute X_INTERFACE_INFO of trace4_counter : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 counter";
  attribute X_INTERFACE_INFO of trace4_data : signal is "xilinx.com:interface:sdsoc_trace:2.0 TRACE_4 data";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \^s_axi_rdata\(30);
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28 downto 25) <= \^s_axi_rdata\(28 downto 25);
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \^s_axi_rdata\(23);
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \^s_axi_rdata\(21);
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19 downto 16) <= \^s_axi_rdata\(19 downto 16);
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3 downto 2) <= \^s_axi_rdata\(3 downto 2);
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \^s_axi_rdata\(0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_trace_integrator
     port map (
      mon_clk => mon_clk,
      mon_resetn => mon_resetn,
      out_data(63 downto 0) => out_data(63 downto 0),
      out_ready => out_ready,
      out_valid => out_valid,
      pass_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      pass_ready => NLW_inst_pass_ready_UNCONNECTED,
      pass_valid => '0',
      s_axi_araddr(3 downto 2) => s_axi_araddr(3 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 2) => s_axi_awaddr(3 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31) => NLW_inst_s_axi_rdata_UNCONNECTED(31),
      s_axi_rdata(30) => \^s_axi_rdata\(30),
      s_axi_rdata(29) => NLW_inst_s_axi_rdata_UNCONNECTED(29),
      s_axi_rdata(28 downto 25) => \^s_axi_rdata\(28 downto 25),
      s_axi_rdata(24) => NLW_inst_s_axi_rdata_UNCONNECTED(24),
      s_axi_rdata(23) => \^s_axi_rdata\(23),
      s_axi_rdata(22) => NLW_inst_s_axi_rdata_UNCONNECTED(22),
      s_axi_rdata(21) => \^s_axi_rdata\(21),
      s_axi_rdata(20) => NLW_inst_s_axi_rdata_UNCONNECTED(20),
      s_axi_rdata(19 downto 16) => \^s_axi_rdata\(19 downto 16),
      s_axi_rdata(15 downto 4) => NLW_inst_s_axi_rdata_UNCONNECTED(15 downto 4),
      s_axi_rdata(3 downto 2) => \^s_axi_rdata\(3 downto 2),
      s_axi_rdata(1) => NLW_inst_s_axi_rdata_UNCONNECTED(1),
      s_axi_rdata(0) => \^s_axi_rdata\(0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 16) => B"0000000000000000",
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid,
      trace0_counter(44 downto 0) => trace0_counter(44 downto 0),
      trace0_counter_overflow => trace0_counter_overflow,
      trace0_data(63 downto 0) => trace0_data(63 downto 0),
      trace0_event => '0',
      trace0_read => trace0_read,
      trace0_valid => trace0_valid,
      trace10_counter(44 downto 0) => NLW_inst_trace10_counter_UNCONNECTED(44 downto 0),
      trace10_counter_overflow => NLW_inst_trace10_counter_overflow_UNCONNECTED,
      trace10_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace10_event => '0',
      trace10_read => NLW_inst_trace10_read_UNCONNECTED,
      trace10_valid => '0',
      trace11_counter(44 downto 0) => NLW_inst_trace11_counter_UNCONNECTED(44 downto 0),
      trace11_counter_overflow => NLW_inst_trace11_counter_overflow_UNCONNECTED,
      trace11_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace11_event => '0',
      trace11_read => NLW_inst_trace11_read_UNCONNECTED,
      trace11_valid => '0',
      trace12_counter(44 downto 0) => NLW_inst_trace12_counter_UNCONNECTED(44 downto 0),
      trace12_counter_overflow => NLW_inst_trace12_counter_overflow_UNCONNECTED,
      trace12_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace12_event => '0',
      trace12_read => NLW_inst_trace12_read_UNCONNECTED,
      trace12_valid => '0',
      trace13_counter(44 downto 0) => NLW_inst_trace13_counter_UNCONNECTED(44 downto 0),
      trace13_counter_overflow => NLW_inst_trace13_counter_overflow_UNCONNECTED,
      trace13_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace13_event => '0',
      trace13_read => NLW_inst_trace13_read_UNCONNECTED,
      trace13_valid => '0',
      trace14_counter(44 downto 0) => NLW_inst_trace14_counter_UNCONNECTED(44 downto 0),
      trace14_counter_overflow => NLW_inst_trace14_counter_overflow_UNCONNECTED,
      trace14_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace14_event => '0',
      trace14_read => NLW_inst_trace14_read_UNCONNECTED,
      trace14_valid => '0',
      trace15_counter(44 downto 0) => NLW_inst_trace15_counter_UNCONNECTED(44 downto 0),
      trace15_counter_overflow => NLW_inst_trace15_counter_overflow_UNCONNECTED,
      trace15_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace15_event => '0',
      trace15_read => NLW_inst_trace15_read_UNCONNECTED,
      trace15_valid => '0',
      trace16_counter(44 downto 0) => NLW_inst_trace16_counter_UNCONNECTED(44 downto 0),
      trace16_counter_overflow => NLW_inst_trace16_counter_overflow_UNCONNECTED,
      trace16_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace16_event => '0',
      trace16_read => NLW_inst_trace16_read_UNCONNECTED,
      trace16_valid => '0',
      trace17_counter(44 downto 0) => NLW_inst_trace17_counter_UNCONNECTED(44 downto 0),
      trace17_counter_overflow => NLW_inst_trace17_counter_overflow_UNCONNECTED,
      trace17_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace17_event => '0',
      trace17_read => NLW_inst_trace17_read_UNCONNECTED,
      trace17_valid => '0',
      trace18_counter(44 downto 0) => NLW_inst_trace18_counter_UNCONNECTED(44 downto 0),
      trace18_counter_overflow => NLW_inst_trace18_counter_overflow_UNCONNECTED,
      trace18_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace18_event => '0',
      trace18_read => NLW_inst_trace18_read_UNCONNECTED,
      trace18_valid => '0',
      trace19_counter(44 downto 0) => NLW_inst_trace19_counter_UNCONNECTED(44 downto 0),
      trace19_counter_overflow => NLW_inst_trace19_counter_overflow_UNCONNECTED,
      trace19_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace19_event => '0',
      trace19_read => NLW_inst_trace19_read_UNCONNECTED,
      trace19_valid => '0',
      trace1_counter(44 downto 0) => trace1_counter(44 downto 0),
      trace1_counter_overflow => trace1_counter_overflow,
      trace1_data(63 downto 0) => trace1_data(63 downto 0),
      trace1_event => '0',
      trace1_read => trace1_read,
      trace1_valid => trace1_valid,
      trace20_counter(44 downto 0) => NLW_inst_trace20_counter_UNCONNECTED(44 downto 0),
      trace20_counter_overflow => NLW_inst_trace20_counter_overflow_UNCONNECTED,
      trace20_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace20_event => '0',
      trace20_read => NLW_inst_trace20_read_UNCONNECTED,
      trace20_valid => '0',
      trace21_counter(44 downto 0) => NLW_inst_trace21_counter_UNCONNECTED(44 downto 0),
      trace21_counter_overflow => NLW_inst_trace21_counter_overflow_UNCONNECTED,
      trace21_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace21_event => '0',
      trace21_read => NLW_inst_trace21_read_UNCONNECTED,
      trace21_valid => '0',
      trace22_counter(44 downto 0) => NLW_inst_trace22_counter_UNCONNECTED(44 downto 0),
      trace22_counter_overflow => NLW_inst_trace22_counter_overflow_UNCONNECTED,
      trace22_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace22_event => '0',
      trace22_read => NLW_inst_trace22_read_UNCONNECTED,
      trace22_valid => '0',
      trace23_counter(44 downto 0) => NLW_inst_trace23_counter_UNCONNECTED(44 downto 0),
      trace23_counter_overflow => NLW_inst_trace23_counter_overflow_UNCONNECTED,
      trace23_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace23_event => '0',
      trace23_read => NLW_inst_trace23_read_UNCONNECTED,
      trace23_valid => '0',
      trace24_counter(44 downto 0) => NLW_inst_trace24_counter_UNCONNECTED(44 downto 0),
      trace24_counter_overflow => NLW_inst_trace24_counter_overflow_UNCONNECTED,
      trace24_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace24_event => '0',
      trace24_read => NLW_inst_trace24_read_UNCONNECTED,
      trace24_valid => '0',
      trace25_counter(44 downto 0) => NLW_inst_trace25_counter_UNCONNECTED(44 downto 0),
      trace25_counter_overflow => NLW_inst_trace25_counter_overflow_UNCONNECTED,
      trace25_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace25_event => '0',
      trace25_read => NLW_inst_trace25_read_UNCONNECTED,
      trace25_valid => '0',
      trace26_counter(44 downto 0) => NLW_inst_trace26_counter_UNCONNECTED(44 downto 0),
      trace26_counter_overflow => NLW_inst_trace26_counter_overflow_UNCONNECTED,
      trace26_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace26_event => '0',
      trace26_read => NLW_inst_trace26_read_UNCONNECTED,
      trace26_valid => '0',
      trace27_counter(44 downto 0) => NLW_inst_trace27_counter_UNCONNECTED(44 downto 0),
      trace27_counter_overflow => NLW_inst_trace27_counter_overflow_UNCONNECTED,
      trace27_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace27_event => '0',
      trace27_read => NLW_inst_trace27_read_UNCONNECTED,
      trace27_valid => '0',
      trace28_counter(44 downto 0) => NLW_inst_trace28_counter_UNCONNECTED(44 downto 0),
      trace28_counter_overflow => NLW_inst_trace28_counter_overflow_UNCONNECTED,
      trace28_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace28_event => '0',
      trace28_read => NLW_inst_trace28_read_UNCONNECTED,
      trace28_valid => '0',
      trace29_counter(44 downto 0) => NLW_inst_trace29_counter_UNCONNECTED(44 downto 0),
      trace29_counter_overflow => NLW_inst_trace29_counter_overflow_UNCONNECTED,
      trace29_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace29_event => '0',
      trace29_read => NLW_inst_trace29_read_UNCONNECTED,
      trace29_valid => '0',
      trace2_counter(44 downto 0) => trace2_counter(44 downto 0),
      trace2_counter_overflow => trace2_counter_overflow,
      trace2_data(63 downto 0) => trace2_data(63 downto 0),
      trace2_event => '0',
      trace2_read => trace2_read,
      trace2_valid => trace2_valid,
      trace30_counter(44 downto 0) => NLW_inst_trace30_counter_UNCONNECTED(44 downto 0),
      trace30_counter_overflow => NLW_inst_trace30_counter_overflow_UNCONNECTED,
      trace30_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace30_event => '0',
      trace30_read => NLW_inst_trace30_read_UNCONNECTED,
      trace30_valid => '0',
      trace31_counter(44 downto 0) => NLW_inst_trace31_counter_UNCONNECTED(44 downto 0),
      trace31_counter_overflow => NLW_inst_trace31_counter_overflow_UNCONNECTED,
      trace31_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace31_event => '0',
      trace31_read => NLW_inst_trace31_read_UNCONNECTED,
      trace31_valid => '0',
      trace32_counter(44 downto 0) => NLW_inst_trace32_counter_UNCONNECTED(44 downto 0),
      trace32_counter_overflow => NLW_inst_trace32_counter_overflow_UNCONNECTED,
      trace32_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace32_event => '0',
      trace32_read => NLW_inst_trace32_read_UNCONNECTED,
      trace32_valid => '0',
      trace33_counter(44 downto 0) => NLW_inst_trace33_counter_UNCONNECTED(44 downto 0),
      trace33_counter_overflow => NLW_inst_trace33_counter_overflow_UNCONNECTED,
      trace33_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace33_event => '0',
      trace33_read => NLW_inst_trace33_read_UNCONNECTED,
      trace33_valid => '0',
      trace34_counter(44 downto 0) => NLW_inst_trace34_counter_UNCONNECTED(44 downto 0),
      trace34_counter_overflow => NLW_inst_trace34_counter_overflow_UNCONNECTED,
      trace34_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace34_event => '0',
      trace34_read => NLW_inst_trace34_read_UNCONNECTED,
      trace34_valid => '0',
      trace35_counter(44 downto 0) => NLW_inst_trace35_counter_UNCONNECTED(44 downto 0),
      trace35_counter_overflow => NLW_inst_trace35_counter_overflow_UNCONNECTED,
      trace35_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace35_event => '0',
      trace35_read => NLW_inst_trace35_read_UNCONNECTED,
      trace35_valid => '0',
      trace36_counter(44 downto 0) => NLW_inst_trace36_counter_UNCONNECTED(44 downto 0),
      trace36_counter_overflow => NLW_inst_trace36_counter_overflow_UNCONNECTED,
      trace36_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace36_event => '0',
      trace36_read => NLW_inst_trace36_read_UNCONNECTED,
      trace36_valid => '0',
      trace37_counter(44 downto 0) => NLW_inst_trace37_counter_UNCONNECTED(44 downto 0),
      trace37_counter_overflow => NLW_inst_trace37_counter_overflow_UNCONNECTED,
      trace37_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace37_event => '0',
      trace37_read => NLW_inst_trace37_read_UNCONNECTED,
      trace37_valid => '0',
      trace38_counter(44 downto 0) => NLW_inst_trace38_counter_UNCONNECTED(44 downto 0),
      trace38_counter_overflow => NLW_inst_trace38_counter_overflow_UNCONNECTED,
      trace38_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace38_event => '0',
      trace38_read => NLW_inst_trace38_read_UNCONNECTED,
      trace38_valid => '0',
      trace39_counter(44 downto 0) => NLW_inst_trace39_counter_UNCONNECTED(44 downto 0),
      trace39_counter_overflow => NLW_inst_trace39_counter_overflow_UNCONNECTED,
      trace39_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace39_event => '0',
      trace39_read => NLW_inst_trace39_read_UNCONNECTED,
      trace39_valid => '0',
      trace3_counter(44 downto 0) => trace3_counter(44 downto 0),
      trace3_counter_overflow => trace3_counter_overflow,
      trace3_data(63 downto 0) => trace3_data(63 downto 0),
      trace3_event => '0',
      trace3_read => trace3_read,
      trace3_valid => trace3_valid,
      trace40_counter(44 downto 0) => NLW_inst_trace40_counter_UNCONNECTED(44 downto 0),
      trace40_counter_overflow => NLW_inst_trace40_counter_overflow_UNCONNECTED,
      trace40_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace40_event => '0',
      trace40_read => NLW_inst_trace40_read_UNCONNECTED,
      trace40_valid => '0',
      trace41_counter(44 downto 0) => NLW_inst_trace41_counter_UNCONNECTED(44 downto 0),
      trace41_counter_overflow => NLW_inst_trace41_counter_overflow_UNCONNECTED,
      trace41_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace41_event => '0',
      trace41_read => NLW_inst_trace41_read_UNCONNECTED,
      trace41_valid => '0',
      trace42_counter(44 downto 0) => NLW_inst_trace42_counter_UNCONNECTED(44 downto 0),
      trace42_counter_overflow => NLW_inst_trace42_counter_overflow_UNCONNECTED,
      trace42_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace42_event => '0',
      trace42_read => NLW_inst_trace42_read_UNCONNECTED,
      trace42_valid => '0',
      trace43_counter(44 downto 0) => NLW_inst_trace43_counter_UNCONNECTED(44 downto 0),
      trace43_counter_overflow => NLW_inst_trace43_counter_overflow_UNCONNECTED,
      trace43_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace43_event => '0',
      trace43_read => NLW_inst_trace43_read_UNCONNECTED,
      trace43_valid => '0',
      trace44_counter(44 downto 0) => NLW_inst_trace44_counter_UNCONNECTED(44 downto 0),
      trace44_counter_overflow => NLW_inst_trace44_counter_overflow_UNCONNECTED,
      trace44_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace44_event => '0',
      trace44_read => NLW_inst_trace44_read_UNCONNECTED,
      trace44_valid => '0',
      trace45_counter(44 downto 0) => NLW_inst_trace45_counter_UNCONNECTED(44 downto 0),
      trace45_counter_overflow => NLW_inst_trace45_counter_overflow_UNCONNECTED,
      trace45_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace45_event => '0',
      trace45_read => NLW_inst_trace45_read_UNCONNECTED,
      trace45_valid => '0',
      trace46_counter(44 downto 0) => NLW_inst_trace46_counter_UNCONNECTED(44 downto 0),
      trace46_counter_overflow => NLW_inst_trace46_counter_overflow_UNCONNECTED,
      trace46_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace46_event => '0',
      trace46_read => NLW_inst_trace46_read_UNCONNECTED,
      trace46_valid => '0',
      trace47_counter(44 downto 0) => NLW_inst_trace47_counter_UNCONNECTED(44 downto 0),
      trace47_counter_overflow => NLW_inst_trace47_counter_overflow_UNCONNECTED,
      trace47_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace47_event => '0',
      trace47_read => NLW_inst_trace47_read_UNCONNECTED,
      trace47_valid => '0',
      trace48_counter(44 downto 0) => NLW_inst_trace48_counter_UNCONNECTED(44 downto 0),
      trace48_counter_overflow => NLW_inst_trace48_counter_overflow_UNCONNECTED,
      trace48_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace48_event => '0',
      trace48_read => NLW_inst_trace48_read_UNCONNECTED,
      trace48_valid => '0',
      trace49_counter(44 downto 0) => NLW_inst_trace49_counter_UNCONNECTED(44 downto 0),
      trace49_counter_overflow => NLW_inst_trace49_counter_overflow_UNCONNECTED,
      trace49_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace49_event => '0',
      trace49_read => NLW_inst_trace49_read_UNCONNECTED,
      trace49_valid => '0',
      trace4_counter(44 downto 0) => trace4_counter(44 downto 0),
      trace4_counter_overflow => trace4_counter_overflow,
      trace4_data(63 downto 0) => trace4_data(63 downto 0),
      trace4_event => '0',
      trace4_read => trace4_read,
      trace4_valid => trace4_valid,
      trace50_counter(44 downto 0) => NLW_inst_trace50_counter_UNCONNECTED(44 downto 0),
      trace50_counter_overflow => NLW_inst_trace50_counter_overflow_UNCONNECTED,
      trace50_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace50_event => '0',
      trace50_read => NLW_inst_trace50_read_UNCONNECTED,
      trace50_valid => '0',
      trace51_counter(44 downto 0) => NLW_inst_trace51_counter_UNCONNECTED(44 downto 0),
      trace51_counter_overflow => NLW_inst_trace51_counter_overflow_UNCONNECTED,
      trace51_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace51_event => '0',
      trace51_read => NLW_inst_trace51_read_UNCONNECTED,
      trace51_valid => '0',
      trace52_counter(44 downto 0) => NLW_inst_trace52_counter_UNCONNECTED(44 downto 0),
      trace52_counter_overflow => NLW_inst_trace52_counter_overflow_UNCONNECTED,
      trace52_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace52_event => '0',
      trace52_read => NLW_inst_trace52_read_UNCONNECTED,
      trace52_valid => '0',
      trace53_counter(44 downto 0) => NLW_inst_trace53_counter_UNCONNECTED(44 downto 0),
      trace53_counter_overflow => NLW_inst_trace53_counter_overflow_UNCONNECTED,
      trace53_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace53_event => '0',
      trace53_read => NLW_inst_trace53_read_UNCONNECTED,
      trace53_valid => '0',
      trace54_counter(44 downto 0) => NLW_inst_trace54_counter_UNCONNECTED(44 downto 0),
      trace54_counter_overflow => NLW_inst_trace54_counter_overflow_UNCONNECTED,
      trace54_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace54_event => '0',
      trace54_read => NLW_inst_trace54_read_UNCONNECTED,
      trace54_valid => '0',
      trace55_counter(44 downto 0) => NLW_inst_trace55_counter_UNCONNECTED(44 downto 0),
      trace55_counter_overflow => NLW_inst_trace55_counter_overflow_UNCONNECTED,
      trace55_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace55_event => '0',
      trace55_read => NLW_inst_trace55_read_UNCONNECTED,
      trace55_valid => '0',
      trace56_counter(44 downto 0) => NLW_inst_trace56_counter_UNCONNECTED(44 downto 0),
      trace56_counter_overflow => NLW_inst_trace56_counter_overflow_UNCONNECTED,
      trace56_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace56_event => '0',
      trace56_read => NLW_inst_trace56_read_UNCONNECTED,
      trace56_valid => '0',
      trace57_counter(44 downto 0) => NLW_inst_trace57_counter_UNCONNECTED(44 downto 0),
      trace57_counter_overflow => NLW_inst_trace57_counter_overflow_UNCONNECTED,
      trace57_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace57_event => '0',
      trace57_read => NLW_inst_trace57_read_UNCONNECTED,
      trace57_valid => '0',
      trace58_counter(44 downto 0) => NLW_inst_trace58_counter_UNCONNECTED(44 downto 0),
      trace58_counter_overflow => NLW_inst_trace58_counter_overflow_UNCONNECTED,
      trace58_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace58_event => '0',
      trace58_read => NLW_inst_trace58_read_UNCONNECTED,
      trace58_valid => '0',
      trace59_counter(44 downto 0) => NLW_inst_trace59_counter_UNCONNECTED(44 downto 0),
      trace59_counter_overflow => NLW_inst_trace59_counter_overflow_UNCONNECTED,
      trace59_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace59_event => '0',
      trace59_read => NLW_inst_trace59_read_UNCONNECTED,
      trace59_valid => '0',
      trace5_counter(44 downto 0) => NLW_inst_trace5_counter_UNCONNECTED(44 downto 0),
      trace5_counter_overflow => NLW_inst_trace5_counter_overflow_UNCONNECTED,
      trace5_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace5_event => '0',
      trace5_read => NLW_inst_trace5_read_UNCONNECTED,
      trace5_valid => '0',
      trace60_counter(44 downto 0) => NLW_inst_trace60_counter_UNCONNECTED(44 downto 0),
      trace60_counter_overflow => NLW_inst_trace60_counter_overflow_UNCONNECTED,
      trace60_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace60_event => '0',
      trace60_read => NLW_inst_trace60_read_UNCONNECTED,
      trace60_valid => '0',
      trace61_counter(44 downto 0) => NLW_inst_trace61_counter_UNCONNECTED(44 downto 0),
      trace61_counter_overflow => NLW_inst_trace61_counter_overflow_UNCONNECTED,
      trace61_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace61_event => '0',
      trace61_read => NLW_inst_trace61_read_UNCONNECTED,
      trace61_valid => '0',
      trace62_counter(44 downto 0) => NLW_inst_trace62_counter_UNCONNECTED(44 downto 0),
      trace62_counter_overflow => NLW_inst_trace62_counter_overflow_UNCONNECTED,
      trace62_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace62_event => '0',
      trace62_read => NLW_inst_trace62_read_UNCONNECTED,
      trace62_valid => '0',
      trace6_counter(44 downto 0) => NLW_inst_trace6_counter_UNCONNECTED(44 downto 0),
      trace6_counter_overflow => NLW_inst_trace6_counter_overflow_UNCONNECTED,
      trace6_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace6_event => '0',
      trace6_read => NLW_inst_trace6_read_UNCONNECTED,
      trace6_valid => '0',
      trace7_counter(44 downto 0) => NLW_inst_trace7_counter_UNCONNECTED(44 downto 0),
      trace7_counter_overflow => NLW_inst_trace7_counter_overflow_UNCONNECTED,
      trace7_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace7_event => '0',
      trace7_read => NLW_inst_trace7_read_UNCONNECTED,
      trace7_valid => '0',
      trace8_counter(44 downto 0) => NLW_inst_trace8_counter_UNCONNECTED(44 downto 0),
      trace8_counter_overflow => NLW_inst_trace8_counter_overflow_UNCONNECTED,
      trace8_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace8_event => '0',
      trace8_read => NLW_inst_trace8_read_UNCONNECTED,
      trace8_valid => '0',
      trace9_counter(44 downto 0) => NLW_inst_trace9_counter_UNCONNECTED(44 downto 0),
      trace9_counter_overflow => NLW_inst_trace9_counter_overflow_UNCONNECTED,
      trace9_data(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      trace9_event => '0',
      trace9_read => NLW_inst_trace9_read_UNCONNECTED,
      trace9_valid => '0',
      trace_clk => trace_clk,
      trace_resetn => trace_resetn,
      trace_rst => trace_rst
    );
end STRUCTURE;
