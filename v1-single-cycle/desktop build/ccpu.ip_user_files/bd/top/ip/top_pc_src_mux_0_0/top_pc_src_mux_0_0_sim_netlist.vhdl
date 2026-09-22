-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_pc_src_mux_0_0/top_pc_src_mux_0_0_sim_netlist.vhdl}
-- Design      : top_pc_src_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_pc_src_mux_0_0_pc_src_mux is
  port (
    pc_src : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_src_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    jalr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_pc_src_mux_0_0_pc_src_mux : entity is "pc_src_mux";
end top_pc_src_mux_0_0_pc_src_mux;

architecture STRUCTURE of top_pc_src_mux_0_0_pc_src_mux is
begin
\pc_src[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(0),
      I1 => pc_src_sel(0),
      I2 => jalr(0),
      I3 => pc_src_sel(1),
      I4 => pc4(0),
      O => pc_src(0)
    );
\pc_src[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(10),
      I1 => pc_src_sel(0),
      I2 => jalr(10),
      I3 => pc_src_sel(1),
      I4 => pc4(10),
      O => pc_src(10)
    );
\pc_src[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(11),
      I1 => pc_src_sel(0),
      I2 => jalr(11),
      I3 => pc_src_sel(1),
      I4 => pc4(11),
      O => pc_src(11)
    );
\pc_src[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(12),
      I1 => pc_src_sel(0),
      I2 => jalr(12),
      I3 => pc_src_sel(1),
      I4 => pc4(12),
      O => pc_src(12)
    );
\pc_src[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(13),
      I1 => pc_src_sel(0),
      I2 => jalr(13),
      I3 => pc_src_sel(1),
      I4 => pc4(13),
      O => pc_src(13)
    );
\pc_src[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(14),
      I1 => pc_src_sel(0),
      I2 => jalr(14),
      I3 => pc_src_sel(1),
      I4 => pc4(14),
      O => pc_src(14)
    );
\pc_src[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(15),
      I1 => pc_src_sel(0),
      I2 => jalr(15),
      I3 => pc_src_sel(1),
      I4 => pc4(15),
      O => pc_src(15)
    );
\pc_src[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(16),
      I1 => pc_src_sel(0),
      I2 => jalr(16),
      I3 => pc_src_sel(1),
      I4 => pc4(16),
      O => pc_src(16)
    );
\pc_src[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(17),
      I1 => pc_src_sel(0),
      I2 => jalr(17),
      I3 => pc_src_sel(1),
      I4 => pc4(17),
      O => pc_src(17)
    );
\pc_src[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(18),
      I1 => pc_src_sel(0),
      I2 => jalr(18),
      I3 => pc_src_sel(1),
      I4 => pc4(18),
      O => pc_src(18)
    );
\pc_src[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(19),
      I1 => pc_src_sel(0),
      I2 => jalr(19),
      I3 => pc_src_sel(1),
      I4 => pc4(19),
      O => pc_src(19)
    );
\pc_src[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(1),
      I1 => pc_src_sel(0),
      I2 => jalr(1),
      I3 => pc_src_sel(1),
      I4 => pc4(1),
      O => pc_src(1)
    );
\pc_src[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(20),
      I1 => pc_src_sel(0),
      I2 => jalr(20),
      I3 => pc_src_sel(1),
      I4 => pc4(20),
      O => pc_src(20)
    );
\pc_src[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(21),
      I1 => pc_src_sel(0),
      I2 => jalr(21),
      I3 => pc_src_sel(1),
      I4 => pc4(21),
      O => pc_src(21)
    );
\pc_src[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(22),
      I1 => pc_src_sel(0),
      I2 => jalr(22),
      I3 => pc_src_sel(1),
      I4 => pc4(22),
      O => pc_src(22)
    );
\pc_src[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(23),
      I1 => pc_src_sel(0),
      I2 => jalr(23),
      I3 => pc_src_sel(1),
      I4 => pc4(23),
      O => pc_src(23)
    );
\pc_src[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(24),
      I1 => pc_src_sel(0),
      I2 => jalr(24),
      I3 => pc_src_sel(1),
      I4 => pc4(24),
      O => pc_src(24)
    );
\pc_src[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(25),
      I1 => pc_src_sel(0),
      I2 => jalr(25),
      I3 => pc_src_sel(1),
      I4 => pc4(25),
      O => pc_src(25)
    );
\pc_src[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(26),
      I1 => pc_src_sel(0),
      I2 => jalr(26),
      I3 => pc_src_sel(1),
      I4 => pc4(26),
      O => pc_src(26)
    );
\pc_src[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(27),
      I1 => pc_src_sel(0),
      I2 => jalr(27),
      I3 => pc_src_sel(1),
      I4 => pc4(27),
      O => pc_src(27)
    );
\pc_src[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(28),
      I1 => pc_src_sel(0),
      I2 => jalr(28),
      I3 => pc_src_sel(1),
      I4 => pc4(28),
      O => pc_src(28)
    );
\pc_src[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(29),
      I1 => pc_src_sel(0),
      I2 => jalr(29),
      I3 => pc_src_sel(1),
      I4 => pc4(29),
      O => pc_src(29)
    );
\pc_src[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(2),
      I1 => pc_src_sel(0),
      I2 => jalr(2),
      I3 => pc_src_sel(1),
      I4 => pc4(2),
      O => pc_src(2)
    );
\pc_src[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(30),
      I1 => pc_src_sel(0),
      I2 => jalr(30),
      I3 => pc_src_sel(1),
      I4 => pc4(30),
      O => pc_src(30)
    );
\pc_src[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(31),
      I1 => pc_src_sel(0),
      I2 => jalr(31),
      I3 => pc_src_sel(1),
      I4 => pc4(31),
      O => pc_src(31)
    );
\pc_src[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(3),
      I1 => pc_src_sel(0),
      I2 => jalr(3),
      I3 => pc_src_sel(1),
      I4 => pc4(3),
      O => pc_src(3)
    );
\pc_src[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(4),
      I1 => pc_src_sel(0),
      I2 => jalr(4),
      I3 => pc_src_sel(1),
      I4 => pc4(4),
      O => pc_src(4)
    );
\pc_src[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(5),
      I1 => pc_src_sel(0),
      I2 => jalr(5),
      I3 => pc_src_sel(1),
      I4 => pc4(5),
      O => pc_src(5)
    );
\pc_src[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(6),
      I1 => pc_src_sel(0),
      I2 => jalr(6),
      I3 => pc_src_sel(1),
      I4 => pc4(6),
      O => pc_src(6)
    );
\pc_src[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(7),
      I1 => pc_src_sel(0),
      I2 => jalr(7),
      I3 => pc_src_sel(1),
      I4 => pc4(7),
      O => pc_src(7)
    );
\pc_src[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(8),
      I1 => pc_src_sel(0),
      I2 => jalr(8),
      I3 => pc_src_sel(1),
      I4 => pc4(8),
      O => pc_src(8)
    );
\pc_src[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => branch(9),
      I1 => pc_src_sel(0),
      I2 => jalr(9),
      I3 => pc_src_sel(1),
      I4 => pc4(9),
      O => pc_src(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_pc_src_mux_0_0 is
  port (
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    jalr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_src_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_src : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_pc_src_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_pc_src_mux_0_0 : entity is "top_pc_src_mux_0_0,pc_src_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_pc_src_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_pc_src_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_pc_src_mux_0_0 : entity is "pc_src_mux,Vivado 2025.1";
end top_pc_src_mux_0_0;

architecture STRUCTURE of top_pc_src_mux_0_0 is
begin
U0: entity work.top_pc_src_mux_0_0_pc_src_mux
     port map (
      branch(31 downto 0) => branch(31 downto 0),
      jalr(31 downto 0) => jalr(31 downto 0),
      pc4(31 downto 0) => pc4(31 downto 0),
      pc_src(31 downto 0) => pc_src(31 downto 0),
      pc_src_sel(1 downto 0) => pc_src_sel(1 downto 0)
    );
end STRUCTURE;
