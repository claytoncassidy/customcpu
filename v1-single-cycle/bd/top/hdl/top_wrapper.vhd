--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Mon Sep 21 23:32:32 2026
--Host        : claytonsPC running 64-bit major release  (build 9200)
--Command     : generate_target top_wrapper.bd
--Design      : top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end top_wrapper;

architecture STRUCTURE of top_wrapper is
  component top is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top;
begin
top_i: component top
     port map (
      clk_0 => clk_0,
      reset_0 => reset_0,
      writebackOUT(31 downto 0) => writebackOUT(31 downto 0)
    );
end STRUCTURE;
