-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:44 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_0_0/top_alu_0_0_stub.vhdl}
-- Design      : top_alu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_alu_0_0 is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    invalid_op : out STD_LOGIC;
    overflow : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_alu_0_0 : entity is "top_alu_0_0,alu,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of top_alu_0_0 : entity is "top_alu_0_0,alu,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=alu,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_alu_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_alu_0_0 : entity is "module_ref";
end top_alu_0_0;

architecture stub of top_alu_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "a[31:0],b[31:0],alu_op[3:0],result[31:0],zero,invalid_op,overflow";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "alu,Vivado 2025.1";
begin
end;
