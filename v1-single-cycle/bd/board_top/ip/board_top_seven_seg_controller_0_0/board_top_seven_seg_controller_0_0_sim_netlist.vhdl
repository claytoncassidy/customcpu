-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 22 01:19:05 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_seven_seg_controller_0_0/board_top_seven_seg_controller_0_0_sim_netlist.vhdl}
-- Design      : board_top_seven_seg_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_seven_seg_controller_0_0_seven_seg_controller is
  port (
    hex_digit : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    value : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of board_top_seven_seg_controller_0_0_seven_seg_controller : entity is "seven_seg_controller";
end board_top_seven_seg_controller_0_0_seven_seg_controller;

architecture STRUCTURE of board_top_seven_seg_controller_0_0_seven_seg_controller is
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal digit_index : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal refresh_counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \refresh_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \refresh_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \refresh_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \refresh_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \refresh_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \refresh_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \refresh_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \refresh_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \refresh_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \refresh_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \refresh_counter0_carry__2_n_3\ : STD_LOGIC;
  signal refresh_counter0_carry_n_0 : STD_LOGIC;
  signal refresh_counter0_carry_n_1 : STD_LOGIC;
  signal refresh_counter0_carry_n_2 : STD_LOGIC;
  signal refresh_counter0_carry_n_3 : STD_LOGIC;
  signal \refresh_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \refresh_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \refresh_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \refresh_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \refresh_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal refresh_counter_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_refresh_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \an[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \an[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \digit_index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \digit_index[1]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of refresh_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \refresh_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \refresh_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \refresh_counter0_carry__2\ : label is 35;
begin
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit_index(1),
      I1 => digit_index(0),
      O => an(0)
    );
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_index(1),
      I1 => digit_index(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_index(0),
      I1 => digit_index(1),
      O => an(2)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_index(1),
      I1 => digit_index(0),
      O => an(3)
    );
\digit_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \refresh_counter[16]_i_1_n_0\,
      I1 => digit_index(0),
      O => \digit_index[0]_i_1_n_0\
    );
\digit_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => digit_index(0),
      I1 => \refresh_counter[16]_i_1_n_0\,
      I2 => digit_index(1),
      O => \digit_index[1]_i_1_n_0\
    );
\digit_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \digit_index[0]_i_1_n_0\,
      Q => digit_index(0),
      R => '0'
    );
\digit_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \digit_index[1]_i_1_n_0\,
      Q => digit_index(1),
      R => '0'
    );
\hex_digit[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => value(4),
      I1 => value(0),
      I2 => value(12),
      I3 => digit_index(0),
      I4 => digit_index(1),
      I5 => value(8),
      O => hex_digit(0)
    );
\hex_digit[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => value(5),
      I1 => value(1),
      I2 => value(13),
      I3 => digit_index(0),
      I4 => digit_index(1),
      I5 => value(9),
      O => hex_digit(1)
    );
\hex_digit[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => value(6),
      I1 => value(2),
      I2 => value(14),
      I3 => digit_index(0),
      I4 => digit_index(1),
      I5 => value(10),
      O => hex_digit(2)
    );
\hex_digit[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => value(7),
      I1 => value(3),
      I2 => value(15),
      I3 => digit_index(0),
      I4 => digit_index(1),
      I5 => value(11),
      O => hex_digit(3)
    );
refresh_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => refresh_counter0_carry_n_0,
      CO(2) => refresh_counter0_carry_n_1,
      CO(1) => refresh_counter0_carry_n_2,
      CO(0) => refresh_counter0_carry_n_3,
      CYINIT => refresh_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => refresh_counter(4 downto 1)
    );
\refresh_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => refresh_counter0_carry_n_0,
      CO(3) => \refresh_counter0_carry__0_n_0\,
      CO(2) => \refresh_counter0_carry__0_n_1\,
      CO(1) => \refresh_counter0_carry__0_n_2\,
      CO(0) => \refresh_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => refresh_counter(8 downto 5)
    );
\refresh_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter0_carry__0_n_0\,
      CO(3) => \refresh_counter0_carry__1_n_0\,
      CO(2) => \refresh_counter0_carry__1_n_1\,
      CO(1) => \refresh_counter0_carry__1_n_2\,
      CO(0) => \refresh_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => refresh_counter(12 downto 9)
    );
\refresh_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \refresh_counter0_carry__1_n_0\,
      CO(3) => \NLW_refresh_counter0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \refresh_counter0_carry__2_n_1\,
      CO(1) => \refresh_counter0_carry__2_n_2\,
      CO(0) => \refresh_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => refresh_counter(16 downto 13)
    );
\refresh_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \refresh_counter[0]_i_2_n_0\,
      I1 => \refresh_counter[0]_i_3_n_0\,
      I2 => \refresh_counter[0]_i_4_n_0\,
      I3 => \refresh_counter[0]_i_5_n_0\,
      I4 => refresh_counter(0),
      O => refresh_counter_0(0)
    );
\refresh_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => refresh_counter(5),
      I1 => refresh_counter(6),
      I2 => refresh_counter(7),
      I3 => refresh_counter(8),
      O => \refresh_counter[0]_i_2_n_0\
    );
\refresh_counter[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refresh_counter(2),
      I1 => refresh_counter(1),
      I2 => refresh_counter(4),
      I3 => refresh_counter(3),
      O => \refresh_counter[0]_i_3_n_0\
    );
\refresh_counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => refresh_counter(14),
      I1 => refresh_counter(13),
      I2 => refresh_counter(16),
      I3 => refresh_counter(15),
      O => \refresh_counter[0]_i_4_n_0\
    );
\refresh_counter[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => refresh_counter(10),
      I1 => refresh_counter(9),
      I2 => refresh_counter(12),
      I3 => refresh_counter(11),
      O => \refresh_counter[0]_i_5_n_0\
    );
\refresh_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \refresh_counter[0]_i_5_n_0\,
      I1 => \refresh_counter[0]_i_4_n_0\,
      I2 => \refresh_counter[0]_i_3_n_0\,
      I3 => \refresh_counter[0]_i_2_n_0\,
      I4 => refresh_counter(0),
      O => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => refresh_counter_0(0),
      Q => refresh_counter(0),
      R => '0'
    );
\refresh_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => refresh_counter(10),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => refresh_counter(11),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => refresh_counter(12),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => refresh_counter(13),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => refresh_counter(14),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => refresh_counter(15),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => refresh_counter(16),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => refresh_counter(1),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => refresh_counter(2),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => refresh_counter(3),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => refresh_counter(4),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => refresh_counter(5),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => refresh_counter(6),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => refresh_counter(7),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => refresh_counter(8),
      R => \refresh_counter[16]_i_1_n_0\
    );
\refresh_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => refresh_counter(9),
      R => \refresh_counter[16]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_seven_seg_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    value : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hex_digit : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of board_top_seven_seg_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of board_top_seven_seg_controller_0_0 : entity is "board_top_seven_seg_controller_0_0,seven_seg_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of board_top_seven_seg_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of board_top_seven_seg_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of board_top_seven_seg_controller_0_0 : entity is "seven_seg_controller,Vivado 2025.1";
end board_top_seven_seg_controller_0_0;

architecture STRUCTURE of board_top_seven_seg_controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
U0: entity work.board_top_seven_seg_controller_0_0_seven_seg_controller
     port map (
      an(3 downto 0) => an(3 downto 0),
      clk => clk,
      hex_digit(3 downto 0) => hex_digit(3 downto 0),
      value(15 downto 0) => value(15 downto 0)
    );
end STRUCTURE;
