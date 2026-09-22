// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep 22 01:19:05 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_seven_seg_controller_0_0/board_top_seven_seg_controller_0_0_sim_netlist.v}
// Design      : board_top_seven_seg_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "board_top_seven_seg_controller_0_0,seven_seg_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "seven_seg_controller,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module board_top_seven_seg_controller_0_0
   (clk,
    value,
    hex_digit,
    an);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input [15:0]value;
  output [3:0]hex_digit;
  output [3:0]an;

  wire [3:0]an;
  wire clk;
  wire [3:0]hex_digit;
  wire [15:0]value;

  board_top_seven_seg_controller_0_0_seven_seg_controller U0
       (.an(an),
        .clk(clk),
        .hex_digit(hex_digit),
        .value(value));
endmodule

(* ORIG_REF_NAME = "seven_seg_controller" *) 
module board_top_seven_seg_controller_0_0_seven_seg_controller
   (hex_digit,
    an,
    clk,
    value);
  output [3:0]hex_digit;
  output [3:0]an;
  input clk;
  input [15:0]value;

  wire [3:0]an;
  wire clk;
  wire [16:1]data0;
  wire [1:0]digit_index;
  wire \digit_index[0]_i_1_n_0 ;
  wire \digit_index[1]_i_1_n_0 ;
  wire [3:0]hex_digit;
  wire [16:0]refresh_counter;
  wire refresh_counter0_carry__0_n_0;
  wire refresh_counter0_carry__0_n_1;
  wire refresh_counter0_carry__0_n_2;
  wire refresh_counter0_carry__0_n_3;
  wire refresh_counter0_carry__1_n_0;
  wire refresh_counter0_carry__1_n_1;
  wire refresh_counter0_carry__1_n_2;
  wire refresh_counter0_carry__1_n_3;
  wire refresh_counter0_carry__2_n_1;
  wire refresh_counter0_carry__2_n_2;
  wire refresh_counter0_carry__2_n_3;
  wire refresh_counter0_carry_n_0;
  wire refresh_counter0_carry_n_1;
  wire refresh_counter0_carry_n_2;
  wire refresh_counter0_carry_n_3;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter[0]_i_3_n_0 ;
  wire \refresh_counter[0]_i_4_n_0 ;
  wire \refresh_counter[0]_i_5_n_0 ;
  wire \refresh_counter[16]_i_1_n_0 ;
  wire [0:0]refresh_counter_0;
  wire [15:0]value;
  wire [3:3]NLW_refresh_counter0_carry__2_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(digit_index[1]),
        .I1(digit_index[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(digit_index[1]),
        .I1(digit_index[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(digit_index[0]),
        .I1(digit_index[1]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(digit_index[1]),
        .I1(digit_index[0]),
        .O(an[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit_index[0]_i_1 
       (.I0(\refresh_counter[16]_i_1_n_0 ),
        .I1(digit_index[0]),
        .O(\digit_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit_index[1]_i_1 
       (.I0(digit_index[0]),
        .I1(\refresh_counter[16]_i_1_n_0 ),
        .I2(digit_index[1]),
        .O(\digit_index[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit_index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_index[0]_i_1_n_0 ),
        .Q(digit_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit_index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\digit_index[1]_i_1_n_0 ),
        .Q(digit_index[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \hex_digit[0]_INST_0 
       (.I0(value[4]),
        .I1(value[0]),
        .I2(value[12]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(value[8]),
        .O(hex_digit[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \hex_digit[1]_INST_0 
       (.I0(value[5]),
        .I1(value[1]),
        .I2(value[13]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(value[9]),
        .O(hex_digit[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \hex_digit[2]_INST_0 
       (.I0(value[6]),
        .I1(value[2]),
        .I2(value[14]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(value[10]),
        .O(hex_digit[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \hex_digit[3]_INST_0 
       (.I0(value[7]),
        .I1(value[3]),
        .I2(value[15]),
        .I3(digit_index[0]),
        .I4(digit_index[1]),
        .I5(value[11]),
        .O(hex_digit[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 refresh_counter0_carry
       (.CI(1'b0),
        .CO({refresh_counter0_carry_n_0,refresh_counter0_carry_n_1,refresh_counter0_carry_n_2,refresh_counter0_carry_n_3}),
        .CYINIT(refresh_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(refresh_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 refresh_counter0_carry__0
       (.CI(refresh_counter0_carry_n_0),
        .CO({refresh_counter0_carry__0_n_0,refresh_counter0_carry__0_n_1,refresh_counter0_carry__0_n_2,refresh_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(refresh_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 refresh_counter0_carry__1
       (.CI(refresh_counter0_carry__0_n_0),
        .CO({refresh_counter0_carry__1_n_0,refresh_counter0_carry__1_n_1,refresh_counter0_carry__1_n_2,refresh_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(refresh_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 refresh_counter0_carry__2
       (.CI(refresh_counter0_carry__1_n_0),
        .CO({NLW_refresh_counter0_carry__2_CO_UNCONNECTED[3],refresh_counter0_carry__2_n_1,refresh_counter0_carry__2_n_2,refresh_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(refresh_counter[16:13]));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \refresh_counter[0]_i_1 
       (.I0(\refresh_counter[0]_i_2_n_0 ),
        .I1(\refresh_counter[0]_i_3_n_0 ),
        .I2(\refresh_counter[0]_i_4_n_0 ),
        .I3(\refresh_counter[0]_i_5_n_0 ),
        .I4(refresh_counter[0]),
        .O(refresh_counter_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \refresh_counter[0]_i_2 
       (.I0(refresh_counter[5]),
        .I1(refresh_counter[6]),
        .I2(refresh_counter[7]),
        .I3(refresh_counter[8]),
        .O(\refresh_counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \refresh_counter[0]_i_3 
       (.I0(refresh_counter[2]),
        .I1(refresh_counter[1]),
        .I2(refresh_counter[4]),
        .I3(refresh_counter[3]),
        .O(\refresh_counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \refresh_counter[0]_i_4 
       (.I0(refresh_counter[14]),
        .I1(refresh_counter[13]),
        .I2(refresh_counter[16]),
        .I3(refresh_counter[15]),
        .O(\refresh_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \refresh_counter[0]_i_5 
       (.I0(refresh_counter[10]),
        .I1(refresh_counter[9]),
        .I2(refresh_counter[12]),
        .I3(refresh_counter[11]),
        .O(\refresh_counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \refresh_counter[16]_i_1 
       (.I0(\refresh_counter[0]_i_5_n_0 ),
        .I1(\refresh_counter[0]_i_4_n_0 ),
        .I2(\refresh_counter[0]_i_3_n_0 ),
        .I3(\refresh_counter[0]_i_2_n_0 ),
        .I4(refresh_counter[0]),
        .O(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(refresh_counter_0),
        .Q(refresh_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(refresh_counter[10]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(refresh_counter[11]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(refresh_counter[12]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(refresh_counter[13]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(refresh_counter[14]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(refresh_counter[15]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(refresh_counter[16]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(refresh_counter[1]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(refresh_counter[2]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(refresh_counter[3]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(refresh_counter[4]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(refresh_counter[5]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(refresh_counter[6]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(refresh_counter[7]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(refresh_counter[8]),
        .R(\refresh_counter[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(refresh_counter[9]),
        .R(\refresh_counter[16]_i_1_n_0 ));
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
