--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Tue Sep 22 01:18:32 2026
--Host        : claytonsPC running 64-bit major release  (build 9200)
--Command     : generate_target board_top_wrapper.bd
--Design      : board_top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    board_clk : in STD_LOGIC;
    btn_step : in STD_LOGIC;
    dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_sel : in STD_LOGIC;
    reset : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end board_top_wrapper;

architecture STRUCTURE of board_top_wrapper is
  component board_top is
  port (
    board_clk : in STD_LOGIC;
    btn_step : in STD_LOGIC;
    reset : in STD_LOGIC;
    led_sel : in STD_LOGIC;
    dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component board_top;
begin
board_top_i: component board_top
     port map (
      an(3 downto 0) => an(3 downto 0),
      board_clk => board_clk,
      btn_step => btn_step,
      dp(0) => dp(0),
      led_sel => led_sel,
      reset => reset,
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
