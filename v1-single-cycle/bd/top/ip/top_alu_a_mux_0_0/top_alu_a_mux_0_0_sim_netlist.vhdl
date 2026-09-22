-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_a_mux_0_0/top_alu_a_mux_0_0_sim_netlist.vhdl}
-- Design      : top_alu_a_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_alu_a_mux_0_0_alu_a_mux is
  port (
    alu_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_a_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_alu_a_mux_0_0_alu_a_mux : entity is "alu_a_mux";
end top_alu_a_mux_0_0_alu_a_mux;

architecture STRUCTURE of top_alu_a_mux_0_0_alu_a_mux is
begin
\alu_a[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(0),
      I2 => pc(0),
      I3 => alu_a_sel(1),
      O => alu_a(0)
    );
\alu_a[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(10),
      I2 => pc(10),
      I3 => alu_a_sel(1),
      O => alu_a(10)
    );
\alu_a[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(11),
      I2 => pc(11),
      I3 => alu_a_sel(1),
      O => alu_a(11)
    );
\alu_a[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(12),
      I2 => pc(12),
      I3 => alu_a_sel(1),
      O => alu_a(12)
    );
\alu_a[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(13),
      I2 => pc(13),
      I3 => alu_a_sel(1),
      O => alu_a(13)
    );
\alu_a[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(14),
      I2 => pc(14),
      I3 => alu_a_sel(1),
      O => alu_a(14)
    );
\alu_a[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(15),
      I2 => pc(15),
      I3 => alu_a_sel(1),
      O => alu_a(15)
    );
\alu_a[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(16),
      I2 => pc(16),
      I3 => alu_a_sel(1),
      O => alu_a(16)
    );
\alu_a[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(17),
      I2 => pc(17),
      I3 => alu_a_sel(1),
      O => alu_a(17)
    );
\alu_a[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(18),
      I2 => pc(18),
      I3 => alu_a_sel(1),
      O => alu_a(18)
    );
\alu_a[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(19),
      I2 => pc(19),
      I3 => alu_a_sel(1),
      O => alu_a(19)
    );
\alu_a[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(1),
      I2 => pc(1),
      I3 => alu_a_sel(1),
      O => alu_a(1)
    );
\alu_a[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(20),
      I2 => pc(20),
      I3 => alu_a_sel(1),
      O => alu_a(20)
    );
\alu_a[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(21),
      I2 => pc(21),
      I3 => alu_a_sel(1),
      O => alu_a(21)
    );
\alu_a[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(22),
      I2 => pc(22),
      I3 => alu_a_sel(1),
      O => alu_a(22)
    );
\alu_a[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(23),
      I2 => pc(23),
      I3 => alu_a_sel(1),
      O => alu_a(23)
    );
\alu_a[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(24),
      I2 => pc(24),
      I3 => alu_a_sel(1),
      O => alu_a(24)
    );
\alu_a[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(25),
      I2 => pc(25),
      I3 => alu_a_sel(1),
      O => alu_a(25)
    );
\alu_a[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(26),
      I2 => pc(26),
      I3 => alu_a_sel(1),
      O => alu_a(26)
    );
\alu_a[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(27),
      I2 => pc(27),
      I3 => alu_a_sel(1),
      O => alu_a(27)
    );
\alu_a[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(28),
      I2 => pc(28),
      I3 => alu_a_sel(1),
      O => alu_a(28)
    );
\alu_a[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(29),
      I2 => pc(29),
      I3 => alu_a_sel(1),
      O => alu_a(29)
    );
\alu_a[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(2),
      I2 => pc(2),
      I3 => alu_a_sel(1),
      O => alu_a(2)
    );
\alu_a[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(30),
      I2 => pc(30),
      I3 => alu_a_sel(1),
      O => alu_a(30)
    );
\alu_a[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(31),
      I2 => pc(31),
      I3 => alu_a_sel(1),
      O => alu_a(31)
    );
\alu_a[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(3),
      I2 => pc(3),
      I3 => alu_a_sel(1),
      O => alu_a(3)
    );
\alu_a[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(4),
      I2 => pc(4),
      I3 => alu_a_sel(1),
      O => alu_a(4)
    );
\alu_a[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(5),
      I2 => pc(5),
      I3 => alu_a_sel(1),
      O => alu_a(5)
    );
\alu_a[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(6),
      I2 => pc(6),
      I3 => alu_a_sel(1),
      O => alu_a(6)
    );
\alu_a[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(7),
      I2 => pc(7),
      I3 => alu_a_sel(1),
      O => alu_a(7)
    );
\alu_a[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(8),
      I2 => pc(8),
      I3 => alu_a_sel(1),
      O => alu_a(8)
    );
\alu_a[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => alu_a_sel(0),
      I1 => data1(9),
      I2 => pc(9),
      I3 => alu_a_sel(1),
      O => alu_a(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_alu_a_mux_0_0 is
  port (
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_a_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_a : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_alu_a_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_alu_a_mux_0_0 : entity is "top_alu_a_mux_0_0,alu_a_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_alu_a_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_alu_a_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_alu_a_mux_0_0 : entity is "alu_a_mux,Vivado 2025.1";
end top_alu_a_mux_0_0;

architecture STRUCTURE of top_alu_a_mux_0_0 is
begin
U0: entity work.top_alu_a_mux_0_0_alu_a_mux
     port map (
      alu_a(31 downto 0) => alu_a(31 downto 0),
      alu_a_sel(1 downto 0) => alu_a_sel(1 downto 0),
      data1(31 downto 0) => data1(31 downto 0),
      pc(31 downto 0) => pc(31 downto 0)
    );
end STRUCTURE;
