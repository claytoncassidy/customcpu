//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Sep 21 17:18:52 2026
//Host        : claytonsPC running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
   (clk_0,
    reset_0);
  input clk_0;
  input reset_0;

  wire clk_0;
  wire reset_0;

  top top_i
       (.clk_0(clk_0),
        .reset_0(reset_0));
endmodule
