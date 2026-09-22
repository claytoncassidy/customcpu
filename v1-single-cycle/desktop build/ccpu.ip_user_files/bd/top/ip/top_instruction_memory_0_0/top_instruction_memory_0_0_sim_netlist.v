// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 23:11:00 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_instruction_memory_0_0/top_instruction_memory_0_0_sim_netlist.v}
// Design      : top_instruction_memory_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_instruction_memory_0_0,instruction_memory,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "instruction_memory,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_instruction_memory_0_0
   (address,
    instruction);
  input [31:0]address;
  output [31:0]instruction;

  wire \<const0> ;
  wire [31:0]address;
  wire [31:1]\^instruction ;

  assign instruction[31] = \^instruction [31];
  assign instruction[30] = \^instruction [31];
  assign instruction[29] = \^instruction [31];
  assign instruction[28] = \^instruction [28];
  assign instruction[27] = \^instruction [31];
  assign instruction[26:25] = \^instruction [26:25];
  assign instruction[24] = \^instruction [31];
  assign instruction[23:20] = \^instruction [23:20];
  assign instruction[19] = \<const0> ;
  assign instruction[18] = \^instruction [18];
  assign instruction[17] = \^instruction [16];
  assign instruction[16:1] = \^instruction [16:1];
  assign instruction[0] = \^instruction [1];
  GND GND
       (.G(\<const0> ));
  top_instruction_memory_0_0_instruction_memory U0
       (.address(address[9:2]),
        .instruction({\^instruction [31],\^instruction [28],\^instruction [26:25],\^instruction [23:20],\^instruction [18],\^instruction [16:1]}));
endmodule

(* ORIG_REF_NAME = "instruction_memory" *) 
module top_instruction_memory_0_0_instruction_memory
   (instruction,
    address);
  output [24:0]instruction;
  input [7:0]address;

  wire [7:0]address;
  wire [24:0]instruction;
  wire \instruction[24]_INST_0_i_1_n_0 ;

  LUT5 #(
    .INIT(32'h02AAAAAA)) 
    \instruction[0]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[4]),
        .I4(address[3]),
        .O(instruction[0]));
  LUT6 #(
    .INIT(64'h4048484848004848)) 
    \instruction[10]_INST_0 
       (.I0(address[4]),
        .I1(\instruction[24]_INST_0_i_1_n_0 ),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[0]),
        .I5(address[1]),
        .O(instruction[9]));
  LUT6 #(
    .INIT(64'h0044800000000000)) 
    \instruction[11]_INST_0 
       (.I0(address[1]),
        .I1(address[4]),
        .I2(address[0]),
        .I3(address[2]),
        .I4(address[3]),
        .I5(\instruction[24]_INST_0_i_1_n_0 ),
        .O(instruction[10]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \instruction[12]_INST_0 
       (.I0(address[4]),
        .I1(address[6]),
        .I2(address[7]),
        .I3(address[5]),
        .I4(address[2]),
        .I5(address[3]),
        .O(instruction[11]));
  LUT6 #(
    .INIT(64'h0002000000000200)) 
    \instruction[13]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[1]),
        .I5(address[0]),
        .O(instruction[12]));
  LUT6 #(
    .INIT(64'h0000000000600000)) 
    \instruction[14]_INST_0 
       (.I0(address[0]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(\instruction[24]_INST_0_i_1_n_0 ),
        .I5(address[4]),
        .O(instruction[13]));
  LUT6 #(
    .INIT(64'h0080800000000008)) 
    \instruction[15]_INST_0 
       (.I0(address[1]),
        .I1(\instruction[24]_INST_0_i_1_n_0 ),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[0]),
        .O(instruction[14]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \instruction[16]_INST_0 
       (.I0(address[2]),
        .I1(address[1]),
        .I2(\instruction[24]_INST_0_i_1_n_0 ),
        .I3(address[0]),
        .I4(address[3]),
        .I5(address[4]),
        .O(instruction[15]));
  LUT6 #(
    .INIT(64'h0080000000000800)) 
    \instruction[18]_INST_0 
       (.I0(address[1]),
        .I1(\instruction[24]_INST_0_i_1_n_0 ),
        .I2(address[4]),
        .I3(address[3]),
        .I4(address[0]),
        .I5(address[2]),
        .O(instruction[16]));
  LUT6 #(
    .INIT(64'h000802280222208A)) 
    \instruction[20]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[0]),
        .I2(address[1]),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[2]),
        .O(instruction[17]));
  LUT6 #(
    .INIT(64'h202228000202A208)) 
    \instruction[21]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[4]),
        .I2(address[2]),
        .I3(address[0]),
        .I4(address[1]),
        .I5(address[3]),
        .O(instruction[18]));
  LUT6 #(
    .INIT(64'h0202000032650000)) 
    \instruction[22]_INST_0 
       (.I0(address[2]),
        .I1(address[3]),
        .I2(address[4]),
        .I3(address[1]),
        .I4(\instruction[24]_INST_0_i_1_n_0 ),
        .I5(address[0]),
        .O(instruction[19]));
  LUT6 #(
    .INIT(64'h0200008800A8A888)) 
    \instruction[23]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[4]),
        .I2(address[0]),
        .I3(address[3]),
        .I4(address[2]),
        .I5(address[1]),
        .O(instruction[20]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \instruction[24]_INST_0 
       (.I0(address[2]),
        .I1(address[0]),
        .I2(address[3]),
        .I3(address[4]),
        .I4(\instruction[24]_INST_0_i_1_n_0 ),
        .I5(address[1]),
        .O(instruction[24]));
  LUT3 #(
    .INIT(8'h01)) 
    \instruction[24]_INST_0_i_1 
       (.I0(address[6]),
        .I1(address[7]),
        .I2(address[5]),
        .O(\instruction[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A008028002008)) 
    \instruction[25]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[4]),
        .I2(address[3]),
        .I3(address[1]),
        .I4(address[2]),
        .I5(address[0]),
        .O(instruction[21]));
  LUT6 #(
    .INIT(64'h0002200000A82000)) 
    \instruction[26]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[0]),
        .I4(address[4]),
        .I5(address[3]),
        .O(instruction[22]));
  LUT6 #(
    .INIT(64'h0000040000400000)) 
    \instruction[28]_INST_0 
       (.I0(address[4]),
        .I1(\instruction[24]_INST_0_i_1_n_0 ),
        .I2(address[0]),
        .I3(address[3]),
        .I4(address[2]),
        .I5(address[1]),
        .O(instruction[23]));
  LUT6 #(
    .INIT(64'h00088A0000080000)) 
    \instruction[2]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[1]),
        .I2(address[2]),
        .I3(address[4]),
        .I4(address[3]),
        .I5(address[0]),
        .O(instruction[1]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \instruction[3]_INST_0 
       (.I0(address[2]),
        .I1(address[3]),
        .I2(address[4]),
        .I3(\instruction[24]_INST_0_i_1_n_0 ),
        .I4(address[0]),
        .O(instruction[2]));
  LUT6 #(
    .INIT(64'h02220A8020822A8A)) 
    \instruction[4]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[4]),
        .I4(address[0]),
        .I5(address[2]),
        .O(instruction[3]));
  LUT6 #(
    .INIT(64'h0D000000847C0000)) 
    \instruction[5]_INST_0 
       (.I0(address[2]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[0]),
        .I4(\instruction[24]_INST_0_i_1_n_0 ),
        .I5(address[4]),
        .O(instruction[4]));
  LUT6 #(
    .INIT(64'h4088000800004000)) 
    \instruction[6]_INST_0 
       (.I0(address[4]),
        .I1(\instruction[24]_INST_0_i_1_n_0 ),
        .I2(address[2]),
        .I3(address[3]),
        .I4(address[1]),
        .I5(address[0]),
        .O(instruction[5]));
  LUT6 #(
    .INIT(64'h00341F0300000000)) 
    \instruction[7]_INST_0 
       (.I0(address[1]),
        .I1(address[2]),
        .I2(address[3]),
        .I3(address[4]),
        .I4(address[0]),
        .I5(\instruction[24]_INST_0_i_1_n_0 ),
        .O(instruction[6]));
  LUT6 #(
    .INIT(64'h1631480E00000000)) 
    \instruction[8]_INST_0 
       (.I0(address[4]),
        .I1(address[1]),
        .I2(address[3]),
        .I3(address[2]),
        .I4(address[0]),
        .I5(\instruction[24]_INST_0_i_1_n_0 ),
        .O(instruction[7]));
  LUT6 #(
    .INIT(64'h002A80AA00802000)) 
    \instruction[9]_INST_0 
       (.I0(\instruction[24]_INST_0_i_1_n_0 ),
        .I1(address[1]),
        .I2(address[0]),
        .I3(address[3]),
        .I4(address[4]),
        .I5(address[2]),
        .O(instruction[8]));
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
