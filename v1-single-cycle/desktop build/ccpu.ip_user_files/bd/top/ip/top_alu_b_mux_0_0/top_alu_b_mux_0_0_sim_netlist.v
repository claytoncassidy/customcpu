// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_b_mux_0_0/top_alu_b_mux_0_0_sim_netlist.v}
// Design      : top_alu_b_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_alu_b_mux_0_0,alu_b_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "alu_b_mux,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_alu_b_mux_0_0
   (data2,
    immediate,
    alu_b_sel,
    alu_b);
  input [31:0]data2;
  input [31:0]immediate;
  input alu_b_sel;
  output [31:0]alu_b;

  wire [31:0]alu_b;
  wire alu_b_sel;
  wire [31:0]data2;
  wire [31:0]immediate;

  top_alu_b_mux_0_0_alu_b_mux U0
       (.alu_b(alu_b),
        .alu_b_sel(alu_b_sel),
        .data2(data2),
        .immediate(immediate));
endmodule

(* ORIG_REF_NAME = "alu_b_mux" *) 
module top_alu_b_mux_0_0_alu_b_mux
   (alu_b,
    immediate,
    data2,
    alu_b_sel);
  output [31:0]alu_b;
  input [31:0]immediate;
  input [31:0]data2;
  input alu_b_sel;

  wire [31:0]alu_b;
  wire alu_b_sel;
  wire [31:0]data2;
  wire [31:0]immediate;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[0]_INST_0 
       (.I0(immediate[0]),
        .I1(data2[0]),
        .I2(alu_b_sel),
        .O(alu_b[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[10]_INST_0 
       (.I0(immediate[10]),
        .I1(data2[10]),
        .I2(alu_b_sel),
        .O(alu_b[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[11]_INST_0 
       (.I0(immediate[11]),
        .I1(data2[11]),
        .I2(alu_b_sel),
        .O(alu_b[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[12]_INST_0 
       (.I0(immediate[12]),
        .I1(data2[12]),
        .I2(alu_b_sel),
        .O(alu_b[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[13]_INST_0 
       (.I0(immediate[13]),
        .I1(data2[13]),
        .I2(alu_b_sel),
        .O(alu_b[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[14]_INST_0 
       (.I0(immediate[14]),
        .I1(data2[14]),
        .I2(alu_b_sel),
        .O(alu_b[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[15]_INST_0 
       (.I0(immediate[15]),
        .I1(data2[15]),
        .I2(alu_b_sel),
        .O(alu_b[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[16]_INST_0 
       (.I0(immediate[16]),
        .I1(data2[16]),
        .I2(alu_b_sel),
        .O(alu_b[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[17]_INST_0 
       (.I0(immediate[17]),
        .I1(data2[17]),
        .I2(alu_b_sel),
        .O(alu_b[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[18]_INST_0 
       (.I0(immediate[18]),
        .I1(data2[18]),
        .I2(alu_b_sel),
        .O(alu_b[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[19]_INST_0 
       (.I0(immediate[19]),
        .I1(data2[19]),
        .I2(alu_b_sel),
        .O(alu_b[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[1]_INST_0 
       (.I0(immediate[1]),
        .I1(data2[1]),
        .I2(alu_b_sel),
        .O(alu_b[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[20]_INST_0 
       (.I0(immediate[20]),
        .I1(data2[20]),
        .I2(alu_b_sel),
        .O(alu_b[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[21]_INST_0 
       (.I0(immediate[21]),
        .I1(data2[21]),
        .I2(alu_b_sel),
        .O(alu_b[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[22]_INST_0 
       (.I0(immediate[22]),
        .I1(data2[22]),
        .I2(alu_b_sel),
        .O(alu_b[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[23]_INST_0 
       (.I0(immediate[23]),
        .I1(data2[23]),
        .I2(alu_b_sel),
        .O(alu_b[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[24]_INST_0 
       (.I0(immediate[24]),
        .I1(data2[24]),
        .I2(alu_b_sel),
        .O(alu_b[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[25]_INST_0 
       (.I0(immediate[25]),
        .I1(data2[25]),
        .I2(alu_b_sel),
        .O(alu_b[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[26]_INST_0 
       (.I0(immediate[26]),
        .I1(data2[26]),
        .I2(alu_b_sel),
        .O(alu_b[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[27]_INST_0 
       (.I0(immediate[27]),
        .I1(data2[27]),
        .I2(alu_b_sel),
        .O(alu_b[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[28]_INST_0 
       (.I0(immediate[28]),
        .I1(data2[28]),
        .I2(alu_b_sel),
        .O(alu_b[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[29]_INST_0 
       (.I0(immediate[29]),
        .I1(data2[29]),
        .I2(alu_b_sel),
        .O(alu_b[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[2]_INST_0 
       (.I0(immediate[2]),
        .I1(data2[2]),
        .I2(alu_b_sel),
        .O(alu_b[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[30]_INST_0 
       (.I0(immediate[30]),
        .I1(data2[30]),
        .I2(alu_b_sel),
        .O(alu_b[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[31]_INST_0 
       (.I0(immediate[31]),
        .I1(data2[31]),
        .I2(alu_b_sel),
        .O(alu_b[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[3]_INST_0 
       (.I0(immediate[3]),
        .I1(data2[3]),
        .I2(alu_b_sel),
        .O(alu_b[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[4]_INST_0 
       (.I0(immediate[4]),
        .I1(data2[4]),
        .I2(alu_b_sel),
        .O(alu_b[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[5]_INST_0 
       (.I0(immediate[5]),
        .I1(data2[5]),
        .I2(alu_b_sel),
        .O(alu_b[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[6]_INST_0 
       (.I0(immediate[6]),
        .I1(data2[6]),
        .I2(alu_b_sel),
        .O(alu_b[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[7]_INST_0 
       (.I0(immediate[7]),
        .I1(data2[7]),
        .I2(alu_b_sel),
        .O(alu_b[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[8]_INST_0 
       (.I0(immediate[8]),
        .I1(data2[8]),
        .I2(alu_b_sel),
        .O(alu_b[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \alu_b[9]_INST_0 
       (.I0(immediate[9]),
        .I1(data2[9]),
        .I2(alu_b_sel),
        .O(alu_b[9]));
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
