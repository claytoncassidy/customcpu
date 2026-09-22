// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep 22 01:19:05 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_hex_to_7seg_0_0/board_top_hex_to_7seg_0_0_stub.v}
// Design      : board_top_hex_to_7seg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "board_top_hex_to_7seg_0_0,hex_to_7seg,{}" *) (* core_generation_info = "board_top_hex_to_7seg_0_0,hex_to_7seg,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=hex_to_7seg,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "hex_to_7seg,Vivado 2025.1" *) 
module board_top_hex_to_7seg_0_0(hex_digit, seg)
/* synthesis syn_black_box black_box_pad_pin="hex_digit[3:0],seg[6:0]" */;
  input [3:0]hex_digit;
  output [6:0]seg;
endmodule
