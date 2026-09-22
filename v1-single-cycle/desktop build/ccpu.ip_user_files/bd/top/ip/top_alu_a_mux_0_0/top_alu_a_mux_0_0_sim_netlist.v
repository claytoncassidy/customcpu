// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_a_mux_0_0/top_alu_a_mux_0_0_sim_netlist.v}
// Design      : top_alu_a_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_alu_a_mux_0_0,alu_a_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "alu_a_mux,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_alu_a_mux_0_0
   (data1,
    pc,
    alu_a_sel,
    alu_a);
  input [31:0]data1;
  input [31:0]pc;
  input [1:0]alu_a_sel;
  output [31:0]alu_a;

  wire [31:0]alu_a;
  wire [1:0]alu_a_sel;
  wire [31:0]data1;
  wire [31:0]pc;

  top_alu_a_mux_0_0_alu_a_mux U0
       (.alu_a(alu_a),
        .alu_a_sel(alu_a_sel),
        .data1(data1),
        .pc(pc));
endmodule

(* ORIG_REF_NAME = "alu_a_mux" *) 
module top_alu_a_mux_0_0_alu_a_mux
   (alu_a,
    alu_a_sel,
    data1,
    pc);
  output [31:0]alu_a;
  input [1:0]alu_a_sel;
  input [31:0]data1;
  input [31:0]pc;

  wire [31:0]alu_a;
  wire [1:0]alu_a_sel;
  wire [31:0]data1;
  wire [31:0]pc;

  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[0]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[0]),
        .I2(pc[0]),
        .I3(alu_a_sel[1]),
        .O(alu_a[0]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[10]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[10]),
        .I2(pc[10]),
        .I3(alu_a_sel[1]),
        .O(alu_a[10]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[11]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[11]),
        .I2(pc[11]),
        .I3(alu_a_sel[1]),
        .O(alu_a[11]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[12]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[12]),
        .I2(pc[12]),
        .I3(alu_a_sel[1]),
        .O(alu_a[12]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[13]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[13]),
        .I2(pc[13]),
        .I3(alu_a_sel[1]),
        .O(alu_a[13]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[14]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[14]),
        .I2(pc[14]),
        .I3(alu_a_sel[1]),
        .O(alu_a[14]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[15]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[15]),
        .I2(pc[15]),
        .I3(alu_a_sel[1]),
        .O(alu_a[15]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[16]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[16]),
        .I2(pc[16]),
        .I3(alu_a_sel[1]),
        .O(alu_a[16]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[17]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[17]),
        .I2(pc[17]),
        .I3(alu_a_sel[1]),
        .O(alu_a[17]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[18]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[18]),
        .I2(pc[18]),
        .I3(alu_a_sel[1]),
        .O(alu_a[18]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[19]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[19]),
        .I2(pc[19]),
        .I3(alu_a_sel[1]),
        .O(alu_a[19]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[1]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[1]),
        .I2(pc[1]),
        .I3(alu_a_sel[1]),
        .O(alu_a[1]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[20]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[20]),
        .I2(pc[20]),
        .I3(alu_a_sel[1]),
        .O(alu_a[20]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[21]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[21]),
        .I2(pc[21]),
        .I3(alu_a_sel[1]),
        .O(alu_a[21]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[22]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[22]),
        .I2(pc[22]),
        .I3(alu_a_sel[1]),
        .O(alu_a[22]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[23]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[23]),
        .I2(pc[23]),
        .I3(alu_a_sel[1]),
        .O(alu_a[23]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[24]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[24]),
        .I2(pc[24]),
        .I3(alu_a_sel[1]),
        .O(alu_a[24]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[25]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[25]),
        .I2(pc[25]),
        .I3(alu_a_sel[1]),
        .O(alu_a[25]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[26]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[26]),
        .I2(pc[26]),
        .I3(alu_a_sel[1]),
        .O(alu_a[26]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[27]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[27]),
        .I2(pc[27]),
        .I3(alu_a_sel[1]),
        .O(alu_a[27]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[28]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[28]),
        .I2(pc[28]),
        .I3(alu_a_sel[1]),
        .O(alu_a[28]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[29]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[29]),
        .I2(pc[29]),
        .I3(alu_a_sel[1]),
        .O(alu_a[29]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[2]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[2]),
        .I2(pc[2]),
        .I3(alu_a_sel[1]),
        .O(alu_a[2]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[30]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[30]),
        .I2(pc[30]),
        .I3(alu_a_sel[1]),
        .O(alu_a[30]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[31]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[31]),
        .I2(pc[31]),
        .I3(alu_a_sel[1]),
        .O(alu_a[31]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[3]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[3]),
        .I2(pc[3]),
        .I3(alu_a_sel[1]),
        .O(alu_a[3]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[4]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[4]),
        .I2(pc[4]),
        .I3(alu_a_sel[1]),
        .O(alu_a[4]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[5]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[5]),
        .I2(pc[5]),
        .I3(alu_a_sel[1]),
        .O(alu_a[5]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[6]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[6]),
        .I2(pc[6]),
        .I3(alu_a_sel[1]),
        .O(alu_a[6]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[7]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[7]),
        .I2(pc[7]),
        .I3(alu_a_sel[1]),
        .O(alu_a[7]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[8]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[8]),
        .I2(pc[8]),
        .I3(alu_a_sel[1]),
        .O(alu_a[8]));
  LUT4 #(
    .INIT(16'h00E4)) 
    \alu_a[9]_INST_0 
       (.I0(alu_a_sel[0]),
        .I1(data1[9]),
        .I2(pc[9]),
        .I3(alu_a_sel[1]),
        .O(alu_a[9]));
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
