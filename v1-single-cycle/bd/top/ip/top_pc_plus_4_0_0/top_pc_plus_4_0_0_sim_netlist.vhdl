-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_pc_plus_4_0_0/top_pc_plus_4_0_0_sim_netlist.vhdl}
-- Design      : top_pc_plus_4_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_pc_plus_4_0_0_pc_plus_4 is
  port (
    pc_out : out STD_LOGIC_VECTOR ( 30 downto 0 );
    pc_in : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_pc_plus_4_0_0_pc_plus_4 : entity is "pc_plus_4";
end top_pc_plus_4_0_0_pc_plus_4;

architecture STRUCTURE of top_pc_plus_4_0_0_pc_plus_4 is
  signal \pc_out[13]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[13]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[13]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[13]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[17]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[17]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[17]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[17]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pc_out[1]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[1]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[1]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[1]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[21]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[21]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[21]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[21]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[25]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[25]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[25]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[25]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[29]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[29]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[5]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[5]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[5]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[5]_INST_0_n_3\ : STD_LOGIC;
  signal \pc_out[9]_INST_0_n_0\ : STD_LOGIC;
  signal \pc_out[9]_INST_0_n_1\ : STD_LOGIC;
  signal \pc_out[9]_INST_0_n_2\ : STD_LOGIC;
  signal \pc_out[9]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_pc_out[29]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pc_out[29]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pc_out[13]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[17]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[1]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[21]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[25]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[29]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[5]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \pc_out[9]_INST_0\ : label is 35;
begin
\pc_out[13]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[9]_INST_0_n_0\,
      CO(3) => \pc_out[13]_INST_0_n_0\,
      CO(2) => \pc_out[13]_INST_0_n_1\,
      CO(1) => \pc_out[13]_INST_0_n_2\,
      CO(0) => \pc_out[13]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_out(15 downto 12),
      S(3 downto 0) => pc_in(15 downto 12)
    );
\pc_out[17]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[13]_INST_0_n_0\,
      CO(3) => \pc_out[17]_INST_0_n_0\,
      CO(2) => \pc_out[17]_INST_0_n_1\,
      CO(1) => \pc_out[17]_INST_0_n_2\,
      CO(0) => \pc_out[17]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_out(19 downto 16),
      S(3 downto 0) => pc_in(19 downto 16)
    );
\pc_out[1]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pc_out[1]_INST_0_n_0\,
      CO(2) => \pc_out[1]_INST_0_n_1\,
      CO(1) => \pc_out[1]_INST_0_n_2\,
      CO(0) => \pc_out[1]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => pc_in(1),
      DI(0) => '0',
      O(3 downto 0) => pc_out(3 downto 0),
      S(3 downto 2) => pc_in(3 downto 2),
      S(1) => \pc_out[1]_INST_0_i_1_n_0\,
      S(0) => pc_in(0)
    );
\pc_out[1]_INST_0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pc_in(1),
      O => \pc_out[1]_INST_0_i_1_n_0\
    );
\pc_out[21]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[17]_INST_0_n_0\,
      CO(3) => \pc_out[21]_INST_0_n_0\,
      CO(2) => \pc_out[21]_INST_0_n_1\,
      CO(1) => \pc_out[21]_INST_0_n_2\,
      CO(0) => \pc_out[21]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_out(23 downto 20),
      S(3 downto 0) => pc_in(23 downto 20)
    );
\pc_out[25]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[21]_INST_0_n_0\,
      CO(3) => \pc_out[25]_INST_0_n_0\,
      CO(2) => \pc_out[25]_INST_0_n_1\,
      CO(1) => \pc_out[25]_INST_0_n_2\,
      CO(0) => \pc_out[25]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_out(27 downto 24),
      S(3 downto 0) => pc_in(27 downto 24)
    );
\pc_out[29]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[25]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_pc_out[29]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pc_out[29]_INST_0_n_2\,
      CO(0) => \pc_out[29]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pc_out[29]_INST_0_O_UNCONNECTED\(3),
      O(2 downto 0) => pc_out(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => pc_in(30 downto 28)
    );
\pc_out[5]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[1]_INST_0_n_0\,
      CO(3) => \pc_out[5]_INST_0_n_0\,
      CO(2) => \pc_out[5]_INST_0_n_1\,
      CO(1) => \pc_out[5]_INST_0_n_2\,
      CO(0) => \pc_out[5]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_out(7 downto 4),
      S(3 downto 0) => pc_in(7 downto 4)
    );
\pc_out[9]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pc_out[5]_INST_0_n_0\,
      CO(3) => \pc_out[9]_INST_0_n_0\,
      CO(2) => \pc_out[9]_INST_0_n_1\,
      CO(1) => \pc_out[9]_INST_0_n_2\,
      CO(0) => \pc_out[9]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_out(11 downto 8),
      S(3 downto 0) => pc_in(11 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_pc_plus_4_0_0 is
  port (
    pc_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_pc_plus_4_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_pc_plus_4_0_0 : entity is "top_pc_plus_4_0_0,pc_plus_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_pc_plus_4_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_pc_plus_4_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_pc_plus_4_0_0 : entity is "pc_plus_4,Vivado 2025.1";
end top_pc_plus_4_0_0;

architecture STRUCTURE of top_pc_plus_4_0_0 is
  signal \^pc_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pc_out\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  \^pc_in\(31 downto 0) <= pc_in(31 downto 0);
  pc_out(31 downto 1) <= \^pc_out\(31 downto 1);
  pc_out(0) <= \^pc_in\(0);
U0: entity work.top_pc_plus_4_0_0_pc_plus_4
     port map (
      pc_in(30 downto 0) => \^pc_in\(31 downto 1),
      pc_out(30 downto 0) => \^pc_out\(31 downto 1)
    );
end STRUCTURE;
