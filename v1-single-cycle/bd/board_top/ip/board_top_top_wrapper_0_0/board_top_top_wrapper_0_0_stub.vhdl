-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 22 00:46:37 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_top_wrapper_0_0/board_top_top_wrapper_0_0_stub.vhdl}
-- Design      : board_top_top_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity board_top_top_wrapper_0_0 is
  Port ( 
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of board_top_top_wrapper_0_0 : entity is "board_top_top_wrapper_0_0,top_wrapper,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of board_top_top_wrapper_0_0 : entity is "board_top_top_wrapper_0_0,top_wrapper,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of board_top_top_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of board_top_top_wrapper_0_0 : entity is "module_ref";
end board_top_top_wrapper_0_0;

architecture stub of board_top_top_wrapper_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_0,reset_0,writebackOUT[31:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of reset_0 : signal is "xilinx.com:signal:reset:1.0 reset_0 RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_0 : signal is "slave reset_0";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_0 : signal is "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "top_wrapper,Vivado 2025.1";
begin
end;
