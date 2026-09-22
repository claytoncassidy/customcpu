-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:41 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_load_extender_0_0/top_load_extender_0_0_sim_netlist.vhdl}
-- Design      : top_load_extender_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_load_extender_0_0_load_extender is
  port (
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    raw_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    load_unsigned : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_load_extender_0_0_load_extender : entity is "load_extender";
end top_load_extender_0_0_load_extender;

architecture STRUCTURE of top_load_extender_0_0_load_extender is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \extended[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \extended[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \extended[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \extended[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \extended[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \extended[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \extended[7]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \extended[8]_INST_0\ : label is "soft_lutpair0";
begin
\extended[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(0),
      O => extended(0)
    );
\extended[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(10),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(10)
    );
\extended[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(11),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(11)
    );
\extended[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(12),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(12)
    );
\extended[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(13),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(13)
    );
\extended[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(14),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(14)
    );
\extended[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(15),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(15)
    );
\extended[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(16),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(16)
    );
\extended[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(17),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(17)
    );
\extended[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(18),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(18)
    );
\extended[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(19),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(19)
    );
\extended[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(1),
      O => extended(1)
    );
\extended[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(20),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(20)
    );
\extended[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(21),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(21)
    );
\extended[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(22),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(22)
    );
\extended[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(23),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(23)
    );
\extended[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(24),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(24)
    );
\extended[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(25),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(25)
    );
\extended[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(26),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(26)
    );
\extended[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(27),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(27)
    );
\extended[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(28),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(28)
    );
\extended[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(29),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(29)
    );
\extended[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(2),
      O => extended(2)
    );
\extended[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(30),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(30)
    );
\extended[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000300030BB3088"
    )
        port map (
      I0 => raw_data(15),
      I1 => mem_size(0),
      I2 => raw_data(31),
      I3 => mem_size(1),
      I4 => raw_data(7),
      I5 => load_unsigned,
      O => extended(31)
    );
\extended[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(3),
      O => extended(3)
    );
\extended[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(4),
      O => extended(4)
    );
\extended[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(5),
      O => extended(5)
    );
\extended[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(6),
      O => extended(6)
    );
\extended[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => mem_size(1),
      I1 => mem_size(0),
      I2 => raw_data(7),
      O => extended(7)
    );
\extended[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(8),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(8)
    );
\extended[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48484D48"
    )
        port map (
      I0 => mem_size(0),
      I1 => raw_data(9),
      I2 => mem_size(1),
      I3 => raw_data(7),
      I4 => load_unsigned,
      O => extended(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_load_extender_0_0 is
  port (
    raw_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_unsigned : in STD_LOGIC;
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_load_extender_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_load_extender_0_0 : entity is "top_load_extender_0_0,load_extender,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_load_extender_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_load_extender_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_load_extender_0_0 : entity is "load_extender,Vivado 2025.1";
end top_load_extender_0_0;

architecture STRUCTURE of top_load_extender_0_0 is
begin
U0: entity work.top_load_extender_0_0_load_extender
     port map (
      extended(31 downto 0) => extended(31 downto 0),
      load_unsigned => load_unsigned,
      mem_size(1 downto 0) => mem_size(1 downto 0),
      raw_data(31 downto 0) => raw_data(31 downto 0)
    );
end STRUCTURE;
