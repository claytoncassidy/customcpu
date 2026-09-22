// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:44 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_0_0/top_alu_0_0_sim_netlist.v}
// Design      : top_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_alu_0_0,alu,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "alu,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_alu_0_0
   (a,
    b,
    alu_op,
    result,
    zero,
    invalid_op,
    overflow);
  input [31:0]a;
  input [31:0]b;
  input [3:0]alu_op;
  output [31:0]result;
  output zero;
  output invalid_op;
  output overflow;

  wire [31:0]a;
  wire [3:0]alu_op;
  wire [31:0]b;
  wire invalid_op;
  wire overflow;
  wire [31:0]result;
  wire zero;

  top_alu_0_0_alu U0
       (.a(a),
        .alu_op(alu_op),
        .b(b),
        .overflow(overflow),
        .result(result),
        .zero(zero));
  LUT3 #(
    .INIT(8'hA8)) 
    invalid_op_INST_0
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[1]),
        .O(invalid_op));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module top_alu_0_0_alu
   (overflow,
    zero,
    result,
    a,
    b,
    alu_op);
  output overflow;
  output zero;
  output [31:0]result;
  input [31:0]a;
  input [31:0]b;
  input [3:0]alu_op;

  wire [31:0]a;
  wire [3:0]alu_op;
  wire [31:0]b;
  wire data2;
  wire data3;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__0_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7__3_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_8__3_n_0;
  wire i__carry_i_8_n_0;
  wire overflow;
  wire overflow_INST_0_i_1_n_0;
  wire p_1_in;
  wire p_1_in2_in;
  wire [31:0]result;
  wire \result[0]_INST_0_i_10_n_0 ;
  wire \result[0]_INST_0_i_11_n_0 ;
  wire \result[0]_INST_0_i_12_n_0 ;
  wire \result[0]_INST_0_i_13_n_0 ;
  wire \result[0]_INST_0_i_14_n_0 ;
  wire \result[0]_INST_0_i_1_n_0 ;
  wire \result[0]_INST_0_i_2_n_0 ;
  wire \result[0]_INST_0_i_3_n_0 ;
  wire \result[0]_INST_0_i_4_n_0 ;
  wire \result[0]_INST_0_i_5_n_0 ;
  wire \result[0]_INST_0_i_6_n_0 ;
  wire \result[0]_INST_0_i_7_n_0 ;
  wire \result[0]_INST_0_i_8_n_0 ;
  wire \result[0]_INST_0_i_9_n_0 ;
  wire \result[10]_INST_0_i_1_n_0 ;
  wire \result[10]_INST_0_i_2_n_0 ;
  wire \result[10]_INST_0_i_3_n_0 ;
  wire \result[10]_INST_0_i_4_n_0 ;
  wire \result[10]_INST_0_i_5_n_0 ;
  wire \result[10]_INST_0_i_6_n_0 ;
  wire \result[10]_INST_0_i_7_n_0 ;
  wire \result[10]_INST_0_i_8_n_0 ;
  wire \result[10]_INST_0_i_9_n_0 ;
  wire \result[11]_INST_0_i_10_n_0 ;
  wire \result[11]_INST_0_i_1_n_0 ;
  wire \result[11]_INST_0_i_2_n_0 ;
  wire \result[11]_INST_0_i_3_n_0 ;
  wire \result[11]_INST_0_i_4_n_0 ;
  wire \result[11]_INST_0_i_5_n_0 ;
  wire \result[11]_INST_0_i_6_n_0 ;
  wire \result[11]_INST_0_i_7_n_0 ;
  wire \result[11]_INST_0_i_8_n_0 ;
  wire \result[11]_INST_0_i_9_n_0 ;
  wire \result[12]_INST_0_i_10_n_0 ;
  wire \result[12]_INST_0_i_1_n_0 ;
  wire \result[12]_INST_0_i_2_n_0 ;
  wire \result[12]_INST_0_i_3_n_0 ;
  wire \result[12]_INST_0_i_4_n_0 ;
  wire \result[12]_INST_0_i_5_n_0 ;
  wire \result[12]_INST_0_i_6_n_0 ;
  wire \result[12]_INST_0_i_7_n_0 ;
  wire \result[12]_INST_0_i_8_n_0 ;
  wire \result[12]_INST_0_i_9_n_0 ;
  wire \result[13]_INST_0_i_10_n_0 ;
  wire \result[13]_INST_0_i_1_n_0 ;
  wire \result[13]_INST_0_i_2_n_0 ;
  wire \result[13]_INST_0_i_3_n_0 ;
  wire \result[13]_INST_0_i_4_n_0 ;
  wire \result[13]_INST_0_i_5_n_0 ;
  wire \result[13]_INST_0_i_6_n_0 ;
  wire \result[13]_INST_0_i_7_n_0 ;
  wire \result[13]_INST_0_i_8_n_0 ;
  wire \result[13]_INST_0_i_9_n_0 ;
  wire \result[14]_INST_0_i_10_n_0 ;
  wire \result[14]_INST_0_i_1_n_0 ;
  wire \result[14]_INST_0_i_2_n_0 ;
  wire \result[14]_INST_0_i_3_n_0 ;
  wire \result[14]_INST_0_i_4_n_0 ;
  wire \result[14]_INST_0_i_5_n_0 ;
  wire \result[14]_INST_0_i_6_n_0 ;
  wire \result[14]_INST_0_i_7_n_0 ;
  wire \result[14]_INST_0_i_8_n_0 ;
  wire \result[14]_INST_0_i_9_n_0 ;
  wire \result[15]_INST_0_i_10_n_0 ;
  wire \result[15]_INST_0_i_1_n_0 ;
  wire \result[15]_INST_0_i_2_n_0 ;
  wire \result[15]_INST_0_i_3_n_0 ;
  wire \result[15]_INST_0_i_4_n_0 ;
  wire \result[15]_INST_0_i_5_n_0 ;
  wire \result[15]_INST_0_i_6_n_0 ;
  wire \result[15]_INST_0_i_7_n_0 ;
  wire \result[15]_INST_0_i_8_n_0 ;
  wire \result[15]_INST_0_i_9_n_0 ;
  wire \result[16]_INST_0_i_10_n_0 ;
  wire \result[16]_INST_0_i_11_n_0 ;
  wire \result[16]_INST_0_i_1_n_0 ;
  wire \result[16]_INST_0_i_2_n_0 ;
  wire \result[16]_INST_0_i_3_n_0 ;
  wire \result[16]_INST_0_i_4_n_0 ;
  wire \result[16]_INST_0_i_5_n_0 ;
  wire \result[16]_INST_0_i_6_n_0 ;
  wire \result[16]_INST_0_i_7_n_0 ;
  wire \result[16]_INST_0_i_8_n_0 ;
  wire \result[16]_INST_0_i_9_n_0 ;
  wire \result[17]_INST_0_i_10_n_0 ;
  wire \result[17]_INST_0_i_11_n_0 ;
  wire \result[17]_INST_0_i_1_n_0 ;
  wire \result[17]_INST_0_i_2_n_0 ;
  wire \result[17]_INST_0_i_3_n_0 ;
  wire \result[17]_INST_0_i_4_n_0 ;
  wire \result[17]_INST_0_i_5_n_0 ;
  wire \result[17]_INST_0_i_6_n_0 ;
  wire \result[17]_INST_0_i_7_n_0 ;
  wire \result[17]_INST_0_i_8_n_0 ;
  wire \result[17]_INST_0_i_9_n_0 ;
  wire \result[18]_INST_0_i_10_n_0 ;
  wire \result[18]_INST_0_i_11_n_0 ;
  wire \result[18]_INST_0_i_1_n_0 ;
  wire \result[18]_INST_0_i_2_n_0 ;
  wire \result[18]_INST_0_i_3_n_0 ;
  wire \result[18]_INST_0_i_4_n_0 ;
  wire \result[18]_INST_0_i_5_n_0 ;
  wire \result[18]_INST_0_i_6_n_0 ;
  wire \result[18]_INST_0_i_7_n_0 ;
  wire \result[18]_INST_0_i_8_n_0 ;
  wire \result[18]_INST_0_i_9_n_0 ;
  wire \result[19]_INST_0_i_10_n_0 ;
  wire \result[19]_INST_0_i_11_n_0 ;
  wire \result[19]_INST_0_i_12_n_0 ;
  wire \result[19]_INST_0_i_1_n_0 ;
  wire \result[19]_INST_0_i_2_n_0 ;
  wire \result[19]_INST_0_i_3_n_0 ;
  wire \result[19]_INST_0_i_4_n_0 ;
  wire \result[19]_INST_0_i_5_n_0 ;
  wire \result[19]_INST_0_i_6_n_0 ;
  wire \result[19]_INST_0_i_7_n_0 ;
  wire \result[19]_INST_0_i_8_n_0 ;
  wire \result[19]_INST_0_i_9_n_0 ;
  wire \result[1]_INST_0_i_1_n_0 ;
  wire \result[1]_INST_0_i_2_n_0 ;
  wire \result[1]_INST_0_i_3_n_0 ;
  wire \result[1]_INST_0_i_4_n_0 ;
  wire \result[1]_INST_0_i_5_n_0 ;
  wire \result[1]_INST_0_i_6_n_0 ;
  wire \result[1]_INST_0_i_7_n_0 ;
  wire \result[20]_INST_0_i_10_n_0 ;
  wire \result[20]_INST_0_i_11_n_0 ;
  wire \result[20]_INST_0_i_1_n_0 ;
  wire \result[20]_INST_0_i_2_n_0 ;
  wire \result[20]_INST_0_i_3_n_0 ;
  wire \result[20]_INST_0_i_4_n_0 ;
  wire \result[20]_INST_0_i_5_n_0 ;
  wire \result[20]_INST_0_i_6_n_0 ;
  wire \result[20]_INST_0_i_7_n_0 ;
  wire \result[20]_INST_0_i_8_n_0 ;
  wire \result[20]_INST_0_i_9_n_0 ;
  wire \result[21]_INST_0_i_10_n_0 ;
  wire \result[21]_INST_0_i_11_n_0 ;
  wire \result[21]_INST_0_i_1_n_0 ;
  wire \result[21]_INST_0_i_2_n_0 ;
  wire \result[21]_INST_0_i_3_n_0 ;
  wire \result[21]_INST_0_i_4_n_0 ;
  wire \result[21]_INST_0_i_5_n_0 ;
  wire \result[21]_INST_0_i_6_n_0 ;
  wire \result[21]_INST_0_i_7_n_0 ;
  wire \result[21]_INST_0_i_8_n_0 ;
  wire \result[21]_INST_0_i_9_n_0 ;
  wire \result[22]_INST_0_i_10_n_0 ;
  wire \result[22]_INST_0_i_11_n_0 ;
  wire \result[22]_INST_0_i_1_n_0 ;
  wire \result[22]_INST_0_i_2_n_0 ;
  wire \result[22]_INST_0_i_3_n_0 ;
  wire \result[22]_INST_0_i_4_n_0 ;
  wire \result[22]_INST_0_i_5_n_0 ;
  wire \result[22]_INST_0_i_6_n_0 ;
  wire \result[22]_INST_0_i_7_n_0 ;
  wire \result[22]_INST_0_i_8_n_0 ;
  wire \result[22]_INST_0_i_9_n_0 ;
  wire \result[23]_INST_0_i_10_n_0 ;
  wire \result[23]_INST_0_i_1_n_0 ;
  wire \result[23]_INST_0_i_2_n_0 ;
  wire \result[23]_INST_0_i_3_n_0 ;
  wire \result[23]_INST_0_i_4_n_0 ;
  wire \result[23]_INST_0_i_5_n_0 ;
  wire \result[23]_INST_0_i_6_n_0 ;
  wire \result[23]_INST_0_i_7_n_0 ;
  wire \result[23]_INST_0_i_8_n_0 ;
  wire \result[23]_INST_0_i_9_n_0 ;
  wire \result[24]_INST_0_i_10_n_0 ;
  wire \result[24]_INST_0_i_1_n_0 ;
  wire \result[24]_INST_0_i_2_n_0 ;
  wire \result[24]_INST_0_i_3_n_0 ;
  wire \result[24]_INST_0_i_4_n_0 ;
  wire \result[24]_INST_0_i_5_n_0 ;
  wire \result[24]_INST_0_i_6_n_0 ;
  wire \result[24]_INST_0_i_7_n_0 ;
  wire \result[24]_INST_0_i_8_n_0 ;
  wire \result[24]_INST_0_i_9_n_0 ;
  wire \result[25]_INST_0_i_10_n_0 ;
  wire \result[25]_INST_0_i_1_n_0 ;
  wire \result[25]_INST_0_i_2_n_0 ;
  wire \result[25]_INST_0_i_3_n_0 ;
  wire \result[25]_INST_0_i_4_n_0 ;
  wire \result[25]_INST_0_i_5_n_0 ;
  wire \result[25]_INST_0_i_6_n_0 ;
  wire \result[25]_INST_0_i_7_n_0 ;
  wire \result[25]_INST_0_i_8_n_0 ;
  wire \result[25]_INST_0_i_9_n_0 ;
  wire \result[26]_INST_0_i_1_n_0 ;
  wire \result[26]_INST_0_i_2_n_0 ;
  wire \result[26]_INST_0_i_3_n_0 ;
  wire \result[26]_INST_0_i_4_n_0 ;
  wire \result[26]_INST_0_i_5_n_0 ;
  wire \result[26]_INST_0_i_6_n_0 ;
  wire \result[26]_INST_0_i_7_n_0 ;
  wire \result[26]_INST_0_i_8_n_0 ;
  wire \result[26]_INST_0_i_9_n_0 ;
  wire \result[27]_INST_0_i_10_n_0 ;
  wire \result[27]_INST_0_i_11_n_0 ;
  wire \result[27]_INST_0_i_1_n_0 ;
  wire \result[27]_INST_0_i_2_n_0 ;
  wire \result[27]_INST_0_i_3_n_0 ;
  wire \result[27]_INST_0_i_4_n_0 ;
  wire \result[27]_INST_0_i_5_n_0 ;
  wire \result[27]_INST_0_i_6_n_0 ;
  wire \result[27]_INST_0_i_7_n_0 ;
  wire \result[27]_INST_0_i_8_n_0 ;
  wire \result[27]_INST_0_i_9_n_0 ;
  wire \result[28]_INST_0_i_10_n_0 ;
  wire \result[28]_INST_0_i_1_n_0 ;
  wire \result[28]_INST_0_i_2_n_0 ;
  wire \result[28]_INST_0_i_3_n_0 ;
  wire \result[28]_INST_0_i_4_n_0 ;
  wire \result[28]_INST_0_i_5_n_0 ;
  wire \result[28]_INST_0_i_6_n_0 ;
  wire \result[28]_INST_0_i_7_n_0 ;
  wire \result[28]_INST_0_i_8_n_0 ;
  wire \result[28]_INST_0_i_9_n_0 ;
  wire \result[29]_INST_0_i_1_n_0 ;
  wire \result[29]_INST_0_i_2_n_0 ;
  wire \result[29]_INST_0_i_3_n_0 ;
  wire \result[29]_INST_0_i_4_n_0 ;
  wire \result[29]_INST_0_i_5_n_0 ;
  wire \result[29]_INST_0_i_6_n_0 ;
  wire \result[29]_INST_0_i_7_n_0 ;
  wire \result[29]_INST_0_i_8_n_0 ;
  wire \result[2]_INST_0_i_1_n_0 ;
  wire \result[2]_INST_0_i_2_n_0 ;
  wire \result[2]_INST_0_i_3_n_0 ;
  wire \result[2]_INST_0_i_4_n_0 ;
  wire \result[2]_INST_0_i_5_n_0 ;
  wire \result[2]_INST_0_i_6_n_0 ;
  wire \result[2]_INST_0_i_7_n_0 ;
  wire \result[2]_INST_0_i_8_n_0 ;
  wire \result[2]_INST_0_i_9_n_0 ;
  wire \result[30]_INST_0_i_10_n_0 ;
  wire \result[30]_INST_0_i_11_n_0 ;
  wire \result[30]_INST_0_i_12_n_0 ;
  wire \result[30]_INST_0_i_13_n_0 ;
  wire \result[30]_INST_0_i_14_n_0 ;
  wire \result[30]_INST_0_i_15_n_0 ;
  wire \result[30]_INST_0_i_16_n_0 ;
  wire \result[30]_INST_0_i_17_n_0 ;
  wire \result[30]_INST_0_i_1_n_0 ;
  wire \result[30]_INST_0_i_2_n_0 ;
  wire \result[30]_INST_0_i_3_n_0 ;
  wire \result[30]_INST_0_i_4_n_0 ;
  wire \result[30]_INST_0_i_5_n_0 ;
  wire \result[30]_INST_0_i_6_n_0 ;
  wire \result[30]_INST_0_i_7_n_0 ;
  wire \result[30]_INST_0_i_8_n_0 ;
  wire \result[30]_INST_0_i_9_n_0 ;
  wire \result[31]_INST_0_i_10_n_0 ;
  wire \result[31]_INST_0_i_11_n_0 ;
  wire \result[31]_INST_0_i_12_n_0 ;
  wire \result[31]_INST_0_i_1_n_0 ;
  wire \result[31]_INST_0_i_2_n_0 ;
  wire \result[31]_INST_0_i_3_n_0 ;
  wire \result[31]_INST_0_i_4_n_0 ;
  wire \result[31]_INST_0_i_5_n_0 ;
  wire \result[31]_INST_0_i_6_n_0 ;
  wire \result[31]_INST_0_i_7_n_0 ;
  wire \result[31]_INST_0_i_8_n_0 ;
  wire \result[31]_INST_0_i_9_n_0 ;
  wire \result[3]_INST_0_i_1_n_0 ;
  wire \result[3]_INST_0_i_2_n_0 ;
  wire \result[3]_INST_0_i_3_n_0 ;
  wire \result[3]_INST_0_i_4_n_0 ;
  wire \result[3]_INST_0_i_5_n_0 ;
  wire \result[3]_INST_0_i_6_n_0 ;
  wire \result[3]_INST_0_i_7_n_0 ;
  wire \result[3]_INST_0_i_8_n_0 ;
  wire \result[3]_INST_0_i_9_n_0 ;
  wire \result[4]_INST_0_i_1_n_0 ;
  wire \result[4]_INST_0_i_2_n_0 ;
  wire \result[4]_INST_0_i_3_n_0 ;
  wire \result[4]_INST_0_i_4_n_0 ;
  wire \result[4]_INST_0_i_5_n_0 ;
  wire \result[4]_INST_0_i_6_n_0 ;
  wire \result[4]_INST_0_i_7_n_0 ;
  wire \result[5]_INST_0_i_1_n_0 ;
  wire \result[5]_INST_0_i_2_n_0 ;
  wire \result[5]_INST_0_i_3_n_0 ;
  wire \result[5]_INST_0_i_4_n_0 ;
  wire \result[5]_INST_0_i_5_n_0 ;
  wire \result[5]_INST_0_i_6_n_0 ;
  wire \result[5]_INST_0_i_7_n_0 ;
  wire \result[6]_INST_0_i_1_n_0 ;
  wire \result[6]_INST_0_i_2_n_0 ;
  wire \result[6]_INST_0_i_3_n_0 ;
  wire \result[6]_INST_0_i_4_n_0 ;
  wire \result[6]_INST_0_i_5_n_0 ;
  wire \result[6]_INST_0_i_6_n_0 ;
  wire \result[6]_INST_0_i_7_n_0 ;
  wire \result[7]_INST_0_i_1_n_0 ;
  wire \result[7]_INST_0_i_2_n_0 ;
  wire \result[7]_INST_0_i_3_n_0 ;
  wire \result[7]_INST_0_i_4_n_0 ;
  wire \result[7]_INST_0_i_5_n_0 ;
  wire \result[7]_INST_0_i_6_n_0 ;
  wire \result[7]_INST_0_i_7_n_0 ;
  wire \result[7]_INST_0_i_8_n_0 ;
  wire \result[8]_INST_0_i_10_n_0 ;
  wire \result[8]_INST_0_i_1_n_0 ;
  wire \result[8]_INST_0_i_2_n_0 ;
  wire \result[8]_INST_0_i_3_n_0 ;
  wire \result[8]_INST_0_i_4_n_0 ;
  wire \result[8]_INST_0_i_5_n_0 ;
  wire \result[8]_INST_0_i_6_n_0 ;
  wire \result[8]_INST_0_i_7_n_0 ;
  wire \result[8]_INST_0_i_8_n_0 ;
  wire \result[8]_INST_0_i_9_n_0 ;
  wire \result[9]_INST_0_i_1_n_0 ;
  wire \result[9]_INST_0_i_2_n_0 ;
  wire \result[9]_INST_0_i_3_n_0 ;
  wire \result[9]_INST_0_i_4_n_0 ;
  wire \result[9]_INST_0_i_5_n_0 ;
  wire \result[9]_INST_0_i_6_n_0 ;
  wire \result[9]_INST_0_i_7_n_0 ;
  wire \result[9]_INST_0_i_8_n_0 ;
  wire \result[9]_INST_0_i_9_n_0 ;
  wire result_internal0_carry__0_i_1_n_0;
  wire result_internal0_carry__0_i_2_n_0;
  wire result_internal0_carry__0_i_3_n_0;
  wire result_internal0_carry__0_i_4_n_0;
  wire result_internal0_carry__0_n_0;
  wire result_internal0_carry__0_n_1;
  wire result_internal0_carry__0_n_2;
  wire result_internal0_carry__0_n_3;
  wire result_internal0_carry__0_n_4;
  wire result_internal0_carry__0_n_5;
  wire result_internal0_carry__0_n_6;
  wire result_internal0_carry__0_n_7;
  wire result_internal0_carry__1_i_1_n_0;
  wire result_internal0_carry__1_i_2_n_0;
  wire result_internal0_carry__1_i_3_n_0;
  wire result_internal0_carry__1_i_4_n_0;
  wire result_internal0_carry__1_n_0;
  wire result_internal0_carry__1_n_1;
  wire result_internal0_carry__1_n_2;
  wire result_internal0_carry__1_n_3;
  wire result_internal0_carry__1_n_4;
  wire result_internal0_carry__1_n_5;
  wire result_internal0_carry__1_n_6;
  wire result_internal0_carry__1_n_7;
  wire result_internal0_carry__2_i_1_n_0;
  wire result_internal0_carry__2_i_2_n_0;
  wire result_internal0_carry__2_i_3_n_0;
  wire result_internal0_carry__2_i_4_n_0;
  wire result_internal0_carry__2_n_0;
  wire result_internal0_carry__2_n_1;
  wire result_internal0_carry__2_n_2;
  wire result_internal0_carry__2_n_3;
  wire result_internal0_carry__2_n_4;
  wire result_internal0_carry__2_n_5;
  wire result_internal0_carry__2_n_6;
  wire result_internal0_carry__2_n_7;
  wire result_internal0_carry__3_i_1_n_0;
  wire result_internal0_carry__3_i_2_n_0;
  wire result_internal0_carry__3_i_3_n_0;
  wire result_internal0_carry__3_i_4_n_0;
  wire result_internal0_carry__3_n_0;
  wire result_internal0_carry__3_n_1;
  wire result_internal0_carry__3_n_2;
  wire result_internal0_carry__3_n_3;
  wire result_internal0_carry__3_n_4;
  wire result_internal0_carry__3_n_5;
  wire result_internal0_carry__3_n_6;
  wire result_internal0_carry__3_n_7;
  wire result_internal0_carry__4_i_1_n_0;
  wire result_internal0_carry__4_i_2_n_0;
  wire result_internal0_carry__4_i_3_n_0;
  wire result_internal0_carry__4_i_4_n_0;
  wire result_internal0_carry__4_n_0;
  wire result_internal0_carry__4_n_1;
  wire result_internal0_carry__4_n_2;
  wire result_internal0_carry__4_n_3;
  wire result_internal0_carry__4_n_4;
  wire result_internal0_carry__4_n_5;
  wire result_internal0_carry__4_n_6;
  wire result_internal0_carry__4_n_7;
  wire result_internal0_carry__5_i_1_n_0;
  wire result_internal0_carry__5_i_2_n_0;
  wire result_internal0_carry__5_i_3_n_0;
  wire result_internal0_carry__5_i_4_n_0;
  wire result_internal0_carry__5_n_0;
  wire result_internal0_carry__5_n_1;
  wire result_internal0_carry__5_n_2;
  wire result_internal0_carry__5_n_3;
  wire result_internal0_carry__5_n_4;
  wire result_internal0_carry__5_n_5;
  wire result_internal0_carry__5_n_6;
  wire result_internal0_carry__5_n_7;
  wire result_internal0_carry__6_i_1_n_0;
  wire result_internal0_carry__6_i_2_n_0;
  wire result_internal0_carry__6_i_3_n_0;
  wire result_internal0_carry__6_i_4_n_0;
  wire result_internal0_carry__6_n_1;
  wire result_internal0_carry__6_n_2;
  wire result_internal0_carry__6_n_3;
  wire result_internal0_carry__6_n_5;
  wire result_internal0_carry__6_n_6;
  wire result_internal0_carry__6_n_7;
  wire result_internal0_carry_i_1_n_0;
  wire result_internal0_carry_i_2_n_0;
  wire result_internal0_carry_i_3_n_0;
  wire result_internal0_carry_i_4_n_0;
  wire result_internal0_carry_n_0;
  wire result_internal0_carry_n_1;
  wire result_internal0_carry_n_2;
  wire result_internal0_carry_n_3;
  wire result_internal0_carry_n_4;
  wire result_internal0_carry_n_5;
  wire result_internal0_carry_n_6;
  wire result_internal0_carry_n_7;
  wire \result_internal0_inferred__0/i__carry__0_n_0 ;
  wire \result_internal0_inferred__0/i__carry__0_n_1 ;
  wire \result_internal0_inferred__0/i__carry__0_n_2 ;
  wire \result_internal0_inferred__0/i__carry__0_n_3 ;
  wire \result_internal0_inferred__0/i__carry__0_n_4 ;
  wire \result_internal0_inferred__0/i__carry__0_n_5 ;
  wire \result_internal0_inferred__0/i__carry__0_n_6 ;
  wire \result_internal0_inferred__0/i__carry__0_n_7 ;
  wire \result_internal0_inferred__0/i__carry__1_n_0 ;
  wire \result_internal0_inferred__0/i__carry__1_n_1 ;
  wire \result_internal0_inferred__0/i__carry__1_n_2 ;
  wire \result_internal0_inferred__0/i__carry__1_n_3 ;
  wire \result_internal0_inferred__0/i__carry__1_n_4 ;
  wire \result_internal0_inferred__0/i__carry__1_n_5 ;
  wire \result_internal0_inferred__0/i__carry__1_n_6 ;
  wire \result_internal0_inferred__0/i__carry__1_n_7 ;
  wire \result_internal0_inferred__0/i__carry__2_n_0 ;
  wire \result_internal0_inferred__0/i__carry__2_n_1 ;
  wire \result_internal0_inferred__0/i__carry__2_n_2 ;
  wire \result_internal0_inferred__0/i__carry__2_n_3 ;
  wire \result_internal0_inferred__0/i__carry__2_n_4 ;
  wire \result_internal0_inferred__0/i__carry__2_n_5 ;
  wire \result_internal0_inferred__0/i__carry__2_n_6 ;
  wire \result_internal0_inferred__0/i__carry__2_n_7 ;
  wire \result_internal0_inferred__0/i__carry__3_n_0 ;
  wire \result_internal0_inferred__0/i__carry__3_n_1 ;
  wire \result_internal0_inferred__0/i__carry__3_n_2 ;
  wire \result_internal0_inferred__0/i__carry__3_n_3 ;
  wire \result_internal0_inferred__0/i__carry__3_n_4 ;
  wire \result_internal0_inferred__0/i__carry__3_n_5 ;
  wire \result_internal0_inferred__0/i__carry__3_n_6 ;
  wire \result_internal0_inferred__0/i__carry__3_n_7 ;
  wire \result_internal0_inferred__0/i__carry__4_n_0 ;
  wire \result_internal0_inferred__0/i__carry__4_n_1 ;
  wire \result_internal0_inferred__0/i__carry__4_n_2 ;
  wire \result_internal0_inferred__0/i__carry__4_n_3 ;
  wire \result_internal0_inferred__0/i__carry__4_n_4 ;
  wire \result_internal0_inferred__0/i__carry__4_n_5 ;
  wire \result_internal0_inferred__0/i__carry__4_n_6 ;
  wire \result_internal0_inferred__0/i__carry__4_n_7 ;
  wire \result_internal0_inferred__0/i__carry__5_n_0 ;
  wire \result_internal0_inferred__0/i__carry__5_n_1 ;
  wire \result_internal0_inferred__0/i__carry__5_n_2 ;
  wire \result_internal0_inferred__0/i__carry__5_n_3 ;
  wire \result_internal0_inferred__0/i__carry__5_n_4 ;
  wire \result_internal0_inferred__0/i__carry__5_n_5 ;
  wire \result_internal0_inferred__0/i__carry__5_n_6 ;
  wire \result_internal0_inferred__0/i__carry__5_n_7 ;
  wire \result_internal0_inferred__0/i__carry__6_n_1 ;
  wire \result_internal0_inferred__0/i__carry__6_n_2 ;
  wire \result_internal0_inferred__0/i__carry__6_n_3 ;
  wire \result_internal0_inferred__0/i__carry__6_n_5 ;
  wire \result_internal0_inferred__0/i__carry__6_n_6 ;
  wire \result_internal0_inferred__0/i__carry__6_n_7 ;
  wire \result_internal0_inferred__0/i__carry_n_0 ;
  wire \result_internal0_inferred__0/i__carry_n_1 ;
  wire \result_internal0_inferred__0/i__carry_n_2 ;
  wire \result_internal0_inferred__0/i__carry_n_3 ;
  wire \result_internal0_inferred__0/i__carry_n_4 ;
  wire \result_internal0_inferred__0/i__carry_n_5 ;
  wire \result_internal0_inferred__0/i__carry_n_6 ;
  wire \result_internal0_inferred__0/i__carry_n_7 ;
  wire \result_internal0_inferred__1/i__carry__0_n_0 ;
  wire \result_internal0_inferred__1/i__carry__0_n_1 ;
  wire \result_internal0_inferred__1/i__carry__0_n_2 ;
  wire \result_internal0_inferred__1/i__carry__0_n_3 ;
  wire \result_internal0_inferred__1/i__carry__1_n_0 ;
  wire \result_internal0_inferred__1/i__carry__1_n_1 ;
  wire \result_internal0_inferred__1/i__carry__1_n_2 ;
  wire \result_internal0_inferred__1/i__carry__1_n_3 ;
  wire \result_internal0_inferred__1/i__carry__2_n_1 ;
  wire \result_internal0_inferred__1/i__carry__2_n_2 ;
  wire \result_internal0_inferred__1/i__carry__2_n_3 ;
  wire \result_internal0_inferred__1/i__carry_n_0 ;
  wire \result_internal0_inferred__1/i__carry_n_1 ;
  wire \result_internal0_inferred__1/i__carry_n_2 ;
  wire \result_internal0_inferred__1/i__carry_n_3 ;
  wire \result_internal0_inferred__2/i__carry__0_n_0 ;
  wire \result_internal0_inferred__2/i__carry__0_n_1 ;
  wire \result_internal0_inferred__2/i__carry__0_n_2 ;
  wire \result_internal0_inferred__2/i__carry__0_n_3 ;
  wire \result_internal0_inferred__2/i__carry__1_n_0 ;
  wire \result_internal0_inferred__2/i__carry__1_n_1 ;
  wire \result_internal0_inferred__2/i__carry__1_n_2 ;
  wire \result_internal0_inferred__2/i__carry__1_n_3 ;
  wire \result_internal0_inferred__2/i__carry__2_n_1 ;
  wire \result_internal0_inferred__2/i__carry__2_n_2 ;
  wire \result_internal0_inferred__2/i__carry__2_n_3 ;
  wire \result_internal0_inferred__2/i__carry_n_0 ;
  wire \result_internal0_inferred__2/i__carry_n_1 ;
  wire \result_internal0_inferred__2/i__carry_n_2 ;
  wire \result_internal0_inferred__2/i__carry_n_3 ;
  wire zero;
  wire zero_INST_0_i_10_n_0;
  wire zero_INST_0_i_1_n_0;
  wire zero_INST_0_i_2_n_0;
  wire zero_INST_0_i_3_n_0;
  wire zero_INST_0_i_4_n_0;
  wire zero_INST_0_i_5_n_0;
  wire zero_INST_0_i_6_n_0;
  wire zero_INST_0_i_7_n_0;
  wire zero_INST_0_i_8_n_0;
  wire zero_INST_0_i_9_n_0;
  wire [3:3]NLW_result_internal0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_result_internal0_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__2/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_result_internal0_inferred__2/i__carry__2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1
       (.I0(b[14]),
        .I1(a[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(b[7]),
        .I1(a[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2
       (.I0(b[12]),
        .I1(a[12]),
        .I2(a[13]),
        .I3(b[13]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(b[6]),
        .I1(a[6]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_3
       (.I0(b[10]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(b[11]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(b[5]),
        .I1(a[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_4
       (.I0(b[8]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(b[9]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(b[4]),
        .I1(a[4]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(b[15]),
        .I1(a[15]),
        .I2(b[14]),
        .I3(a[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(b[13]),
        .I1(a[13]),
        .I2(b[12]),
        .I3(a[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(b[11]),
        .I1(a[11]),
        .I2(b[10]),
        .I3(a[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(b[9]),
        .I1(a[9]),
        .I2(b[8]),
        .I3(a[8]),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_1
       (.I0(b[22]),
        .I1(a[22]),
        .I2(a[23]),
        .I3(b[23]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_1__0
       (.I0(b[11]),
        .I1(a[11]),
        .O(i__carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_2
       (.I0(b[20]),
        .I1(a[20]),
        .I2(a[21]),
        .I3(b[21]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2__0
       (.I0(b[10]),
        .I1(a[10]),
        .O(i__carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_3
       (.I0(b[18]),
        .I1(a[18]),
        .I2(a[19]),
        .I3(b[19]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3__0
       (.I0(b[9]),
        .I1(a[9]),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__1_i_4
       (.I0(b[16]),
        .I1(a[16]),
        .I2(a[17]),
        .I3(b[17]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4__0
       (.I0(b[8]),
        .I1(a[8]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(b[23]),
        .I1(a[23]),
        .I2(b[22]),
        .I3(a[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(b[21]),
        .I1(a[21]),
        .I2(b[20]),
        .I3(a[20]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(b[19]),
        .I1(a[19]),
        .I2(b[18]),
        .I3(a[18]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(b[17]),
        .I1(a[17]),
        .I2(b[16]),
        .I3(a[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__2_i_1
       (.I0(a[31]),
        .I1(b[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__0
       (.I0(b[15]),
        .I1(a[15]),
        .O(i__carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_2
       (.I0(b[28]),
        .I1(a[28]),
        .I2(a[29]),
        .I3(b[29]),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__0
       (.I0(b[14]),
        .I1(a[14]),
        .O(i__carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_3
       (.I0(b[26]),
        .I1(a[26]),
        .I2(a[27]),
        .I3(b[27]),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3__0
       (.I0(b[13]),
        .I1(a[13]),
        .O(i__carry__2_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_4
       (.I0(b[24]),
        .I1(a[24]),
        .I2(a[25]),
        .I3(b[25]),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4__0
       (.I0(b[12]),
        .I1(a[12]),
        .O(i__carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(b[31]),
        .I1(a[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(b[29]),
        .I1(a[29]),
        .I2(b[28]),
        .I3(a[28]),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(b[27]),
        .I1(a[27]),
        .I2(b[26]),
        .I3(a[26]),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(b[25]),
        .I1(a[25]),
        .I2(b[24]),
        .I3(a[24]),
        .O(i__carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(b[19]),
        .I1(a[19]),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(b[18]),
        .I1(a[18]),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(b[17]),
        .I1(a[17]),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(b[16]),
        .I1(a[16]),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(b[23]),
        .I1(a[23]),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(b[22]),
        .I1(a[22]),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_3
       (.I0(b[21]),
        .I1(a[21]),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_4
       (.I0(b[20]),
        .I1(a[20]),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_1
       (.I0(b[27]),
        .I1(a[27]),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_2
       (.I0(b[26]),
        .I1(a[26]),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_3
       (.I0(b[25]),
        .I1(a[25]),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__5_i_4
       (.I0(b[24]),
        .I1(a[24]),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_1
       (.I0(b[31]),
        .I1(a[31]),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_2
       (.I0(b[30]),
        .I1(a[30]),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_3
       (.I0(b[29]),
        .I1(a[29]),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__6_i_4
       (.I0(b[28]),
        .I1(a[28]),
        .O(i__carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(b[6]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(b[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(b[14]),
        .I1(a[14]),
        .I2(a[15]),
        .I3(b[15]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(b[22]),
        .I1(a[22]),
        .I2(a[23]),
        .I3(b[23]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry_i_1__2
       (.I0(a[31]),
        .I1(b[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__3
       (.I0(b[6]),
        .I1(a[6]),
        .I2(a[7]),
        .I3(b[7]),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__4
       (.I0(b[3]),
        .I1(a[3]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(b[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(b[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(b[12]),
        .I1(a[12]),
        .I2(a[13]),
        .I3(b[13]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(b[20]),
        .I1(a[20]),
        .I2(a[21]),
        .I3(b[21]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(b[28]),
        .I1(a[28]),
        .I2(a[29]),
        .I3(b[29]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__3
       (.I0(b[4]),
        .I1(a[4]),
        .I2(a[5]),
        .I3(b[5]),
        .O(i__carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__4
       (.I0(b[2]),
        .I1(a[2]),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(b[2]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(b[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(b[10]),
        .I1(a[10]),
        .I2(a[11]),
        .I3(b[11]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(b[18]),
        .I1(a[18]),
        .I2(a[19]),
        .I3(b[19]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(b[26]),
        .I1(a[26]),
        .I2(a[27]),
        .I3(b[27]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__3
       (.I0(b[2]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(b[3]),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__4
       (.I0(b[1]),
        .I1(a[1]),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(b[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(b[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(b[8]),
        .I1(a[8]),
        .I2(a[9]),
        .I3(b[9]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__1
       (.I0(b[16]),
        .I1(a[16]),
        .I2(a[17]),
        .I3(b[17]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__2
       (.I0(b[24]),
        .I1(a[24]),
        .I2(a[25]),
        .I3(b[25]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__3
       (.I0(b[0]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(b[1]),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__4
       (.I0(b[0]),
        .I1(a[0]),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(b[7]),
        .I1(a[7]),
        .I2(b[6]),
        .I3(a[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(b[15]),
        .I1(a[15]),
        .I2(b[14]),
        .I3(a[14]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(b[23]),
        .I1(a[23]),
        .I2(b[22]),
        .I3(a[22]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(b[31]),
        .I1(a[31]),
        .I2(b[30]),
        .I3(a[30]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__3
       (.I0(b[7]),
        .I1(a[7]),
        .I2(b[6]),
        .I3(a[6]),
        .O(i__carry_i_5__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(b[5]),
        .I1(a[5]),
        .I2(b[4]),
        .I3(a[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(b[13]),
        .I1(a[13]),
        .I2(b[12]),
        .I3(a[12]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(b[21]),
        .I1(a[21]),
        .I2(b[20]),
        .I3(a[20]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(b[29]),
        .I1(a[29]),
        .I2(b[28]),
        .I3(a[28]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__3
       (.I0(b[5]),
        .I1(a[5]),
        .I2(b[4]),
        .I3(a[4]),
        .O(i__carry_i_6__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(b[3]),
        .I1(a[3]),
        .I2(b[2]),
        .I3(a[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(b[11]),
        .I1(a[11]),
        .I2(b[10]),
        .I3(a[10]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(b[19]),
        .I1(a[19]),
        .I2(b[18]),
        .I3(a[18]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(b[27]),
        .I1(a[27]),
        .I2(b[26]),
        .I3(a[26]),
        .O(i__carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__3
       (.I0(b[3]),
        .I1(a[3]),
        .I2(b[2]),
        .I3(a[2]),
        .O(i__carry_i_7__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(b[1]),
        .I1(a[1]),
        .I2(b[0]),
        .I3(a[0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(b[9]),
        .I1(a[9]),
        .I2(b[8]),
        .I3(a[8]),
        .O(i__carry_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(b[17]),
        .I1(a[17]),
        .I2(b[16]),
        .I3(a[16]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(b[25]),
        .I1(a[25]),
        .I2(b[24]),
        .I3(a[24]),
        .O(i__carry_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__3
       (.I0(b[1]),
        .I1(a[1]),
        .I2(b[0]),
        .I3(a[0]),
        .O(i__carry_i_8__3_n_0));
  LUT6 #(
    .INIT(64'h0200882002880020)) 
    overflow_INST_0
       (.I0(overflow_INST_0_i_1_n_0),
        .I1(alu_op[0]),
        .I2(p_1_in2_in),
        .I3(b[31]),
        .I4(a[31]),
        .I5(p_1_in),
        .O(overflow));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h01)) 
    overflow_INST_0_i_1
       (.I0(alu_op[2]),
        .I1(alu_op[1]),
        .I2(alu_op[3]),
        .O(overflow_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFAAAEEAA)) 
    \result[0]_INST_0 
       (.I0(\result[0]_INST_0_i_1_n_0 ),
        .I1(\result[0]_INST_0_i_2_n_0 ),
        .I2(\result[0]_INST_0_i_3_n_0 ),
        .I3(\result[31]_INST_0_i_3_n_0 ),
        .I4(b[0]),
        .O(result[0]));
  LUT6 #(
    .INIT(64'h00000000FFD5FF80)) 
    \result[0]_INST_0_i_1 
       (.I0(alu_op[2]),
        .I1(alu_op[1]),
        .I2(\result[0]_INST_0_i_4_n_0 ),
        .I3(\result[0]_INST_0_i_5_n_0 ),
        .I4(\result[0]_INST_0_i_6_n_0 ),
        .I5(alu_op[3]),
        .O(\result[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_10 
       (.I0(a[4]),
        .I1(a[20]),
        .I2(b[3]),
        .I3(a[28]),
        .I4(b[4]),
        .I5(a[12]),
        .O(\result[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCFC0C0CFA0AFA0A)) 
    \result[0]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[23]),
        .I2(b[3]),
        .I3(a[15]),
        .I4(a[31]),
        .I5(b[4]),
        .O(\result[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_12 
       (.I0(a[3]),
        .I1(a[19]),
        .I2(b[3]),
        .I3(a[27]),
        .I4(b[4]),
        .I5(a[11]),
        .O(\result[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_13 
       (.I0(a[1]),
        .I1(a[17]),
        .I2(b[3]),
        .I3(a[25]),
        .I4(b[4]),
        .I5(a[9]),
        .O(\result[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_14 
       (.I0(a[5]),
        .I1(a[21]),
        .I2(b[3]),
        .I3(a[29]),
        .I4(b[4]),
        .I5(a[13]),
        .O(\result[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \result[0]_INST_0_i_2 
       (.I0(\result[0]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(\result[0]_INST_0_i_8_n_0 ),
        .I3(\result[0]_INST_0_i_9_n_0 ),
        .I4(\result[0]_INST_0_i_10_n_0 ),
        .I5(b[1]),
        .O(\result[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \result[0]_INST_0_i_3 
       (.I0(\result[0]_INST_0_i_11_n_0 ),
        .I1(b[2]),
        .I2(\result[0]_INST_0_i_12_n_0 ),
        .I3(\result[0]_INST_0_i_13_n_0 ),
        .I4(\result[0]_INST_0_i_14_n_0 ),
        .I5(b[1]),
        .O(\result[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000F0F1000F0F0)) 
    \result[0]_INST_0_i_4 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(\result[27]_INST_0_i_8_n_0 ),
        .I4(alu_op[0]),
        .I5(b[0]),
        .O(\result[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[0]_INST_0_i_5 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(b[0]),
        .I4(a[0]),
        .O(\result[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    \result[0]_INST_0_i_6 
       (.I0(\result_internal0_inferred__0/i__carry_n_7 ),
        .I1(data3),
        .I2(alu_op[1]),
        .I3(result_internal0_carry_n_7),
        .I4(alu_op[0]),
        .I5(data2),
        .O(\result[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_7 
       (.I0(a[6]),
        .I1(a[22]),
        .I2(b[3]),
        .I3(a[30]),
        .I4(b[4]),
        .I5(a[14]),
        .O(\result[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_8 
       (.I0(a[2]),
        .I1(a[18]),
        .I2(b[3]),
        .I3(a[26]),
        .I4(b[4]),
        .I5(a[10]),
        .O(\result[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[0]_INST_0_i_9 
       (.I0(a[0]),
        .I1(a[16]),
        .I2(b[3]),
        .I3(a[24]),
        .I4(b[4]),
        .I5(a[8]),
        .O(\result[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[10]_INST_0 
       (.I0(\result[10]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[10]_INST_0_i_2_n_0 ),
        .I3(\result[10]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[10]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[10]_INST_0_i_1 
       (.I0(\result[11]_INST_0_i_4_n_0 ),
        .I1(\result[11]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[10]_INST_0_i_4_n_0 ),
        .I5(\result[10]_INST_0_i_5_n_0 ),
        .O(\result[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[10]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__1_n_5),
        .I4(\result_internal0_inferred__0/i__carry__1_n_5 ),
        .I5(\result[10]_INST_0_i_6_n_0 ),
        .O(\result[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[10]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[11]_INST_0_i_7_n_0 ),
        .I2(\result[10]_INST_0_i_7_n_0 ),
        .I3(b[10]),
        .I4(a[10]),
        .I5(alu_op[0]),
        .O(\result[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[10]_INST_0_i_4 
       (.I0(\result[16]_INST_0_i_10_n_0 ),
        .I1(\result[12]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[14]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[10]_INST_0_i_8_n_0 ),
        .O(\result[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[10]_INST_0_i_5 
       (.I0(\result[16]_INST_0_i_8_n_0 ),
        .I1(\result[12]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[14]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[10]_INST_0_i_9_n_0 ),
        .O(\result[10]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[10]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[10]),
        .I3(alu_op[0]),
        .I4(b[10]),
        .O(\result[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[10]_INST_0_i_7 
       (.I0(a[3]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[7]),
        .I4(b[1]),
        .I5(\result[12]_INST_0_i_10_n_0 ),
        .O(\result[10]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[10]_INST_0_i_8 
       (.I0(a[18]),
        .I1(b[3]),
        .I2(a[26]),
        .I3(b[4]),
        .I4(a[10]),
        .O(\result[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[10]_INST_0_i_9 
       (.I0(a[18]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[26]),
        .I4(b[4]),
        .I5(a[10]),
        .O(\result[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[11]_INST_0 
       (.I0(\result[11]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[11]_INST_0_i_2_n_0 ),
        .I3(\result[11]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[11]_INST_0_i_1 
       (.I0(\result[12]_INST_0_i_4_n_0 ),
        .I1(\result[12]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[11]_INST_0_i_4_n_0 ),
        .I5(\result[11]_INST_0_i_5_n_0 ),
        .O(\result[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[11]_INST_0_i_10 
       (.I0(a[4]),
        .I1(b[2]),
        .I2(a[0]),
        .I3(a[8]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[11]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__1_n_4),
        .I4(\result_internal0_inferred__0/i__carry__1_n_4 ),
        .I5(\result[11]_INST_0_i_6_n_0 ),
        .O(\result[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[11]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[12]_INST_0_i_7_n_0 ),
        .I2(\result[11]_INST_0_i_7_n_0 ),
        .I3(b[11]),
        .I4(a[11]),
        .I5(alu_op[0]),
        .O(\result[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[11]_INST_0_i_4 
       (.I0(\result[17]_INST_0_i_10_n_0 ),
        .I1(\result[13]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[15]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[11]_INST_0_i_8_n_0 ),
        .O(\result[11]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[11]_INST_0_i_5 
       (.I0(\result[17]_INST_0_i_8_n_0 ),
        .I1(\result[13]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[15]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[11]_INST_0_i_9_n_0 ),
        .O(\result[11]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[11]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[11]),
        .I3(alu_op[0]),
        .I4(b[11]),
        .O(\result[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[11]_INST_0_i_7 
       (.I0(\result[11]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[13]_INST_0_i_10_n_0 ),
        .O(\result[11]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[11]_INST_0_i_8 
       (.I0(a[19]),
        .I1(b[3]),
        .I2(a[27]),
        .I3(b[4]),
        .I4(a[11]),
        .O(\result[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[11]_INST_0_i_9 
       (.I0(a[19]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[27]),
        .I4(b[4]),
        .I5(a[11]),
        .O(\result[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[12]_INST_0 
       (.I0(\result[12]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[12]_INST_0_i_2_n_0 ),
        .I3(\result[12]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[12]_INST_0_i_1 
       (.I0(\result[13]_INST_0_i_4_n_0 ),
        .I1(\result[13]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[12]_INST_0_i_4_n_0 ),
        .I5(\result[12]_INST_0_i_5_n_0 ),
        .O(\result[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[12]_INST_0_i_10 
       (.I0(a[5]),
        .I1(b[2]),
        .I2(a[1]),
        .I3(a[9]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[12]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__2_n_7),
        .I4(\result_internal0_inferred__0/i__carry__2_n_7 ),
        .I5(\result[12]_INST_0_i_6_n_0 ),
        .O(\result[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[12]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[13]_INST_0_i_7_n_0 ),
        .I2(\result[12]_INST_0_i_7_n_0 ),
        .I3(b[12]),
        .I4(a[12]),
        .I5(alu_op[0]),
        .O(\result[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[12]_INST_0_i_4 
       (.I0(\result[18]_INST_0_i_10_n_0 ),
        .I1(\result[14]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[16]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[12]_INST_0_i_8_n_0 ),
        .O(\result[12]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[12]_INST_0_i_5 
       (.I0(\result[18]_INST_0_i_8_n_0 ),
        .I1(\result[14]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[16]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[12]_INST_0_i_9_n_0 ),
        .O(\result[12]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[12]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[12]),
        .I3(alu_op[0]),
        .I4(b[12]),
        .O(\result[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[12]_INST_0_i_7 
       (.I0(\result[12]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[14]_INST_0_i_10_n_0 ),
        .O(\result[12]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[12]_INST_0_i_8 
       (.I0(a[20]),
        .I1(b[3]),
        .I2(a[28]),
        .I3(b[4]),
        .I4(a[12]),
        .O(\result[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[12]_INST_0_i_9 
       (.I0(a[20]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[28]),
        .I4(b[4]),
        .I5(a[12]),
        .O(\result[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[13]_INST_0 
       (.I0(\result[13]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[13]_INST_0_i_2_n_0 ),
        .I3(\result[13]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[13]_INST_0_i_1 
       (.I0(\result[14]_INST_0_i_4_n_0 ),
        .I1(\result[14]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[13]_INST_0_i_4_n_0 ),
        .I5(\result[13]_INST_0_i_5_n_0 ),
        .O(\result[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[13]_INST_0_i_10 
       (.I0(a[6]),
        .I1(b[2]),
        .I2(a[2]),
        .I3(a[10]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[13]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__2_n_6),
        .I4(\result_internal0_inferred__0/i__carry__2_n_6 ),
        .I5(\result[13]_INST_0_i_6_n_0 ),
        .O(\result[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[13]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[14]_INST_0_i_7_n_0 ),
        .I2(\result[13]_INST_0_i_7_n_0 ),
        .I3(b[13]),
        .I4(a[13]),
        .I5(alu_op[0]),
        .O(\result[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[13]_INST_0_i_4 
       (.I0(\result[19]_INST_0_i_11_n_0 ),
        .I1(\result[15]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[17]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[13]_INST_0_i_8_n_0 ),
        .O(\result[13]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[13]_INST_0_i_5 
       (.I0(\result[19]_INST_0_i_9_n_0 ),
        .I1(\result[15]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[17]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[13]_INST_0_i_9_n_0 ),
        .O(\result[13]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[13]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[13]),
        .I3(alu_op[0]),
        .I4(b[13]),
        .O(\result[13]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result[13]_INST_0_i_7 
       (.I0(\result[13]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[15]_INST_0_i_10_n_0 ),
        .I3(b[2]),
        .I4(\result[19]_INST_0_i_12_n_0 ),
        .O(\result[13]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[13]_INST_0_i_8 
       (.I0(a[21]),
        .I1(b[3]),
        .I2(a[29]),
        .I3(b[4]),
        .I4(a[13]),
        .O(\result[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[13]_INST_0_i_9 
       (.I0(a[21]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[29]),
        .I4(b[4]),
        .I5(a[13]),
        .O(\result[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[14]_INST_0 
       (.I0(\result[14]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[14]_INST_0_i_2_n_0 ),
        .I3(\result[14]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[14]_INST_0_i_1 
       (.I0(\result[15]_INST_0_i_4_n_0 ),
        .I1(\result[15]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[14]_INST_0_i_4_n_0 ),
        .I5(\result[14]_INST_0_i_5_n_0 ),
        .O(\result[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[14]_INST_0_i_10 
       (.I0(a[7]),
        .I1(b[2]),
        .I2(a[3]),
        .I3(a[11]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[14]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__2_n_5),
        .I4(\result_internal0_inferred__0/i__carry__2_n_5 ),
        .I5(\result[14]_INST_0_i_6_n_0 ),
        .O(\result[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[14]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[15]_INST_0_i_7_n_0 ),
        .I2(\result[14]_INST_0_i_7_n_0 ),
        .I3(b[14]),
        .I4(a[14]),
        .I5(alu_op[0]),
        .O(\result[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[14]_INST_0_i_4 
       (.I0(\result[16]_INST_0_i_9_n_0 ),
        .I1(\result[16]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[18]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[14]_INST_0_i_8_n_0 ),
        .O(\result[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[14]_INST_0_i_5 
       (.I0(\result[20]_INST_0_i_9_n_0 ),
        .I1(\result[16]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[18]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[14]_INST_0_i_9_n_0 ),
        .O(\result[14]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[14]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[14]),
        .I3(alu_op[0]),
        .I4(b[14]),
        .O(\result[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result[14]_INST_0_i_7 
       (.I0(\result[14]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[16]_INST_0_i_11_n_0 ),
        .I3(b[2]),
        .I4(\result[20]_INST_0_i_11_n_0 ),
        .O(\result[14]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[14]_INST_0_i_8 
       (.I0(a[22]),
        .I1(b[3]),
        .I2(a[30]),
        .I3(b[4]),
        .I4(a[14]),
        .O(\result[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[14]_INST_0_i_9 
       (.I0(a[22]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[30]),
        .I4(b[4]),
        .I5(a[14]),
        .O(\result[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[15]_INST_0 
       (.I0(\result[15]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[15]_INST_0_i_2_n_0 ),
        .I3(\result[15]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[15]_INST_0_i_1 
       (.I0(\result[16]_INST_0_i_5_n_0 ),
        .I1(\result[16]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[15]_INST_0_i_4_n_0 ),
        .I5(\result[15]_INST_0_i_5_n_0 ),
        .O(\result[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[15]_INST_0_i_10 
       (.I0(a[0]),
        .I1(a[8]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[15]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__2_n_4),
        .I4(\result_internal0_inferred__0/i__carry__2_n_4 ),
        .I5(\result[15]_INST_0_i_6_n_0 ),
        .O(\result[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[15]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[16]_INST_0_i_7_n_0 ),
        .I2(\result[15]_INST_0_i_7_n_0 ),
        .I3(b[15]),
        .I4(a[15]),
        .I5(alu_op[0]),
        .O(\result[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[15]_INST_0_i_4 
       (.I0(\result[17]_INST_0_i_9_n_0 ),
        .I1(\result[17]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[19]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[15]_INST_0_i_8_n_0 ),
        .O(\result[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[15]_INST_0_i_5 
       (.I0(\result[21]_INST_0_i_9_n_0 ),
        .I1(\result[17]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[19]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[15]_INST_0_i_9_n_0 ),
        .O(\result[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[15]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[15]),
        .I3(alu_op[0]),
        .I4(b[15]),
        .O(\result[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[15]_INST_0_i_7 
       (.I0(\result[15]_INST_0_i_10_n_0 ),
        .I1(\result[19]_INST_0_i_12_n_0 ),
        .I2(b[1]),
        .I3(\result[17]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[21]_INST_0_i_11_n_0 ),
        .O(\result[15]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \result[15]_INST_0_i_8 
       (.I0(a[23]),
        .I1(b[3]),
        .I2(a[15]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[15]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[15]_INST_0_i_9 
       (.I0(a[23]),
        .I1(b[3]),
        .I2(a[15]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[16]_INST_0 
       (.I0(\result[16]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[16]_INST_0_i_2_n_0 ),
        .I3(\result[16]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[16]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[16]_INST_0_i_1 
       (.I0(\result[16]_INST_0_i_4_n_0 ),
        .I1(\result[17]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[16]_INST_0_i_5_n_0 ),
        .I5(\result[17]_INST_0_i_5_n_0 ),
        .O(\result[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[16]_INST_0_i_10 
       (.I0(a[24]),
        .I1(a[16]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[16]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[16]_INST_0_i_11 
       (.I0(a[1]),
        .I1(a[9]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[16]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[16]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__3_n_7),
        .I4(\result_internal0_inferred__0/i__carry__3_n_7 ),
        .I5(\result[16]_INST_0_i_6_n_0 ),
        .O(\result[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[16]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[17]_INST_0_i_7_n_0 ),
        .I2(\result[16]_INST_0_i_7_n_0 ),
        .I3(b[16]),
        .I4(a[16]),
        .I5(alu_op[0]),
        .O(\result[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[16]_INST_0_i_4 
       (.I0(\result[22]_INST_0_i_9_n_0 ),
        .I1(\result[18]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[20]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[16]_INST_0_i_8_n_0 ),
        .O(\result[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[16]_INST_0_i_5 
       (.I0(\result[18]_INST_0_i_9_n_0 ),
        .I1(\result[18]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[16]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[16]_INST_0_i_10_n_0 ),
        .O(\result[16]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[16]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[16]),
        .I3(alu_op[0]),
        .I4(b[16]),
        .O(\result[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[16]_INST_0_i_7 
       (.I0(\result[16]_INST_0_i_11_n_0 ),
        .I1(\result[20]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[18]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[22]_INST_0_i_11_n_0 ),
        .O(\result[16]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[16]_INST_0_i_8 
       (.I0(a[24]),
        .I1(b[3]),
        .I2(a[16]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[16]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[16]_INST_0_i_9 
       (.I0(a[28]),
        .I1(a[20]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[17]_INST_0 
       (.I0(\result[17]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[17]_INST_0_i_2_n_0 ),
        .I3(\result[17]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[17]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[17]_INST_0_i_1 
       (.I0(\result[17]_INST_0_i_4_n_0 ),
        .I1(\result[18]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[17]_INST_0_i_5_n_0 ),
        .I5(\result[18]_INST_0_i_5_n_0 ),
        .O(\result[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[17]_INST_0_i_10 
       (.I0(a[25]),
        .I1(a[17]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[17]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[17]_INST_0_i_11 
       (.I0(a[2]),
        .I1(a[10]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[17]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__3_n_6),
        .I4(\result_internal0_inferred__0/i__carry__3_n_6 ),
        .I5(\result[17]_INST_0_i_6_n_0 ),
        .O(\result[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[17]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[18]_INST_0_i_7_n_0 ),
        .I2(\result[17]_INST_0_i_7_n_0 ),
        .I3(b[17]),
        .I4(a[17]),
        .I5(alu_op[0]),
        .O(\result[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[17]_INST_0_i_4 
       (.I0(\result[19]_INST_0_i_8_n_0 ),
        .I1(\result[19]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[21]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[17]_INST_0_i_8_n_0 ),
        .O(\result[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[17]_INST_0_i_5 
       (.I0(\result[19]_INST_0_i_10_n_0 ),
        .I1(\result[19]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[17]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[17]_INST_0_i_10_n_0 ),
        .O(\result[17]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[17]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[17]),
        .I3(alu_op[0]),
        .I4(b[17]),
        .O(\result[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[17]_INST_0_i_7 
       (.I0(\result[17]_INST_0_i_11_n_0 ),
        .I1(\result[21]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[19]_INST_0_i_12_n_0 ),
        .I4(b[2]),
        .I5(\result[23]_INST_0_i_10_n_0 ),
        .O(\result[17]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[17]_INST_0_i_8 
       (.I0(a[25]),
        .I1(b[3]),
        .I2(a[17]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[17]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[17]_INST_0_i_9 
       (.I0(a[29]),
        .I1(a[21]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[18]_INST_0 
       (.I0(\result[18]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[18]_INST_0_i_2_n_0 ),
        .I3(\result[18]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[18]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[18]_INST_0_i_1 
       (.I0(\result[18]_INST_0_i_4_n_0 ),
        .I1(\result[19]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[18]_INST_0_i_5_n_0 ),
        .I5(\result[19]_INST_0_i_5_n_0 ),
        .O(\result[18]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[18]_INST_0_i_10 
       (.I0(a[26]),
        .I1(a[18]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[18]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[18]_INST_0_i_11 
       (.I0(a[3]),
        .I1(a[11]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[18]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__3_n_5),
        .I4(\result_internal0_inferred__0/i__carry__3_n_5 ),
        .I5(\result[18]_INST_0_i_6_n_0 ),
        .O(\result[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[18]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[19]_INST_0_i_7_n_0 ),
        .I2(\result[18]_INST_0_i_7_n_0 ),
        .I3(b[18]),
        .I4(a[18]),
        .I5(alu_op[0]),
        .O(\result[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[18]_INST_0_i_4 
       (.I0(\result[20]_INST_0_i_8_n_0 ),
        .I1(\result[20]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[22]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[18]_INST_0_i_8_n_0 ),
        .O(\result[18]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result[18]_INST_0_i_5 
       (.I0(\result[20]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[18]_INST_0_i_9_n_0 ),
        .I3(b[2]),
        .I4(\result[18]_INST_0_i_10_n_0 ),
        .O(\result[18]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[18]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[18]),
        .I3(alu_op[0]),
        .I4(b[18]),
        .O(\result[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[18]_INST_0_i_7 
       (.I0(\result[18]_INST_0_i_11_n_0 ),
        .I1(\result[22]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[20]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[24]_INST_0_i_10_n_0 ),
        .O(\result[18]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[18]_INST_0_i_8 
       (.I0(a[26]),
        .I1(b[3]),
        .I2(a[18]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[18]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[18]_INST_0_i_9 
       (.I0(a[30]),
        .I1(a[22]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[19]_INST_0 
       (.I0(\result[19]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[19]_INST_0_i_2_n_0 ),
        .I3(\result[19]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[19]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[19]_INST_0_i_1 
       (.I0(\result[19]_INST_0_i_4_n_0 ),
        .I1(\result[20]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[19]_INST_0_i_5_n_0 ),
        .I5(\result[20]_INST_0_i_5_n_0 ),
        .O(\result[19]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[19]_INST_0_i_10 
       (.I0(a[31]),
        .I1(a[23]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[19]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[19]_INST_0_i_11 
       (.I0(a[27]),
        .I1(a[19]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[19]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[19]_INST_0_i_12 
       (.I0(a[4]),
        .I1(a[12]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[19]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[19]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__3_n_4),
        .I4(\result_internal0_inferred__0/i__carry__3_n_4 ),
        .I5(\result[19]_INST_0_i_6_n_0 ),
        .O(\result[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[19]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[20]_INST_0_i_7_n_0 ),
        .I2(\result[19]_INST_0_i_7_n_0 ),
        .I3(b[19]),
        .I4(a[19]),
        .I5(alu_op[0]),
        .O(\result[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[19]_INST_0_i_4 
       (.I0(\result[21]_INST_0_i_8_n_0 ),
        .I1(\result[21]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[19]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[19]_INST_0_i_9_n_0 ),
        .O(\result[19]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result[19]_INST_0_i_5 
       (.I0(\result[21]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[19]_INST_0_i_10_n_0 ),
        .I3(b[2]),
        .I4(\result[19]_INST_0_i_11_n_0 ),
        .O(\result[19]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[19]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[19]),
        .I3(alu_op[0]),
        .I4(b[19]),
        .O(\result[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[19]_INST_0_i_7 
       (.I0(\result[19]_INST_0_i_12_n_0 ),
        .I1(\result[23]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[21]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[25]_INST_0_i_10_n_0 ),
        .O(\result[19]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \result[19]_INST_0_i_8 
       (.I0(a[23]),
        .I1(b[4]),
        .I2(a[31]),
        .I3(b[3]),
        .O(\result[19]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[19]_INST_0_i_9 
       (.I0(a[27]),
        .I1(b[3]),
        .I2(a[19]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[1]_INST_0 
       (.I0(\result[1]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[1]_INST_0_i_2_n_0 ),
        .I3(\result[1]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \result[1]_INST_0_i_1 
       (.I0(\result[0]_INST_0_i_3_n_0 ),
        .I1(b[0]),
        .I2(\result[1]_INST_0_i_4_n_0 ),
        .I3(\result[2]_INST_0_i_4_n_0 ),
        .I4(\result[2]_INST_0_i_5_n_0 ),
        .I5(\result[1]_INST_0_i_5_n_0 ),
        .O(\result[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[1]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry_n_6),
        .I4(\result_internal0_inferred__0/i__carry_n_6 ),
        .I5(\result[1]_INST_0_i_6_n_0 ),
        .O(\result[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[1]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[2]_INST_0_i_7_n_0 ),
        .I2(\result[1]_INST_0_i_7_n_0 ),
        .I3(b[1]),
        .I4(a[1]),
        .I5(alu_op[0]),
        .O(\result[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2202)) 
    \result[1]_INST_0_i_4 
       (.I0(b[0]),
        .I1(alu_op[2]),
        .I2(alu_op[0]),
        .I3(alu_op[1]),
        .O(\result[1]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hAE00)) 
    \result[1]_INST_0_i_5 
       (.I0(alu_op[2]),
        .I1(alu_op[0]),
        .I2(alu_op[1]),
        .I3(b[0]),
        .O(\result[1]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[1]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[1]),
        .I3(alu_op[0]),
        .I4(b[1]),
        .O(\result[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \result[1]_INST_0_i_7 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[3]),
        .I4(b[4]),
        .O(\result[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[20]_INST_0 
       (.I0(\result[20]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[20]_INST_0_i_2_n_0 ),
        .I3(\result[20]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[20]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[20]_INST_0_i_1 
       (.I0(\result[20]_INST_0_i_4_n_0 ),
        .I1(\result[21]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[20]_INST_0_i_5_n_0 ),
        .I5(\result[21]_INST_0_i_5_n_0 ),
        .O(\result[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[20]_INST_0_i_10 
       (.I0(a[24]),
        .I1(b[2]),
        .I2(a[28]),
        .I3(a[20]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[20]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[20]_INST_0_i_11 
       (.I0(a[5]),
        .I1(a[13]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[20]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__4_n_7),
        .I4(\result_internal0_inferred__0/i__carry__4_n_7 ),
        .I5(\result[20]_INST_0_i_6_n_0 ),
        .O(\result[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[20]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[21]_INST_0_i_7_n_0 ),
        .I2(\result[20]_INST_0_i_7_n_0 ),
        .I3(b[20]),
        .I4(a[20]),
        .I5(alu_op[0]),
        .O(\result[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[20]_INST_0_i_4 
       (.I0(\result[22]_INST_0_i_8_n_0 ),
        .I1(\result[22]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[20]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[20]_INST_0_i_9_n_0 ),
        .O(\result[20]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[20]_INST_0_i_5 
       (.I0(\result[22]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[20]_INST_0_i_10_n_0 ),
        .O(\result[20]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[20]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[20]),
        .I3(alu_op[0]),
        .I4(b[20]),
        .O(\result[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[20]_INST_0_i_7 
       (.I0(\result[20]_INST_0_i_11_n_0 ),
        .I1(\result[24]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[22]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[26]_INST_0_i_9_n_0 ),
        .O(\result[20]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \result[20]_INST_0_i_8 
       (.I0(a[24]),
        .I1(b[4]),
        .I2(a[31]),
        .I3(b[3]),
        .O(\result[20]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[20]_INST_0_i_9 
       (.I0(a[28]),
        .I1(b[3]),
        .I2(a[20]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[21]_INST_0 
       (.I0(\result[21]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[21]_INST_0_i_2_n_0 ),
        .I3(\result[21]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[21]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[21]_INST_0_i_1 
       (.I0(\result[21]_INST_0_i_4_n_0 ),
        .I1(\result[22]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[21]_INST_0_i_5_n_0 ),
        .I5(\result[22]_INST_0_i_5_n_0 ),
        .O(\result[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[21]_INST_0_i_10 
       (.I0(a[25]),
        .I1(b[2]),
        .I2(a[29]),
        .I3(a[21]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[21]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[21]_INST_0_i_11 
       (.I0(a[6]),
        .I1(a[14]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[21]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__4_n_6),
        .I4(\result_internal0_inferred__0/i__carry__4_n_6 ),
        .I5(\result[21]_INST_0_i_6_n_0 ),
        .O(\result[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[21]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[22]_INST_0_i_7_n_0 ),
        .I2(\result[21]_INST_0_i_7_n_0 ),
        .I3(b[21]),
        .I4(a[21]),
        .I5(alu_op[0]),
        .O(\result[21]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result[21]_INST_0_i_4 
       (.I0(\result[23]_INST_0_i_8_n_0 ),
        .I1(b[1]),
        .I2(\result[21]_INST_0_i_8_n_0 ),
        .I3(b[2]),
        .I4(\result[21]_INST_0_i_9_n_0 ),
        .O(\result[21]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[21]_INST_0_i_5 
       (.I0(\result[23]_INST_0_i_9_n_0 ),
        .I1(b[1]),
        .I2(\result[21]_INST_0_i_10_n_0 ),
        .O(\result[21]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[21]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[21]),
        .I3(alu_op[0]),
        .I4(b[21]),
        .O(\result[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[21]_INST_0_i_7 
       (.I0(\result[21]_INST_0_i_11_n_0 ),
        .I1(\result[25]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[23]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[27]_INST_0_i_11_n_0 ),
        .O(\result[21]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \result[21]_INST_0_i_8 
       (.I0(a[25]),
        .I1(b[4]),
        .I2(a[31]),
        .I3(b[3]),
        .O(\result[21]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[21]_INST_0_i_9 
       (.I0(a[29]),
        .I1(b[3]),
        .I2(a[21]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[22]_INST_0 
       (.I0(\result[22]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[22]_INST_0_i_2_n_0 ),
        .I3(\result[22]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[22]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[22]_INST_0_i_1 
       (.I0(\result[22]_INST_0_i_4_n_0 ),
        .I1(\result[23]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[22]_INST_0_i_5_n_0 ),
        .I5(\result[23]_INST_0_i_5_n_0 ),
        .O(\result[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[22]_INST_0_i_10 
       (.I0(a[26]),
        .I1(b[2]),
        .I2(a[30]),
        .I3(a[22]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[22]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \result[22]_INST_0_i_11 
       (.I0(a[7]),
        .I1(a[15]),
        .I2(b[3]),
        .I3(b[4]),
        .O(\result[22]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[22]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__4_n_5),
        .I4(\result_internal0_inferred__0/i__carry__4_n_5 ),
        .I5(\result[22]_INST_0_i_6_n_0 ),
        .O(\result[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[22]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[23]_INST_0_i_7_n_0 ),
        .I2(\result[22]_INST_0_i_7_n_0 ),
        .I3(b[22]),
        .I4(a[22]),
        .I5(alu_op[0]),
        .O(\result[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \result[22]_INST_0_i_4 
       (.I0(\result[24]_INST_0_i_8_n_0 ),
        .I1(b[1]),
        .I2(\result[22]_INST_0_i_8_n_0 ),
        .I3(b[2]),
        .I4(\result[22]_INST_0_i_9_n_0 ),
        .O(\result[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[22]_INST_0_i_5 
       (.I0(a[28]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[24]),
        .I4(b[1]),
        .I5(\result[22]_INST_0_i_10_n_0 ),
        .O(\result[22]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[22]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[22]),
        .I3(alu_op[0]),
        .I4(b[22]),
        .O(\result[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[22]_INST_0_i_7 
       (.I0(\result[22]_INST_0_i_11_n_0 ),
        .I1(\result[26]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[24]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[28]_INST_0_i_10_n_0 ),
        .O(\result[22]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF0E2)) 
    \result[22]_INST_0_i_8 
       (.I0(a[26]),
        .I1(b[4]),
        .I2(a[31]),
        .I3(b[3]),
        .O(\result[22]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[22]_INST_0_i_9 
       (.I0(a[30]),
        .I1(b[3]),
        .I2(a[22]),
        .I3(a[31]),
        .I4(b[4]),
        .O(\result[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[23]_INST_0 
       (.I0(\result[23]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[23]_INST_0_i_2_n_0 ),
        .I3(\result[23]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[23]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[23]_INST_0_i_1 
       (.I0(\result[23]_INST_0_i_4_n_0 ),
        .I1(\result[24]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[23]_INST_0_i_5_n_0 ),
        .I5(\result[24]_INST_0_i_5_n_0 ),
        .O(\result[23]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[23]_INST_0_i_10 
       (.I0(a[8]),
        .I1(b[3]),
        .I2(a[0]),
        .I3(b[4]),
        .I4(a[16]),
        .O(\result[23]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[23]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__4_n_4),
        .I4(\result_internal0_inferred__0/i__carry__4_n_4 ),
        .I5(\result[23]_INST_0_i_6_n_0 ),
        .O(\result[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[23]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[24]_INST_0_i_7_n_0 ),
        .I2(\result[23]_INST_0_i_7_n_0 ),
        .I3(b[23]),
        .I4(a[23]),
        .I5(alu_op[0]),
        .O(\result[23]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[23]_INST_0_i_4 
       (.I0(\result[25]_INST_0_i_9_n_0 ),
        .I1(b[1]),
        .I2(\result[23]_INST_0_i_8_n_0 ),
        .O(\result[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[23]_INST_0_i_5 
       (.I0(a[29]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[25]),
        .I4(b[1]),
        .I5(\result[23]_INST_0_i_9_n_0 ),
        .O(\result[23]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[23]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[23]),
        .I3(alu_op[0]),
        .I4(b[23]),
        .O(\result[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[23]_INST_0_i_7 
       (.I0(\result[23]_INST_0_i_10_n_0 ),
        .I1(\result[27]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[25]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[29]_INST_0_i_8_n_0 ),
        .O(\result[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result[23]_INST_0_i_8 
       (.I0(a[27]),
        .I1(b[2]),
        .I2(a[23]),
        .I3(b[4]),
        .I4(a[31]),
        .I5(b[3]),
        .O(\result[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \result[23]_INST_0_i_9 
       (.I0(a[27]),
        .I1(b[2]),
        .I2(a[31]),
        .I3(a[23]),
        .I4(b[3]),
        .I5(b[4]),
        .O(\result[23]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[24]_INST_0 
       (.I0(\result[24]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[24]_INST_0_i_2_n_0 ),
        .I3(\result[24]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[24]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[24]_INST_0_i_1 
       (.I0(\result[24]_INST_0_i_4_n_0 ),
        .I1(\result[25]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[24]_INST_0_i_5_n_0 ),
        .I5(\result[25]_INST_0_i_4_n_0 ),
        .O(\result[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[24]_INST_0_i_10 
       (.I0(a[9]),
        .I1(b[3]),
        .I2(a[1]),
        .I3(b[4]),
        .I4(a[17]),
        .O(\result[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[24]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__5_n_7),
        .I4(\result_internal0_inferred__0/i__carry__5_n_7 ),
        .I5(\result[24]_INST_0_i_6_n_0 ),
        .O(\result[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[24]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[25]_INST_0_i_7_n_0 ),
        .I2(\result[24]_INST_0_i_7_n_0 ),
        .I3(b[24]),
        .I4(a[24]),
        .I5(alu_op[0]),
        .O(\result[24]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[24]_INST_0_i_4 
       (.I0(\result[26]_INST_0_i_8_n_0 ),
        .I1(b[1]),
        .I2(\result[24]_INST_0_i_8_n_0 ),
        .O(\result[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[24]_INST_0_i_5 
       (.I0(a[30]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[26]),
        .I4(b[1]),
        .I5(\result[24]_INST_0_i_9_n_0 ),
        .O(\result[24]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[24]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[24]),
        .I3(alu_op[0]),
        .I4(b[24]),
        .O(\result[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[24]_INST_0_i_7 
       (.I0(\result[24]_INST_0_i_10_n_0 ),
        .I1(\result[28]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[26]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[30]_INST_0_i_16_n_0 ),
        .O(\result[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result[24]_INST_0_i_8 
       (.I0(a[28]),
        .I1(b[2]),
        .I2(a[24]),
        .I3(b[4]),
        .I4(a[31]),
        .I5(b[3]),
        .O(\result[24]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \result[24]_INST_0_i_9 
       (.I0(a[28]),
        .I1(b[2]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(a[24]),
        .O(\result[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[25]_INST_0 
       (.I0(\result[25]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[25]_INST_0_i_2_n_0 ),
        .I3(\result[25]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[25]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[25]_INST_0_i_1 
       (.I0(\result[26]_INST_0_i_4_n_0 ),
        .I1(\result[26]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[25]_INST_0_i_4_n_0 ),
        .I5(\result[25]_INST_0_i_5_n_0 ),
        .O(\result[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[25]_INST_0_i_10 
       (.I0(a[10]),
        .I1(b[3]),
        .I2(a[2]),
        .I3(b[4]),
        .I4(a[18]),
        .O(\result[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[25]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__5_n_6),
        .I4(\result_internal0_inferred__0/i__carry__5_n_6 ),
        .I5(\result[25]_INST_0_i_6_n_0 ),
        .O(\result[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[25]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[26]_INST_0_i_7_n_0 ),
        .I2(\result[25]_INST_0_i_7_n_0 ),
        .I3(b[25]),
        .I4(a[25]),
        .I5(alu_op[0]),
        .O(\result[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[25]_INST_0_i_4 
       (.I0(a[31]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[27]),
        .I4(b[1]),
        .I5(\result[25]_INST_0_i_8_n_0 ),
        .O(\result[25]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[25]_INST_0_i_5 
       (.I0(\result[27]_INST_0_i_10_n_0 ),
        .I1(b[1]),
        .I2(\result[25]_INST_0_i_9_n_0 ),
        .O(\result[25]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[25]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[25]),
        .I3(alu_op[0]),
        .I4(b[25]),
        .O(\result[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[25]_INST_0_i_7 
       (.I0(\result[25]_INST_0_i_10_n_0 ),
        .I1(\result[29]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[27]_INST_0_i_11_n_0 ),
        .I4(b[2]),
        .I5(\result[30]_INST_0_i_10_n_0 ),
        .O(\result[25]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \result[25]_INST_0_i_8 
       (.I0(a[29]),
        .I1(b[2]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(a[25]),
        .O(\result[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result[25]_INST_0_i_9 
       (.I0(a[29]),
        .I1(b[2]),
        .I2(a[25]),
        .I3(b[4]),
        .I4(a[31]),
        .I5(b[3]),
        .O(\result[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[26]_INST_0 
       (.I0(\result[26]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[26]_INST_0_i_2_n_0 ),
        .I3(\result[26]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[26]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[26]_INST_0_i_1 
       (.I0(\result[27]_INST_0_i_4_n_0 ),
        .I1(\result[27]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[26]_INST_0_i_4_n_0 ),
        .I5(\result[26]_INST_0_i_5_n_0 ),
        .O(\result[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[26]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__5_n_5),
        .I4(\result_internal0_inferred__0/i__carry__5_n_5 ),
        .I5(\result[26]_INST_0_i_6_n_0 ),
        .O(\result[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[26]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[27]_INST_0_i_7_n_0 ),
        .I2(\result[26]_INST_0_i_7_n_0 ),
        .I3(b[26]),
        .I4(a[26]),
        .I5(alu_op[0]),
        .O(\result[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \result[26]_INST_0_i_4 
       (.I0(a[28]),
        .I1(b[1]),
        .I2(a[30]),
        .I3(b[2]),
        .I4(\result[27]_INST_0_i_8_n_0 ),
        .I5(a[26]),
        .O(\result[26]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[26]_INST_0_i_5 
       (.I0(\result[28]_INST_0_i_9_n_0 ),
        .I1(b[1]),
        .I2(\result[26]_INST_0_i_8_n_0 ),
        .O(\result[26]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[26]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[26]),
        .I3(alu_op[0]),
        .I4(b[26]),
        .O(\result[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[26]_INST_0_i_7 
       (.I0(\result[26]_INST_0_i_9_n_0 ),
        .I1(\result[30]_INST_0_i_16_n_0 ),
        .I2(b[1]),
        .I3(\result[28]_INST_0_i_10_n_0 ),
        .I4(b[2]),
        .I5(\result[30]_INST_0_i_14_n_0 ),
        .O(\result[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \result[26]_INST_0_i_8 
       (.I0(a[30]),
        .I1(b[2]),
        .I2(a[26]),
        .I3(b[4]),
        .I4(a[31]),
        .I5(b[3]),
        .O(\result[26]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[26]_INST_0_i_9 
       (.I0(a[11]),
        .I1(b[3]),
        .I2(a[3]),
        .I3(b[4]),
        .I4(a[19]),
        .O(\result[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[27]_INST_0 
       (.I0(\result[27]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[27]_INST_0_i_2_n_0 ),
        .I3(\result[27]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[27]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[27]_INST_0_i_1 
       (.I0(\result[28]_INST_0_i_5_n_0 ),
        .I1(\result[28]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[27]_INST_0_i_4_n_0 ),
        .I5(\result[27]_INST_0_i_5_n_0 ),
        .O(\result[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \result[27]_INST_0_i_10 
       (.I0(a[27]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[31]),
        .I4(b[2]),
        .O(\result[27]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[27]_INST_0_i_11 
       (.I0(a[12]),
        .I1(b[3]),
        .I2(a[4]),
        .I3(b[4]),
        .I4(a[20]),
        .O(\result[27]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[27]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__5_n_4),
        .I4(\result_internal0_inferred__0/i__carry__5_n_4 ),
        .I5(\result[27]_INST_0_i_6_n_0 ),
        .O(\result[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[27]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[28]_INST_0_i_7_n_0 ),
        .I2(\result[27]_INST_0_i_7_n_0 ),
        .I3(b[27]),
        .I4(a[27]),
        .I5(alu_op[0]),
        .O(\result[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \result[27]_INST_0_i_4 
       (.I0(a[29]),
        .I1(b[1]),
        .I2(a[31]),
        .I3(b[2]),
        .I4(\result[27]_INST_0_i_8_n_0 ),
        .I5(a[27]),
        .O(\result[27]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[27]_INST_0_i_5 
       (.I0(\result[27]_INST_0_i_9_n_0 ),
        .I1(b[1]),
        .I2(\result[27]_INST_0_i_10_n_0 ),
        .O(\result[27]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[27]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[27]),
        .I3(alu_op[0]),
        .I4(b[27]),
        .O(\result[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[27]_INST_0_i_7 
       (.I0(\result[27]_INST_0_i_11_n_0 ),
        .I1(\result[30]_INST_0_i_10_n_0 ),
        .I2(b[1]),
        .I3(\result[29]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[30]_INST_0_i_13_n_0 ),
        .O(\result[27]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result[27]_INST_0_i_8 
       (.I0(b[3]),
        .I1(b[4]),
        .O(\result[27]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \result[27]_INST_0_i_9 
       (.I0(a[29]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[31]),
        .I4(b[2]),
        .O(\result[27]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[28]_INST_0 
       (.I0(\result[28]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[28]_INST_0_i_2_n_0 ),
        .I3(\result[28]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[28]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[28]_INST_0_i_1 
       (.I0(\result[28]_INST_0_i_4_n_0 ),
        .I1(\result[29]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[28]_INST_0_i_5_n_0 ),
        .I5(\result[29]_INST_0_i_5_n_0 ),
        .O(\result[28]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[28]_INST_0_i_10 
       (.I0(a[13]),
        .I1(b[3]),
        .I2(a[5]),
        .I3(b[4]),
        .I4(a[21]),
        .O(\result[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[28]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__6_n_7),
        .I4(\result_internal0_inferred__0/i__carry__6_n_7 ),
        .I5(\result[28]_INST_0_i_6_n_0 ),
        .O(\result[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[28]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[29]_INST_0_i_7_n_0 ),
        .I2(\result[28]_INST_0_i_7_n_0 ),
        .I3(b[28]),
        .I4(a[28]),
        .I5(alu_op[0]),
        .O(\result[28]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[28]_INST_0_i_4 
       (.I0(\result[28]_INST_0_i_8_n_0 ),
        .I1(b[1]),
        .I2(\result[28]_INST_0_i_9_n_0 ),
        .O(\result[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \result[28]_INST_0_i_5 
       (.I0(a[30]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[28]),
        .I4(b[1]),
        .I5(b[2]),
        .O(\result[28]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[28]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[28]),
        .I3(alu_op[0]),
        .I4(b[28]),
        .O(\result[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[28]_INST_0_i_7 
       (.I0(\result[28]_INST_0_i_10_n_0 ),
        .I1(\result[30]_INST_0_i_14_n_0 ),
        .I2(b[1]),
        .I3(\result[30]_INST_0_i_16_n_0 ),
        .I4(b[2]),
        .I5(\result[30]_INST_0_i_17_n_0 ),
        .O(\result[28]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \result[28]_INST_0_i_8 
       (.I0(a[30]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[31]),
        .I4(b[2]),
        .O(\result[28]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FE02)) 
    \result[28]_INST_0_i_9 
       (.I0(a[28]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[31]),
        .I4(b[2]),
        .O(\result[28]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[29]_INST_0 
       (.I0(\result[29]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[29]_INST_0_i_2_n_0 ),
        .I3(\result[29]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[29]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[29]_INST_0_i_1 
       (.I0(\result[29]_INST_0_i_4_n_0 ),
        .I1(\result[30]_INST_0_i_4_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[29]_INST_0_i_5_n_0 ),
        .I5(\result[30]_INST_0_i_5_n_0 ),
        .O(\result[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[29]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__6_n_6),
        .I4(\result_internal0_inferred__0/i__carry__6_n_6 ),
        .I5(\result[29]_INST_0_i_6_n_0 ),
        .O(\result[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[29]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[30]_INST_0_i_9_n_0 ),
        .I2(\result[29]_INST_0_i_7_n_0 ),
        .I3(b[29]),
        .I4(a[29]),
        .I5(alu_op[0]),
        .O(\result[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \result[29]_INST_0_i_4 
       (.I0(b[1]),
        .I1(a[29]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(a[31]),
        .I5(b[2]),
        .O(\result[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \result[29]_INST_0_i_5 
       (.I0(a[31]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[29]),
        .I4(b[1]),
        .I5(b[2]),
        .O(\result[29]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[29]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[29]),
        .I3(alu_op[0]),
        .I4(b[29]),
        .O(\result[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \result[29]_INST_0_i_7 
       (.I0(\result[29]_INST_0_i_8_n_0 ),
        .I1(b[2]),
        .I2(\result[30]_INST_0_i_13_n_0 ),
        .I3(\result[30]_INST_0_i_10_n_0 ),
        .I4(\result[30]_INST_0_i_11_n_0 ),
        .I5(b[1]),
        .O(\result[29]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[29]_INST_0_i_8 
       (.I0(a[14]),
        .I1(b[3]),
        .I2(a[6]),
        .I3(b[4]),
        .I4(a[22]),
        .O(\result[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[2]_INST_0 
       (.I0(\result[2]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[2]_INST_0_i_2_n_0 ),
        .I3(\result[2]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[2]_INST_0_i_1 
       (.I0(\result[3]_INST_0_i_4_n_0 ),
        .I1(\result[3]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[2]_INST_0_i_4_n_0 ),
        .I5(\result[2]_INST_0_i_5_n_0 ),
        .O(\result[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[2]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry_n_5),
        .I4(\result_internal0_inferred__0/i__carry_n_5 ),
        .I5(\result[2]_INST_0_i_6_n_0 ),
        .O(\result[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[2]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[3]_INST_0_i_7_n_0 ),
        .I2(\result[2]_INST_0_i_7_n_0 ),
        .I3(b[2]),
        .I4(a[2]),
        .I5(alu_op[0]),
        .O(\result[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[2]_INST_0_i_4 
       (.I0(\result[0]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(\result[0]_INST_0_i_8_n_0 ),
        .I3(\result[2]_INST_0_i_8_n_0 ),
        .I4(b[1]),
        .O(\result[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result[2]_INST_0_i_5 
       (.I0(\result[0]_INST_0_i_7_n_0 ),
        .I1(b[2]),
        .I2(\result[0]_INST_0_i_8_n_0 ),
        .I3(\result[8]_INST_0_i_9_n_0 ),
        .I4(\result[0]_INST_0_i_10_n_0 ),
        .I5(b[1]),
        .O(\result[2]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[2]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[2]),
        .I3(alu_op[0]),
        .I4(b[2]),
        .O(\result[2]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \result[2]_INST_0_i_7 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a[1]),
        .I3(b[3]),
        .I4(b[4]),
        .O(\result[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \result[2]_INST_0_i_8 
       (.I0(a[16]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(\result[2]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_10_n_0 ),
        .O(\result[2]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[2]_INST_0_i_9 
       (.I0(a[24]),
        .I1(b[4]),
        .I2(a[8]),
        .O(\result[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[30]_INST_0 
       (.I0(\result[30]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[30]_INST_0_i_2_n_0 ),
        .I3(\result[30]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[30]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result[30]_INST_0_i_1 
       (.I0(\result[30]_INST_0_i_4_n_0 ),
        .I1(a[31]),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[30]_INST_0_i_5_n_0 ),
        .I5(\result[30]_INST_0_i_6_n_0 ),
        .O(\result[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_10 
       (.I0(a[24]),
        .I1(a[8]),
        .I2(b[3]),
        .I3(a[0]),
        .I4(b[4]),
        .I5(a[16]),
        .O(\result[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_11 
       (.I0(a[28]),
        .I1(a[12]),
        .I2(b[3]),
        .I3(a[4]),
        .I4(b[4]),
        .I5(a[20]),
        .O(\result[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_12 
       (.I0(a[30]),
        .I1(a[14]),
        .I2(b[3]),
        .I3(a[6]),
        .I4(b[4]),
        .I5(a[22]),
        .O(\result[30]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_13 
       (.I0(a[26]),
        .I1(a[10]),
        .I2(b[3]),
        .I3(a[2]),
        .I4(b[4]),
        .I5(a[18]),
        .O(\result[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_14 
       (.I0(a[25]),
        .I1(a[9]),
        .I2(b[3]),
        .I3(a[1]),
        .I4(b[4]),
        .I5(a[17]),
        .O(\result[30]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_15 
       (.I0(a[29]),
        .I1(a[13]),
        .I2(b[3]),
        .I3(a[5]),
        .I4(b[4]),
        .I5(a[21]),
        .O(\result[30]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[30]_INST_0_i_16 
       (.I0(a[15]),
        .I1(b[3]),
        .I2(a[7]),
        .I3(b[4]),
        .I4(a[23]),
        .O(\result[30]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[30]_INST_0_i_17 
       (.I0(a[27]),
        .I1(a[11]),
        .I2(b[3]),
        .I3(a[3]),
        .I4(b[4]),
        .I5(a[19]),
        .O(\result[30]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[30]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__6_n_5),
        .I4(\result_internal0_inferred__0/i__carry__6_n_5 ),
        .I5(\result[30]_INST_0_i_7_n_0 ),
        .O(\result[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[30]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[30]_INST_0_i_8_n_0 ),
        .I2(\result[30]_INST_0_i_9_n_0 ),
        .I3(b[30]),
        .I4(a[30]),
        .I5(alu_op[0]),
        .O(\result[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \result[30]_INST_0_i_4 
       (.I0(b[1]),
        .I1(a[30]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(a[31]),
        .I5(b[2]),
        .O(\result[30]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \result[30]_INST_0_i_5 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a[30]),
        .I3(b[3]),
        .I4(b[4]),
        .O(\result[30]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \result[30]_INST_0_i_6 
       (.I0(b[2]),
        .I1(b[1]),
        .I2(a[31]),
        .I3(b[3]),
        .I4(b[4]),
        .O(\result[30]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[30]_INST_0_i_7 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[30]),
        .I3(alu_op[0]),
        .I4(b[30]),
        .O(\result[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \result[30]_INST_0_i_8 
       (.I0(\result[30]_INST_0_i_10_n_0 ),
        .I1(b[2]),
        .I2(\result[30]_INST_0_i_11_n_0 ),
        .I3(\result[30]_INST_0_i_12_n_0 ),
        .I4(\result[30]_INST_0_i_13_n_0 ),
        .I5(b[1]),
        .O(\result[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result[30]_INST_0_i_9 
       (.I0(\result[30]_INST_0_i_14_n_0 ),
        .I1(b[2]),
        .I2(\result[30]_INST_0_i_15_n_0 ),
        .I3(\result[30]_INST_0_i_16_n_0 ),
        .I4(\result[30]_INST_0_i_17_n_0 ),
        .I5(b[1]),
        .O(\result[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF22F222F222F222)) 
    \result[31]_INST_0 
       (.I0(\result[31]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[31]_INST_0_i_2_n_0 ),
        .I3(\result[31]_INST_0_i_3_n_0 ),
        .I4(\result[31]_INST_0_i_4_n_0 ),
        .I5(a[31]),
        .O(result[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA880)) 
    \result[31]_INST_0_i_1 
       (.I0(\result[31]_INST_0_i_5_n_0 ),
        .I1(a[31]),
        .I2(alu_op[0]),
        .I3(b[31]),
        .I4(\result[31]_INST_0_i_6_n_0 ),
        .I5(\result[31]_INST_0_i_7_n_0 ),
        .O(\result[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \result[31]_INST_0_i_10 
       (.I0(\result[30]_INST_0_i_14_n_0 ),
        .I1(b[2]),
        .I2(\result[30]_INST_0_i_15_n_0 ),
        .I3(\result[31]_INST_0_i_12_n_0 ),
        .I4(\result[30]_INST_0_i_17_n_0 ),
        .I5(b[1]),
        .O(\result[31]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result[31]_INST_0_i_11 
       (.I0(a[31]),
        .I1(b[31]),
        .O(\result[31]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \result[31]_INST_0_i_12 
       (.I0(a[31]),
        .I1(a[15]),
        .I2(b[3]),
        .I3(a[7]),
        .I4(b[4]),
        .I5(a[23]),
        .O(\result[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \result[31]_INST_0_i_2 
       (.I0(b[4]),
        .I1(b[3]),
        .I2(a[31]),
        .I3(b[1]),
        .I4(b[2]),
        .I5(\result[31]_INST_0_i_8_n_0 ),
        .O(\result[31]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \result[31]_INST_0_i_3 
       (.I0(alu_op[3]),
        .I1(alu_op[2]),
        .I2(alu_op[1]),
        .O(\result[31]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \result[31]_INST_0_i_4 
       (.I0(alu_op[1]),
        .I1(alu_op[0]),
        .I2(alu_op[2]),
        .O(\result[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result[31]_INST_0_i_5 
       (.I0(alu_op[2]),
        .I1(alu_op[1]),
        .O(\result[31]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \result[31]_INST_0_i_6 
       (.I0(p_1_in),
        .I1(p_1_in2_in),
        .I2(alu_op[2]),
        .I3(alu_op[1]),
        .I4(alu_op[0]),
        .O(\result[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAA2A8A0AA0208000)) 
    \result[31]_INST_0_i_7 
       (.I0(\result[31]_INST_0_i_9_n_0 ),
        .I1(b[0]),
        .I2(alu_op[0]),
        .I3(\result[30]_INST_0_i_8_n_0 ),
        .I4(\result[31]_INST_0_i_10_n_0 ),
        .I5(\result[31]_INST_0_i_11_n_0 ),
        .O(\result[31]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0051)) 
    \result[31]_INST_0_i_8 
       (.I0(alu_op[2]),
        .I1(alu_op[0]),
        .I2(alu_op[1]),
        .I3(b[0]),
        .O(\result[31]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result[31]_INST_0_i_9 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .O(\result[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[3]_INST_0 
       (.I0(\result[3]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[3]_INST_0_i_2_n_0 ),
        .I3(\result[3]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[3]_INST_0_i_1 
       (.I0(\result[4]_INST_0_i_4_n_0 ),
        .I1(\result[4]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[3]_INST_0_i_4_n_0 ),
        .I5(\result[3]_INST_0_i_5_n_0 ),
        .O(\result[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[3]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry_n_4),
        .I4(\result_internal0_inferred__0/i__carry_n_4 ),
        .I5(\result[3]_INST_0_i_6_n_0 ),
        .O(\result[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[3]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[4]_INST_0_i_7_n_0 ),
        .I2(\result[3]_INST_0_i_7_n_0 ),
        .I3(b[3]),
        .I4(a[3]),
        .I5(alu_op[0]),
        .O(\result[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \result[3]_INST_0_i_4 
       (.I0(\result[0]_INST_0_i_11_n_0 ),
        .I1(b[2]),
        .I2(\result[0]_INST_0_i_12_n_0 ),
        .I3(\result[3]_INST_0_i_8_n_0 ),
        .I4(b[1]),
        .O(\result[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \result[3]_INST_0_i_5 
       (.I0(\result[0]_INST_0_i_11_n_0 ),
        .I1(b[2]),
        .I2(\result[0]_INST_0_i_12_n_0 ),
        .I3(\result[9]_INST_0_i_9_n_0 ),
        .I4(\result[0]_INST_0_i_14_n_0 ),
        .I5(b[1]),
        .O(\result[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[3]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[3]),
        .I3(alu_op[0]),
        .I4(b[3]),
        .O(\result[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \result[3]_INST_0_i_7 
       (.I0(a[0]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[2]),
        .I4(b[1]),
        .I5(b[2]),
        .O(\result[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \result[3]_INST_0_i_8 
       (.I0(a[17]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(\result[3]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_14_n_0 ),
        .O(\result[3]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \result[3]_INST_0_i_9 
       (.I0(a[25]),
        .I1(b[4]),
        .I2(a[9]),
        .O(\result[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[4]_INST_0 
       (.I0(\result[4]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[4]_INST_0_i_2_n_0 ),
        .I3(\result[4]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[4]_INST_0_i_1 
       (.I0(\result[5]_INST_0_i_4_n_0 ),
        .I1(\result[5]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[4]_INST_0_i_4_n_0 ),
        .I5(\result[4]_INST_0_i_5_n_0 ),
        .O(\result[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[4]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__0_n_7),
        .I4(\result_internal0_inferred__0/i__carry__0_n_7 ),
        .I5(\result[4]_INST_0_i_6_n_0 ),
        .O(\result[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[4]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[5]_INST_0_i_7_n_0 ),
        .I2(\result[4]_INST_0_i_7_n_0 ),
        .I3(b[4]),
        .I4(a[4]),
        .I5(alu_op[0]),
        .O(\result[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[4]_INST_0_i_4 
       (.I0(\result[10]_INST_0_i_8_n_0 ),
        .I1(\result[0]_INST_0_i_7_n_0 ),
        .I2(b[1]),
        .I3(\result[8]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_10_n_0 ),
        .O(\result[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[4]_INST_0_i_5 
       (.I0(\result[10]_INST_0_i_9_n_0 ),
        .I1(\result[0]_INST_0_i_7_n_0 ),
        .I2(b[1]),
        .I3(\result[8]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_10_n_0 ),
        .O(\result[4]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[4]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[4]),
        .I3(alu_op[0]),
        .I4(b[4]),
        .O(\result[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002020300)) 
    \result[4]_INST_0_i_7 
       (.I0(a[1]),
        .I1(b[4]),
        .I2(b[3]),
        .I3(a[3]),
        .I4(b[1]),
        .I5(b[2]),
        .O(\result[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[5]_INST_0 
       (.I0(\result[5]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[5]_INST_0_i_2_n_0 ),
        .I3(\result[5]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[5]_INST_0_i_1 
       (.I0(\result[6]_INST_0_i_4_n_0 ),
        .I1(\result[6]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[5]_INST_0_i_4_n_0 ),
        .I5(\result[5]_INST_0_i_5_n_0 ),
        .O(\result[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[5]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__0_n_6),
        .I4(\result_internal0_inferred__0/i__carry__0_n_6 ),
        .I5(\result[5]_INST_0_i_6_n_0 ),
        .O(\result[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[5]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[6]_INST_0_i_7_n_0 ),
        .I2(\result[5]_INST_0_i_7_n_0 ),
        .I3(b[5]),
        .I4(a[5]),
        .I5(alu_op[0]),
        .O(\result[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[5]_INST_0_i_4 
       (.I0(\result[11]_INST_0_i_8_n_0 ),
        .I1(\result[0]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[9]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_14_n_0 ),
        .O(\result[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[5]_INST_0_i_5 
       (.I0(\result[11]_INST_0_i_9_n_0 ),
        .I1(\result[0]_INST_0_i_11_n_0 ),
        .I2(b[1]),
        .I3(\result[9]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_14_n_0 ),
        .O(\result[5]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[5]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[5]),
        .I3(alu_op[0]),
        .I4(b[5]),
        .O(\result[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \result[5]_INST_0_i_7 
       (.I0(a[2]),
        .I1(b[1]),
        .I2(a[0]),
        .I3(b[2]),
        .I4(\result[27]_INST_0_i_8_n_0 ),
        .I5(a[4]),
        .O(\result[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[6]_INST_0 
       (.I0(\result[6]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[6]_INST_0_i_2_n_0 ),
        .I3(\result[6]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[6]_INST_0_i_1 
       (.I0(\result[7]_INST_0_i_4_n_0 ),
        .I1(\result[7]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[6]_INST_0_i_4_n_0 ),
        .I5(\result[6]_INST_0_i_5_n_0 ),
        .O(\result[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[6]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__0_n_5),
        .I4(\result_internal0_inferred__0/i__carry__0_n_5 ),
        .I5(\result[6]_INST_0_i_6_n_0 ),
        .O(\result[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF003C3CAAAA3C3C)) 
    \result[6]_INST_0_i_3 
       (.I0(\result[7]_INST_0_i_7_n_0 ),
        .I1(a[6]),
        .I2(b[6]),
        .I3(\result[6]_INST_0_i_7_n_0 ),
        .I4(alu_op[0]),
        .I5(b[0]),
        .O(\result[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[6]_INST_0_i_4 
       (.I0(\result[12]_INST_0_i_8_n_0 ),
        .I1(\result[8]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[10]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_7_n_0 ),
        .O(\result[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[6]_INST_0_i_5 
       (.I0(\result[12]_INST_0_i_9_n_0 ),
        .I1(\result[8]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[10]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_7_n_0 ),
        .O(\result[6]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[6]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[6]),
        .I3(alu_op[0]),
        .I4(b[6]),
        .O(\result[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \result[6]_INST_0_i_7 
       (.I0(a[3]),
        .I1(b[1]),
        .I2(a[1]),
        .I3(b[2]),
        .I4(\result[27]_INST_0_i_8_n_0 ),
        .I5(a[5]),
        .O(\result[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[7]_INST_0 
       (.I0(\result[7]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[7]_INST_0_i_2_n_0 ),
        .I3(\result[7]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[7]_INST_0_i_1 
       (.I0(\result[8]_INST_0_i_4_n_0 ),
        .I1(\result[8]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[7]_INST_0_i_4_n_0 ),
        .I5(\result[7]_INST_0_i_5_n_0 ),
        .O(\result[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[7]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__0_n_4),
        .I4(\result_internal0_inferred__0/i__carry__0_n_4 ),
        .I5(\result[7]_INST_0_i_6_n_0 ),
        .O(\result[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[7]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[8]_INST_0_i_7_n_0 ),
        .I2(\result[7]_INST_0_i_7_n_0 ),
        .I3(b[7]),
        .I4(a[7]),
        .I5(alu_op[0]),
        .O(\result[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[7]_INST_0_i_4 
       (.I0(\result[13]_INST_0_i_8_n_0 ),
        .I1(\result[9]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[11]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_11_n_0 ),
        .O(\result[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[7]_INST_0_i_5 
       (.I0(\result[13]_INST_0_i_9_n_0 ),
        .I1(\result[9]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[11]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[0]_INST_0_i_11_n_0 ),
        .O(\result[7]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[7]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[7]),
        .I3(alu_op[0]),
        .I4(b[7]),
        .O(\result[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[7]_INST_0_i_7 
       (.I0(a[0]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[4]),
        .I4(b[1]),
        .I5(\result[7]_INST_0_i_8_n_0 ),
        .O(\result[7]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \result[7]_INST_0_i_8 
       (.I0(a[2]),
        .I1(b[2]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(a[6]),
        .O(\result[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[8]_INST_0 
       (.I0(\result[8]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[8]_INST_0_i_2_n_0 ),
        .I3(\result[8]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[8]_INST_0_i_1 
       (.I0(\result[9]_INST_0_i_4_n_0 ),
        .I1(\result[9]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[8]_INST_0_i_4_n_0 ),
        .I5(\result[8]_INST_0_i_5_n_0 ),
        .O(\result[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000B0008)) 
    \result[8]_INST_0_i_10 
       (.I0(a[3]),
        .I1(b[2]),
        .I2(b[4]),
        .I3(b[3]),
        .I4(a[7]),
        .O(\result[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[8]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__1_n_7),
        .I4(\result_internal0_inferred__0/i__carry__1_n_7 ),
        .I5(\result[8]_INST_0_i_6_n_0 ),
        .O(\result[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[8]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[9]_INST_0_i_7_n_0 ),
        .I2(\result[8]_INST_0_i_7_n_0 ),
        .I3(b[8]),
        .I4(a[8]),
        .I5(alu_op[0]),
        .O(\result[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[8]_INST_0_i_4 
       (.I0(\result[14]_INST_0_i_8_n_0 ),
        .I1(\result[10]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[12]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[8]_INST_0_i_8_n_0 ),
        .O(\result[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[8]_INST_0_i_5 
       (.I0(\result[14]_INST_0_i_9_n_0 ),
        .I1(\result[10]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[12]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[8]_INST_0_i_9_n_0 ),
        .O(\result[8]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[8]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[8]),
        .I3(alu_op[0]),
        .I4(b[8]),
        .O(\result[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[8]_INST_0_i_7 
       (.I0(a[1]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[5]),
        .I4(b[1]),
        .I5(\result[8]_INST_0_i_10_n_0 ),
        .O(\result[8]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[8]_INST_0_i_8 
       (.I0(a[16]),
        .I1(b[3]),
        .I2(a[24]),
        .I3(b[4]),
        .I4(a[8]),
        .O(\result[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[8]_INST_0_i_9 
       (.I0(a[16]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[24]),
        .I4(b[4]),
        .I5(a[8]),
        .O(\result[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h333030303030B8B8)) 
    \result[9]_INST_0 
       (.I0(\result[9]_INST_0_i_1_n_0 ),
        .I1(alu_op[3]),
        .I2(\result[9]_INST_0_i_2_n_0 ),
        .I3(\result[9]_INST_0_i_3_n_0 ),
        .I4(alu_op[1]),
        .I5(alu_op[2]),
        .O(result[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \result[9]_INST_0_i_1 
       (.I0(\result[10]_INST_0_i_4_n_0 ),
        .I1(\result[10]_INST_0_i_5_n_0 ),
        .I2(b[0]),
        .I3(\result[31]_INST_0_i_4_n_0 ),
        .I4(\result[9]_INST_0_i_4_n_0 ),
        .I5(\result[9]_INST_0_i_5_n_0 ),
        .O(\result[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF03020100)) 
    \result[9]_INST_0_i_2 
       (.I0(alu_op[0]),
        .I1(alu_op[1]),
        .I2(alu_op[2]),
        .I3(result_internal0_carry__1_n_6),
        .I4(\result_internal0_inferred__0/i__carry__1_n_6 ),
        .I5(\result[9]_INST_0_i_6_n_0 ),
        .O(\result[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E4E400FFFF00)) 
    \result[9]_INST_0_i_3 
       (.I0(b[0]),
        .I1(\result[10]_INST_0_i_7_n_0 ),
        .I2(\result[9]_INST_0_i_7_n_0 ),
        .I3(b[9]),
        .I4(a[9]),
        .I5(alu_op[0]),
        .O(\result[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[9]_INST_0_i_4 
       (.I0(\result[15]_INST_0_i_8_n_0 ),
        .I1(\result[11]_INST_0_i_8_n_0 ),
        .I2(b[1]),
        .I3(\result[13]_INST_0_i_8_n_0 ),
        .I4(b[2]),
        .I5(\result[9]_INST_0_i_8_n_0 ),
        .O(\result[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[9]_INST_0_i_5 
       (.I0(\result[15]_INST_0_i_9_n_0 ),
        .I1(\result[11]_INST_0_i_9_n_0 ),
        .I2(b[1]),
        .I3(\result[13]_INST_0_i_9_n_0 ),
        .I4(b[2]),
        .I5(\result[9]_INST_0_i_9_n_0 ),
        .O(\result[9]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h44404000)) 
    \result[9]_INST_0_i_6 
       (.I0(alu_op[1]),
        .I1(alu_op[2]),
        .I2(a[9]),
        .I3(alu_op[0]),
        .I4(b[9]),
        .O(\result[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \result[9]_INST_0_i_7 
       (.I0(a[2]),
        .I1(b[2]),
        .I2(\result[27]_INST_0_i_8_n_0 ),
        .I3(a[6]),
        .I4(b[1]),
        .I5(\result[11]_INST_0_i_10_n_0 ),
        .O(\result[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[9]_INST_0_i_8 
       (.I0(a[17]),
        .I1(b[3]),
        .I2(a[25]),
        .I3(b[4]),
        .I4(a[9]),
        .O(\result[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \result[9]_INST_0_i_9 
       (.I0(a[17]),
        .I1(a[31]),
        .I2(b[3]),
        .I3(a[25]),
        .I4(b[4]),
        .I5(a[9]),
        .O(\result[9]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry
       (.CI(1'b0),
        .CO({result_internal0_carry_n_0,result_internal0_carry_n_1,result_internal0_carry_n_2,result_internal0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O({result_internal0_carry_n_4,result_internal0_carry_n_5,result_internal0_carry_n_6,result_internal0_carry_n_7}),
        .S({result_internal0_carry_i_1_n_0,result_internal0_carry_i_2_n_0,result_internal0_carry_i_3_n_0,result_internal0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__0
       (.CI(result_internal0_carry_n_0),
        .CO({result_internal0_carry__0_n_0,result_internal0_carry__0_n_1,result_internal0_carry__0_n_2,result_internal0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O({result_internal0_carry__0_n_4,result_internal0_carry__0_n_5,result_internal0_carry__0_n_6,result_internal0_carry__0_n_7}),
        .S({result_internal0_carry__0_i_1_n_0,result_internal0_carry__0_i_2_n_0,result_internal0_carry__0_i_3_n_0,result_internal0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__0_i_1
       (.I0(a[7]),
        .I1(b[7]),
        .O(result_internal0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__0_i_2
       (.I0(a[6]),
        .I1(b[6]),
        .O(result_internal0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__0_i_3
       (.I0(a[5]),
        .I1(b[5]),
        .O(result_internal0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__0_i_4
       (.I0(a[4]),
        .I1(b[4]),
        .O(result_internal0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__1
       (.CI(result_internal0_carry__0_n_0),
        .CO({result_internal0_carry__1_n_0,result_internal0_carry__1_n_1,result_internal0_carry__1_n_2,result_internal0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O({result_internal0_carry__1_n_4,result_internal0_carry__1_n_5,result_internal0_carry__1_n_6,result_internal0_carry__1_n_7}),
        .S({result_internal0_carry__1_i_1_n_0,result_internal0_carry__1_i_2_n_0,result_internal0_carry__1_i_3_n_0,result_internal0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__1_i_1
       (.I0(a[11]),
        .I1(b[11]),
        .O(result_internal0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__1_i_2
       (.I0(a[10]),
        .I1(b[10]),
        .O(result_internal0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__1_i_3
       (.I0(a[9]),
        .I1(b[9]),
        .O(result_internal0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__1_i_4
       (.I0(a[8]),
        .I1(b[8]),
        .O(result_internal0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__2
       (.CI(result_internal0_carry__1_n_0),
        .CO({result_internal0_carry__2_n_0,result_internal0_carry__2_n_1,result_internal0_carry__2_n_2,result_internal0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O({result_internal0_carry__2_n_4,result_internal0_carry__2_n_5,result_internal0_carry__2_n_6,result_internal0_carry__2_n_7}),
        .S({result_internal0_carry__2_i_1_n_0,result_internal0_carry__2_i_2_n_0,result_internal0_carry__2_i_3_n_0,result_internal0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__2_i_1
       (.I0(a[15]),
        .I1(b[15]),
        .O(result_internal0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__2_i_2
       (.I0(a[14]),
        .I1(b[14]),
        .O(result_internal0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__2_i_3
       (.I0(a[13]),
        .I1(b[13]),
        .O(result_internal0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__2_i_4
       (.I0(a[12]),
        .I1(b[12]),
        .O(result_internal0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__3
       (.CI(result_internal0_carry__2_n_0),
        .CO({result_internal0_carry__3_n_0,result_internal0_carry__3_n_1,result_internal0_carry__3_n_2,result_internal0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O({result_internal0_carry__3_n_4,result_internal0_carry__3_n_5,result_internal0_carry__3_n_6,result_internal0_carry__3_n_7}),
        .S({result_internal0_carry__3_i_1_n_0,result_internal0_carry__3_i_2_n_0,result_internal0_carry__3_i_3_n_0,result_internal0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__3_i_1
       (.I0(a[19]),
        .I1(b[19]),
        .O(result_internal0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__3_i_2
       (.I0(a[18]),
        .I1(b[18]),
        .O(result_internal0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__3_i_3
       (.I0(a[17]),
        .I1(b[17]),
        .O(result_internal0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__3_i_4
       (.I0(a[16]),
        .I1(b[16]),
        .O(result_internal0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__4
       (.CI(result_internal0_carry__3_n_0),
        .CO({result_internal0_carry__4_n_0,result_internal0_carry__4_n_1,result_internal0_carry__4_n_2,result_internal0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O({result_internal0_carry__4_n_4,result_internal0_carry__4_n_5,result_internal0_carry__4_n_6,result_internal0_carry__4_n_7}),
        .S({result_internal0_carry__4_i_1_n_0,result_internal0_carry__4_i_2_n_0,result_internal0_carry__4_i_3_n_0,result_internal0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__4_i_1
       (.I0(a[23]),
        .I1(b[23]),
        .O(result_internal0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__4_i_2
       (.I0(a[22]),
        .I1(b[22]),
        .O(result_internal0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__4_i_3
       (.I0(a[21]),
        .I1(b[21]),
        .O(result_internal0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__4_i_4
       (.I0(a[20]),
        .I1(b[20]),
        .O(result_internal0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__5
       (.CI(result_internal0_carry__4_n_0),
        .CO({result_internal0_carry__5_n_0,result_internal0_carry__5_n_1,result_internal0_carry__5_n_2,result_internal0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O({result_internal0_carry__5_n_4,result_internal0_carry__5_n_5,result_internal0_carry__5_n_6,result_internal0_carry__5_n_7}),
        .S({result_internal0_carry__5_i_1_n_0,result_internal0_carry__5_i_2_n_0,result_internal0_carry__5_i_3_n_0,result_internal0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__5_i_1
       (.I0(a[27]),
        .I1(b[27]),
        .O(result_internal0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__5_i_2
       (.I0(a[26]),
        .I1(b[26]),
        .O(result_internal0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__5_i_3
       (.I0(a[25]),
        .I1(b[25]),
        .O(result_internal0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__5_i_4
       (.I0(a[24]),
        .I1(b[24]),
        .O(result_internal0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result_internal0_carry__6
       (.CI(result_internal0_carry__5_n_0),
        .CO({NLW_result_internal0_carry__6_CO_UNCONNECTED[3],result_internal0_carry__6_n_1,result_internal0_carry__6_n_2,result_internal0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O({p_1_in2_in,result_internal0_carry__6_n_5,result_internal0_carry__6_n_6,result_internal0_carry__6_n_7}),
        .S({result_internal0_carry__6_i_1_n_0,result_internal0_carry__6_i_2_n_0,result_internal0_carry__6_i_3_n_0,result_internal0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__6_i_1
       (.I0(a[31]),
        .I1(b[31]),
        .O(result_internal0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__6_i_2
       (.I0(a[30]),
        .I1(b[30]),
        .O(result_internal0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__6_i_3
       (.I0(a[29]),
        .I1(b[29]),
        .O(result_internal0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry__6_i_4
       (.I0(a[28]),
        .I1(b[28]),
        .O(result_internal0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry_i_1
       (.I0(a[3]),
        .I1(b[3]),
        .O(result_internal0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry_i_2
       (.I0(a[2]),
        .I1(b[2]),
        .O(result_internal0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry_i_3
       (.I0(a[1]),
        .I1(b[1]),
        .O(result_internal0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    result_internal0_carry_i_4
       (.I0(a[0]),
        .I1(b[0]),
        .O(result_internal0_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\result_internal0_inferred__0/i__carry_n_0 ,\result_internal0_inferred__0/i__carry_n_1 ,\result_internal0_inferred__0/i__carry_n_2 ,\result_internal0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(a[3:0]),
        .O({\result_internal0_inferred__0/i__carry_n_4 ,\result_internal0_inferred__0/i__carry_n_5 ,\result_internal0_inferred__0/i__carry_n_6 ,\result_internal0_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__0 
       (.CI(\result_internal0_inferred__0/i__carry_n_0 ),
        .CO({\result_internal0_inferred__0/i__carry__0_n_0 ,\result_internal0_inferred__0/i__carry__0_n_1 ,\result_internal0_inferred__0/i__carry__0_n_2 ,\result_internal0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O({\result_internal0_inferred__0/i__carry__0_n_4 ,\result_internal0_inferred__0/i__carry__0_n_5 ,\result_internal0_inferred__0/i__carry__0_n_6 ,\result_internal0_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__1 
       (.CI(\result_internal0_inferred__0/i__carry__0_n_0 ),
        .CO({\result_internal0_inferred__0/i__carry__1_n_0 ,\result_internal0_inferred__0/i__carry__1_n_1 ,\result_internal0_inferred__0/i__carry__1_n_2 ,\result_internal0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O({\result_internal0_inferred__0/i__carry__1_n_4 ,\result_internal0_inferred__0/i__carry__1_n_5 ,\result_internal0_inferred__0/i__carry__1_n_6 ,\result_internal0_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__2 
       (.CI(\result_internal0_inferred__0/i__carry__1_n_0 ),
        .CO({\result_internal0_inferred__0/i__carry__2_n_0 ,\result_internal0_inferred__0/i__carry__2_n_1 ,\result_internal0_inferred__0/i__carry__2_n_2 ,\result_internal0_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O({\result_internal0_inferred__0/i__carry__2_n_4 ,\result_internal0_inferred__0/i__carry__2_n_5 ,\result_internal0_inferred__0/i__carry__2_n_6 ,\result_internal0_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__0_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__3 
       (.CI(\result_internal0_inferred__0/i__carry__2_n_0 ),
        .CO({\result_internal0_inferred__0/i__carry__3_n_0 ,\result_internal0_inferred__0/i__carry__3_n_1 ,\result_internal0_inferred__0/i__carry__3_n_2 ,\result_internal0_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O({\result_internal0_inferred__0/i__carry__3_n_4 ,\result_internal0_inferred__0/i__carry__3_n_5 ,\result_internal0_inferred__0/i__carry__3_n_6 ,\result_internal0_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__4 
       (.CI(\result_internal0_inferred__0/i__carry__3_n_0 ),
        .CO({\result_internal0_inferred__0/i__carry__4_n_0 ,\result_internal0_inferred__0/i__carry__4_n_1 ,\result_internal0_inferred__0/i__carry__4_n_2 ,\result_internal0_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O({\result_internal0_inferred__0/i__carry__4_n_4 ,\result_internal0_inferred__0/i__carry__4_n_5 ,\result_internal0_inferred__0/i__carry__4_n_6 ,\result_internal0_inferred__0/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__5 
       (.CI(\result_internal0_inferred__0/i__carry__4_n_0 ),
        .CO({\result_internal0_inferred__0/i__carry__5_n_0 ,\result_internal0_inferred__0/i__carry__5_n_1 ,\result_internal0_inferred__0/i__carry__5_n_2 ,\result_internal0_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O({\result_internal0_inferred__0/i__carry__5_n_4 ,\result_internal0_inferred__0/i__carry__5_n_5 ,\result_internal0_inferred__0/i__carry__5_n_6 ,\result_internal0_inferred__0/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result_internal0_inferred__0/i__carry__6 
       (.CI(\result_internal0_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_result_internal0_inferred__0/i__carry__6_CO_UNCONNECTED [3],\result_internal0_inferred__0/i__carry__6_n_1 ,\result_internal0_inferred__0/i__carry__6_n_2 ,\result_internal0_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O({p_1_in,\result_internal0_inferred__0/i__carry__6_n_5 ,\result_internal0_inferred__0/i__carry__6_n_6 ,\result_internal0_inferred__0/i__carry__6_n_7 }),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\result_internal0_inferred__1/i__carry_n_0 ,\result_internal0_inferred__1/i__carry_n_1 ,\result_internal0_inferred__1/i__carry_n_2 ,\result_internal0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0}),
        .O(\NLW_result_internal0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__3_n_0,i__carry_i_6__3_n_0,i__carry_i_7__3_n_0,i__carry_i_8__3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__1/i__carry__0 
       (.CI(\result_internal0_inferred__1/i__carry_n_0 ),
        .CO({\result_internal0_inferred__1/i__carry__0_n_0 ,\result_internal0_inferred__1/i__carry__0_n_1 ,\result_internal0_inferred__1/i__carry__0_n_2 ,\result_internal0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_result_internal0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__1/i__carry__1 
       (.CI(\result_internal0_inferred__1/i__carry__0_n_0 ),
        .CO({\result_internal0_inferred__1/i__carry__1_n_0 ,\result_internal0_inferred__1/i__carry__1_n_1 ,\result_internal0_inferred__1/i__carry__1_n_2 ,\result_internal0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_result_internal0_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__1/i__carry__2 
       (.CI(\result_internal0_inferred__1/i__carry__1_n_0 ),
        .CO({data2,\result_internal0_inferred__1/i__carry__2_n_1 ,\result_internal0_inferred__1/i__carry__2_n_2 ,\result_internal0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_result_internal0_inferred__1/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\result_internal0_inferred__2/i__carry_n_0 ,\result_internal0_inferred__2/i__carry_n_1 ,\result_internal0_inferred__2/i__carry_n_2 ,\result_internal0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_result_internal0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__2/i__carry__0 
       (.CI(\result_internal0_inferred__2/i__carry_n_0 ),
        .CO({\result_internal0_inferred__2/i__carry__0_n_0 ,\result_internal0_inferred__2/i__carry__0_n_1 ,\result_internal0_inferred__2/i__carry__0_n_2 ,\result_internal0_inferred__2/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_result_internal0_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__2/i__carry__1 
       (.CI(\result_internal0_inferred__2/i__carry__0_n_0 ),
        .CO({\result_internal0_inferred__2/i__carry__1_n_0 ,\result_internal0_inferred__2/i__carry__1_n_1 ,\result_internal0_inferred__2/i__carry__1_n_2 ,\result_internal0_inferred__2/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_result_internal0_inferred__2/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \result_internal0_inferred__2/i__carry__2 
       (.CI(\result_internal0_inferred__2/i__carry__1_n_0 ),
        .CO({data3,\result_internal0_inferred__2/i__carry__2_n_1 ,\result_internal0_inferred__2/i__carry__2_n_2 ,\result_internal0_inferred__2/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_result_internal0_inferred__2/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    zero_INST_0
       (.I0(result[31]),
        .I1(zero_INST_0_i_1_n_0),
        .I2(zero_INST_0_i_2_n_0),
        .I3(zero_INST_0_i_3_n_0),
        .I4(zero_INST_0_i_4_n_0),
        .I5(zero_INST_0_i_5_n_0),
        .O(zero));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    zero_INST_0_i_1
       (.I0(zero_INST_0_i_6_n_0),
        .I1(result[29]),
        .I2(result[28]),
        .I3(result[26]),
        .I4(result[25]),
        .I5(result[30]),
        .O(zero_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000230000002323)) 
    zero_INST_0_i_10
       (.I0(result[10]),
        .I1(result[11]),
        .I2(result[9]),
        .I3(result[7]),
        .I4(result[8]),
        .I5(result[6]),
        .O(zero_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h080A)) 
    zero_INST_0_i_2
       (.I0(zero_INST_0_i_7_n_0),
        .I1(result[28]),
        .I2(result[29]),
        .I3(result[27]),
        .O(zero_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h080A)) 
    zero_INST_0_i_3
       (.I0(zero_INST_0_i_8_n_0),
        .I1(result[19]),
        .I2(result[20]),
        .I3(result[18]),
        .O(zero_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    zero_INST_0_i_4
       (.I0(result[3]),
        .I1(result[0]),
        .I2(result[17]),
        .I3(result[5]),
        .I4(result[1]),
        .I5(result[4]),
        .O(zero_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    zero_INST_0_i_5
       (.I0(zero_INST_0_i_9_n_0),
        .I1(result[7]),
        .I2(result[2]),
        .I3(result[10]),
        .I4(result[8]),
        .I5(zero_INST_0_i_10_n_0),
        .O(zero_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_INST_0_i_6
       (.I0(result[20]),
        .I1(result[19]),
        .I2(result[23]),
        .I3(result[22]),
        .O(zero_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000230000002323)) 
    zero_INST_0_i_7
       (.I0(result[25]),
        .I1(result[26]),
        .I2(result[24]),
        .I3(result[22]),
        .I4(result[23]),
        .I5(result[21]),
        .O(zero_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000230000002323)) 
    zero_INST_0_i_8
       (.I0(result[16]),
        .I1(result[17]),
        .I2(result[15]),
        .I3(result[13]),
        .I4(result[14]),
        .I5(result[12]),
        .O(zero_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_INST_0_i_9
       (.I0(result[16]),
        .I1(result[14]),
        .I2(result[13]),
        .I3(result[11]),
        .O(zero_INST_0_i_9_n_0));
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
