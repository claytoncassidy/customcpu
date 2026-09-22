-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_b_mux_0_0/top_alu_b_mux_0_0_sim_netlist.vhdl}
-- Design      : top_alu_b_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_alu_b_mux_0_0_alu_b_mux is
  port (
    alu_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_b_sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_alu_b_mux_0_0_alu_b_mux : entity is "alu_b_mux";
end top_alu_b_mux_0_0_alu_b_mux;

architecture STRUCTURE of top_alu_b_mux_0_0_alu_b_mux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alu_b[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_b[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \alu_b[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \alu_b[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_b[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \alu_b[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_b[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \alu_b[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_b[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \alu_b[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_b[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \alu_b[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_b[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \alu_b[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \alu_b[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \alu_b[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \alu_b[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \alu_b[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \alu_b[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \alu_b[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \alu_b[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \alu_b[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \alu_b[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \alu_b[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alu_b[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \alu_b[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \alu_b[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \alu_b[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \alu_b[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alu_b[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \alu_b[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \alu_b[9]_INST_0\ : label is "soft_lutpair4";
begin
\alu_b[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(0),
      I1 => data2(0),
      I2 => alu_b_sel,
      O => alu_b(0)
    );
\alu_b[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(10),
      I1 => data2(10),
      I2 => alu_b_sel,
      O => alu_b(10)
    );
\alu_b[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(11),
      I1 => data2(11),
      I2 => alu_b_sel,
      O => alu_b(11)
    );
\alu_b[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(12),
      I1 => data2(12),
      I2 => alu_b_sel,
      O => alu_b(12)
    );
\alu_b[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(13),
      I1 => data2(13),
      I2 => alu_b_sel,
      O => alu_b(13)
    );
\alu_b[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(14),
      I1 => data2(14),
      I2 => alu_b_sel,
      O => alu_b(14)
    );
\alu_b[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(15),
      I1 => data2(15),
      I2 => alu_b_sel,
      O => alu_b(15)
    );
\alu_b[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(16),
      I1 => data2(16),
      I2 => alu_b_sel,
      O => alu_b(16)
    );
\alu_b[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(17),
      I1 => data2(17),
      I2 => alu_b_sel,
      O => alu_b(17)
    );
\alu_b[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(18),
      I1 => data2(18),
      I2 => alu_b_sel,
      O => alu_b(18)
    );
\alu_b[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(19),
      I1 => data2(19),
      I2 => alu_b_sel,
      O => alu_b(19)
    );
\alu_b[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(1),
      I1 => data2(1),
      I2 => alu_b_sel,
      O => alu_b(1)
    );
\alu_b[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(20),
      I1 => data2(20),
      I2 => alu_b_sel,
      O => alu_b(20)
    );
\alu_b[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(21),
      I1 => data2(21),
      I2 => alu_b_sel,
      O => alu_b(21)
    );
\alu_b[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(22),
      I1 => data2(22),
      I2 => alu_b_sel,
      O => alu_b(22)
    );
\alu_b[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(23),
      I1 => data2(23),
      I2 => alu_b_sel,
      O => alu_b(23)
    );
\alu_b[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(24),
      I1 => data2(24),
      I2 => alu_b_sel,
      O => alu_b(24)
    );
\alu_b[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(25),
      I1 => data2(25),
      I2 => alu_b_sel,
      O => alu_b(25)
    );
\alu_b[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(26),
      I1 => data2(26),
      I2 => alu_b_sel,
      O => alu_b(26)
    );
\alu_b[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(27),
      I1 => data2(27),
      I2 => alu_b_sel,
      O => alu_b(27)
    );
\alu_b[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(28),
      I1 => data2(28),
      I2 => alu_b_sel,
      O => alu_b(28)
    );
\alu_b[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(29),
      I1 => data2(29),
      I2 => alu_b_sel,
      O => alu_b(29)
    );
\alu_b[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(2),
      I1 => data2(2),
      I2 => alu_b_sel,
      O => alu_b(2)
    );
\alu_b[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(30),
      I1 => data2(30),
      I2 => alu_b_sel,
      O => alu_b(30)
    );
\alu_b[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(31),
      I1 => data2(31),
      I2 => alu_b_sel,
      O => alu_b(31)
    );
\alu_b[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(3),
      I1 => data2(3),
      I2 => alu_b_sel,
      O => alu_b(3)
    );
\alu_b[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(4),
      I1 => data2(4),
      I2 => alu_b_sel,
      O => alu_b(4)
    );
\alu_b[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(5),
      I1 => data2(5),
      I2 => alu_b_sel,
      O => alu_b(5)
    );
\alu_b[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(6),
      I1 => data2(6),
      I2 => alu_b_sel,
      O => alu_b(6)
    );
\alu_b[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(7),
      I1 => data2(7),
      I2 => alu_b_sel,
      O => alu_b(7)
    );
\alu_b[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(8),
      I1 => data2(8),
      I2 => alu_b_sel,
      O => alu_b(8)
    );
\alu_b[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => immediate(9),
      I1 => data2(9),
      I2 => alu_b_sel,
      O => alu_b(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_alu_b_mux_0_0 is
  port (
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_b_sel : in STD_LOGIC;
    alu_b : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_alu_b_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_alu_b_mux_0_0 : entity is "top_alu_b_mux_0_0,alu_b_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_alu_b_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_alu_b_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_alu_b_mux_0_0 : entity is "alu_b_mux,Vivado 2025.1";
end top_alu_b_mux_0_0;

architecture STRUCTURE of top_alu_b_mux_0_0 is
begin
U0: entity work.top_alu_b_mux_0_0_alu_b_mux
     port map (
      alu_b(31 downto 0) => alu_b(31 downto 0),
      alu_b_sel => alu_b_sel,
      data2(31 downto 0) => data2(31 downto 0),
      immediate(31 downto 0) => immediate(31 downto 0)
    );
end STRUCTURE;
