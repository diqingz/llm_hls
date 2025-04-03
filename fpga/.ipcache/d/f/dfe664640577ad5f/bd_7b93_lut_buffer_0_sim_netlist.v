// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Mar 15 02:37:08 2025
// Host        : hal-fpga-x86.ncsa.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_7b93_lut_buffer_0_sim_netlist.v
// Design      : bd_7b93_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_7b93_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f1j0yiOflyV2kLMBe+hsL0MouEX0Wv67RiMU1n4QYTAQ1VnAgpLBrFb17v/9GYVLUPddIDNOGPRZ
u2WV424zInW/Vmf6dhRXe1SsADWvbW7FiGPDw4jSrHnTNCEJCn+cfjSxhjMmAkuHG1fir3l+gxGz
L/X05RxFmZ2QL5UIwRk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0i7KENkA2NQO3GXaWrbdCJnWHApRZRcJ0tLb3D4baBRVZkAd2BJDMxoSUwnRKToSUEazPqGR4ywK
WqTfdpMetoN7s7CYXDjMoygLqtE11hWxTqG3rxD4MHY+oxhHIbr0ICQdK58tH2gBIeD4Y8rjtc1M
L01bGVrzL348HIiDA0SPDZYJeem4+87SeBTvZP3vuJPPdCuxDmudnIAXnqy6CGab6C9RgMyi/LlF
L0I7jQB9ONBLqrj8KcUrPrduGmiyShXt/NwzRFGoTEY3E0lYXHgJkdReoCCCmYa5+FNOs18Qwno+
YkWOQhWFcPvWa4g6Y/ouRdk7jPEz/jq+GzkkPg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KNOVCEjQhCCxVJzUYfNJKAf2haBXTHL4u8VRnkMGr2AZ4CjhCD2LNR3uxAto+kgqlGvllYk6mDuX
ehYphfcWZHnD/uMO9Mlgm2xYmmqRUjk15bM5mfH+RhWUKFD6VRSygM9P06naXp5l6yAxCjsaJoia
sn/MOoxmT2wVf3n+Xdg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V2yPa0MI9WR304IOhrhuSQ9Ldvhw0yC0csbY2Yup99Z9agkgpsDjW+77nBHVwkwZmgUyfGSo0TK2
5+kz3fJgn/RD2oSYkSaBVXzvKItV8acak2gfA2kdbaCCDklOwfdWWqRGAWts/1Mg5clfcdwoNOZ1
m3ZVTEFXXRdnaVotagNm2zuupNsX/J509sWqJwxqY/tkapVzbizogJQlBDpHRmeI8Wy9MHgl+ez8
ErgBkS1v84iUGQ0VVXOdzfpn7Rr+JkKzknuKR21+imEMhw/nro+d3J6z9gL9sw/hot77/E45Wlv0
J6rMye1iHGBgTJ/ongJJ/bF2sU0UIep3jo3Ycw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Gsa5eR6EJ+H0y0tfeQrSF62h+z9EjOrg9Nx7r8uw/ePJ78O1ebL7fqko1w5NXOXLbrE6GH0vB5PG
/sp4Ez/hK7CAozkTRRLKNpEiEjYs2xf/XWbCy8m7MjJL3tGVSrP4bCa5emQEsIcEi8ZXNnVw4khq
FTPzKuxstMIRAptl0GnPBlQC7elSuw6Li8Olj1CTQU7VlBFtuNyAt5Onc/FWt3H78x5rf4h+wZAC
rCL/7OKx01xqTpSd7s35OB0kE6C75KSwa0lxluUz3o07qQoZ1FuaWMdqLjSuwyBAqL97DAkcrtNs
SGDdpgTIT+dK7ICRArioBCEKt/kMjmL/uID0Hg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h+kjW5M8Dem541WFtDf09jjHpUR1/+CL7YNUyFmXM5qvgxmmSz2XXkwnCuEbvknqy0Yh9fpgPEtw
P8UmTkW5JrTQVdJEaqXXg5foMh4iNGQJirjH4SbGQ/YuI2eV97IrrEygr9Cs4lTCJJxvBYMzkZ8O
7k00rA51JoBJVpXt/5T5upbqQiFhJ6MU6avXSC4vezl93MB5UrxRfDP7E7q9m0W+xAcLwxYEwl4B
1E52gJSYNRV3KH5tXZTsXURVzpZ4rgpGuhnTqaRIbzdHDFBO5R2HLAM6qPpwH3iXqmCPpwhcuL/C
jBAzhuIZ3U12mvg6St28AxyWYwWi2IAz4uzfgg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dtmv56Ko4bFw0rY2VV0lIolvnvL8ZqJOHXaQX9ROldne6mUD/6S3uCZJeduFtssQ5PyvwzGhKGxi
7um7D/9xiCOrGpJTZ8BXDmmL9x6GCuNjAfNCfBGJsQEf6celtP5Wb+/KyqzKylMTmOn4jYDpwKnv
7aGYgDcY7bLQPstQJ1lqpnIzpsXokk2yfTXesH1TE5QAebLuUzMJkhjk+/0Png8FOhnM2GWK/nNN
tYDjJVOBtj/HBwhT/lFXucnPSnqCy/bh0ObsNNSD5sUoHhUk00KBNeDEdIGHT7MgOiRMEgRxIVBr
fE2b4uHkwE3B9zjQ5ayuPIdobQKIH9uajxa1Cw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
nP7sH9m1/BWzEDOejD42H89YXpl36cWXtZO9mIisNlEpVUC6G6NkFQXuEvVhxWDlr/ANE2zhdLuk
pUjX5zCIatBQEjjG7DxiP93OzjAUtlcezRl2EdP8WONFhAXwbtW+FjwvaygqnYLOFuX1NySRVtIm
JnNXiZV1065+1Z3tuINtTEoj7vWpyiY6keja/lhk6y7N1vDfbpJnxwC8XF6qagRF2f3BSidj4gRD
kLvmVWetDWRwL3rbqsFqAryiMwdmn+bzBSuKJX0DvUZ9Mf5pfVjh6oeaUiV+N8VsCoGG4AYJMW6a
BDdl5Vq35R9zL+M25sLYEKaG07cYl0Exhxk6oVzhqw/+PO//HHdYa8S6U3zet2RHV0BUpC+IxVj6
r/daUxvI5ChIZKtIsApJvvJjybQUYIZz/lMNvxQY//moq88zjpwQ13CeVbxZA4cEo3LTdka/RIet
ScU9pHox1Y+im5MusVfpMJQNihowibveX0/XnfK1an+3HLXxA2daxGiD

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gZo52SHmX+/9ltS9SXeTGQ5BAPUpW+A6ImhJo+12gKxivRKWEgEcZyBRgM7Hj6mtw9eEPmcH7UuO
9vD90A9QvItgrbujaZxLVL7i94ZAamx40/J5wjA0HPDTV75t68r0vy1qwPQ3sZeu6XwipquHvOWj
ujFI8+tIW+YWMlunpQwGZ3rGMizIBhMobkp1BGodxvf99yEznW3Oi9Y/TJINC1QCqR6JK9Z4AscZ
EZf7XVSb7dPw0bFtiw6ZaZQmyvhRQYrO8FiaZJj2P7cxrUIuDAEpK0DY1MdJ5NKVuNFFKweNyC3/
3oyciyDOZSr6a1Ow3A2imATmKbSnAKV6h9qoMg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
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
