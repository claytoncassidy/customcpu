// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:41 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_program_counter_0_0/top_program_counter_0_0_sim_netlist.v}
// Design      : top_program_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_program_counter_0_0,program_counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "program_counter,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_program_counter_0_0
   (clk,
    reset,
    next_addr,
    curr_addr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_mode = "slave reset" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [31:0]next_addr;
  output [31:0]curr_addr;

  wire clk;
  wire [31:0]curr_addr;
  wire [31:0]next_addr;
  wire reset;

  top_program_counter_0_0_program_counter U0
       (.clk(clk),
        .curr_addr(curr_addr),
        .next_addr(next_addr),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "program_counter" *) 
module top_program_counter_0_0_program_counter
   (curr_addr,
    reset,
    next_addr,
    clk);
  output [31:0]curr_addr;
  input reset;
  input [31:0]next_addr;
  input clk;

  wire clk;
  wire [31:0]curr_addr;
  wire [31:0]next_addr;
  wire reset;

  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[0]),
        .Q(curr_addr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[10]),
        .Q(curr_addr[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[11]),
        .Q(curr_addr[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[12]),
        .Q(curr_addr[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[13]),
        .Q(curr_addr[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[14]),
        .Q(curr_addr[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[15]),
        .Q(curr_addr[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[16]),
        .Q(curr_addr[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[17]),
        .Q(curr_addr[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[18]),
        .Q(curr_addr[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[19]),
        .Q(curr_addr[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[1]),
        .Q(curr_addr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[20]),
        .Q(curr_addr[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[21]),
        .Q(curr_addr[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[22]),
        .Q(curr_addr[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[23]),
        .Q(curr_addr[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[24]),
        .Q(curr_addr[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[25]),
        .Q(curr_addr[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[26]),
        .Q(curr_addr[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[27]),
        .Q(curr_addr[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[28]),
        .Q(curr_addr[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[29]),
        .Q(curr_addr[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[2]),
        .Q(curr_addr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[30]),
        .Q(curr_addr[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[31]),
        .Q(curr_addr[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[3]),
        .Q(curr_addr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[4]),
        .Q(curr_addr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[5]),
        .Q(curr_addr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[6]),
        .Q(curr_addr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[7]),
        .Q(curr_addr[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[8]),
        .Q(curr_addr[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \curr_addr_internal_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(next_addr[9]),
        .Q(curr_addr[9]),
        .R(reset));
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
