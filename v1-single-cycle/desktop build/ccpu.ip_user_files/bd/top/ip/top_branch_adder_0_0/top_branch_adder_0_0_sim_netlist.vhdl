-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:41 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_branch_adder_0_0/top_branch_adder_0_0_sim_netlist.vhdl}
-- Design      : top_branch_adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_branch_adder_0_0_branch_adder is
  port (
    target : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_branch_adder_0_0_branch_adder : entity is "branch_adder";
end top_branch_adder_0_0_branch_adder;

architecture STRUCTURE of top_branch_adder_0_0_branch_adder is
  signal \target[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[0]_INST_0_n_0\ : STD_LOGIC;
  signal \target[0]_INST_0_n_1\ : STD_LOGIC;
  signal \target[0]_INST_0_n_2\ : STD_LOGIC;
  signal \target[0]_INST_0_n_3\ : STD_LOGIC;
  signal \target[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[12]_INST_0_n_0\ : STD_LOGIC;
  signal \target[12]_INST_0_n_1\ : STD_LOGIC;
  signal \target[12]_INST_0_n_2\ : STD_LOGIC;
  signal \target[12]_INST_0_n_3\ : STD_LOGIC;
  signal \target[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[16]_INST_0_n_0\ : STD_LOGIC;
  signal \target[16]_INST_0_n_1\ : STD_LOGIC;
  signal \target[16]_INST_0_n_2\ : STD_LOGIC;
  signal \target[16]_INST_0_n_3\ : STD_LOGIC;
  signal \target[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[20]_INST_0_n_0\ : STD_LOGIC;
  signal \target[20]_INST_0_n_1\ : STD_LOGIC;
  signal \target[20]_INST_0_n_2\ : STD_LOGIC;
  signal \target[20]_INST_0_n_3\ : STD_LOGIC;
  signal \target[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[24]_INST_0_n_0\ : STD_LOGIC;
  signal \target[24]_INST_0_n_1\ : STD_LOGIC;
  signal \target[24]_INST_0_n_2\ : STD_LOGIC;
  signal \target[24]_INST_0_n_3\ : STD_LOGIC;
  signal \target[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[28]_INST_0_n_1\ : STD_LOGIC;
  signal \target[28]_INST_0_n_2\ : STD_LOGIC;
  signal \target[28]_INST_0_n_3\ : STD_LOGIC;
  signal \target[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[4]_INST_0_n_0\ : STD_LOGIC;
  signal \target[4]_INST_0_n_1\ : STD_LOGIC;
  signal \target[4]_INST_0_n_2\ : STD_LOGIC;
  signal \target[4]_INST_0_n_3\ : STD_LOGIC;
  signal \target[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \target[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \target[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \target[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \target[8]_INST_0_n_0\ : STD_LOGIC;
  signal \target[8]_INST_0_n_1\ : STD_LOGIC;
  signal \target[8]_INST_0_n_2\ : STD_LOGIC;
  signal \target[8]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_target[28]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \target[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[16]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[20]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[24]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[28]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \target[8]_INST_0\ : label is 35;
begin
\target[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \target[0]_INST_0_n_0\,
      CO(2) => \target[0]_INST_0_n_1\,
      CO(1) => \target[0]_INST_0_n_2\,
      CO(0) => \target[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(3 downto 0),
      O(3 downto 0) => target(3 downto 0),
      S(3) => \target[0]_INST_0_i_1_n_0\,
      S(2) => \target[0]_INST_0_i_2_n_0\,
      S(1) => \target[0]_INST_0_i_3_n_0\,
      S(0) => \target[0]_INST_0_i_4_n_0\
    );
\target[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(3),
      I1 => immediate(3),
      O => \target[0]_INST_0_i_1_n_0\
    );
\target[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(2),
      I1 => immediate(2),
      O => \target[0]_INST_0_i_2_n_0\
    );
\target[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(1),
      I1 => immediate(1),
      O => \target[0]_INST_0_i_3_n_0\
    );
\target[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(0),
      I1 => immediate(0),
      O => \target[0]_INST_0_i_4_n_0\
    );
\target[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[8]_INST_0_n_0\,
      CO(3) => \target[12]_INST_0_n_0\,
      CO(2) => \target[12]_INST_0_n_1\,
      CO(1) => \target[12]_INST_0_n_2\,
      CO(0) => \target[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(15 downto 12),
      O(3 downto 0) => target(15 downto 12),
      S(3) => \target[12]_INST_0_i_1_n_0\,
      S(2) => \target[12]_INST_0_i_2_n_0\,
      S(1) => \target[12]_INST_0_i_3_n_0\,
      S(0) => \target[12]_INST_0_i_4_n_0\
    );
\target[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(15),
      I1 => immediate(15),
      O => \target[12]_INST_0_i_1_n_0\
    );
\target[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(14),
      I1 => immediate(14),
      O => \target[12]_INST_0_i_2_n_0\
    );
\target[12]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(13),
      I1 => immediate(13),
      O => \target[12]_INST_0_i_3_n_0\
    );
\target[12]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(12),
      I1 => immediate(12),
      O => \target[12]_INST_0_i_4_n_0\
    );
\target[16]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[12]_INST_0_n_0\,
      CO(3) => \target[16]_INST_0_n_0\,
      CO(2) => \target[16]_INST_0_n_1\,
      CO(1) => \target[16]_INST_0_n_2\,
      CO(0) => \target[16]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(19 downto 16),
      O(3 downto 0) => target(19 downto 16),
      S(3) => \target[16]_INST_0_i_1_n_0\,
      S(2) => \target[16]_INST_0_i_2_n_0\,
      S(1) => \target[16]_INST_0_i_3_n_0\,
      S(0) => \target[16]_INST_0_i_4_n_0\
    );
\target[16]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(19),
      I1 => immediate(19),
      O => \target[16]_INST_0_i_1_n_0\
    );
\target[16]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(18),
      I1 => immediate(18),
      O => \target[16]_INST_0_i_2_n_0\
    );
\target[16]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(17),
      I1 => immediate(17),
      O => \target[16]_INST_0_i_3_n_0\
    );
\target[16]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(16),
      I1 => immediate(16),
      O => \target[16]_INST_0_i_4_n_0\
    );
\target[20]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[16]_INST_0_n_0\,
      CO(3) => \target[20]_INST_0_n_0\,
      CO(2) => \target[20]_INST_0_n_1\,
      CO(1) => \target[20]_INST_0_n_2\,
      CO(0) => \target[20]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(23 downto 20),
      O(3 downto 0) => target(23 downto 20),
      S(3) => \target[20]_INST_0_i_1_n_0\,
      S(2) => \target[20]_INST_0_i_2_n_0\,
      S(1) => \target[20]_INST_0_i_3_n_0\,
      S(0) => \target[20]_INST_0_i_4_n_0\
    );
\target[20]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(23),
      I1 => immediate(23),
      O => \target[20]_INST_0_i_1_n_0\
    );
\target[20]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(22),
      I1 => immediate(22),
      O => \target[20]_INST_0_i_2_n_0\
    );
\target[20]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(21),
      I1 => immediate(21),
      O => \target[20]_INST_0_i_3_n_0\
    );
\target[20]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(20),
      I1 => immediate(20),
      O => \target[20]_INST_0_i_4_n_0\
    );
\target[24]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[20]_INST_0_n_0\,
      CO(3) => \target[24]_INST_0_n_0\,
      CO(2) => \target[24]_INST_0_n_1\,
      CO(1) => \target[24]_INST_0_n_2\,
      CO(0) => \target[24]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(27 downto 24),
      O(3 downto 0) => target(27 downto 24),
      S(3) => \target[24]_INST_0_i_1_n_0\,
      S(2) => \target[24]_INST_0_i_2_n_0\,
      S(1) => \target[24]_INST_0_i_3_n_0\,
      S(0) => \target[24]_INST_0_i_4_n_0\
    );
\target[24]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(27),
      I1 => immediate(27),
      O => \target[24]_INST_0_i_1_n_0\
    );
\target[24]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(26),
      I1 => immediate(26),
      O => \target[24]_INST_0_i_2_n_0\
    );
\target[24]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(25),
      I1 => immediate(25),
      O => \target[24]_INST_0_i_3_n_0\
    );
\target[24]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(24),
      I1 => immediate(24),
      O => \target[24]_INST_0_i_4_n_0\
    );
\target[28]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[24]_INST_0_n_0\,
      CO(3) => \NLW_target[28]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \target[28]_INST_0_n_1\,
      CO(1) => \target[28]_INST_0_n_2\,
      CO(0) => \target[28]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => pc(30 downto 28),
      O(3 downto 0) => target(31 downto 28),
      S(3) => \target[28]_INST_0_i_1_n_0\,
      S(2) => \target[28]_INST_0_i_2_n_0\,
      S(1) => \target[28]_INST_0_i_3_n_0\,
      S(0) => \target[28]_INST_0_i_4_n_0\
    );
\target[28]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(31),
      I1 => immediate(31),
      O => \target[28]_INST_0_i_1_n_0\
    );
\target[28]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(30),
      I1 => immediate(30),
      O => \target[28]_INST_0_i_2_n_0\
    );
\target[28]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(29),
      I1 => immediate(29),
      O => \target[28]_INST_0_i_3_n_0\
    );
\target[28]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(28),
      I1 => immediate(28),
      O => \target[28]_INST_0_i_4_n_0\
    );
\target[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[0]_INST_0_n_0\,
      CO(3) => \target[4]_INST_0_n_0\,
      CO(2) => \target[4]_INST_0_n_1\,
      CO(1) => \target[4]_INST_0_n_2\,
      CO(0) => \target[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(7 downto 4),
      O(3 downto 0) => target(7 downto 4),
      S(3) => \target[4]_INST_0_i_1_n_0\,
      S(2) => \target[4]_INST_0_i_2_n_0\,
      S(1) => \target[4]_INST_0_i_3_n_0\,
      S(0) => \target[4]_INST_0_i_4_n_0\
    );
\target[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(7),
      I1 => immediate(7),
      O => \target[4]_INST_0_i_1_n_0\
    );
\target[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(6),
      I1 => immediate(6),
      O => \target[4]_INST_0_i_2_n_0\
    );
\target[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(5),
      I1 => immediate(5),
      O => \target[4]_INST_0_i_3_n_0\
    );
\target[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(4),
      I1 => immediate(4),
      O => \target[4]_INST_0_i_4_n_0\
    );
\target[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \target[4]_INST_0_n_0\,
      CO(3) => \target[8]_INST_0_n_0\,
      CO(2) => \target[8]_INST_0_n_1\,
      CO(1) => \target[8]_INST_0_n_2\,
      CO(0) => \target[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pc(11 downto 8),
      O(3 downto 0) => target(11 downto 8),
      S(3) => \target[8]_INST_0_i_1_n_0\,
      S(2) => \target[8]_INST_0_i_2_n_0\,
      S(1) => \target[8]_INST_0_i_3_n_0\,
      S(0) => \target[8]_INST_0_i_4_n_0\
    );
\target[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(11),
      I1 => immediate(11),
      O => \target[8]_INST_0_i_1_n_0\
    );
\target[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(10),
      I1 => immediate(10),
      O => \target[8]_INST_0_i_2_n_0\
    );
\target[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(9),
      I1 => immediate(9),
      O => \target[8]_INST_0_i_3_n_0\
    );
\target[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pc(8),
      I1 => immediate(8),
      O => \target[8]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_branch_adder_0_0 is
  port (
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    target : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_branch_adder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_branch_adder_0_0 : entity is "top_branch_adder_0_0,branch_adder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_branch_adder_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_branch_adder_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_branch_adder_0_0 : entity is "branch_adder,Vivado 2025.1";
end top_branch_adder_0_0;

architecture STRUCTURE of top_branch_adder_0_0 is
begin
U0: entity work.top_branch_adder_0_0_branch_adder
     port map (
      immediate(31 downto 0) => immediate(31 downto 0),
      pc(31 downto 0) => pc(31 downto 0),
      target(31 downto 0) => target(31 downto 0)
    );
end STRUCTURE;
