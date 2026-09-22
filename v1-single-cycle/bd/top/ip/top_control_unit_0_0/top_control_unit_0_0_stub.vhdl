-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_control_unit_0_0/top_control_unit_0_0_stub.vhdl}
-- Design      : top_control_unit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_control_unit_0_0 is
  Port ( 
    instruction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_zero : in STD_LOGIC;
    reg_write : out STD_LOGIC;
    mem_write : out STD_LOGIC;
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_a_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_b_sel : out STD_LOGIC;
    wb_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_src_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_size : out STD_LOGIC_VECTOR ( 1 downto 0 );
    load_unsigned : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_control_unit_0_0 : entity is "top_control_unit_0_0,control_unit,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of top_control_unit_0_0 : entity is "top_control_unit_0_0,control_unit,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=control_unit,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_control_unit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_control_unit_0_0 : entity is "module_ref";
end top_control_unit_0_0;

architecture stub of top_control_unit_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "instruction[31:0],alu_zero,reg_write,mem_write,alu_op[3:0],alu_a_sel[1:0],alu_b_sel,wb_sel[1:0],pc_src_sel[1:0],mem_size[1:0],load_unsigned";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "control_unit,Vivado 2025.1";
begin
end;
