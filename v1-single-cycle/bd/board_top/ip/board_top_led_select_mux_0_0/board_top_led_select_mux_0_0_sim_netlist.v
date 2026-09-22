// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep 22 00:46:29 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_led_select_mux_0_0/board_top_led_select_mux_0_0_sim_netlist.v}
// Design      : board_top_led_select_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "board_top_led_select_mux_0_0,led_select_mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "led_select_mux,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module board_top_led_select_mux_0_0
   (writeback,
    led_sel,
    led);
  input [31:0]writeback;
  input led_sel;
  output [15:0]led;

  wire [15:0]led;
  wire led_sel;
  wire [31:0]writeback;

  board_top_led_select_mux_0_0_led_select_mux U0
       (.led(led),
        .led_sel(led_sel),
        .writeback(writeback));
endmodule

(* ORIG_REF_NAME = "led_select_mux" *) 
module board_top_led_select_mux_0_0_led_select_mux
   (led,
    writeback,
    led_sel);
  output [15:0]led;
  input [31:0]writeback;
  input led_sel;

  wire [15:0]led;
  wire led_sel;
  wire [31:0]writeback;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[0]_INST_0 
       (.I0(writeback[16]),
        .I1(led_sel),
        .I2(writeback[0]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[10]_INST_0 
       (.I0(writeback[26]),
        .I1(led_sel),
        .I2(writeback[10]),
        .O(led[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[11]_INST_0 
       (.I0(writeback[27]),
        .I1(led_sel),
        .I2(writeback[11]),
        .O(led[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[12]_INST_0 
       (.I0(writeback[28]),
        .I1(led_sel),
        .I2(writeback[12]),
        .O(led[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[13]_INST_0 
       (.I0(writeback[29]),
        .I1(led_sel),
        .I2(writeback[13]),
        .O(led[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[14]_INST_0 
       (.I0(writeback[30]),
        .I1(led_sel),
        .I2(writeback[14]),
        .O(led[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[15]_INST_0 
       (.I0(writeback[31]),
        .I1(led_sel),
        .I2(writeback[15]),
        .O(led[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[1]_INST_0 
       (.I0(writeback[17]),
        .I1(led_sel),
        .I2(writeback[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[2]_INST_0 
       (.I0(writeback[18]),
        .I1(led_sel),
        .I2(writeback[2]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[3]_INST_0 
       (.I0(writeback[19]),
        .I1(led_sel),
        .I2(writeback[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[4]_INST_0 
       (.I0(writeback[20]),
        .I1(led_sel),
        .I2(writeback[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[5]_INST_0 
       (.I0(writeback[21]),
        .I1(led_sel),
        .I2(writeback[5]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[6]_INST_0 
       (.I0(writeback[22]),
        .I1(led_sel),
        .I2(writeback[6]),
        .O(led[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[7]_INST_0 
       (.I0(writeback[23]),
        .I1(led_sel),
        .I2(writeback[7]),
        .O(led[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[8]_INST_0 
       (.I0(writeback[24]),
        .I1(led_sel),
        .I2(writeback[8]),
        .O(led[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[9]_INST_0 
       (.I0(writeback[25]),
        .I1(led_sel),
        .I2(writeback[9]),
        .O(led[9]));
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
