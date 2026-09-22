-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 22 01:19:05 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_hex_to_7seg_0_0/board_top_hex_to_7seg_0_0_sim_netlist.vhdl}
-- Design      : board_top_hex_to_7seg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_hex_to_7seg_0_0_hex_to_7seg is
  port (
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    hex_digit : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of board_top_hex_to_7seg_0_0_hex_to_7seg : entity is "hex_to_7seg";
end board_top_hex_to_7seg_0_0_hex_to_7seg;

architecture STRUCTURE of board_top_hex_to_7seg_0_0_hex_to_7seg is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg[5]_INST_0\ : label is "soft_lutpair2";
begin
\seg[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(2),
      I2 => hex_digit(0),
      I3 => hex_digit(1),
      O => seg(0)
    );
\seg[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(2),
      I2 => hex_digit(1),
      I3 => hex_digit(0),
      O => seg(1)
    );
\seg[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(0),
      I2 => hex_digit(1),
      I3 => hex_digit(2),
      O => seg(2)
    );
\seg[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(2),
      I2 => hex_digit(0),
      I3 => hex_digit(1),
      O => seg(3)
    );
\seg[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(1),
      I2 => hex_digit(2),
      I3 => hex_digit(0),
      O => seg(4)
    );
\seg[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(2),
      I2 => hex_digit(0),
      I3 => hex_digit(1),
      O => seg(5)
    );
\seg[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => hex_digit(3),
      I1 => hex_digit(0),
      I2 => hex_digit(2),
      I3 => hex_digit(1),
      O => seg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_hex_to_7seg_0_0 is
  port (
    hex_digit : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of board_top_hex_to_7seg_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of board_top_hex_to_7seg_0_0 : entity is "board_top_hex_to_7seg_0_0,hex_to_7seg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of board_top_hex_to_7seg_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of board_top_hex_to_7seg_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of board_top_hex_to_7seg_0_0 : entity is "hex_to_7seg,Vivado 2025.1";
end board_top_hex_to_7seg_0_0;

architecture STRUCTURE of board_top_hex_to_7seg_0_0 is
begin
U0: entity work.board_top_hex_to_7seg_0_0_hex_to_7seg
     port map (
      hex_digit(3 downto 0) => hex_digit(3 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
