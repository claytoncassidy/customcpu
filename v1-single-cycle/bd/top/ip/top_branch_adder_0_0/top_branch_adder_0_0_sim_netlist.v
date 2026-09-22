// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:41 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_branch_adder_0_0/top_branch_adder_0_0_sim_netlist.v}
// Design      : top_branch_adder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_branch_adder_0_0,branch_adder,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "branch_adder,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_branch_adder_0_0
   (pc,
    immediate,
    target);
  input [31:0]pc;
  input [31:0]immediate;
  output [31:0]target;

  wire [31:0]immediate;
  wire [31:0]pc;
  wire [31:0]target;

  top_branch_adder_0_0_branch_adder U0
       (.immediate(immediate),
        .pc(pc),
        .target(target));
endmodule

(* ORIG_REF_NAME = "branch_adder" *) 
module top_branch_adder_0_0_branch_adder
   (target,
    pc,
    immediate);
  output [31:0]target;
  input [31:0]pc;
  input [31:0]immediate;

  wire [31:0]immediate;
  wire [31:0]pc;
  wire [31:0]target;
  wire \target[0]_INST_0_i_1_n_0 ;
  wire \target[0]_INST_0_i_2_n_0 ;
  wire \target[0]_INST_0_i_3_n_0 ;
  wire \target[0]_INST_0_i_4_n_0 ;
  wire \target[0]_INST_0_n_0 ;
  wire \target[0]_INST_0_n_1 ;
  wire \target[0]_INST_0_n_2 ;
  wire \target[0]_INST_0_n_3 ;
  wire \target[12]_INST_0_i_1_n_0 ;
  wire \target[12]_INST_0_i_2_n_0 ;
  wire \target[12]_INST_0_i_3_n_0 ;
  wire \target[12]_INST_0_i_4_n_0 ;
  wire \target[12]_INST_0_n_0 ;
  wire \target[12]_INST_0_n_1 ;
  wire \target[12]_INST_0_n_2 ;
  wire \target[12]_INST_0_n_3 ;
  wire \target[16]_INST_0_i_1_n_0 ;
  wire \target[16]_INST_0_i_2_n_0 ;
  wire \target[16]_INST_0_i_3_n_0 ;
  wire \target[16]_INST_0_i_4_n_0 ;
  wire \target[16]_INST_0_n_0 ;
  wire \target[16]_INST_0_n_1 ;
  wire \target[16]_INST_0_n_2 ;
  wire \target[16]_INST_0_n_3 ;
  wire \target[20]_INST_0_i_1_n_0 ;
  wire \target[20]_INST_0_i_2_n_0 ;
  wire \target[20]_INST_0_i_3_n_0 ;
  wire \target[20]_INST_0_i_4_n_0 ;
  wire \target[20]_INST_0_n_0 ;
  wire \target[20]_INST_0_n_1 ;
  wire \target[20]_INST_0_n_2 ;
  wire \target[20]_INST_0_n_3 ;
  wire \target[24]_INST_0_i_1_n_0 ;
  wire \target[24]_INST_0_i_2_n_0 ;
  wire \target[24]_INST_0_i_3_n_0 ;
  wire \target[24]_INST_0_i_4_n_0 ;
  wire \target[24]_INST_0_n_0 ;
  wire \target[24]_INST_0_n_1 ;
  wire \target[24]_INST_0_n_2 ;
  wire \target[24]_INST_0_n_3 ;
  wire \target[28]_INST_0_i_1_n_0 ;
  wire \target[28]_INST_0_i_2_n_0 ;
  wire \target[28]_INST_0_i_3_n_0 ;
  wire \target[28]_INST_0_i_4_n_0 ;
  wire \target[28]_INST_0_n_1 ;
  wire \target[28]_INST_0_n_2 ;
  wire \target[28]_INST_0_n_3 ;
  wire \target[4]_INST_0_i_1_n_0 ;
  wire \target[4]_INST_0_i_2_n_0 ;
  wire \target[4]_INST_0_i_3_n_0 ;
  wire \target[4]_INST_0_i_4_n_0 ;
  wire \target[4]_INST_0_n_0 ;
  wire \target[4]_INST_0_n_1 ;
  wire \target[4]_INST_0_n_2 ;
  wire \target[4]_INST_0_n_3 ;
  wire \target[8]_INST_0_i_1_n_0 ;
  wire \target[8]_INST_0_i_2_n_0 ;
  wire \target[8]_INST_0_i_3_n_0 ;
  wire \target[8]_INST_0_i_4_n_0 ;
  wire \target[8]_INST_0_n_0 ;
  wire \target[8]_INST_0_n_1 ;
  wire \target[8]_INST_0_n_2 ;
  wire \target[8]_INST_0_n_3 ;
  wire [3:3]\NLW_target[28]_INST_0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[0]_INST_0 
       (.CI(1'b0),
        .CO({\target[0]_INST_0_n_0 ,\target[0]_INST_0_n_1 ,\target[0]_INST_0_n_2 ,\target[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[3:0]),
        .O(target[3:0]),
        .S({\target[0]_INST_0_i_1_n_0 ,\target[0]_INST_0_i_2_n_0 ,\target[0]_INST_0_i_3_n_0 ,\target[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[0]_INST_0_i_1 
       (.I0(pc[3]),
        .I1(immediate[3]),
        .O(\target[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[0]_INST_0_i_2 
       (.I0(pc[2]),
        .I1(immediate[2]),
        .O(\target[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[0]_INST_0_i_3 
       (.I0(pc[1]),
        .I1(immediate[1]),
        .O(\target[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[0]_INST_0_i_4 
       (.I0(pc[0]),
        .I1(immediate[0]),
        .O(\target[0]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[12]_INST_0 
       (.CI(\target[8]_INST_0_n_0 ),
        .CO({\target[12]_INST_0_n_0 ,\target[12]_INST_0_n_1 ,\target[12]_INST_0_n_2 ,\target[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[15:12]),
        .O(target[15:12]),
        .S({\target[12]_INST_0_i_1_n_0 ,\target[12]_INST_0_i_2_n_0 ,\target[12]_INST_0_i_3_n_0 ,\target[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[12]_INST_0_i_1 
       (.I0(pc[15]),
        .I1(immediate[15]),
        .O(\target[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[12]_INST_0_i_2 
       (.I0(pc[14]),
        .I1(immediate[14]),
        .O(\target[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[12]_INST_0_i_3 
       (.I0(pc[13]),
        .I1(immediate[13]),
        .O(\target[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[12]_INST_0_i_4 
       (.I0(pc[12]),
        .I1(immediate[12]),
        .O(\target[12]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[16]_INST_0 
       (.CI(\target[12]_INST_0_n_0 ),
        .CO({\target[16]_INST_0_n_0 ,\target[16]_INST_0_n_1 ,\target[16]_INST_0_n_2 ,\target[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[19:16]),
        .O(target[19:16]),
        .S({\target[16]_INST_0_i_1_n_0 ,\target[16]_INST_0_i_2_n_0 ,\target[16]_INST_0_i_3_n_0 ,\target[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[16]_INST_0_i_1 
       (.I0(pc[19]),
        .I1(immediate[19]),
        .O(\target[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[16]_INST_0_i_2 
       (.I0(pc[18]),
        .I1(immediate[18]),
        .O(\target[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[16]_INST_0_i_3 
       (.I0(pc[17]),
        .I1(immediate[17]),
        .O(\target[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[16]_INST_0_i_4 
       (.I0(pc[16]),
        .I1(immediate[16]),
        .O(\target[16]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[20]_INST_0 
       (.CI(\target[16]_INST_0_n_0 ),
        .CO({\target[20]_INST_0_n_0 ,\target[20]_INST_0_n_1 ,\target[20]_INST_0_n_2 ,\target[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[23:20]),
        .O(target[23:20]),
        .S({\target[20]_INST_0_i_1_n_0 ,\target[20]_INST_0_i_2_n_0 ,\target[20]_INST_0_i_3_n_0 ,\target[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[20]_INST_0_i_1 
       (.I0(pc[23]),
        .I1(immediate[23]),
        .O(\target[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[20]_INST_0_i_2 
       (.I0(pc[22]),
        .I1(immediate[22]),
        .O(\target[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[20]_INST_0_i_3 
       (.I0(pc[21]),
        .I1(immediate[21]),
        .O(\target[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[20]_INST_0_i_4 
       (.I0(pc[20]),
        .I1(immediate[20]),
        .O(\target[20]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[24]_INST_0 
       (.CI(\target[20]_INST_0_n_0 ),
        .CO({\target[24]_INST_0_n_0 ,\target[24]_INST_0_n_1 ,\target[24]_INST_0_n_2 ,\target[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[27:24]),
        .O(target[27:24]),
        .S({\target[24]_INST_0_i_1_n_0 ,\target[24]_INST_0_i_2_n_0 ,\target[24]_INST_0_i_3_n_0 ,\target[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[24]_INST_0_i_1 
       (.I0(pc[27]),
        .I1(immediate[27]),
        .O(\target[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[24]_INST_0_i_2 
       (.I0(pc[26]),
        .I1(immediate[26]),
        .O(\target[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[24]_INST_0_i_3 
       (.I0(pc[25]),
        .I1(immediate[25]),
        .O(\target[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[24]_INST_0_i_4 
       (.I0(pc[24]),
        .I1(immediate[24]),
        .O(\target[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[28]_INST_0 
       (.CI(\target[24]_INST_0_n_0 ),
        .CO({\NLW_target[28]_INST_0_CO_UNCONNECTED [3],\target[28]_INST_0_n_1 ,\target[28]_INST_0_n_2 ,\target[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,pc[30:28]}),
        .O(target[31:28]),
        .S({\target[28]_INST_0_i_1_n_0 ,\target[28]_INST_0_i_2_n_0 ,\target[28]_INST_0_i_3_n_0 ,\target[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[28]_INST_0_i_1 
       (.I0(pc[31]),
        .I1(immediate[31]),
        .O(\target[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[28]_INST_0_i_2 
       (.I0(pc[30]),
        .I1(immediate[30]),
        .O(\target[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[28]_INST_0_i_3 
       (.I0(pc[29]),
        .I1(immediate[29]),
        .O(\target[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[28]_INST_0_i_4 
       (.I0(pc[28]),
        .I1(immediate[28]),
        .O(\target[28]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[4]_INST_0 
       (.CI(\target[0]_INST_0_n_0 ),
        .CO({\target[4]_INST_0_n_0 ,\target[4]_INST_0_n_1 ,\target[4]_INST_0_n_2 ,\target[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[7:4]),
        .O(target[7:4]),
        .S({\target[4]_INST_0_i_1_n_0 ,\target[4]_INST_0_i_2_n_0 ,\target[4]_INST_0_i_3_n_0 ,\target[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[4]_INST_0_i_1 
       (.I0(pc[7]),
        .I1(immediate[7]),
        .O(\target[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[4]_INST_0_i_2 
       (.I0(pc[6]),
        .I1(immediate[6]),
        .O(\target[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[4]_INST_0_i_3 
       (.I0(pc[5]),
        .I1(immediate[5]),
        .O(\target[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[4]_INST_0_i_4 
       (.I0(pc[4]),
        .I1(immediate[4]),
        .O(\target[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \target[8]_INST_0 
       (.CI(\target[4]_INST_0_n_0 ),
        .CO({\target[8]_INST_0_n_0 ,\target[8]_INST_0_n_1 ,\target[8]_INST_0_n_2 ,\target[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(pc[11:8]),
        .O(target[11:8]),
        .S({\target[8]_INST_0_i_1_n_0 ,\target[8]_INST_0_i_2_n_0 ,\target[8]_INST_0_i_3_n_0 ,\target[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \target[8]_INST_0_i_1 
       (.I0(pc[11]),
        .I1(immediate[11]),
        .O(\target[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[8]_INST_0_i_2 
       (.I0(pc[10]),
        .I1(immediate[10]),
        .O(\target[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[8]_INST_0_i_3 
       (.I0(pc[9]),
        .I1(immediate[9]),
        .O(\target[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[8]_INST_0_i_4 
       (.I0(pc[8]),
        .I1(immediate[8]),
        .O(\target[8]_INST_0_i_4_n_0 ));
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
