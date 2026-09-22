// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_writeback_mux_0_0/top_writeback_mux_0_0_sim_netlist.v}
// Design      : top_writeback_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_writeback_mux_0_0,writeback_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "writeback_mux,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_writeback_mux_0_0
   (alu,
    data,
    pc4,
    wb_sel,
    writeback);
  input [31:0]alu;
  input [31:0]data;
  input [31:0]pc4;
  input [1:0]wb_sel;
  output [31:0]writeback;

  wire [31:0]alu;
  wire [31:0]data;
  wire [31:0]pc4;
  wire [1:0]wb_sel;
  wire [31:0]writeback;

  top_writeback_mux_0_0_writeback_mux U0
       (.alu(alu),
        .data(data),
        .pc4(pc4),
        .wb_sel(wb_sel),
        .writeback(writeback));
endmodule

(* ORIG_REF_NAME = "writeback_mux" *) 
module top_writeback_mux_0_0_writeback_mux
   (writeback,
    data,
    alu,
    pc4,
    wb_sel);
  output [31:0]writeback;
  input [31:0]data;
  input [31:0]alu;
  input [31:0]pc4;
  input [1:0]wb_sel;

  wire [31:0]alu;
  wire [31:0]data;
  wire [31:0]pc4;
  wire [1:0]wb_sel;
  wire [31:0]writeback;

  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[0]_INST_0 
       (.I0(data[0]),
        .I1(alu[0]),
        .I2(pc4[0]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[0]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[10]_INST_0 
       (.I0(data[10]),
        .I1(alu[10]),
        .I2(pc4[10]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[10]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[11]_INST_0 
       (.I0(data[11]),
        .I1(alu[11]),
        .I2(pc4[11]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[11]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[12]_INST_0 
       (.I0(data[12]),
        .I1(alu[12]),
        .I2(pc4[12]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[12]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[13]_INST_0 
       (.I0(data[13]),
        .I1(alu[13]),
        .I2(pc4[13]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[13]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[14]_INST_0 
       (.I0(data[14]),
        .I1(alu[14]),
        .I2(pc4[14]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[14]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[15]_INST_0 
       (.I0(data[15]),
        .I1(alu[15]),
        .I2(pc4[15]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[15]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[16]_INST_0 
       (.I0(data[16]),
        .I1(alu[16]),
        .I2(pc4[16]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[16]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[17]_INST_0 
       (.I0(data[17]),
        .I1(alu[17]),
        .I2(pc4[17]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[17]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[18]_INST_0 
       (.I0(data[18]),
        .I1(alu[18]),
        .I2(pc4[18]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[18]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[19]_INST_0 
       (.I0(data[19]),
        .I1(alu[19]),
        .I2(pc4[19]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[19]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[1]_INST_0 
       (.I0(data[1]),
        .I1(alu[1]),
        .I2(pc4[1]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[1]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[20]_INST_0 
       (.I0(data[20]),
        .I1(alu[20]),
        .I2(pc4[20]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[20]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[21]_INST_0 
       (.I0(data[21]),
        .I1(alu[21]),
        .I2(pc4[21]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[21]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[22]_INST_0 
       (.I0(data[22]),
        .I1(alu[22]),
        .I2(pc4[22]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[22]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[23]_INST_0 
       (.I0(data[23]),
        .I1(alu[23]),
        .I2(pc4[23]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[23]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[24]_INST_0 
       (.I0(data[24]),
        .I1(alu[24]),
        .I2(pc4[24]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[24]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[25]_INST_0 
       (.I0(data[25]),
        .I1(alu[25]),
        .I2(pc4[25]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[25]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[26]_INST_0 
       (.I0(data[26]),
        .I1(alu[26]),
        .I2(pc4[26]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[26]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[27]_INST_0 
       (.I0(data[27]),
        .I1(alu[27]),
        .I2(pc4[27]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[27]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[28]_INST_0 
       (.I0(data[28]),
        .I1(alu[28]),
        .I2(pc4[28]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[28]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[29]_INST_0 
       (.I0(data[29]),
        .I1(alu[29]),
        .I2(pc4[29]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[29]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[2]_INST_0 
       (.I0(data[2]),
        .I1(alu[2]),
        .I2(pc4[2]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[2]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[30]_INST_0 
       (.I0(data[30]),
        .I1(alu[30]),
        .I2(pc4[30]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[30]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[31]_INST_0 
       (.I0(data[31]),
        .I1(alu[31]),
        .I2(pc4[31]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[31]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[3]_INST_0 
       (.I0(data[3]),
        .I1(alu[3]),
        .I2(pc4[3]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[3]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[4]_INST_0 
       (.I0(data[4]),
        .I1(alu[4]),
        .I2(pc4[4]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[4]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[5]_INST_0 
       (.I0(data[5]),
        .I1(alu[5]),
        .I2(pc4[5]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[5]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[6]_INST_0 
       (.I0(data[6]),
        .I1(alu[6]),
        .I2(pc4[6]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[6]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[7]_INST_0 
       (.I0(data[7]),
        .I1(alu[7]),
        .I2(pc4[7]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[7]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[8]_INST_0 
       (.I0(data[8]),
        .I1(alu[8]),
        .I2(pc4[8]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[8]));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    \writeback[9]_INST_0 
       (.I0(data[9]),
        .I1(alu[9]),
        .I2(pc4[9]),
        .I3(wb_sel[0]),
        .I4(wb_sel[1]),
        .O(writeback[9]));
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
