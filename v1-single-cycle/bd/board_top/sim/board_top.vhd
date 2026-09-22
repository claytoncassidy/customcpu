--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Tue Sep 22 01:18:32 2026
--Host        : claytonsPC running 64-bit major release  (build 9200)
--Command     : generate_target board_top.bd
--Design      : board_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top is
  port (
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    board_clk : in STD_LOGIC;
    btn_step : in STD_LOGIC;
    dp : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_sel : in STD_LOGIC;
    reset : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of board_top : entity is "board_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=board_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of board_top : entity is "board_top.hwdef";
end board_top;

architecture STRUCTURE of board_top is
  component board_top_top_wrapper_0_0 is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0;
  component board_top_single_step_clock_0_0 is
  port (
    clk : in STD_LOGIC;
    btn_in : in STD_LOGIC;
    step_pulse : out STD_LOGIC
  );
  end component board_top_single_step_clock_0_0;
  component board_top_led_select_mux_0_0 is
  port (
    writeback : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_sel : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component board_top_led_select_mux_0_0;
  component board_top_seven_seg_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    value : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hex_digit : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component board_top_seven_seg_controller_0_0;
  component board_top_hex_to_7seg_0_0 is
  port (
    hex_digit : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component board_top_hex_to_7seg_0_0;
  signal led_select_mux_0_led : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal seven_seg_controller_0_hex_digit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal single_step_clock_0_step_pulse : STD_LOGIC;
  signal top_wrapper_0_writebackOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  dp <= B"1";
hex_to_7seg_0: component board_top_hex_to_7seg_0_0
     port map (
      hex_digit(3 downto 0) => seven_seg_controller_0_hex_digit(3 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
led_select_mux_0: component board_top_led_select_mux_0_0
     port map (
      led(15 downto 0) => led_select_mux_0_led(15 downto 0),
      led_sel => led_sel,
      writeback(31 downto 0) => top_wrapper_0_writebackOUT(31 downto 0)
    );
seven_seg_controller_0: component board_top_seven_seg_controller_0_0
     port map (
      an(3 downto 0) => an(3 downto 0),
      clk => board_clk,
      hex_digit(3 downto 0) => seven_seg_controller_0_hex_digit(3 downto 0),
      value(15 downto 0) => led_select_mux_0_led(15 downto 0)
    );
single_step_clock_0: component board_top_single_step_clock_0_0
     port map (
      btn_in => btn_step,
      clk => board_clk,
      step_pulse => single_step_clock_0_step_pulse
    );
top_wrapper_0: component board_top_top_wrapper_0_0
     port map (
      clk_0 => single_step_clock_0_step_pulse,
      reset_0 => reset,
      writebackOUT(31 downto 0) => top_wrapper_0_writebackOUT(31 downto 0)
    );
end STRUCTURE;
