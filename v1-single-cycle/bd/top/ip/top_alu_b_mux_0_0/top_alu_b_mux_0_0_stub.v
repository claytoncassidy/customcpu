// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:42 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_b_mux_0_0/top_alu_b_mux_0_0_stub.v}
// Design      : top_alu_b_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "top_alu_b_mux_0_0,alu_b_mux,{}" *) (* core_generation_info = "top_alu_b_mux_0_0,alu_b_mux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=alu_b_mux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "alu_b_mux,Vivado 2025.1" *) 
module top_alu_b_mux_0_0(data2, immediate, alu_b_sel, alu_b)
/* synthesis syn_black_box black_box_pad_pin="data2[31:0],immediate[31:0],alu_b_sel,alu_b[31:0]" */;
  input [31:0]data2;
  input [31:0]immediate;
  input alu_b_sel;
  output [31:0]alu_b;
endmodule
