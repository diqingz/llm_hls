// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Mar 15 03:00:18 2025
// Host        : hal-fpga-x86.ncsa.illinois.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_1361_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_1361_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu250-figd2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_1361_gapping_demand_toggle_0,c_counter_binary_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_15,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_15 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
etX3SrY3g8TAXqvd6Iw5SvKCZZW0eO22ydOZWWDKv0XmkGG+9M8FsJMD1dG+u6RHY7gdvUOfoViN
wYkRFkkBiOKUODn3KY+yorf/HZ9bJsxi4Q2Ru+Zt4ivE2MW+zxqBWPhCkRfS/ucHGuO95naXnjgL
lb9i6CyTczDpW4UI/Ik=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ocAlwZgQjNXrZcvxNs8IW79dzfyE9fvD0AHIqJ8SeTEjMRupN9qSyJOEgFaNpPxUIuu0svukJu0R
IqatA+wGaribd/22wO76Mj0aoD9bGE3VsaN0pR3+Y8YoU+IGyyVvjDG9mNbukvYTSJ5ZEMHsUOyi
imiBAjKNItKHyfLmbgwiEIR1oZvFzOU1gKu//rXEuLNx3KotU0MiuqklmmKAGGJ254g/V2yZiNe4
HQ5tbfx8TDma7/NxoBfjg3Bvq2/eHzXnOj06HGJUgjWu2IDATi1Tf48miMjPHWhgHLGKzWaqgjyq
g35QHtqKIkgMv0ig+cxF8SaXK1SIsQAmTNFhtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WIYuLymN2Nv/rvoxxWXQJUzJMgD17q8uGZGaBtC6iR4pcjbP2LoAhSDAWPDJ8U0aLYG9J5uhEBJr
/OOxx4nmKJUgsWFJzpj1iAmBvs57SxHV6jPVhnslDdyPjeSb8osDZ9b6tft6h9988MculRQRvGgI
HSSSC/8vkkw0e/Kc6U8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T7BkeDa870ApjbtvZ7/2khjAHJx69MvPtsnIFkvlpIJh1CZzfvHg0ZYY8clsVgB/Qtk+a1wUS8wP
HoB0f6b47CZuLyVfYbdve2ifMZVtreXVYOjP81VEm/bz/Y0YCGUToVzTEgzkTUAMwsVq461ePNjA
1OIMAhX2UTCZemmI+t1xc7UUPsprpRtQFsD2AycglI1VCpO2g9OrLgGhEOq4Rs+qIncV13whpF+6
ow3SfiEWSC5yWeJWQVSILtpitCj/uLGV7JhZOtyk+GNqgtNN/kUEXukyTmH4gtr3R0Weq0Ta/7UA
jEeryu6BSvjECQ/4CXkcsLZx21gswFcMgdy/+w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0K8CiEosnZGPGhb4bfIxrv7D6G0rwpTFuE0sxW9JWE7hZOw6ejqpy+L7rBIjbtQWBlwBxjJyyBOr
DN7TKWiVYDmvUwUJk5GOYGGm5leq/LSFNBRH/isZvo0qJMN6vy+9FVe9M5YSMEnFs3rXqyLGptPM
gknJThr/VhNLOJvbCnPFMl8hUL88Z45aFQY6pQypIxO9aSVD6FNrIjSWvSKBsp47joDxHbjgngCK
aEyWu5FCOvZink3ultoCC36AMpVuoei/rz5cE2lS/JnA0EHecKtNxb5UyEX0k1RkI7Y573ErJHDK
672KED4gm/zneBtNCYGxcXUo/DgfrPXjUWRXUw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ngjVz6+RURV0NXze0ScoKCqO+Sw1oGm0rynAKadmo2FAqjTc2+/XedUU3UcU7YuXAAIBHrw6La+O
HsUGGhJmLx8cMtddX+L3oymDlcoxkaqSJlhDigmTawK44PlNtYqssNQN+pco7blJLk9/oqmMyuuI
0Wv6/OqwjGRH5z/FOF0exK65OVlKVFKwibJXjsGH/Df3LafmiyeS7qcveJ91nS4q4IjFSTY9WZUX
IOIJ4vGlDtY4jnS3eRHUIX4X59Zj8yId5U0Hs/FrKzCYV07oUy2rTvltPwkFj5vg9G4CgEunNPc3
3wcZb74KDE6Jse+vxtK+i7H3Sy6iUu5AjmD7lQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
f1eoK6dk/UeyS6WKTzZq+16+eooDXoHX+8BhhaCu54Rj9FahkQz9QhJf/wF2+AXgmFOom5ukrVr/
v3BFE8gnMHUnQOWBDrNewnalpxoqLTj0jO8w/Dle08RaL0nJ37F9JYfwvY5BrUNuYrd9jm4Q+gB0
u6pWiPYTtwxvIy8UrGz4Lw3INaGxrFOeuFuh0YLyAPcmIH4Zx3g0P1uoDBRXeFh0lrPfeb/VHh5N
MbBMMd1ZBfBORTEAEfeCKHodK2Ag6VELMOcNvRsngPNUprRlwyoznZgx4EGP5uknUWJ28szVxQKF
hNPRhe1ZYPmHS/A+jmSlcs4nFOlLq5lMa8WNJg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D2RwxcSch3LPUkN/XFzw4CqPI9z++PJYhbEiPcZO87hBRRGQz6upuyWq6R370Oarp7pn7/dYPDqt
BkvR5v+SmGaDOxyTErt8Co4qFR+t2eYDF4qA7aL/JJhR4GWjSGL2n1wte4fAvKHAWxVPnbeXY72h
ZguOZdrKfH9i/zlBQEOOb0+u7d/zavZwXNleLCIWGHlwdEPZ2IzMpccItAx9AfOcRFrSvGee8a5U
f5T+IFSfqdIKLE2xvfpShFqr0PAS0UyIztiDz2s2L/3PCTeZb6PAUq6+nRC1d+a4Zudo8eU3vQrp
XRQH5XfY7HDEFp0FwSdVwpTbpOICVYutMg+WqWNsOilITHjrqhtdJ1eakkJh42/iXuGHm74DygNx
YIudsp166RXGfy6PRpADb15n+U2Zs3i2bs2PvhiXdfa6XgrRZheG6hqE/gGZ8jzRMOrN6U73Um3f
nRmIBNssHc+NUR19lvdaQcG8t3iv4mFgPCPzhwuPMfEJ4K9vXupKZRZC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GiBTRr15aQ7ZFVD9DA3YCzxBU25RUBqeLM6/zaVyX1C2MTwaDcj7eUsmHPTuLrbz8wqCpKE70+mi
MFXYoP3RM/M7Qvdjz8Wr99Xd2NrlOmB9eNpCWyr2JEhHBVFXtK8Pg+eYu1T83oiQfLd5qKA0acct
+ZviXiAOaPDluQKhBNJuucJJsMIT/pXw0sQ5H7Vwf/PJKdX4bVALFvpra39UXluHDWce+mK6eI5N
olI4dHLhpo6pN6FFWESTD+2KoftBx3MDImLjocOGF7pOhGSNxB81JS3xtKYXvyKUKVXinrL/Rt7H
VT02aL+3dCLG1Vx5Jt8tUOXwye0BQsDmf8/vvg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOQib+7cH37ZGs3dCTRgmemLrVpkbhhgMXpPbmg+jK5Gx0blkfS6M96MKL3D8MpI+BZ08ecABwZH
BDCmMRJsre0YhkyQSi8j6a40rnYP4T5mzBPSj+SpiKQcAIaohmE6ULmhcR4Rly/EXlP0EG48fcN9
fYtbQKqcNeEEgT7PZ8fc56/GS35dOE+OE3GEvg8E/tfmVNjcgIjEvCKCVt3tRfR6aMITpBAgnlGP
LyOTjnm2ue9k30smxgpZUxptwkm9Zw/JnSuxNbjp/y9F+fX+h4XFqHJ3uh6YOXlK/gtevPbCChBE
fkj1pj1JDAjpiBLlBYg6HErpEPOX6VYxueLD4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0B5xNRushQKYRiTwA6ywaZ5Ij9uBHEDmpSzLnrW6uM2ZUAr39ELEnpP2nWcwAQ/rVkgqjPFKZalz
VABPpcBfeWkEg482819pM8RuVJY2ueLEirtcqpfETgqDhulUqODpkxVx8qaPxE/MG/p5WSzy7/aZ
hW8mWwpbOL0P+I6rop7fFPrrY6/WuqdJW3T84ZipM9rmMQCDZ3d2f4T32WCDZhfDEir96yTH/iT5
CQlHNb96lN+CYBAJFkl7gj2nMXkzKKuWXmXjtipWblmny6awQ5kUfIBuFY8fHMF20JkJVGtDzgFE
Vbwc1ICg36bt6Y7KFZTLSI/WaCbGt6CHOlkEkA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5152)
`pragma protect data_block
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
t7shIbwV3R1UIEUCmltb1i6jJQkXSg==
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
