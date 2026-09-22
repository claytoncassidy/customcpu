// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_pc_plus_4_0_0/top_pc_plus_4_0_0_sim_netlist.v}
// Design      : top_pc_plus_4_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_pc_plus_4_0_0,pc_plus_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pc_plus_4,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_pc_plus_4_0_0
   (pc_in,
    pc_out);
  input [31:0]pc_in;
  output [31:0]pc_out;

  wire [31:0]pc_in;
  wire [31:1]\^pc_out ;

  assign pc_out[31:1] = \^pc_out [31:1];
  assign pc_out[0] = pc_in[0];
  top_pc_plus_4_0_0_pc_plus_4 U0
       (.pc_in(pc_in[31:1]),
        .pc_out(\^pc_out ));
endmodule

(* ORIG_REF_NAME = "pc_plus_4" *) 
module top_pc_plus_4_0_0_pc_plus_4
   (pc_out,
    pc_in);
  output [30:0]pc_out;
  input [30:0]pc_in;

  wire [30:0]pc_in;
  wire [30:0]pc_out;
  wire \pc_out[13]_INST_0_n_0 ;
  wire \pc_out[13]_INST_0_n_1 ;
  wire \pc_out[13]_INST_0_n_2 ;
  wire \pc_out[13]_INST_0_n_3 ;
  wire \pc_out[17]_INST_0_n_0 ;
  wire \pc_out[17]_INST_0_n_1 ;
  wire \pc_out[17]_INST_0_n_2 ;
  wire \pc_out[17]_INST_0_n_3 ;
  wire \pc_out[1]_INST_0_i_1_n_0 ;
  wire \pc_out[1]_INST_0_n_0 ;
  wire \pc_out[1]_INST_0_n_1 ;
  wire \pc_out[1]_INST_0_n_2 ;
  wire \pc_out[1]_INST_0_n_3 ;
  wire \pc_out[21]_INST_0_n_0 ;
  wire \pc_out[21]_INST_0_n_1 ;
  wire \pc_out[21]_INST_0_n_2 ;
  wire \pc_out[21]_INST_0_n_3 ;
  wire \pc_out[25]_INST_0_n_0 ;
  wire \pc_out[25]_INST_0_n_1 ;
  wire \pc_out[25]_INST_0_n_2 ;
  wire \pc_out[25]_INST_0_n_3 ;
  wire \pc_out[29]_INST_0_n_2 ;
  wire \pc_out[29]_INST_0_n_3 ;
  wire \pc_out[5]_INST_0_n_0 ;
  wire \pc_out[5]_INST_0_n_1 ;
  wire \pc_out[5]_INST_0_n_2 ;
  wire \pc_out[5]_INST_0_n_3 ;
  wire \pc_out[9]_INST_0_n_0 ;
  wire \pc_out[9]_INST_0_n_1 ;
  wire \pc_out[9]_INST_0_n_2 ;
  wire \pc_out[9]_INST_0_n_3 ;
  wire [3:2]\NLW_pc_out[29]_INST_0_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_out[29]_INST_0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[13]_INST_0 
       (.CI(\pc_out[9]_INST_0_n_0 ),
        .CO({\pc_out[13]_INST_0_n_0 ,\pc_out[13]_INST_0_n_1 ,\pc_out[13]_INST_0_n_2 ,\pc_out[13]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out[15:12]),
        .S(pc_in[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[17]_INST_0 
       (.CI(\pc_out[13]_INST_0_n_0 ),
        .CO({\pc_out[17]_INST_0_n_0 ,\pc_out[17]_INST_0_n_1 ,\pc_out[17]_INST_0_n_2 ,\pc_out[17]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out[19:16]),
        .S(pc_in[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[1]_INST_0 
       (.CI(1'b0),
        .CO({\pc_out[1]_INST_0_n_0 ,\pc_out[1]_INST_0_n_1 ,\pc_out[1]_INST_0_n_2 ,\pc_out[1]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pc_in[1],1'b0}),
        .O(pc_out[3:0]),
        .S({pc_in[3:2],\pc_out[1]_INST_0_i_1_n_0 ,pc_in[0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_out[1]_INST_0_i_1 
       (.I0(pc_in[1]),
        .O(\pc_out[1]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[21]_INST_0 
       (.CI(\pc_out[17]_INST_0_n_0 ),
        .CO({\pc_out[21]_INST_0_n_0 ,\pc_out[21]_INST_0_n_1 ,\pc_out[21]_INST_0_n_2 ,\pc_out[21]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out[23:20]),
        .S(pc_in[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[25]_INST_0 
       (.CI(\pc_out[21]_INST_0_n_0 ),
        .CO({\pc_out[25]_INST_0_n_0 ,\pc_out[25]_INST_0_n_1 ,\pc_out[25]_INST_0_n_2 ,\pc_out[25]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out[27:24]),
        .S(pc_in[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[29]_INST_0 
       (.CI(\pc_out[25]_INST_0_n_0 ),
        .CO({\NLW_pc_out[29]_INST_0_CO_UNCONNECTED [3:2],\pc_out[29]_INST_0_n_2 ,\pc_out[29]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_out[29]_INST_0_O_UNCONNECTED [3],pc_out[30:28]}),
        .S({1'b0,pc_in[30:28]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[5]_INST_0 
       (.CI(\pc_out[1]_INST_0_n_0 ),
        .CO({\pc_out[5]_INST_0_n_0 ,\pc_out[5]_INST_0_n_1 ,\pc_out[5]_INST_0_n_2 ,\pc_out[5]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out[7:4]),
        .S(pc_in[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pc_out[9]_INST_0 
       (.CI(\pc_out[5]_INST_0_n_0 ),
        .CO({\pc_out[9]_INST_0_n_0 ,\pc_out[9]_INST_0_n_1 ,\pc_out[9]_INST_0_n_2 ,\pc_out[9]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_out[11:8]),
        .S(pc_in[11:8]));
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
