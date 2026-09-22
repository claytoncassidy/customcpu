// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_control_unit_0_0/top_control_unit_0_0_sim_netlist.v}
// Design      : top_control_unit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_control_unit_0_0,control_unit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "control_unit,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_control_unit_0_0
   (instruction,
    alu_zero,
    reg_write,
    mem_write,
    alu_op,
    alu_a_sel,
    alu_b_sel,
    wb_sel,
    pc_src_sel,
    mem_size,
    load_unsigned);
  input [31:0]instruction;
  input alu_zero;
  output reg_write;
  output mem_write;
  output [3:0]alu_op;
  output [1:0]alu_a_sel;
  output alu_b_sel;
  output [1:0]wb_sel;
  output [1:0]pc_src_sel;
  output [1:0]mem_size;
  output load_unsigned;

  wire [1:0]alu_a_sel;
  wire alu_b_sel;
  wire [3:0]alu_op;
  wire \alu_op[0]_INST_0_i_1_n_0 ;
  wire \alu_op[0]_INST_0_i_2_n_0 ;
  wire \alu_op[1]_INST_0_i_1_n_0 ;
  wire \alu_op[1]_INST_0_i_2_n_0 ;
  wire \alu_op[3]_INST_0_i_1_n_0 ;
  wire alu_zero;
  wire [31:0]instruction;
  wire load_unsigned;
  wire load_unsigned_INST_0_i_1_n_0;
  wire [1:0]mem_size;
  wire mem_write;
  wire [1:0]pc_src_sel;
  wire \pc_src_sel[0]_INST_0_i_1_n_0 ;
  wire \pc_src_sel[0]_INST_0_i_2_n_0 ;
  wire reg_write;
  wire reg_write_INST_0_i_1_n_0;
  wire [1:0]wb_sel;

  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \alu_a_sel[0]_INST_0 
       (.I0(reg_write_INST_0_i_1_n_0),
        .I1(instruction[2]),
        .I2(instruction[4]),
        .I3(instruction[5]),
        .I4(instruction[6]),
        .I5(instruction[3]),
        .O(alu_a_sel[0]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \alu_a_sel[1]_INST_0 
       (.I0(reg_write_INST_0_i_1_n_0),
        .I1(instruction[2]),
        .I2(instruction[5]),
        .I3(instruction[4]),
        .I4(instruction[3]),
        .I5(instruction[6]),
        .O(alu_a_sel[1]));
  LUT6 #(
    .INIT(64'h0000000000003813)) 
    alu_b_sel_INST_0
       (.I0(instruction[5]),
        .I1(instruction[6]),
        .I2(instruction[4]),
        .I3(instruction[2]),
        .I4(instruction[3]),
        .I5(reg_write_INST_0_i_1_n_0),
        .O(alu_b_sel));
  LUT6 #(
    .INIT(64'h0000200000882088)) 
    \alu_op[0]_INST_0 
       (.I0(\alu_op[1]_INST_0_i_2_n_0 ),
        .I1(instruction[4]),
        .I2(instruction[5]),
        .I3(instruction[6]),
        .I4(\alu_op[0]_INST_0_i_1_n_0 ),
        .I5(\alu_op[0]_INST_0_i_2_n_0 ),
        .O(alu_op[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \alu_op[0]_INST_0_i_1 
       (.I0(instruction[14]),
        .I1(instruction[13]),
        .O(\alu_op[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF3000FF7)) 
    \alu_op[0]_INST_0_i_2 
       (.I0(instruction[5]),
        .I1(instruction[30]),
        .I2(instruction[13]),
        .I3(instruction[14]),
        .I4(instruction[12]),
        .O(\alu_op[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFE010E010E010E0)) 
    \alu_op[1]_INST_0 
       (.I0(instruction[13]),
        .I1(instruction[12]),
        .I2(\alu_op[3]_INST_0_i_1_n_0 ),
        .I3(instruction[14]),
        .I4(\alu_op[1]_INST_0_i_1_n_0 ),
        .I5(\alu_op[1]_INST_0_i_2_n_0 ),
        .O(alu_op[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \alu_op[1]_INST_0_i_1 
       (.I0(instruction[6]),
        .I1(instruction[5]),
        .I2(instruction[4]),
        .O(\alu_op[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \alu_op[1]_INST_0_i_2 
       (.I0(instruction[0]),
        .I1(instruction[1]),
        .I2(instruction[2]),
        .I3(instruction[3]),
        .O(\alu_op[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8828)) 
    \alu_op[2]_INST_0 
       (.I0(\alu_op[3]_INST_0_i_1_n_0 ),
        .I1(instruction[14]),
        .I2(instruction[12]),
        .I3(instruction[13]),
        .O(alu_op[2]));
  LUT4 #(
    .INIT(16'h0800)) 
    \alu_op[3]_INST_0 
       (.I0(\alu_op[3]_INST_0_i_1_n_0 ),
        .I1(instruction[12]),
        .I2(instruction[13]),
        .I3(instruction[14]),
        .O(alu_op[3]));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \alu_op[3]_INST_0_i_1 
       (.I0(instruction[3]),
        .I1(instruction[2]),
        .I2(instruction[1]),
        .I3(instruction[0]),
        .I4(instruction[4]),
        .I5(instruction[6]),
        .O(\alu_op[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    load_unsigned_INST_0
       (.I0(instruction[2]),
        .I1(instruction[6]),
        .I2(instruction[14]),
        .I3(instruction[4]),
        .I4(instruction[5]),
        .I5(load_unsigned_INST_0_i_1_n_0),
        .O(load_unsigned));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    load_unsigned_INST_0_i_1
       (.I0(instruction[3]),
        .I1(instruction[1]),
        .I2(instruction[0]),
        .O(load_unsigned_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \mem_size[0]_INST_0 
       (.I0(instruction[2]),
        .I1(instruction[6]),
        .I2(reg_write_INST_0_i_1_n_0),
        .I3(instruction[12]),
        .I4(instruction[4]),
        .I5(instruction[3]),
        .O(mem_size[0]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \mem_size[1]_INST_0 
       (.I0(instruction[2]),
        .I1(instruction[6]),
        .I2(reg_write_INST_0_i_1_n_0),
        .I3(instruction[13]),
        .I4(instruction[4]),
        .I5(instruction[3]),
        .O(mem_size[1]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    mem_write_INST_0
       (.I0(instruction[2]),
        .I1(instruction[6]),
        .I2(instruction[4]),
        .I3(instruction[5]),
        .I4(reg_write_INST_0_i_1_n_0),
        .I5(instruction[3]),
        .O(mem_write));
  LUT6 #(
    .INIT(64'h00F0000000100010)) 
    \pc_src_sel[0]_INST_0 
       (.I0(\pc_src_sel[0]_INST_0_i_1_n_0 ),
        .I1(\pc_src_sel[0]_INST_0_i_2_n_0 ),
        .I2(\alu_op[1]_INST_0_i_1_n_0 ),
        .I3(reg_write_INST_0_i_1_n_0),
        .I4(instruction[2]),
        .I5(instruction[3]),
        .O(pc_src_sel[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \pc_src_sel[0]_INST_0_i_1 
       (.I0(alu_zero),
        .I1(instruction[14]),
        .I2(instruction[12]),
        .O(\pc_src_sel[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \pc_src_sel[0]_INST_0_i_2 
       (.I0(instruction[2]),
        .I1(instruction[14]),
        .I2(instruction[13]),
        .O(\pc_src_sel[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \pc_src_sel[1]_INST_0 
       (.I0(instruction[3]),
        .I1(reg_write_INST_0_i_1_n_0),
        .I2(instruction[6]),
        .I3(instruction[5]),
        .I4(instruction[4]),
        .I5(instruction[2]),
        .O(pc_src_sel[1]));
  LUT6 #(
    .INIT(64'h0101440001010001)) 
    reg_write_INST_0
       (.I0(reg_write_INST_0_i_1_n_0),
        .I1(instruction[6]),
        .I2(instruction[3]),
        .I3(instruction[5]),
        .I4(instruction[4]),
        .I5(instruction[2]),
        .O(reg_write));
  LUT2 #(
    .INIT(4'h7)) 
    reg_write_INST_0_i_1
       (.I0(instruction[0]),
        .I1(instruction[1]),
        .O(reg_write_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wb_sel[0]_INST_0 
       (.I0(reg_write_INST_0_i_1_n_0),
        .I1(instruction[2]),
        .I2(instruction[5]),
        .I3(instruction[6]),
        .I4(instruction[3]),
        .I5(instruction[4]),
        .O(wb_sel[0]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \wb_sel[1]_INST_0 
       (.I0(instruction[4]),
        .I1(instruction[5]),
        .I2(instruction[6]),
        .I3(instruction[0]),
        .I4(instruction[1]),
        .I5(instruction[2]),
        .O(wb_sel[1]));
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
