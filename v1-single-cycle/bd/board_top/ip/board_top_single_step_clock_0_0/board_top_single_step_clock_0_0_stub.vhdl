-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 22 00:46:29 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_single_step_clock_0_0/board_top_single_step_clock_0_0_stub.vhdl}
-- Design      : board_top_single_step_clock_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity board_top_single_step_clock_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    btn_in : in STD_LOGIC;
    step_pulse : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of board_top_single_step_clock_0_0 : entity is "board_top_single_step_clock_0_0,single_step_clock,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of board_top_single_step_clock_0_0 : entity is "board_top_single_step_clock_0_0,single_step_clock,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=single_step_clock,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of board_top_single_step_clock_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of board_top_single_step_clock_0_0 : entity is "module_ref";
end board_top_single_step_clock_0_0;

architecture stub of board_top_single_step_clock_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,btn_in,step_pulse";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "single_step_clock,Vivado 2025.1";
begin
end;
