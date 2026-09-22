-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_control_unit_0_0/top_control_unit_0_0_sim_netlist.vhdl}
-- Design      : top_control_unit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_control_unit_0_0 is
  port (
    instruction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_zero : in STD_LOGIC;
    reg_write : out STD_LOGIC;
    mem_write : out STD_LOGIC;
    alu_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    alu_a_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_b_sel : out STD_LOGIC;
    wb_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_src_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mem_size : out STD_LOGIC_VECTOR ( 1 downto 0 );
    load_unsigned : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_control_unit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_control_unit_0_0 : entity is "top_control_unit_0_0,control_unit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_control_unit_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_control_unit_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_control_unit_0_0 : entity is "control_unit,Vivado 2025.1";
end top_control_unit_0_0;

architecture STRUCTURE of top_control_unit_0_0 is
  signal \alu_op[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_op[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_op[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \alu_op[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \alu_op[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal load_unsigned_INST_0_i_1_n_0 : STD_LOGIC;
  signal \pc_src_sel[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pc_src_sel[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal reg_write_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \alu_op[0]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_op[0]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \alu_op[1]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of load_unsigned_INST_0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pc_src_sel[0]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pc_src_sel[0]_INST_0_i_2\ : label is "soft_lutpair2";
begin
\alu_a_sel[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => reg_write_INST_0_i_1_n_0,
      I1 => instruction(2),
      I2 => instruction(4),
      I3 => instruction(5),
      I4 => instruction(6),
      I5 => instruction(3),
      O => alu_a_sel(0)
    );
\alu_a_sel[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => reg_write_INST_0_i_1_n_0,
      I1 => instruction(2),
      I2 => instruction(5),
      I3 => instruction(4),
      I4 => instruction(3),
      I5 => instruction(6),
      O => alu_a_sel(1)
    );
alu_b_sel_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003813"
    )
        port map (
      I0 => instruction(5),
      I1 => instruction(6),
      I2 => instruction(4),
      I3 => instruction(2),
      I4 => instruction(3),
      I5 => reg_write_INST_0_i_1_n_0,
      O => alu_b_sel
    );
\alu_op[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000882088"
    )
        port map (
      I0 => \alu_op[1]_INST_0_i_2_n_0\,
      I1 => instruction(4),
      I2 => instruction(5),
      I3 => instruction(6),
      I4 => \alu_op[0]_INST_0_i_1_n_0\,
      I5 => \alu_op[0]_INST_0_i_2_n_0\,
      O => alu_op(0)
    );
\alu_op[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(13),
      O => \alu_op[0]_INST_0_i_1_n_0\
    );
\alu_op[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3000FF7"
    )
        port map (
      I0 => instruction(5),
      I1 => instruction(30),
      I2 => instruction(13),
      I3 => instruction(14),
      I4 => instruction(12),
      O => \alu_op[0]_INST_0_i_2_n_0\
    );
\alu_op[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE010E010E010E0"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(12),
      I2 => \alu_op[3]_INST_0_i_1_n_0\,
      I3 => instruction(14),
      I4 => \alu_op[1]_INST_0_i_1_n_0\,
      I5 => \alu_op[1]_INST_0_i_2_n_0\,
      O => alu_op(1)
    );
\alu_op[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => instruction(6),
      I1 => instruction(5),
      I2 => instruction(4),
      O => \alu_op[1]_INST_0_i_1_n_0\
    );
\alu_op[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => instruction(0),
      I1 => instruction(1),
      I2 => instruction(2),
      I3 => instruction(3),
      O => \alu_op[1]_INST_0_i_2_n_0\
    );
\alu_op[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8828"
    )
        port map (
      I0 => \alu_op[3]_INST_0_i_1_n_0\,
      I1 => instruction(14),
      I2 => instruction(12),
      I3 => instruction(13),
      O => alu_op(2)
    );
\alu_op[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \alu_op[3]_INST_0_i_1_n_0\,
      I1 => instruction(12),
      I2 => instruction(13),
      I3 => instruction(14),
      O => alu_op(3)
    );
\alu_op[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(2),
      I2 => instruction(1),
      I3 => instruction(0),
      I4 => instruction(4),
      I5 => instruction(6),
      O => \alu_op[3]_INST_0_i_1_n_0\
    );
load_unsigned_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(6),
      I2 => instruction(14),
      I3 => instruction(4),
      I4 => instruction(5),
      I5 => load_unsigned_INST_0_i_1_n_0,
      O => load_unsigned
    );
load_unsigned_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => instruction(3),
      I1 => instruction(1),
      I2 => instruction(0),
      O => load_unsigned_INST_0_i_1_n_0
    );
\mem_size[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(6),
      I2 => reg_write_INST_0_i_1_n_0,
      I3 => instruction(12),
      I4 => instruction(4),
      I5 => instruction(3),
      O => mem_size(0)
    );
\mem_size[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(6),
      I2 => reg_write_INST_0_i_1_n_0,
      I3 => instruction(13),
      I4 => instruction(4),
      I5 => instruction(3),
      O => mem_size(1)
    );
mem_write_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(6),
      I2 => instruction(4),
      I3 => instruction(5),
      I4 => reg_write_INST_0_i_1_n_0,
      I5 => instruction(3),
      O => mem_write
    );
\pc_src_sel[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000100010"
    )
        port map (
      I0 => \pc_src_sel[0]_INST_0_i_1_n_0\,
      I1 => \pc_src_sel[0]_INST_0_i_2_n_0\,
      I2 => \alu_op[1]_INST_0_i_1_n_0\,
      I3 => reg_write_INST_0_i_1_n_0,
      I4 => instruction(2),
      I5 => instruction(3),
      O => pc_src_sel(0)
    );
\pc_src_sel[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => alu_zero,
      I1 => instruction(14),
      I2 => instruction(12),
      O => \pc_src_sel[0]_INST_0_i_1_n_0\
    );
\pc_src_sel[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => instruction(2),
      I1 => instruction(14),
      I2 => instruction(13),
      O => \pc_src_sel[0]_INST_0_i_2_n_0\
    );
\pc_src_sel[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => instruction(3),
      I1 => reg_write_INST_0_i_1_n_0,
      I2 => instruction(6),
      I3 => instruction(5),
      I4 => instruction(4),
      I5 => instruction(2),
      O => pc_src_sel(1)
    );
reg_write_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101440001010001"
    )
        port map (
      I0 => reg_write_INST_0_i_1_n_0,
      I1 => instruction(6),
      I2 => instruction(3),
      I3 => instruction(5),
      I4 => instruction(4),
      I5 => instruction(2),
      O => reg_write
    );
reg_write_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => instruction(0),
      I1 => instruction(1),
      O => reg_write_INST_0_i_1_n_0
    );
\wb_sel[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => reg_write_INST_0_i_1_n_0,
      I1 => instruction(2),
      I2 => instruction(5),
      I3 => instruction(6),
      I4 => instruction(3),
      I5 => instruction(4),
      O => wb_sel(0)
    );
\wb_sel[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => instruction(4),
      I1 => instruction(5),
      I2 => instruction(6),
      I3 => instruction(0),
      I4 => instruction(1),
      I5 => instruction(2),
      O => wb_sel(1)
    );
end STRUCTURE;
