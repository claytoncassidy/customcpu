// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_sign_extender_0_0/top_sign_extender_0_0_sim_netlist.v}
// Design      : top_sign_extender_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_sign_extender_0_0,sign_extender,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sign_extender,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_sign_extender_0_0
   (instruction,
    extended);
  input [31:0]instruction;
  output [31:0]extended;

  wire [31:0]extended;
  wire [31:0]instruction;

  top_sign_extender_0_0_sign_extender U0
       (.extended(extended),
        .instruction(instruction));
endmodule

(* ORIG_REF_NAME = "sign_extender" *) 
module top_sign_extender_0_0_sign_extender
   (extended,
    instruction);
  output [31:0]extended;
  input [31:0]instruction;

  wire [31:0]extended;
  wire \extended[11]_INST_0_i_1_n_0 ;
  wire \extended[30]_INST_0_i_1_n_0 ;
  wire \extended[30]_INST_0_i_2_n_0 ;
  wire \extended[31]_INST_0_i_1_n_0 ;
  wire \extended[31]_INST_0_i_2_n_0 ;
  wire \extended[31]_INST_0_i_3_n_0 ;
  wire [31:0]instruction;

  LUT6 #(
    .INIT(64'h0000A80800000000)) 
    \extended[0]_INST_0 
       (.I0(\extended[31]_INST_0_i_1_n_0 ),
        .I1(instruction[20]),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(instruction[7]),
        .I4(\extended[30]_INST_0_i_1_n_0 ),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[0]));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \extended[10]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(\extended[31]_INST_0_i_1_n_0 ),
        .I3(instruction[30]),
        .I4(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[10]));
  LUT6 #(
    .INIT(64'h000A000A0FCA00CA)) 
    \extended[11]_INST_0 
       (.I0(instruction[31]),
        .I1(instruction[7]),
        .I2(\extended[30]_INST_0_i_1_n_0 ),
        .I3(\extended[11]_INST_0_i_1_n_0 ),
        .I4(instruction[20]),
        .I5(\extended[30]_INST_0_i_2_n_0 ),
        .O(extended[11]));
  LUT6 #(
    .INIT(64'hFFDFFFDFDDFFFDDD)) 
    \extended[11]_INST_0_i_1 
       (.I0(\extended[31]_INST_0_i_3_n_0 ),
        .I1(instruction[3]),
        .I2(instruction[5]),
        .I3(instruction[4]),
        .I4(instruction[2]),
        .I5(instruction[6]),
        .O(\extended[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[12]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[12]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[12]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[13]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[13]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[13]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[14]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[14]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[14]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[15]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[15]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[15]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[16]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[16]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[16]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[17]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[17]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[17]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[18]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[18]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[18]));
  LUT6 #(
    .INIT(64'hEA002A0000FF0000)) 
    \extended[19]_INST_0 
       (.I0(instruction[31]),
        .I1(\extended[30]_INST_0_i_1_n_0 ),
        .I2(\extended[30]_INST_0_i_2_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[19]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[19]));
  LUT6 #(
    .INIT(64'h4D00480000FF0000)) 
    \extended[1]_INST_0 
       (.I0(\extended[30]_INST_0_i_2_n_0 ),
        .I1(instruction[8]),
        .I2(\extended[30]_INST_0_i_1_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[21]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[1]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[20]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[20]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[20]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[21]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[21]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[21]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[22]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[22]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[22]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[23]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[23]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[23]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[24]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[24]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[24]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[25]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[25]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[25]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[26]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[26]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[26]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[27]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[27]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[27]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[28]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[28]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[28]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[29]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[29]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[29]));
  LUT6 #(
    .INIT(64'h4D00480000FF0000)) 
    \extended[2]_INST_0 
       (.I0(\extended[30]_INST_0_i_2_n_0 ),
        .I1(instruction[9]),
        .I2(\extended[30]_INST_0_i_1_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[22]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[2]));
  LUT6 #(
    .INIT(64'hF700800000FF0000)) 
    \extended[30]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(instruction[30]),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[31]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[30]));
  LUT6 #(
    .INIT(64'h00000A0000000080)) 
    \extended[30]_INST_0_i_1 
       (.I0(\extended[31]_INST_0_i_3_n_0 ),
        .I1(instruction[5]),
        .I2(instruction[6]),
        .I3(instruction[4]),
        .I4(instruction[3]),
        .I5(instruction[2]),
        .O(\extended[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB3BFFFFFB)) 
    \extended[30]_INST_0_i_2 
       (.I0(instruction[3]),
        .I1(\extended[31]_INST_0_i_3_n_0 ),
        .I2(instruction[2]),
        .I3(instruction[5]),
        .I4(instruction[6]),
        .I5(instruction[4]),
        .O(\extended[30]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h84)) 
    \extended[31]_INST_0 
       (.I0(\extended[31]_INST_0_i_1_n_0 ),
        .I1(instruction[31]),
        .I2(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[31]));
  LUT6 #(
    .INIT(64'h00004B5100000000)) 
    \extended[31]_INST_0_i_1 
       (.I0(instruction[6]),
        .I1(instruction[2]),
        .I2(instruction[4]),
        .I3(instruction[5]),
        .I4(instruction[3]),
        .I5(\extended[31]_INST_0_i_3_n_0 ),
        .O(\extended[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \extended[31]_INST_0_i_2 
       (.I0(instruction[3]),
        .I1(\extended[31]_INST_0_i_3_n_0 ),
        .I2(instruction[2]),
        .I3(instruction[5]),
        .I4(instruction[6]),
        .I5(instruction[4]),
        .O(\extended[31]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \extended[31]_INST_0_i_3 
       (.I0(instruction[1]),
        .I1(instruction[0]),
        .O(\extended[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4D00480000FF0000)) 
    \extended[3]_INST_0 
       (.I0(\extended[30]_INST_0_i_2_n_0 ),
        .I1(instruction[10]),
        .I2(\extended[30]_INST_0_i_1_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[23]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[3]));
  LUT6 #(
    .INIT(64'h4D00480000FF0000)) 
    \extended[4]_INST_0 
       (.I0(\extended[30]_INST_0_i_2_n_0 ),
        .I1(instruction[11]),
        .I2(\extended[30]_INST_0_i_1_n_0 ),
        .I3(\extended[31]_INST_0_i_1_n_0 ),
        .I4(instruction[24]),
        .I5(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[4]));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \extended[5]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(\extended[31]_INST_0_i_1_n_0 ),
        .I3(instruction[25]),
        .I4(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[5]));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \extended[6]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(\extended[31]_INST_0_i_1_n_0 ),
        .I3(instruction[26]),
        .I4(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[6]));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \extended[7]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(\extended[31]_INST_0_i_1_n_0 ),
        .I3(instruction[27]),
        .I4(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[7]));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \extended[8]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(\extended[31]_INST_0_i_1_n_0 ),
        .I3(instruction[28]),
        .I4(\extended[31]_INST_0_i_2_n_0 ),
        .O(extended[8]));
  LUT5 #(
    .INIT(32'h70000F00)) 
    \extended[9]_INST_0 
       (.I0(\extended[30]_INST_0_i_1_n_0 ),
        .I1(\extended[30]_INST_0_i_2_n_0 ),
        .I2(\extended[31]_INST_0_i_1_n_0 ),
        .I3(instruction[29]),
        .I4(\extended[31]_INST_0_i_2_n_0 ),
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
