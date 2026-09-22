// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:41 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_load_extender_0_0/top_load_extender_0_0_sim_netlist.v}
// Design      : top_load_extender_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_load_extender_0_0,load_extender,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "load_extender,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_load_extender_0_0
   (raw_data,
    mem_size,
    load_unsigned,
    extended);
  input [31:0]raw_data;
  input [1:0]mem_size;
  input load_unsigned;
  output [31:0]extended;

  wire [31:0]extended;
  wire load_unsigned;
  wire [1:0]mem_size;
  wire [31:0]raw_data;

  top_load_extender_0_0_load_extender U0
       (.extended(extended),
        .load_unsigned(load_unsigned),
        .mem_size(mem_size),
        .raw_data(raw_data));
endmodule

(* ORIG_REF_NAME = "load_extender" *) 
module top_load_extender_0_0_load_extender
   (extended,
    mem_size,
    raw_data,
    load_unsigned);
  output [31:0]extended;
  input [1:0]mem_size;
  input [31:0]raw_data;
  input load_unsigned;

  wire [31:0]extended;
  wire load_unsigned;
  wire [1:0]mem_size;
  wire [31:0]raw_data;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[0]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[0]),
        .O(extended[0]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[10]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[10]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[10]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[11]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[11]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[11]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[12]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[12]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[12]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[13]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[13]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[13]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[14]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[14]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[14]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[15]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[15]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[15]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[16]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[16]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[16]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[17]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[17]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[17]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[18]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[18]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[18]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[19]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[19]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[1]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[1]),
        .O(extended[1]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[20]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[20]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[20]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[21]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[21]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[21]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[22]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[22]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[22]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[23]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[23]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[23]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[24]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[24]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[24]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[25]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[25]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[25]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[26]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[26]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[26]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[27]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[27]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[27]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[28]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[28]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[28]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[29]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[29]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[2]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[2]),
        .O(extended[2]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[30]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[30]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[30]));
  LUT6 #(
    .INIT(64'h3000300030BB3088)) 
    \extended[31]_INST_0 
       (.I0(raw_data[15]),
        .I1(mem_size[0]),
        .I2(raw_data[31]),
        .I3(mem_size[1]),
        .I4(raw_data[7]),
        .I5(load_unsigned),
        .O(extended[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[3]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[3]),
        .O(extended[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[4]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[4]),
        .O(extended[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[5]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[5]),
        .O(extended[5]));
  LUT3 #(
    .INIT(8'h70)) 
    \extended[6]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[6]),
        .O(extended[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \extended[7]_INST_0 
       (.I0(mem_size[1]),
        .I1(mem_size[0]),
        .I2(raw_data[7]),
        .O(extended[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[8]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[8]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[8]));
  LUT5 #(
    .INIT(32'h48484D48)) 
    \extended[9]_INST_0 
       (.I0(mem_size[0]),
        .I1(raw_data[9]),
        .I2(mem_size[1]),
        .I3(raw_data[7]),
        .I4(load_unsigned),
        .O(extended[9]));
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
