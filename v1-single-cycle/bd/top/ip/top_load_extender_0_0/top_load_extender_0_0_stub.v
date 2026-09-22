// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:41 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_load_extender_0_0/top_load_extender_0_0_stub.v}
// Design      : top_load_extender_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "top_load_extender_0_0,load_extender,{}" *) (* core_generation_info = "top_load_extender_0_0,load_extender,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=load_extender,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "load_extender,Vivado 2025.1" *) 
module top_load_extender_0_0(raw_data, mem_size, load_unsigned, extended)
/* synthesis syn_black_box black_box_pad_pin="raw_data[31:0],mem_size[1:0],load_unsigned,extended[31:0]" */;
  input [31:0]raw_data;
  input [1:0]mem_size;
  input load_unsigned;
  output [31:0]extended;
endmodule
