// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_control_unit_0_0/top_control_unit_0_0_stub.v}
// Design      : top_control_unit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "top_control_unit_0_0,control_unit,{}" *) (* core_generation_info = "top_control_unit_0_0,control_unit,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=control_unit,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "control_unit,Vivado 2025.1" *) 
module top_control_unit_0_0(instruction, alu_zero, reg_write, mem_write, 
  alu_op, alu_a_sel, alu_b_sel, wb_sel, pc_src_sel, mem_size, load_unsigned)
/* synthesis syn_black_box black_box_pad_pin="instruction[31:0],alu_zero,reg_write,mem_write,alu_op[3:0],alu_a_sel[1:0],alu_b_sel,wb_sel[1:0],pc_src_sel[1:0],mem_size[1:0],load_unsigned" */;
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
endmodule
