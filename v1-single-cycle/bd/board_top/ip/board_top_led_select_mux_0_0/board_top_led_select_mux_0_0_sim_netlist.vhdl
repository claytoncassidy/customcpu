-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 22 00:46:29 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_led_select_mux_0_0/board_top_led_select_mux_0_0_sim_netlist.vhdl}
-- Design      : board_top_led_select_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_led_select_mux_0_0_led_select_mux is
  port (
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    writeback : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of board_top_led_select_mux_0_0_led_select_mux : entity is "led_select_mux";
end board_top_led_select_mux_0_0_led_select_mux;

architecture STRUCTURE of board_top_led_select_mux_0_0_led_select_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led[9]_INST_0\ : label is "soft_lutpair4";
begin
\led[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(16),
      I1 => led_sel,
      I2 => writeback(0),
      O => led(0)
    );
\led[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(26),
      I1 => led_sel,
      I2 => writeback(10),
      O => led(10)
    );
\led[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(27),
      I1 => led_sel,
      I2 => writeback(11),
      O => led(11)
    );
\led[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(28),
      I1 => led_sel,
      I2 => writeback(12),
      O => led(12)
    );
\led[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(29),
      I1 => led_sel,
      I2 => writeback(13),
      O => led(13)
    );
\led[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(30),
      I1 => led_sel,
      I2 => writeback(14),
      O => led(14)
    );
\led[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(31),
      I1 => led_sel,
      I2 => writeback(15),
      O => led(15)
    );
\led[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(17),
      I1 => led_sel,
      I2 => writeback(1),
      O => led(1)
    );
\led[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(18),
      I1 => led_sel,
      I2 => writeback(2),
      O => led(2)
    );
\led[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(19),
      I1 => led_sel,
      I2 => writeback(3),
      O => led(3)
    );
\led[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(20),
      I1 => led_sel,
      I2 => writeback(4),
      O => led(4)
    );
\led[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(21),
      I1 => led_sel,
      I2 => writeback(5),
      O => led(5)
    );
\led[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(22),
      I1 => led_sel,
      I2 => writeback(6),
      O => led(6)
    );
\led[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(23),
      I1 => led_sel,
      I2 => writeback(7),
      O => led(7)
    );
\led[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(24),
      I1 => led_sel,
      I2 => writeback(8),
      O => led(8)
    );
\led[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => writeback(25),
      I1 => led_sel,
      I2 => writeback(9),
      O => led(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_led_select_mux_0_0 is
  port (
    writeback : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_sel : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of board_top_led_select_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of board_top_led_select_mux_0_0 : entity is "board_top_led_select_mux_0_0,led_select_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of board_top_led_select_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of board_top_led_select_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of board_top_led_select_mux_0_0 : entity is "led_select_mux,Vivado 2025.1";
end board_top_led_select_mux_0_0;

architecture STRUCTURE of board_top_led_select_mux_0_0 is
begin
U0: entity work.board_top_led_select_mux_0_0_led_select_mux
     port map (
      led(15 downto 0) => led(15 downto 0),
      led_sel => led_sel,
      writeback(31 downto 0) => writeback(31 downto 0)
    );
end STRUCTURE;
