-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 23:11:00 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_instruction_memory_0_0/top_instruction_memory_0_0_sim_netlist.vhdl}
-- Design      : top_instruction_memory_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_instruction_memory_0_0_instruction_memory is
  port (
    instruction : out STD_LOGIC_VECTOR ( 24 downto 0 );
    address : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_instruction_memory_0_0_instruction_memory : entity is "instruction_memory";
end top_instruction_memory_0_0_instruction_memory;

architecture STRUCTURE of top_instruction_memory_0_0_instruction_memory is
  signal \instruction[24]_INST_0_i_1_n_0\ : STD_LOGIC;
begin
\instruction[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02AAAAAA"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(1),
      I2 => address(2),
      I3 => address(4),
      I4 => address(3),
      O => instruction(0)
    );
\instruction[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4048484848004848"
    )
        port map (
      I0 => address(4),
      I1 => \instruction[24]_INST_0_i_1_n_0\,
      I2 => address(3),
      I3 => address(2),
      I4 => address(0),
      I5 => address(1),
      O => instruction(9)
    );
\instruction[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044800000000000"
    )
        port map (
      I0 => address(1),
      I1 => address(4),
      I2 => address(0),
      I3 => address(2),
      I4 => address(3),
      I5 => \instruction[24]_INST_0_i_1_n_0\,
      O => instruction(10)
    );
\instruction[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => address(4),
      I1 => address(6),
      I2 => address(7),
      I3 => address(5),
      I4 => address(2),
      I5 => address(3),
      O => instruction(11)
    );
\instruction[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000200"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(4),
      I2 => address(3),
      I3 => address(2),
      I4 => address(1),
      I5 => address(0),
      O => instruction(12)
    );
\instruction[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000600000"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => address(3),
      I3 => address(2),
      I4 => \instruction[24]_INST_0_i_1_n_0\,
      I5 => address(4),
      O => instruction(13)
    );
\instruction[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080800000000008"
    )
        port map (
      I0 => address(1),
      I1 => \instruction[24]_INST_0_i_1_n_0\,
      I2 => address(2),
      I3 => address(3),
      I4 => address(4),
      I5 => address(0),
      O => instruction(14)
    );
\instruction[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => address(2),
      I1 => address(1),
      I2 => \instruction[24]_INST_0_i_1_n_0\,
      I3 => address(0),
      I4 => address(3),
      I5 => address(4),
      O => instruction(15)
    );
\instruction[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000800"
    )
        port map (
      I0 => address(1),
      I1 => \instruction[24]_INST_0_i_1_n_0\,
      I2 => address(4),
      I3 => address(3),
      I4 => address(0),
      I5 => address(2),
      O => instruction(16)
    );
\instruction[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000802280222208A"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(0),
      I2 => address(1),
      I3 => address(4),
      I4 => address(3),
      I5 => address(2),
      O => instruction(17)
    );
\instruction[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202228000202A208"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(4),
      I2 => address(2),
      I3 => address(0),
      I4 => address(1),
      I5 => address(3),
      O => instruction(18)
    );
\instruction[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202000032650000"
    )
        port map (
      I0 => address(2),
      I1 => address(3),
      I2 => address(4),
      I3 => address(1),
      I4 => \instruction[24]_INST_0_i_1_n_0\,
      I5 => address(0),
      O => instruction(19)
    );
\instruction[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200008800A8A888"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(4),
      I2 => address(0),
      I3 => address(3),
      I4 => address(2),
      I5 => address(1),
      O => instruction(20)
    );
\instruction[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => address(2),
      I1 => address(0),
      I2 => address(3),
      I3 => address(4),
      I4 => \instruction[24]_INST_0_i_1_n_0\,
      I5 => address(1),
      O => instruction(24)
    );
\instruction[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => address(6),
      I1 => address(7),
      I2 => address(5),
      O => \instruction[24]_INST_0_i_1_n_0\
    );
\instruction[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A008028002008"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(4),
      I2 => address(3),
      I3 => address(1),
      I4 => address(2),
      I5 => address(0),
      O => instruction(21)
    );
\instruction[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002200000A82000"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(1),
      I2 => address(2),
      I3 => address(0),
      I4 => address(4),
      I5 => address(3),
      O => instruction(22)
    );
\instruction[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000400000"
    )
        port map (
      I0 => address(4),
      I1 => \instruction[24]_INST_0_i_1_n_0\,
      I2 => address(0),
      I3 => address(3),
      I4 => address(2),
      I5 => address(1),
      O => instruction(23)
    );
\instruction[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00088A0000080000"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(1),
      I2 => address(2),
      I3 => address(4),
      I4 => address(3),
      I5 => address(0),
      O => instruction(1)
    );
\instruction[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => address(2),
      I1 => address(3),
      I2 => address(4),
      I3 => \instruction[24]_INST_0_i_1_n_0\,
      I4 => address(0),
      O => instruction(2)
    );
\instruction[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02220A8020822A8A"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(1),
      I2 => address(3),
      I3 => address(4),
      I4 => address(0),
      I5 => address(2),
      O => instruction(3)
    );
\instruction[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D000000847C0000"
    )
        port map (
      I0 => address(2),
      I1 => address(1),
      I2 => address(3),
      I3 => address(0),
      I4 => \instruction[24]_INST_0_i_1_n_0\,
      I5 => address(4),
      O => instruction(4)
    );
\instruction[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4088000800004000"
    )
        port map (
      I0 => address(4),
      I1 => \instruction[24]_INST_0_i_1_n_0\,
      I2 => address(2),
      I3 => address(3),
      I4 => address(1),
      I5 => address(0),
      O => instruction(5)
    );
\instruction[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00341F0300000000"
    )
        port map (
      I0 => address(1),
      I1 => address(2),
      I2 => address(3),
      I3 => address(4),
      I4 => address(0),
      I5 => \instruction[24]_INST_0_i_1_n_0\,
      O => instruction(6)
    );
\instruction[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1631480E00000000"
    )
        port map (
      I0 => address(4),
      I1 => address(1),
      I2 => address(3),
      I3 => address(2),
      I4 => address(0),
      I5 => \instruction[24]_INST_0_i_1_n_0\,
      O => instruction(7)
    );
\instruction[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A80AA00802000"
    )
        port map (
      I0 => \instruction[24]_INST_0_i_1_n_0\,
      I1 => address(1),
      I2 => address(0),
      I3 => address(3),
      I4 => address(4),
      I5 => address(2),
      O => instruction(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_instruction_memory_0_0 is
  port (
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_instruction_memory_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_instruction_memory_0_0 : entity is "top_instruction_memory_0_0,instruction_memory,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_instruction_memory_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_instruction_memory_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_instruction_memory_0_0 : entity is "instruction_memory,Vivado 2025.1";
end top_instruction_memory_0_0;

architecture STRUCTURE of top_instruction_memory_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^instruction\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  instruction(31) <= \^instruction\(31);
  instruction(30) <= \^instruction\(31);
  instruction(29) <= \^instruction\(31);
  instruction(28) <= \^instruction\(28);
  instruction(27) <= \^instruction\(31);
  instruction(26 downto 25) <= \^instruction\(26 downto 25);
  instruction(24) <= \^instruction\(31);
  instruction(23 downto 20) <= \^instruction\(23 downto 20);
  instruction(19) <= \<const0>\;
  instruction(18) <= \^instruction\(18);
  instruction(17) <= \^instruction\(16);
  instruction(16 downto 1) <= \^instruction\(16 downto 1);
  instruction(0) <= \^instruction\(1);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.top_instruction_memory_0_0_instruction_memory
     port map (
      address(7 downto 0) => address(9 downto 2),
      instruction(24) => \^instruction\(31),
      instruction(23) => \^instruction\(28),
      instruction(22 downto 21) => \^instruction\(26 downto 25),
      instruction(20 downto 17) => \^instruction\(23 downto 20),
      instruction(16) => \^instruction\(18),
      instruction(15 downto 0) => \^instruction\(16 downto 1)
    );
end STRUCTURE;
