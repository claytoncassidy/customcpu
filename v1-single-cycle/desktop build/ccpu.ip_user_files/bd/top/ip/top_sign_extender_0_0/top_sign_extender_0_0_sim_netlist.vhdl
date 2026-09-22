-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_sign_extender_0_0/top_sign_extender_0_0_sim_netlist.vhdl}
-- Design      : top_sign_extender_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_sign_extender_0_0_sign_extender is
  port (
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_sign_extender_0_0_sign_extender : entity is "sign_extender";
end top_sign_extender_0_0_sign_extender;

architecture STRUCTURE of top_sign_extender_0_0_sign_extender is
  signal \extended[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \extended[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \extended[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \extended[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \extended[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \extended[31]_INST_0_i_3_n_0\ : STD_LOGIC;
begin
\extended[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A80800000000"
    )
        port map (
      I0 => \extended[31]_INST_0_i_1_n_0\,
      I1 => instruction(20),
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => instruction(7),
      I4 => \extended[30]_INST_0_i_1_n_0\,
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(0)
    );
\extended[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000F00"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => \extended[31]_INST_0_i_1_n_0\,
      I3 => instruction(30),
      I4 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(10)
    );
\extended[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000A0FCA00CA"
    )
        port map (
      I0 => instruction(31),
      I1 => instruction(7),
      I2 => \extended[30]_INST_0_i_1_n_0\,
      I3 => \extended[11]_INST_0_i_1_n_0\,
      I4 => instruction(20),
      I5 => \extended[30]_INST_0_i_2_n_0\,
      O => extended(11)
    );
\extended[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFDFDDFFFDDD"
    )
        port map (
      I0 => \extended[31]_INST_0_i_3_n_0\,
      I1 => instruction(3),
      I2 => instruction(5),
      I3 => instruction(4),
      I4 => instruction(2),
      I5 => instruction(6),
      O => \extended[11]_INST_0_i_1_n_0\
    );
\extended[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(12),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(12)
    );
\extended[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(13),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(13)
    );
\extended[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(14),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(14)
    );
\extended[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(15),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(15)
    );
\extended[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(16),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(16)
    );
\extended[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(17),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(17)
    );
\extended[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(18),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(18)
    );
\extended[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA002A0000FF0000"
    )
        port map (
      I0 => instruction(31),
      I1 => \extended[30]_INST_0_i_1_n_0\,
      I2 => \extended[30]_INST_0_i_2_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(19),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(19)
    );
\extended[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D00480000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_2_n_0\,
      I1 => instruction(8),
      I2 => \extended[30]_INST_0_i_1_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(21),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(1)
    );
\extended[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(20),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(20)
    );
\extended[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(21),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(21)
    );
\extended[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(22),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(22)
    );
\extended[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(23),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(23)
    );
\extended[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(24),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(24)
    );
\extended[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(25),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(25)
    );
\extended[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(26),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(26)
    );
\extended[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(27),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(27)
    );
\extended[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(28),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(28)
    );
\extended[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(29),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(29)
    );
\extended[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D00480000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_2_n_0\,
      I1 => instruction(9),
      I2 => \extended[30]_INST_0_i_1_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(22),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(2)
    );
\extended[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700800000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => instruction(30),
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(31),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(30)
    );
\extended[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0000000080"
    )
        port map (
      I0 => \extended[31]_INST_0_i_3_n_0\,
      I1 => instruction(5),
      I2 => instruction(6),
      I3 => instruction(4),
      I4 => instruction(3),
      I5 => instruction(2),
      O => \extended[30]_INST_0_i_1_n_0\
    );
\extended[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB3BFFFFFB"
    )
        port map (
      I0 => instruction(3),
      I1 => \extended[31]_INST_0_i_3_n_0\,
      I2 => instruction(2),
      I3 => instruction(5),
      I4 => instruction(6),
      I5 => instruction(4),
      O => \extended[30]_INST_0_i_2_n_0\
    );
\extended[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \extended[31]_INST_0_i_1_n_0\,
      I1 => instruction(31),
      I2 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(31)
    );
\extended[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004B5100000000"
    )
        port map (
      I0 => instruction(6),
      I1 => instruction(2),
      I2 => instruction(4),
      I3 => instruction(5),
      I4 => instruction(3),
      I5 => \extended[31]_INST_0_i_3_n_0\,
      O => \extended[31]_INST_0_i_1_n_0\
    );
\extended[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => instruction(3),
      I1 => \extended[31]_INST_0_i_3_n_0\,
      I2 => instruction(2),
      I3 => instruction(5),
      I4 => instruction(6),
      I5 => instruction(4),
      O => \extended[31]_INST_0_i_2_n_0\
    );
\extended[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => instruction(1),
      I1 => instruction(0),
      O => \extended[31]_INST_0_i_3_n_0\
    );
\extended[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D00480000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_2_n_0\,
      I1 => instruction(10),
      I2 => \extended[30]_INST_0_i_1_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(23),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(3)
    );
\extended[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D00480000FF0000"
    )
        port map (
      I0 => \extended[30]_INST_0_i_2_n_0\,
      I1 => instruction(11),
      I2 => \extended[30]_INST_0_i_1_n_0\,
      I3 => \extended[31]_INST_0_i_1_n_0\,
      I4 => instruction(24),
      I5 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(4)
    );
\extended[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000F00"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => \extended[31]_INST_0_i_1_n_0\,
      I3 => instruction(25),
      I4 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(5)
    );
\extended[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000F00"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => \extended[31]_INST_0_i_1_n_0\,
      I3 => instruction(26),
      I4 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(6)
    );
\extended[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000F00"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => \extended[31]_INST_0_i_1_n_0\,
      I3 => instruction(27),
      I4 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(7)
    );
\extended[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000F00"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => \extended[31]_INST_0_i_1_n_0\,
      I3 => instruction(28),
      I4 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(8)
    );
\extended[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70000F00"
    )
        port map (
      I0 => \extended[30]_INST_0_i_1_n_0\,
      I1 => \extended[30]_INST_0_i_2_n_0\,
      I2 => \extended[31]_INST_0_i_1_n_0\,
      I3 => instruction(29),
      I4 => \extended[31]_INST_0_i_2_n_0\,
      O => extended(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_sign_extender_0_0 is
  port (
    instruction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_sign_extender_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_sign_extender_0_0 : entity is "top_sign_extender_0_0,sign_extender,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_sign_extender_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_sign_extender_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_sign_extender_0_0 : entity is "sign_extender,Vivado 2025.1";
end top_sign_extender_0_0;

architecture STRUCTURE of top_sign_extender_0_0 is
begin
U0: entity work.top_sign_extender_0_0_sign_extender
     port map (
      extended(31 downto 0) => extended(31 downto 0),
      instruction(31 downto 0) => instruction(31 downto 0)
    );
end STRUCTURE;
