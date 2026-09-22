// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_pc_src_mux_0_0/top_pc_src_mux_0_0_sim_netlist.v}
// Design      : top_pc_src_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_pc_src_mux_0_0,pc_src_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pc_src_mux,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_pc_src_mux_0_0
   (pc4,
    branch,
    jalr,
    pc_src_sel,
    pc_src);
  input [31:0]pc4;
  input [31:0]branch;
  input [31:0]jalr;
  input [1:0]pc_src_sel;
  output [31:0]pc_src;

  wire [31:0]branch;
  wire [31:0]jalr;
  wire [31:0]pc4;
  wire [31:0]pc_src;
  wire [1:0]pc_src_sel;

  top_pc_src_mux_0_0_pc_src_mux U0
       (.branch(branch),
        .jalr(jalr),
        .pc4(pc4),
        .pc_src(pc_src),
        .pc_src_sel(pc_src_sel));
endmodule

(* ORIG_REF_NAME = "pc_src_mux" *) 
module top_pc_src_mux_0_0_pc_src_mux
   (pc_src,
    branch,
    pc_src_sel,
    jalr,
    pc4);
  output [31:0]pc_src;
  input [31:0]branch;
  input [1:0]pc_src_sel;
  input [31:0]jalr;
  input [31:0]pc4;

  wire [31:0]branch;
  wire [31:0]jalr;
  wire [31:0]pc4;
  wire [31:0]pc_src;
  wire [1:0]pc_src_sel;

  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[0]_INST_0 
       (.I0(branch[0]),
        .I1(pc_src_sel[0]),
        .I2(jalr[0]),
        .I3(pc_src_sel[1]),
        .I4(pc4[0]),
        .O(pc_src[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[10]_INST_0 
       (.I0(branch[10]),
        .I1(pc_src_sel[0]),
        .I2(jalr[10]),
        .I3(pc_src_sel[1]),
        .I4(pc4[10]),
        .O(pc_src[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[11]_INST_0 
       (.I0(branch[11]),
        .I1(pc_src_sel[0]),
        .I2(jalr[11]),
        .I3(pc_src_sel[1]),
        .I4(pc4[11]),
        .O(pc_src[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[12]_INST_0 
       (.I0(branch[12]),
        .I1(pc_src_sel[0]),
        .I2(jalr[12]),
        .I3(pc_src_sel[1]),
        .I4(pc4[12]),
        .O(pc_src[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[13]_INST_0 
       (.I0(branch[13]),
        .I1(pc_src_sel[0]),
        .I2(jalr[13]),
        .I3(pc_src_sel[1]),
        .I4(pc4[13]),
        .O(pc_src[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[14]_INST_0 
       (.I0(branch[14]),
        .I1(pc_src_sel[0]),
        .I2(jalr[14]),
        .I3(pc_src_sel[1]),
        .I4(pc4[14]),
        .O(pc_src[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[15]_INST_0 
       (.I0(branch[15]),
        .I1(pc_src_sel[0]),
        .I2(jalr[15]),
        .I3(pc_src_sel[1]),
        .I4(pc4[15]),
        .O(pc_src[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[16]_INST_0 
       (.I0(branch[16]),
        .I1(pc_src_sel[0]),
        .I2(jalr[16]),
        .I3(pc_src_sel[1]),
        .I4(pc4[16]),
        .O(pc_src[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[17]_INST_0 
       (.I0(branch[17]),
        .I1(pc_src_sel[0]),
        .I2(jalr[17]),
        .I3(pc_src_sel[1]),
        .I4(pc4[17]),
        .O(pc_src[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[18]_INST_0 
       (.I0(branch[18]),
        .I1(pc_src_sel[0]),
        .I2(jalr[18]),
        .I3(pc_src_sel[1]),
        .I4(pc4[18]),
        .O(pc_src[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[19]_INST_0 
       (.I0(branch[19]),
        .I1(pc_src_sel[0]),
        .I2(jalr[19]),
        .I3(pc_src_sel[1]),
        .I4(pc4[19]),
        .O(pc_src[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[1]_INST_0 
       (.I0(branch[1]),
        .I1(pc_src_sel[0]),
        .I2(jalr[1]),
        .I3(pc_src_sel[1]),
        .I4(pc4[1]),
        .O(pc_src[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[20]_INST_0 
       (.I0(branch[20]),
        .I1(pc_src_sel[0]),
        .I2(jalr[20]),
        .I3(pc_src_sel[1]),
        .I4(pc4[20]),
        .O(pc_src[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[21]_INST_0 
       (.I0(branch[21]),
        .I1(pc_src_sel[0]),
        .I2(jalr[21]),
        .I3(pc_src_sel[1]),
        .I4(pc4[21]),
        .O(pc_src[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[22]_INST_0 
       (.I0(branch[22]),
        .I1(pc_src_sel[0]),
        .I2(jalr[22]),
        .I3(pc_src_sel[1]),
        .I4(pc4[22]),
        .O(pc_src[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[23]_INST_0 
       (.I0(branch[23]),
        .I1(pc_src_sel[0]),
        .I2(jalr[23]),
        .I3(pc_src_sel[1]),
        .I4(pc4[23]),
        .O(pc_src[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[24]_INST_0 
       (.I0(branch[24]),
        .I1(pc_src_sel[0]),
        .I2(jalr[24]),
        .I3(pc_src_sel[1]),
        .I4(pc4[24]),
        .O(pc_src[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[25]_INST_0 
       (.I0(branch[25]),
        .I1(pc_src_sel[0]),
        .I2(jalr[25]),
        .I3(pc_src_sel[1]),
        .I4(pc4[25]),
        .O(pc_src[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[26]_INST_0 
       (.I0(branch[26]),
        .I1(pc_src_sel[0]),
        .I2(jalr[26]),
        .I3(pc_src_sel[1]),
        .I4(pc4[26]),
        .O(pc_src[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[27]_INST_0 
       (.I0(branch[27]),
        .I1(pc_src_sel[0]),
        .I2(jalr[27]),
        .I3(pc_src_sel[1]),
        .I4(pc4[27]),
        .O(pc_src[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[28]_INST_0 
       (.I0(branch[28]),
        .I1(pc_src_sel[0]),
        .I2(jalr[28]),
        .I3(pc_src_sel[1]),
        .I4(pc4[28]),
        .O(pc_src[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[29]_INST_0 
       (.I0(branch[29]),
        .I1(pc_src_sel[0]),
        .I2(jalr[29]),
        .I3(pc_src_sel[1]),
        .I4(pc4[29]),
        .O(pc_src[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[2]_INST_0 
       (.I0(branch[2]),
        .I1(pc_src_sel[0]),
        .I2(jalr[2]),
        .I3(pc_src_sel[1]),
        .I4(pc4[2]),
        .O(pc_src[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[30]_INST_0 
       (.I0(branch[30]),
        .I1(pc_src_sel[0]),
        .I2(jalr[30]),
        .I3(pc_src_sel[1]),
        .I4(pc4[30]),
        .O(pc_src[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[31]_INST_0 
       (.I0(branch[31]),
        .I1(pc_src_sel[0]),
        .I2(jalr[31]),
        .I3(pc_src_sel[1]),
        .I4(pc4[31]),
        .O(pc_src[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[3]_INST_0 
       (.I0(branch[3]),
        .I1(pc_src_sel[0]),
        .I2(jalr[3]),
        .I3(pc_src_sel[1]),
        .I4(pc4[3]),
        .O(pc_src[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[4]_INST_0 
       (.I0(branch[4]),
        .I1(pc_src_sel[0]),
        .I2(jalr[4]),
        .I3(pc_src_sel[1]),
        .I4(pc4[4]),
        .O(pc_src[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[5]_INST_0 
       (.I0(branch[5]),
        .I1(pc_src_sel[0]),
        .I2(jalr[5]),
        .I3(pc_src_sel[1]),
        .I4(pc4[5]),
        .O(pc_src[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[6]_INST_0 
       (.I0(branch[6]),
        .I1(pc_src_sel[0]),
        .I2(jalr[6]),
        .I3(pc_src_sel[1]),
        .I4(pc4[6]),
        .O(pc_src[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[7]_INST_0 
       (.I0(branch[7]),
        .I1(pc_src_sel[0]),
        .I2(jalr[7]),
        .I3(pc_src_sel[1]),
        .I4(pc4[7]),
        .O(pc_src[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[8]_INST_0 
       (.I0(branch[8]),
        .I1(pc_src_sel[0]),
        .I2(jalr[8]),
        .I3(pc_src_sel[1]),
        .I4(pc4[8]),
        .O(pc_src[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pc_src[9]_INST_0 
       (.I0(branch[9]),
        .I1(pc_src_sel[0]),
        .I2(jalr[9]),
        .I3(pc_src_sel[1]),
        .I4(pc4[9]),
        .O(pc_src[9]));
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
