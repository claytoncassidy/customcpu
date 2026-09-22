-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:44 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_alu_0_0/top_alu_0_0_sim_netlist.vhdl}
-- Design      : top_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_alu_0_0_alu is
  port (
    overflow : out STD_LOGIC;
    zero : out STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_alu_0_0_alu : entity is "alu";
end top_alu_0_0_alu;

architecture STRUCTURE of top_alu_0_0_alu is
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal overflow_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC;
  signal \^result\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \result[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[13]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[14]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \result[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_4\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__0_n_7\ : STD_LOGIC;
  signal \result_internal0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_4\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__1_n_7\ : STD_LOGIC;
  signal \result_internal0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_4\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__2_n_7\ : STD_LOGIC;
  signal \result_internal0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_4\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__3_n_7\ : STD_LOGIC;
  signal \result_internal0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_4\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__4_n_7\ : STD_LOGIC;
  signal \result_internal0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_4\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__5_n_7\ : STD_LOGIC;
  signal \result_internal0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \result_internal0_carry__6_n_1\ : STD_LOGIC;
  signal \result_internal0_carry__6_n_2\ : STD_LOGIC;
  signal \result_internal0_carry__6_n_3\ : STD_LOGIC;
  signal \result_internal0_carry__6_n_5\ : STD_LOGIC;
  signal \result_internal0_carry__6_n_6\ : STD_LOGIC;
  signal \result_internal0_carry__6_n_7\ : STD_LOGIC;
  signal result_internal0_carry_i_1_n_0 : STD_LOGIC;
  signal result_internal0_carry_i_2_n_0 : STD_LOGIC;
  signal result_internal0_carry_i_3_n_0 : STD_LOGIC;
  signal result_internal0_carry_i_4_n_0 : STD_LOGIC;
  signal result_internal0_carry_n_0 : STD_LOGIC;
  signal result_internal0_carry_n_1 : STD_LOGIC;
  signal result_internal0_carry_n_2 : STD_LOGIC;
  signal result_internal0_carry_n_3 : STD_LOGIC;
  signal result_internal0_carry_n_4 : STD_LOGIC;
  signal result_internal0_carry_n_5 : STD_LOGIC;
  signal result_internal0_carry_n_6 : STD_LOGIC;
  signal result_internal0_carry_n_7 : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__3_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__4_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__5_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__6_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__6_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__6_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry__6_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \result_internal0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \result_internal0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal zero_INST_0_i_10_n_0 : STD_LOGIC;
  signal zero_INST_0_i_1_n_0 : STD_LOGIC;
  signal zero_INST_0_i_2_n_0 : STD_LOGIC;
  signal zero_INST_0_i_3_n_0 : STD_LOGIC;
  signal zero_INST_0_i_4_n_0 : STD_LOGIC;
  signal zero_INST_0_i_5_n_0 : STD_LOGIC;
  signal zero_INST_0_i_6_n_0 : STD_LOGIC;
  signal zero_INST_0_i_7_n_0 : STD_LOGIC;
  signal zero_INST_0_i_8_n_0 : STD_LOGIC;
  signal zero_INST_0_i_9_n_0 : STD_LOGIC;
  signal \NLW_result_internal0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_internal0_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_internal0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__1/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__1/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result_internal0_inferred__2/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of overflow_INST_0_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \result[0]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result[10]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \result[11]_INST_0_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \result[11]_INST_0_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \result[12]_INST_0_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \result[12]_INST_0_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result[13]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result[14]_INST_0_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result[15]_INST_0_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[15]_INST_0_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result[15]_INST_0_i_9\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \result[16]_INST_0_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result[16]_INST_0_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result[16]_INST_0_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \result[16]_INST_0_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \result[17]_INST_0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \result[17]_INST_0_i_11\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result[17]_INST_0_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \result[17]_INST_0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \result[18]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \result[18]_INST_0_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result[18]_INST_0_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \result[18]_INST_0_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \result[19]_INST_0_i_10\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \result[19]_INST_0_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \result[19]_INST_0_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[19]_INST_0_i_8\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \result[1]_INST_0_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \result[1]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \result[1]_INST_0_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result[1]_INST_0_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result[20]_INST_0_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result[20]_INST_0_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \result[20]_INST_0_i_8\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \result[21]_INST_0_i_11\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[21]_INST_0_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \result[21]_INST_0_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \result[22]_INST_0_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result[22]_INST_0_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \result[23]_INST_0_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[23]_INST_0_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \result[24]_INST_0_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result[24]_INST_0_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \result[25]_INST_0_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \result[25]_INST_0_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \result[26]_INST_0_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \result[26]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \result[27]_INST_0_i_11\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[27]_INST_0_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \result[27]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result[28]_INST_0_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result[28]_INST_0_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \result[29]_INST_0_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[2]_INST_0_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \result[30]_INST_0_i_16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \result[31]_INST_0_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \result[31]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \result[31]_INST_0_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result[31]_INST_0_i_8\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \result[31]_INST_0_i_9\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result[3]_INST_0_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \result[8]_INST_0_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \result[9]_INST_0_i_8\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of result_internal0_carry : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \result_internal0_inferred__0/i__carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__1/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__1/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__1/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__1/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__2/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__2/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__2/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result_internal0_inferred__2/i__carry__2\ : label is 11;
begin
  result(31 downto 0) <= \^result\(31 downto 0);
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => a(15),
      I3 => b(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(7),
      I1 => a(7),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => a(13),
      I3 => b(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => a(11),
      I3 => b(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(5),
      I1 => a(5),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => a(9),
      I3 => b(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(15),
      I1 => a(15),
      I2 => b(14),
      I3 => a(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(13),
      I1 => a(13),
      I2 => b(12),
      I3 => a(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(11),
      I1 => a(11),
      I2 => b(10),
      I3 => a(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(9),
      I1 => a(9),
      I2 => b(8),
      I3 => a(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => a(23),
      I3 => b(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(11),
      I1 => a(11),
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => a(21),
      I3 => b(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => a(19),
      I3 => b(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(9),
      I1 => a(9),
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => a(17),
      I3 => b(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(23),
      I1 => a(23),
      I2 => b(22),
      I3 => a(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(21),
      I1 => a(21),
      I2 => b(20),
      I3 => a(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(19),
      I1 => a(19),
      I2 => b(18),
      I3 => a(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(17),
      I1 => a(17),
      I2 => b(16),
      I3 => a(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      I2 => b(30),
      I3 => a(30),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(15),
      I1 => a(15),
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => a(29),
      I3 => b(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => a(27),
      I3 => b(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(13),
      I1 => a(13),
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => a(25),
      I3 => b(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(31),
      I1 => a(31),
      I2 => b(30),
      I3 => a(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(29),
      I1 => a(29),
      I2 => b(28),
      I3 => a(28),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(27),
      I1 => a(27),
      I2 => b(26),
      I3 => a(26),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(25),
      I1 => a(25),
      I2 => b(24),
      I3 => a(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(19),
      I1 => a(19),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(17),
      I1 => a(17),
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(23),
      I1 => a(23),
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(21),
      I1 => a(21),
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(27),
      I1 => a(27),
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(25),
      I1 => a(25),
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(31),
      I1 => a(31),
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(30),
      I1 => a(30),
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(29),
      I1 => a(29),
      O => \i__carry__6_i_3_n_0\
    );
\i__carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      O => \i__carry__6_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => a(7),
      I3 => b(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(14),
      I1 => a(14),
      I2 => a(15),
      I3 => b(15),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(22),
      I1 => a(22),
      I2 => a(23),
      I3 => b(23),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      I2 => b(30),
      I3 => a(30),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(6),
      I1 => a(6),
      I2 => a(7),
      I3 => b(7),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => a(5),
      I3 => b(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(12),
      I1 => a(12),
      I2 => a(13),
      I3 => b(13),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(20),
      I1 => a(20),
      I2 => a(21),
      I3 => b(21),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(28),
      I1 => a(28),
      I2 => a(29),
      I3 => b(29),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(4),
      I1 => a(4),
      I2 => a(5),
      I3 => b(5),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => a(3),
      I3 => b(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(10),
      I1 => a(10),
      I2 => a(11),
      I3 => b(11),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(18),
      I1 => a(18),
      I2 => a(19),
      I3 => b(19),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(26),
      I1 => a(26),
      I2 => a(27),
      I3 => b(27),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => a(3),
      I3 => b(3),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => a(1),
      I3 => b(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(8),
      I1 => a(8),
      I2 => a(9),
      I3 => b(9),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(16),
      I1 => a(16),
      I2 => a(17),
      I3 => b(17),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(24),
      I1 => a(24),
      I2 => a(25),
      I3 => b(25),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => a(1),
      I3 => b(1),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(7),
      I1 => a(7),
      I2 => b(6),
      I3 => a(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(15),
      I1 => a(15),
      I2 => b(14),
      I3 => a(14),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(23),
      I1 => a(23),
      I2 => b(22),
      I3 => a(22),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(31),
      I1 => a(31),
      I2 => b(30),
      I3 => a(30),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(7),
      I1 => a(7),
      I2 => b(6),
      I3 => a(6),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(5),
      I1 => a(5),
      I2 => b(4),
      I3 => a(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(13),
      I1 => a(13),
      I2 => b(12),
      I3 => a(12),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(21),
      I1 => a(21),
      I2 => b(20),
      I3 => a(20),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(29),
      I1 => a(29),
      I2 => b(28),
      I3 => a(28),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(5),
      I1 => a(5),
      I2 => b(4),
      I3 => a(4),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      I2 => b(2),
      I3 => a(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(11),
      I1 => a(11),
      I2 => b(10),
      I3 => a(10),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(19),
      I1 => a(19),
      I2 => b(18),
      I3 => a(18),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_7__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(27),
      I1 => a(27),
      I2 => b(26),
      I3 => a(26),
      O => \i__carry_i_7__2_n_0\
    );
\i__carry_i_7__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(3),
      I1 => a(3),
      I2 => b(2),
      I3 => a(2),
      O => \i__carry_i_7__3_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => b(0),
      I3 => a(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(9),
      I1 => a(9),
      I2 => b(8),
      I3 => a(8),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(17),
      I1 => a(17),
      I2 => b(16),
      I3 => a(16),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_8__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(25),
      I1 => a(25),
      I2 => b(24),
      I3 => a(24),
      O => \i__carry_i_8__2_n_0\
    );
\i__carry_i_8__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => b(0),
      I3 => a(0),
      O => \i__carry_i_8__3_n_0\
    );
overflow_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200882002880020"
    )
        port map (
      I0 => overflow_INST_0_i_1_n_0,
      I1 => alu_op(0),
      I2 => p_1_in2_in,
      I3 => b(31),
      I4 => a(31),
      I5 => p_1_in,
      O => overflow
    );
overflow_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(1),
      I2 => alu_op(3),
      O => overflow_INST_0_i_1_n_0
    );
\result[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAEEAA"
    )
        port map (
      I0 => \result[0]_INST_0_i_1_n_0\,
      I1 => \result[0]_INST_0_i_2_n_0\,
      I2 => \result[0]_INST_0_i_3_n_0\,
      I3 => \result[31]_INST_0_i_3_n_0\,
      I4 => b(0),
      O => \^result\(0)
    );
\result[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFD5FF80"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(1),
      I2 => \result[0]_INST_0_i_4_n_0\,
      I3 => \result[0]_INST_0_i_5_n_0\,
      I4 => \result[0]_INST_0_i_6_n_0\,
      I5 => alu_op(3),
      O => \result[0]_INST_0_i_1_n_0\
    );
\result[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(4),
      I1 => a(20),
      I2 => b(3),
      I3 => a(28),
      I4 => b(4),
      I5 => a(12),
      O => \result[0]_INST_0_i_10_n_0\
    );
\result[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC0C0CFA0AFA0A"
    )
        port map (
      I0 => a(7),
      I1 => a(23),
      I2 => b(3),
      I3 => a(15),
      I4 => a(31),
      I5 => b(4),
      O => \result[0]_INST_0_i_11_n_0\
    );
\result[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(3),
      I1 => a(19),
      I2 => b(3),
      I3 => a(27),
      I4 => b(4),
      I5 => a(11),
      O => \result[0]_INST_0_i_12_n_0\
    );
\result[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(1),
      I1 => a(17),
      I2 => b(3),
      I3 => a(25),
      I4 => b(4),
      I5 => a(9),
      O => \result[0]_INST_0_i_13_n_0\
    );
\result[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(5),
      I1 => a(21),
      I2 => b(3),
      I3 => a(29),
      I4 => b(4),
      I5 => a(13),
      O => \result[0]_INST_0_i_14_n_0\
    );
\result[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \result[0]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => \result[0]_INST_0_i_8_n_0\,
      I3 => \result[0]_INST_0_i_9_n_0\,
      I4 => \result[0]_INST_0_i_10_n_0\,
      I5 => b(1),
      O => \result[0]_INST_0_i_2_n_0\
    );
\result[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \result[0]_INST_0_i_11_n_0\,
      I1 => b(2),
      I2 => \result[0]_INST_0_i_12_n_0\,
      I3 => \result[0]_INST_0_i_13_n_0\,
      I4 => \result[0]_INST_0_i_14_n_0\,
      I5 => b(1),
      O => \result[0]_INST_0_i_3_n_0\
    );
\result[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0F1000F0F0"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => a(0),
      I3 => \result[27]_INST_0_i_8_n_0\,
      I4 => alu_op(0),
      I5 => b(0),
      O => \result[0]_INST_0_i_4_n_0\
    );
\result[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => alu_op(0),
      I3 => b(0),
      I4 => a(0),
      O => \result[0]_INST_0_i_5_n_0\
    );
\result[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => \result_internal0_inferred__0/i__carry_n_7\,
      I1 => data3,
      I2 => alu_op(1),
      I3 => result_internal0_carry_n_7,
      I4 => alu_op(0),
      I5 => data2,
      O => \result[0]_INST_0_i_6_n_0\
    );
\result[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(6),
      I1 => a(22),
      I2 => b(3),
      I3 => a(30),
      I4 => b(4),
      I5 => a(14),
      O => \result[0]_INST_0_i_7_n_0\
    );
\result[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(2),
      I1 => a(18),
      I2 => b(3),
      I3 => a(26),
      I4 => b(4),
      I5 => a(10),
      O => \result[0]_INST_0_i_8_n_0\
    );
\result[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(0),
      I1 => a(16),
      I2 => b(3),
      I3 => a(24),
      I4 => b(4),
      I5 => a(8),
      O => \result[0]_INST_0_i_9_n_0\
    );
\result[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[10]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[10]_INST_0_i_2_n_0\,
      I3 => \result[10]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(10)
    );
\result[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[11]_INST_0_i_4_n_0\,
      I1 => \result[11]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[10]_INST_0_i_4_n_0\,
      I5 => \result[10]_INST_0_i_5_n_0\,
      O => \result[10]_INST_0_i_1_n_0\
    );
\result[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__1_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__1_n_5\,
      I5 => \result[10]_INST_0_i_6_n_0\,
      O => \result[10]_INST_0_i_2_n_0\
    );
\result[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[11]_INST_0_i_7_n_0\,
      I2 => \result[10]_INST_0_i_7_n_0\,
      I3 => b(10),
      I4 => a(10),
      I5 => alu_op(0),
      O => \result[10]_INST_0_i_3_n_0\
    );
\result[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[16]_INST_0_i_10_n_0\,
      I1 => \result[12]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[14]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[10]_INST_0_i_8_n_0\,
      O => \result[10]_INST_0_i_4_n_0\
    );
\result[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[16]_INST_0_i_8_n_0\,
      I1 => \result[12]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[14]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[10]_INST_0_i_9_n_0\,
      O => \result[10]_INST_0_i_5_n_0\
    );
\result[10]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(10),
      I3 => alu_op(0),
      I4 => b(10),
      O => \result[10]_INST_0_i_6_n_0\
    );
\result[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(3),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(7),
      I4 => b(1),
      I5 => \result[12]_INST_0_i_10_n_0\,
      O => \result[10]_INST_0_i_7_n_0\
    );
\result[10]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(18),
      I1 => b(3),
      I2 => a(26),
      I3 => b(4),
      I4 => a(10),
      O => \result[10]_INST_0_i_8_n_0\
    );
\result[10]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(18),
      I1 => a(31),
      I2 => b(3),
      I3 => a(26),
      I4 => b(4),
      I5 => a(10),
      O => \result[10]_INST_0_i_9_n_0\
    );
\result[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[11]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[11]_INST_0_i_2_n_0\,
      I3 => \result[11]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(11)
    );
\result[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[12]_INST_0_i_4_n_0\,
      I1 => \result[12]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[11]_INST_0_i_4_n_0\,
      I5 => \result[11]_INST_0_i_5_n_0\,
      O => \result[11]_INST_0_i_1_n_0\
    );
\result[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(4),
      I1 => b(2),
      I2 => a(0),
      I3 => a(8),
      I4 => b(3),
      I5 => b(4),
      O => \result[11]_INST_0_i_10_n_0\
    );
\result[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__1_n_4\,
      I4 => \result_internal0_inferred__0/i__carry__1_n_4\,
      I5 => \result[11]_INST_0_i_6_n_0\,
      O => \result[11]_INST_0_i_2_n_0\
    );
\result[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[12]_INST_0_i_7_n_0\,
      I2 => \result[11]_INST_0_i_7_n_0\,
      I3 => b(11),
      I4 => a(11),
      I5 => alu_op(0),
      O => \result[11]_INST_0_i_3_n_0\
    );
\result[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[17]_INST_0_i_10_n_0\,
      I1 => \result[13]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[15]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[11]_INST_0_i_8_n_0\,
      O => \result[11]_INST_0_i_4_n_0\
    );
\result[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[17]_INST_0_i_8_n_0\,
      I1 => \result[13]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[15]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[11]_INST_0_i_9_n_0\,
      O => \result[11]_INST_0_i_5_n_0\
    );
\result[11]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(11),
      I3 => alu_op(0),
      I4 => b(11),
      O => \result[11]_INST_0_i_6_n_0\
    );
\result[11]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[11]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[13]_INST_0_i_10_n_0\,
      O => \result[11]_INST_0_i_7_n_0\
    );
\result[11]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(19),
      I1 => b(3),
      I2 => a(27),
      I3 => b(4),
      I4 => a(11),
      O => \result[11]_INST_0_i_8_n_0\
    );
\result[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(19),
      I1 => a(31),
      I2 => b(3),
      I3 => a(27),
      I4 => b(4),
      I5 => a(11),
      O => \result[11]_INST_0_i_9_n_0\
    );
\result[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[12]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[12]_INST_0_i_2_n_0\,
      I3 => \result[12]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(12)
    );
\result[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[13]_INST_0_i_4_n_0\,
      I1 => \result[13]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[12]_INST_0_i_4_n_0\,
      I5 => \result[12]_INST_0_i_5_n_0\,
      O => \result[12]_INST_0_i_1_n_0\
    );
\result[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(5),
      I1 => b(2),
      I2 => a(1),
      I3 => a(9),
      I4 => b(3),
      I5 => b(4),
      O => \result[12]_INST_0_i_10_n_0\
    );
\result[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__2_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__2_n_7\,
      I5 => \result[12]_INST_0_i_6_n_0\,
      O => \result[12]_INST_0_i_2_n_0\
    );
\result[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[13]_INST_0_i_7_n_0\,
      I2 => \result[12]_INST_0_i_7_n_0\,
      I3 => b(12),
      I4 => a(12),
      I5 => alu_op(0),
      O => \result[12]_INST_0_i_3_n_0\
    );
\result[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[18]_INST_0_i_10_n_0\,
      I1 => \result[14]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[16]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[12]_INST_0_i_8_n_0\,
      O => \result[12]_INST_0_i_4_n_0\
    );
\result[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[18]_INST_0_i_8_n_0\,
      I1 => \result[14]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[16]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[12]_INST_0_i_9_n_0\,
      O => \result[12]_INST_0_i_5_n_0\
    );
\result[12]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(12),
      I3 => alu_op(0),
      I4 => b(12),
      O => \result[12]_INST_0_i_6_n_0\
    );
\result[12]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[12]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[14]_INST_0_i_10_n_0\,
      O => \result[12]_INST_0_i_7_n_0\
    );
\result[12]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(20),
      I1 => b(3),
      I2 => a(28),
      I3 => b(4),
      I4 => a(12),
      O => \result[12]_INST_0_i_8_n_0\
    );
\result[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(20),
      I1 => a(31),
      I2 => b(3),
      I3 => a(28),
      I4 => b(4),
      I5 => a(12),
      O => \result[12]_INST_0_i_9_n_0\
    );
\result[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[13]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[13]_INST_0_i_2_n_0\,
      I3 => \result[13]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(13)
    );
\result[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[14]_INST_0_i_4_n_0\,
      I1 => \result[14]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[13]_INST_0_i_4_n_0\,
      I5 => \result[13]_INST_0_i_5_n_0\,
      O => \result[13]_INST_0_i_1_n_0\
    );
\result[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(6),
      I1 => b(2),
      I2 => a(2),
      I3 => a(10),
      I4 => b(3),
      I5 => b(4),
      O => \result[13]_INST_0_i_10_n_0\
    );
\result[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__2_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__2_n_6\,
      I5 => \result[13]_INST_0_i_6_n_0\,
      O => \result[13]_INST_0_i_2_n_0\
    );
\result[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[14]_INST_0_i_7_n_0\,
      I2 => \result[13]_INST_0_i_7_n_0\,
      I3 => b(13),
      I4 => a(13),
      I5 => alu_op(0),
      O => \result[13]_INST_0_i_3_n_0\
    );
\result[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[19]_INST_0_i_11_n_0\,
      I1 => \result[15]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[17]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[13]_INST_0_i_8_n_0\,
      O => \result[13]_INST_0_i_4_n_0\
    );
\result[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[19]_INST_0_i_9_n_0\,
      I1 => \result[15]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[17]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[13]_INST_0_i_9_n_0\,
      O => \result[13]_INST_0_i_5_n_0\
    );
\result[13]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(13),
      I3 => alu_op(0),
      I4 => b(13),
      O => \result[13]_INST_0_i_6_n_0\
    );
\result[13]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result[13]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[15]_INST_0_i_10_n_0\,
      I3 => b(2),
      I4 => \result[19]_INST_0_i_12_n_0\,
      O => \result[13]_INST_0_i_7_n_0\
    );
\result[13]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(21),
      I1 => b(3),
      I2 => a(29),
      I3 => b(4),
      I4 => a(13),
      O => \result[13]_INST_0_i_8_n_0\
    );
\result[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(21),
      I1 => a(31),
      I2 => b(3),
      I3 => a(29),
      I4 => b(4),
      I5 => a(13),
      O => \result[13]_INST_0_i_9_n_0\
    );
\result[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[14]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[14]_INST_0_i_2_n_0\,
      I3 => \result[14]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(14)
    );
\result[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[15]_INST_0_i_4_n_0\,
      I1 => \result[15]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[14]_INST_0_i_4_n_0\,
      I5 => \result[14]_INST_0_i_5_n_0\,
      O => \result[14]_INST_0_i_1_n_0\
    );
\result[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(7),
      I1 => b(2),
      I2 => a(3),
      I3 => a(11),
      I4 => b(3),
      I5 => b(4),
      O => \result[14]_INST_0_i_10_n_0\
    );
\result[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__2_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__2_n_5\,
      I5 => \result[14]_INST_0_i_6_n_0\,
      O => \result[14]_INST_0_i_2_n_0\
    );
\result[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[15]_INST_0_i_7_n_0\,
      I2 => \result[14]_INST_0_i_7_n_0\,
      I3 => b(14),
      I4 => a(14),
      I5 => alu_op(0),
      O => \result[14]_INST_0_i_3_n_0\
    );
\result[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[16]_INST_0_i_9_n_0\,
      I1 => \result[16]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[18]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[14]_INST_0_i_8_n_0\,
      O => \result[14]_INST_0_i_4_n_0\
    );
\result[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[20]_INST_0_i_9_n_0\,
      I1 => \result[16]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[18]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[14]_INST_0_i_9_n_0\,
      O => \result[14]_INST_0_i_5_n_0\
    );
\result[14]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(14),
      I3 => alu_op(0),
      I4 => b(14),
      O => \result[14]_INST_0_i_6_n_0\
    );
\result[14]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result[14]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[16]_INST_0_i_11_n_0\,
      I3 => b(2),
      I4 => \result[20]_INST_0_i_11_n_0\,
      O => \result[14]_INST_0_i_7_n_0\
    );
\result[14]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(22),
      I1 => b(3),
      I2 => a(30),
      I3 => b(4),
      I4 => a(14),
      O => \result[14]_INST_0_i_8_n_0\
    );
\result[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(22),
      I1 => a(31),
      I2 => b(3),
      I3 => a(30),
      I4 => b(4),
      I5 => a(14),
      O => \result[14]_INST_0_i_9_n_0\
    );
\result[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[15]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[15]_INST_0_i_2_n_0\,
      I3 => \result[15]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(15)
    );
\result[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[16]_INST_0_i_5_n_0\,
      I1 => \result[16]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[15]_INST_0_i_4_n_0\,
      I5 => \result[15]_INST_0_i_5_n_0\,
      O => \result[15]_INST_0_i_1_n_0\
    );
\result[15]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(0),
      I1 => a(8),
      I2 => b(3),
      I3 => b(4),
      O => \result[15]_INST_0_i_10_n_0\
    );
\result[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__2_n_4\,
      I4 => \result_internal0_inferred__0/i__carry__2_n_4\,
      I5 => \result[15]_INST_0_i_6_n_0\,
      O => \result[15]_INST_0_i_2_n_0\
    );
\result[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[16]_INST_0_i_7_n_0\,
      I2 => \result[15]_INST_0_i_7_n_0\,
      I3 => b(15),
      I4 => a(15),
      I5 => alu_op(0),
      O => \result[15]_INST_0_i_3_n_0\
    );
\result[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[17]_INST_0_i_9_n_0\,
      I1 => \result[17]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[19]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[15]_INST_0_i_8_n_0\,
      O => \result[15]_INST_0_i_4_n_0\
    );
\result[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[21]_INST_0_i_9_n_0\,
      I1 => \result[17]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[19]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[15]_INST_0_i_9_n_0\,
      O => \result[15]_INST_0_i_5_n_0\
    );
\result[15]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(15),
      I3 => alu_op(0),
      I4 => b(15),
      O => \result[15]_INST_0_i_6_n_0\
    );
\result[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[15]_INST_0_i_10_n_0\,
      I1 => \result[19]_INST_0_i_12_n_0\,
      I2 => b(1),
      I3 => \result[17]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[21]_INST_0_i_11_n_0\,
      O => \result[15]_INST_0_i_7_n_0\
    );
\result[15]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => a(23),
      I1 => b(3),
      I2 => a(15),
      I3 => a(31),
      I4 => b(4),
      O => \result[15]_INST_0_i_8_n_0\
    );
\result[15]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(23),
      I1 => b(3),
      I2 => a(15),
      I3 => a(31),
      I4 => b(4),
      O => \result[15]_INST_0_i_9_n_0\
    );
\result[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[16]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[16]_INST_0_i_2_n_0\,
      I3 => \result[16]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(16)
    );
\result[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[16]_INST_0_i_4_n_0\,
      I1 => \result[17]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[16]_INST_0_i_5_n_0\,
      I5 => \result[17]_INST_0_i_5_n_0\,
      O => \result[16]_INST_0_i_1_n_0\
    );
\result[16]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(24),
      I1 => a(16),
      I2 => b(3),
      I3 => b(4),
      O => \result[16]_INST_0_i_10_n_0\
    );
\result[16]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(1),
      I1 => a(9),
      I2 => b(3),
      I3 => b(4),
      O => \result[16]_INST_0_i_11_n_0\
    );
\result[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__3_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__3_n_7\,
      I5 => \result[16]_INST_0_i_6_n_0\,
      O => \result[16]_INST_0_i_2_n_0\
    );
\result[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[17]_INST_0_i_7_n_0\,
      I2 => \result[16]_INST_0_i_7_n_0\,
      I3 => b(16),
      I4 => a(16),
      I5 => alu_op(0),
      O => \result[16]_INST_0_i_3_n_0\
    );
\result[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[22]_INST_0_i_9_n_0\,
      I1 => \result[18]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[20]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[16]_INST_0_i_8_n_0\,
      O => \result[16]_INST_0_i_4_n_0\
    );
\result[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[18]_INST_0_i_9_n_0\,
      I1 => \result[18]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[16]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[16]_INST_0_i_10_n_0\,
      O => \result[16]_INST_0_i_5_n_0\
    );
\result[16]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(16),
      I3 => alu_op(0),
      I4 => b(16),
      O => \result[16]_INST_0_i_6_n_0\
    );
\result[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[16]_INST_0_i_11_n_0\,
      I1 => \result[20]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[18]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[22]_INST_0_i_11_n_0\,
      O => \result[16]_INST_0_i_7_n_0\
    );
\result[16]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(24),
      I1 => b(3),
      I2 => a(16),
      I3 => a(31),
      I4 => b(4),
      O => \result[16]_INST_0_i_8_n_0\
    );
\result[16]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(28),
      I1 => a(20),
      I2 => b(3),
      I3 => b(4),
      O => \result[16]_INST_0_i_9_n_0\
    );
\result[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[17]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[17]_INST_0_i_2_n_0\,
      I3 => \result[17]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(17)
    );
\result[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[17]_INST_0_i_4_n_0\,
      I1 => \result[18]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[17]_INST_0_i_5_n_0\,
      I5 => \result[18]_INST_0_i_5_n_0\,
      O => \result[17]_INST_0_i_1_n_0\
    );
\result[17]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(25),
      I1 => a(17),
      I2 => b(3),
      I3 => b(4),
      O => \result[17]_INST_0_i_10_n_0\
    );
\result[17]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(2),
      I1 => a(10),
      I2 => b(3),
      I3 => b(4),
      O => \result[17]_INST_0_i_11_n_0\
    );
\result[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__3_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__3_n_6\,
      I5 => \result[17]_INST_0_i_6_n_0\,
      O => \result[17]_INST_0_i_2_n_0\
    );
\result[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[18]_INST_0_i_7_n_0\,
      I2 => \result[17]_INST_0_i_7_n_0\,
      I3 => b(17),
      I4 => a(17),
      I5 => alu_op(0),
      O => \result[17]_INST_0_i_3_n_0\
    );
\result[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[19]_INST_0_i_8_n_0\,
      I1 => \result[19]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[21]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[17]_INST_0_i_8_n_0\,
      O => \result[17]_INST_0_i_4_n_0\
    );
\result[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[19]_INST_0_i_10_n_0\,
      I1 => \result[19]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[17]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[17]_INST_0_i_10_n_0\,
      O => \result[17]_INST_0_i_5_n_0\
    );
\result[17]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(17),
      I3 => alu_op(0),
      I4 => b(17),
      O => \result[17]_INST_0_i_6_n_0\
    );
\result[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[17]_INST_0_i_11_n_0\,
      I1 => \result[21]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[19]_INST_0_i_12_n_0\,
      I4 => b(2),
      I5 => \result[23]_INST_0_i_10_n_0\,
      O => \result[17]_INST_0_i_7_n_0\
    );
\result[17]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(25),
      I1 => b(3),
      I2 => a(17),
      I3 => a(31),
      I4 => b(4),
      O => \result[17]_INST_0_i_8_n_0\
    );
\result[17]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(29),
      I1 => a(21),
      I2 => b(3),
      I3 => b(4),
      O => \result[17]_INST_0_i_9_n_0\
    );
\result[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[18]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[18]_INST_0_i_2_n_0\,
      I3 => \result[18]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(18)
    );
\result[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[18]_INST_0_i_4_n_0\,
      I1 => \result[19]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[18]_INST_0_i_5_n_0\,
      I5 => \result[19]_INST_0_i_5_n_0\,
      O => \result[18]_INST_0_i_1_n_0\
    );
\result[18]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(26),
      I1 => a(18),
      I2 => b(3),
      I3 => b(4),
      O => \result[18]_INST_0_i_10_n_0\
    );
\result[18]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(3),
      I1 => a(11),
      I2 => b(3),
      I3 => b(4),
      O => \result[18]_INST_0_i_11_n_0\
    );
\result[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__3_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__3_n_5\,
      I5 => \result[18]_INST_0_i_6_n_0\,
      O => \result[18]_INST_0_i_2_n_0\
    );
\result[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[19]_INST_0_i_7_n_0\,
      I2 => \result[18]_INST_0_i_7_n_0\,
      I3 => b(18),
      I4 => a(18),
      I5 => alu_op(0),
      O => \result[18]_INST_0_i_3_n_0\
    );
\result[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[20]_INST_0_i_8_n_0\,
      I1 => \result[20]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[22]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[18]_INST_0_i_8_n_0\,
      O => \result[18]_INST_0_i_4_n_0\
    );
\result[18]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result[20]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[18]_INST_0_i_9_n_0\,
      I3 => b(2),
      I4 => \result[18]_INST_0_i_10_n_0\,
      O => \result[18]_INST_0_i_5_n_0\
    );
\result[18]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(18),
      I3 => alu_op(0),
      I4 => b(18),
      O => \result[18]_INST_0_i_6_n_0\
    );
\result[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[18]_INST_0_i_11_n_0\,
      I1 => \result[22]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[20]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[24]_INST_0_i_10_n_0\,
      O => \result[18]_INST_0_i_7_n_0\
    );
\result[18]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(26),
      I1 => b(3),
      I2 => a(18),
      I3 => a(31),
      I4 => b(4),
      O => \result[18]_INST_0_i_8_n_0\
    );
\result[18]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(30),
      I1 => a(22),
      I2 => b(3),
      I3 => b(4),
      O => \result[18]_INST_0_i_9_n_0\
    );
\result[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[19]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[19]_INST_0_i_2_n_0\,
      I3 => \result[19]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(19)
    );
\result[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[19]_INST_0_i_4_n_0\,
      I1 => \result[20]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[19]_INST_0_i_5_n_0\,
      I5 => \result[20]_INST_0_i_5_n_0\,
      O => \result[19]_INST_0_i_1_n_0\
    );
\result[19]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(31),
      I1 => a(23),
      I2 => b(3),
      I3 => b(4),
      O => \result[19]_INST_0_i_10_n_0\
    );
\result[19]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(27),
      I1 => a(19),
      I2 => b(3),
      I3 => b(4),
      O => \result[19]_INST_0_i_11_n_0\
    );
\result[19]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(4),
      I1 => a(12),
      I2 => b(3),
      I3 => b(4),
      O => \result[19]_INST_0_i_12_n_0\
    );
\result[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__3_n_4\,
      I4 => \result_internal0_inferred__0/i__carry__3_n_4\,
      I5 => \result[19]_INST_0_i_6_n_0\,
      O => \result[19]_INST_0_i_2_n_0\
    );
\result[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[20]_INST_0_i_7_n_0\,
      I2 => \result[19]_INST_0_i_7_n_0\,
      I3 => b(19),
      I4 => a(19),
      I5 => alu_op(0),
      O => \result[19]_INST_0_i_3_n_0\
    );
\result[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[21]_INST_0_i_8_n_0\,
      I1 => \result[21]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[19]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[19]_INST_0_i_9_n_0\,
      O => \result[19]_INST_0_i_4_n_0\
    );
\result[19]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result[21]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[19]_INST_0_i_10_n_0\,
      I3 => b(2),
      I4 => \result[19]_INST_0_i_11_n_0\,
      O => \result[19]_INST_0_i_5_n_0\
    );
\result[19]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(19),
      I3 => alu_op(0),
      I4 => b(19),
      O => \result[19]_INST_0_i_6_n_0\
    );
\result[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[19]_INST_0_i_12_n_0\,
      I1 => \result[23]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[21]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[25]_INST_0_i_10_n_0\,
      O => \result[19]_INST_0_i_7_n_0\
    );
\result[19]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => a(23),
      I1 => b(4),
      I2 => a(31),
      I3 => b(3),
      O => \result[19]_INST_0_i_8_n_0\
    );
\result[19]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(27),
      I1 => b(3),
      I2 => a(19),
      I3 => a(31),
      I4 => b(4),
      O => \result[19]_INST_0_i_9_n_0\
    );
\result[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[1]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[1]_INST_0_i_2_n_0\,
      I3 => \result[1]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(1)
    );
\result[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \result[0]_INST_0_i_3_n_0\,
      I1 => b(0),
      I2 => \result[1]_INST_0_i_4_n_0\,
      I3 => \result[2]_INST_0_i_4_n_0\,
      I4 => \result[2]_INST_0_i_5_n_0\,
      I5 => \result[1]_INST_0_i_5_n_0\,
      O => \result[1]_INST_0_i_1_n_0\
    );
\result[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => result_internal0_carry_n_6,
      I4 => \result_internal0_inferred__0/i__carry_n_6\,
      I5 => \result[1]_INST_0_i_6_n_0\,
      O => \result[1]_INST_0_i_2_n_0\
    );
\result[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[2]_INST_0_i_7_n_0\,
      I2 => \result[1]_INST_0_i_7_n_0\,
      I3 => b(1),
      I4 => a(1),
      I5 => alu_op(0),
      O => \result[1]_INST_0_i_3_n_0\
    );
\result[1]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => b(0),
      I1 => alu_op(2),
      I2 => alu_op(0),
      I3 => alu_op(1),
      O => \result[1]_INST_0_i_4_n_0\
    );
\result[1]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(0),
      I2 => alu_op(1),
      I3 => b(0),
      O => \result[1]_INST_0_i_5_n_0\
    );
\result[1]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(1),
      I3 => alu_op(0),
      I4 => b(1),
      O => \result[1]_INST_0_i_6_n_0\
    );
\result[1]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => a(0),
      I3 => b(3),
      I4 => b(4),
      O => \result[1]_INST_0_i_7_n_0\
    );
\result[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[20]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[20]_INST_0_i_2_n_0\,
      I3 => \result[20]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(20)
    );
\result[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[20]_INST_0_i_4_n_0\,
      I1 => \result[21]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[20]_INST_0_i_5_n_0\,
      I5 => \result[21]_INST_0_i_5_n_0\,
      O => \result[20]_INST_0_i_1_n_0\
    );
\result[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(24),
      I1 => b(2),
      I2 => a(28),
      I3 => a(20),
      I4 => b(3),
      I5 => b(4),
      O => \result[20]_INST_0_i_10_n_0\
    );
\result[20]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(5),
      I1 => a(13),
      I2 => b(3),
      I3 => b(4),
      O => \result[20]_INST_0_i_11_n_0\
    );
\result[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__4_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__4_n_7\,
      I5 => \result[20]_INST_0_i_6_n_0\,
      O => \result[20]_INST_0_i_2_n_0\
    );
\result[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[21]_INST_0_i_7_n_0\,
      I2 => \result[20]_INST_0_i_7_n_0\,
      I3 => b(20),
      I4 => a(20),
      I5 => alu_op(0),
      O => \result[20]_INST_0_i_3_n_0\
    );
\result[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[22]_INST_0_i_8_n_0\,
      I1 => \result[22]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[20]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[20]_INST_0_i_9_n_0\,
      O => \result[20]_INST_0_i_4_n_0\
    );
\result[20]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[22]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[20]_INST_0_i_10_n_0\,
      O => \result[20]_INST_0_i_5_n_0\
    );
\result[20]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(20),
      I3 => alu_op(0),
      I4 => b(20),
      O => \result[20]_INST_0_i_6_n_0\
    );
\result[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[20]_INST_0_i_11_n_0\,
      I1 => \result[24]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[22]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[26]_INST_0_i_9_n_0\,
      O => \result[20]_INST_0_i_7_n_0\
    );
\result[20]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => a(24),
      I1 => b(4),
      I2 => a(31),
      I3 => b(3),
      O => \result[20]_INST_0_i_8_n_0\
    );
\result[20]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(28),
      I1 => b(3),
      I2 => a(20),
      I3 => a(31),
      I4 => b(4),
      O => \result[20]_INST_0_i_9_n_0\
    );
\result[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[21]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[21]_INST_0_i_2_n_0\,
      I3 => \result[21]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(21)
    );
\result[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[21]_INST_0_i_4_n_0\,
      I1 => \result[22]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[21]_INST_0_i_5_n_0\,
      I5 => \result[22]_INST_0_i_5_n_0\,
      O => \result[21]_INST_0_i_1_n_0\
    );
\result[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(25),
      I1 => b(2),
      I2 => a(29),
      I3 => a(21),
      I4 => b(3),
      I5 => b(4),
      O => \result[21]_INST_0_i_10_n_0\
    );
\result[21]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(6),
      I1 => a(14),
      I2 => b(3),
      I3 => b(4),
      O => \result[21]_INST_0_i_11_n_0\
    );
\result[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__4_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__4_n_6\,
      I5 => \result[21]_INST_0_i_6_n_0\,
      O => \result[21]_INST_0_i_2_n_0\
    );
\result[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[22]_INST_0_i_7_n_0\,
      I2 => \result[21]_INST_0_i_7_n_0\,
      I3 => b(21),
      I4 => a(21),
      I5 => alu_op(0),
      O => \result[21]_INST_0_i_3_n_0\
    );
\result[21]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result[23]_INST_0_i_8_n_0\,
      I1 => b(1),
      I2 => \result[21]_INST_0_i_8_n_0\,
      I3 => b(2),
      I4 => \result[21]_INST_0_i_9_n_0\,
      O => \result[21]_INST_0_i_4_n_0\
    );
\result[21]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[23]_INST_0_i_9_n_0\,
      I1 => b(1),
      I2 => \result[21]_INST_0_i_10_n_0\,
      O => \result[21]_INST_0_i_5_n_0\
    );
\result[21]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(21),
      I3 => alu_op(0),
      I4 => b(21),
      O => \result[21]_INST_0_i_6_n_0\
    );
\result[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[21]_INST_0_i_11_n_0\,
      I1 => \result[25]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[23]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[27]_INST_0_i_11_n_0\,
      O => \result[21]_INST_0_i_7_n_0\
    );
\result[21]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => a(25),
      I1 => b(4),
      I2 => a(31),
      I3 => b(3),
      O => \result[21]_INST_0_i_8_n_0\
    );
\result[21]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(29),
      I1 => b(3),
      I2 => a(21),
      I3 => a(31),
      I4 => b(4),
      O => \result[21]_INST_0_i_9_n_0\
    );
\result[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[22]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[22]_INST_0_i_2_n_0\,
      I3 => \result[22]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(22)
    );
\result[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[22]_INST_0_i_4_n_0\,
      I1 => \result[23]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[22]_INST_0_i_5_n_0\,
      I5 => \result[23]_INST_0_i_5_n_0\,
      O => \result[22]_INST_0_i_1_n_0\
    );
\result[22]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(26),
      I1 => b(2),
      I2 => a(30),
      I3 => a(22),
      I4 => b(3),
      I5 => b(4),
      O => \result[22]_INST_0_i_10_n_0\
    );
\result[22]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => a(7),
      I1 => a(15),
      I2 => b(3),
      I3 => b(4),
      O => \result[22]_INST_0_i_11_n_0\
    );
\result[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__4_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__4_n_5\,
      I5 => \result[22]_INST_0_i_6_n_0\,
      O => \result[22]_INST_0_i_2_n_0\
    );
\result[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[23]_INST_0_i_7_n_0\,
      I2 => \result[22]_INST_0_i_7_n_0\,
      I3 => b(22),
      I4 => a(22),
      I5 => alu_op(0),
      O => \result[22]_INST_0_i_3_n_0\
    );
\result[22]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \result[24]_INST_0_i_8_n_0\,
      I1 => b(1),
      I2 => \result[22]_INST_0_i_8_n_0\,
      I3 => b(2),
      I4 => \result[22]_INST_0_i_9_n_0\,
      O => \result[22]_INST_0_i_4_n_0\
    );
\result[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(28),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(24),
      I4 => b(1),
      I5 => \result[22]_INST_0_i_10_n_0\,
      O => \result[22]_INST_0_i_5_n_0\
    );
\result[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(22),
      I3 => alu_op(0),
      I4 => b(22),
      O => \result[22]_INST_0_i_6_n_0\
    );
\result[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[22]_INST_0_i_11_n_0\,
      I1 => \result[26]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[24]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[28]_INST_0_i_10_n_0\,
      O => \result[22]_INST_0_i_7_n_0\
    );
\result[22]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => a(26),
      I1 => b(4),
      I2 => a(31),
      I3 => b(3),
      O => \result[22]_INST_0_i_8_n_0\
    );
\result[22]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => a(30),
      I1 => b(3),
      I2 => a(22),
      I3 => a(31),
      I4 => b(4),
      O => \result[22]_INST_0_i_9_n_0\
    );
\result[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[23]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[23]_INST_0_i_2_n_0\,
      I3 => \result[23]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(23)
    );
\result[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[23]_INST_0_i_4_n_0\,
      I1 => \result[24]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[23]_INST_0_i_5_n_0\,
      I5 => \result[24]_INST_0_i_5_n_0\,
      O => \result[23]_INST_0_i_1_n_0\
    );
\result[23]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(8),
      I1 => b(3),
      I2 => a(0),
      I3 => b(4),
      I4 => a(16),
      O => \result[23]_INST_0_i_10_n_0\
    );
\result[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__4_n_4\,
      I4 => \result_internal0_inferred__0/i__carry__4_n_4\,
      I5 => \result[23]_INST_0_i_6_n_0\,
      O => \result[23]_INST_0_i_2_n_0\
    );
\result[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[24]_INST_0_i_7_n_0\,
      I2 => \result[23]_INST_0_i_7_n_0\,
      I3 => b(23),
      I4 => a(23),
      I5 => alu_op(0),
      O => \result[23]_INST_0_i_3_n_0\
    );
\result[23]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[25]_INST_0_i_9_n_0\,
      I1 => b(1),
      I2 => \result[23]_INST_0_i_8_n_0\,
      O => \result[23]_INST_0_i_4_n_0\
    );
\result[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(29),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(25),
      I4 => b(1),
      I5 => \result[23]_INST_0_i_9_n_0\,
      O => \result[23]_INST_0_i_5_n_0\
    );
\result[23]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(23),
      I3 => alu_op(0),
      I4 => b(23),
      O => \result[23]_INST_0_i_6_n_0\
    );
\result[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[23]_INST_0_i_10_n_0\,
      I1 => \result[27]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[25]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[29]_INST_0_i_8_n_0\,
      O => \result[23]_INST_0_i_7_n_0\
    );
\result[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => a(27),
      I1 => b(2),
      I2 => a(23),
      I3 => b(4),
      I4 => a(31),
      I5 => b(3),
      O => \result[23]_INST_0_i_8_n_0\
    );
\result[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => a(27),
      I1 => b(2),
      I2 => a(31),
      I3 => a(23),
      I4 => b(3),
      I5 => b(4),
      O => \result[23]_INST_0_i_9_n_0\
    );
\result[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[24]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[24]_INST_0_i_2_n_0\,
      I3 => \result[24]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(24)
    );
\result[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[24]_INST_0_i_4_n_0\,
      I1 => \result[25]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[24]_INST_0_i_5_n_0\,
      I5 => \result[25]_INST_0_i_4_n_0\,
      O => \result[24]_INST_0_i_1_n_0\
    );
\result[24]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(9),
      I1 => b(3),
      I2 => a(1),
      I3 => b(4),
      I4 => a(17),
      O => \result[24]_INST_0_i_10_n_0\
    );
\result[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__5_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__5_n_7\,
      I5 => \result[24]_INST_0_i_6_n_0\,
      O => \result[24]_INST_0_i_2_n_0\
    );
\result[24]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[25]_INST_0_i_7_n_0\,
      I2 => \result[24]_INST_0_i_7_n_0\,
      I3 => b(24),
      I4 => a(24),
      I5 => alu_op(0),
      O => \result[24]_INST_0_i_3_n_0\
    );
\result[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[26]_INST_0_i_8_n_0\,
      I1 => b(1),
      I2 => \result[24]_INST_0_i_8_n_0\,
      O => \result[24]_INST_0_i_4_n_0\
    );
\result[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(30),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(26),
      I4 => b(1),
      I5 => \result[24]_INST_0_i_9_n_0\,
      O => \result[24]_INST_0_i_5_n_0\
    );
\result[24]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(24),
      I3 => alu_op(0),
      I4 => b(24),
      O => \result[24]_INST_0_i_6_n_0\
    );
\result[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[24]_INST_0_i_10_n_0\,
      I1 => \result[28]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[26]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[30]_INST_0_i_16_n_0\,
      O => \result[24]_INST_0_i_7_n_0\
    );
\result[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => a(28),
      I1 => b(2),
      I2 => a(24),
      I3 => b(4),
      I4 => a(31),
      I5 => b(3),
      O => \result[24]_INST_0_i_8_n_0\
    );
\result[24]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => a(28),
      I1 => b(2),
      I2 => b(4),
      I3 => b(3),
      I4 => a(24),
      O => \result[24]_INST_0_i_9_n_0\
    );
\result[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[25]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[25]_INST_0_i_2_n_0\,
      I3 => \result[25]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(25)
    );
\result[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[26]_INST_0_i_4_n_0\,
      I1 => \result[26]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[25]_INST_0_i_4_n_0\,
      I5 => \result[25]_INST_0_i_5_n_0\,
      O => \result[25]_INST_0_i_1_n_0\
    );
\result[25]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(10),
      I1 => b(3),
      I2 => a(2),
      I3 => b(4),
      I4 => a(18),
      O => \result[25]_INST_0_i_10_n_0\
    );
\result[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__5_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__5_n_6\,
      I5 => \result[25]_INST_0_i_6_n_0\,
      O => \result[25]_INST_0_i_2_n_0\
    );
\result[25]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[26]_INST_0_i_7_n_0\,
      I2 => \result[25]_INST_0_i_7_n_0\,
      I3 => b(25),
      I4 => a(25),
      I5 => alu_op(0),
      O => \result[25]_INST_0_i_3_n_0\
    );
\result[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(31),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(27),
      I4 => b(1),
      I5 => \result[25]_INST_0_i_8_n_0\,
      O => \result[25]_INST_0_i_4_n_0\
    );
\result[25]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[27]_INST_0_i_10_n_0\,
      I1 => b(1),
      I2 => \result[25]_INST_0_i_9_n_0\,
      O => \result[25]_INST_0_i_5_n_0\
    );
\result[25]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(25),
      I3 => alu_op(0),
      I4 => b(25),
      O => \result[25]_INST_0_i_6_n_0\
    );
\result[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[25]_INST_0_i_10_n_0\,
      I1 => \result[29]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[27]_INST_0_i_11_n_0\,
      I4 => b(2),
      I5 => \result[30]_INST_0_i_10_n_0\,
      O => \result[25]_INST_0_i_7_n_0\
    );
\result[25]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => a(29),
      I1 => b(2),
      I2 => b(4),
      I3 => b(3),
      I4 => a(25),
      O => \result[25]_INST_0_i_8_n_0\
    );
\result[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => a(29),
      I1 => b(2),
      I2 => a(25),
      I3 => b(4),
      I4 => a(31),
      I5 => b(3),
      O => \result[25]_INST_0_i_9_n_0\
    );
\result[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[26]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[26]_INST_0_i_2_n_0\,
      I3 => \result[26]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(26)
    );
\result[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[27]_INST_0_i_4_n_0\,
      I1 => \result[27]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[26]_INST_0_i_4_n_0\,
      I5 => \result[26]_INST_0_i_5_n_0\,
      O => \result[26]_INST_0_i_1_n_0\
    );
\result[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__5_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__5_n_5\,
      I5 => \result[26]_INST_0_i_6_n_0\,
      O => \result[26]_INST_0_i_2_n_0\
    );
\result[26]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[27]_INST_0_i_7_n_0\,
      I2 => \result[26]_INST_0_i_7_n_0\,
      I3 => b(26),
      I4 => a(26),
      I5 => alu_op(0),
      O => \result[26]_INST_0_i_3_n_0\
    );
\result[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => a(28),
      I1 => b(1),
      I2 => a(30),
      I3 => b(2),
      I4 => \result[27]_INST_0_i_8_n_0\,
      I5 => a(26),
      O => \result[26]_INST_0_i_4_n_0\
    );
\result[26]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[28]_INST_0_i_9_n_0\,
      I1 => b(1),
      I2 => \result[26]_INST_0_i_8_n_0\,
      O => \result[26]_INST_0_i_5_n_0\
    );
\result[26]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(26),
      I3 => alu_op(0),
      I4 => b(26),
      O => \result[26]_INST_0_i_6_n_0\
    );
\result[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[26]_INST_0_i_9_n_0\,
      I1 => \result[30]_INST_0_i_16_n_0\,
      I2 => b(1),
      I3 => \result[28]_INST_0_i_10_n_0\,
      I4 => b(2),
      I5 => \result[30]_INST_0_i_14_n_0\,
      O => \result[26]_INST_0_i_7_n_0\
    );
\result[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => a(30),
      I1 => b(2),
      I2 => a(26),
      I3 => b(4),
      I4 => a(31),
      I5 => b(3),
      O => \result[26]_INST_0_i_8_n_0\
    );
\result[26]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(11),
      I1 => b(3),
      I2 => a(3),
      I3 => b(4),
      I4 => a(19),
      O => \result[26]_INST_0_i_9_n_0\
    );
\result[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[27]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[27]_INST_0_i_2_n_0\,
      I3 => \result[27]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(27)
    );
\result[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[28]_INST_0_i_5_n_0\,
      I1 => \result[28]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[27]_INST_0_i_4_n_0\,
      I5 => \result[27]_INST_0_i_5_n_0\,
      O => \result[27]_INST_0_i_1_n_0\
    );
\result[27]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => a(27),
      I1 => b(4),
      I2 => b(3),
      I3 => a(31),
      I4 => b(2),
      O => \result[27]_INST_0_i_10_n_0\
    );
\result[27]_INST_0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(12),
      I1 => b(3),
      I2 => a(4),
      I3 => b(4),
      I4 => a(20),
      O => \result[27]_INST_0_i_11_n_0\
    );
\result[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__5_n_4\,
      I4 => \result_internal0_inferred__0/i__carry__5_n_4\,
      I5 => \result[27]_INST_0_i_6_n_0\,
      O => \result[27]_INST_0_i_2_n_0\
    );
\result[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[28]_INST_0_i_7_n_0\,
      I2 => \result[27]_INST_0_i_7_n_0\,
      I3 => b(27),
      I4 => a(27),
      I5 => alu_op(0),
      O => \result[27]_INST_0_i_3_n_0\
    );
\result[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => a(29),
      I1 => b(1),
      I2 => a(31),
      I3 => b(2),
      I4 => \result[27]_INST_0_i_8_n_0\,
      I5 => a(27),
      O => \result[27]_INST_0_i_4_n_0\
    );
\result[27]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[27]_INST_0_i_9_n_0\,
      I1 => b(1),
      I2 => \result[27]_INST_0_i_10_n_0\,
      O => \result[27]_INST_0_i_5_n_0\
    );
\result[27]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(27),
      I3 => alu_op(0),
      I4 => b(27),
      O => \result[27]_INST_0_i_6_n_0\
    );
\result[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[27]_INST_0_i_11_n_0\,
      I1 => \result[30]_INST_0_i_10_n_0\,
      I2 => b(1),
      I3 => \result[29]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[30]_INST_0_i_13_n_0\,
      O => \result[27]_INST_0_i_7_n_0\
    );
\result[27]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(3),
      I1 => b(4),
      O => \result[27]_INST_0_i_8_n_0\
    );
\result[27]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => a(29),
      I1 => b(4),
      I2 => b(3),
      I3 => a(31),
      I4 => b(2),
      O => \result[27]_INST_0_i_9_n_0\
    );
\result[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[28]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[28]_INST_0_i_2_n_0\,
      I3 => \result[28]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(28)
    );
\result[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[28]_INST_0_i_4_n_0\,
      I1 => \result[29]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[28]_INST_0_i_5_n_0\,
      I5 => \result[29]_INST_0_i_5_n_0\,
      O => \result[28]_INST_0_i_1_n_0\
    );
\result[28]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(13),
      I1 => b(3),
      I2 => a(5),
      I3 => b(4),
      I4 => a(21),
      O => \result[28]_INST_0_i_10_n_0\
    );
\result[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__6_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__6_n_7\,
      I5 => \result[28]_INST_0_i_6_n_0\,
      O => \result[28]_INST_0_i_2_n_0\
    );
\result[28]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[29]_INST_0_i_7_n_0\,
      I2 => \result[28]_INST_0_i_7_n_0\,
      I3 => b(28),
      I4 => a(28),
      I5 => alu_op(0),
      O => \result[28]_INST_0_i_3_n_0\
    );
\result[28]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \result[28]_INST_0_i_8_n_0\,
      I1 => b(1),
      I2 => \result[28]_INST_0_i_9_n_0\,
      O => \result[28]_INST_0_i_4_n_0\
    );
\result[28]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => a(30),
      I1 => b(4),
      I2 => b(3),
      I3 => a(28),
      I4 => b(1),
      I5 => b(2),
      O => \result[28]_INST_0_i_5_n_0\
    );
\result[28]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(28),
      I3 => alu_op(0),
      I4 => b(28),
      O => \result[28]_INST_0_i_6_n_0\
    );
\result[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[28]_INST_0_i_10_n_0\,
      I1 => \result[30]_INST_0_i_14_n_0\,
      I2 => b(1),
      I3 => \result[30]_INST_0_i_16_n_0\,
      I4 => b(2),
      I5 => \result[30]_INST_0_i_17_n_0\,
      O => \result[28]_INST_0_i_7_n_0\
    );
\result[28]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => a(30),
      I1 => b(4),
      I2 => b(3),
      I3 => a(31),
      I4 => b(2),
      O => \result[28]_INST_0_i_8_n_0\
    );
\result[28]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => a(28),
      I1 => b(4),
      I2 => b(3),
      I3 => a(31),
      I4 => b(2),
      O => \result[28]_INST_0_i_9_n_0\
    );
\result[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[29]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[29]_INST_0_i_2_n_0\,
      I3 => \result[29]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(29)
    );
\result[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[29]_INST_0_i_4_n_0\,
      I1 => \result[30]_INST_0_i_4_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[29]_INST_0_i_5_n_0\,
      I5 => \result[30]_INST_0_i_5_n_0\,
      O => \result[29]_INST_0_i_1_n_0\
    );
\result[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__6_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__6_n_6\,
      I5 => \result[29]_INST_0_i_6_n_0\,
      O => \result[29]_INST_0_i_2_n_0\
    );
\result[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[30]_INST_0_i_9_n_0\,
      I2 => \result[29]_INST_0_i_7_n_0\,
      I3 => b(29),
      I4 => a(29),
      I5 => alu_op(0),
      O => \result[29]_INST_0_i_3_n_0\
    );
\result[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => b(1),
      I1 => a(29),
      I2 => b(4),
      I3 => b(3),
      I4 => a(31),
      I5 => b(2),
      O => \result[29]_INST_0_i_4_n_0\
    );
\result[29]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => a(31),
      I1 => b(4),
      I2 => b(3),
      I3 => a(29),
      I4 => b(1),
      I5 => b(2),
      O => \result[29]_INST_0_i_5_n_0\
    );
\result[29]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(29),
      I3 => alu_op(0),
      I4 => b(29),
      O => \result[29]_INST_0_i_6_n_0\
    );
\result[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \result[29]_INST_0_i_8_n_0\,
      I1 => b(2),
      I2 => \result[30]_INST_0_i_13_n_0\,
      I3 => \result[30]_INST_0_i_10_n_0\,
      I4 => \result[30]_INST_0_i_11_n_0\,
      I5 => b(1),
      O => \result[29]_INST_0_i_7_n_0\
    );
\result[29]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(14),
      I1 => b(3),
      I2 => a(6),
      I3 => b(4),
      I4 => a(22),
      O => \result[29]_INST_0_i_8_n_0\
    );
\result[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[2]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[2]_INST_0_i_2_n_0\,
      I3 => \result[2]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(2)
    );
\result[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[3]_INST_0_i_4_n_0\,
      I1 => \result[3]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[2]_INST_0_i_4_n_0\,
      I5 => \result[2]_INST_0_i_5_n_0\,
      O => \result[2]_INST_0_i_1_n_0\
    );
\result[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => result_internal0_carry_n_5,
      I4 => \result_internal0_inferred__0/i__carry_n_5\,
      I5 => \result[2]_INST_0_i_6_n_0\,
      O => \result[2]_INST_0_i_2_n_0\
    );
\result[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[3]_INST_0_i_7_n_0\,
      I2 => \result[2]_INST_0_i_7_n_0\,
      I3 => b(2),
      I4 => a(2),
      I5 => alu_op(0),
      O => \result[2]_INST_0_i_3_n_0\
    );
\result[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \result[0]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => \result[0]_INST_0_i_8_n_0\,
      I3 => \result[2]_INST_0_i_8_n_0\,
      I4 => b(1),
      O => \result[2]_INST_0_i_4_n_0\
    );
\result[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \result[0]_INST_0_i_7_n_0\,
      I1 => b(2),
      I2 => \result[0]_INST_0_i_8_n_0\,
      I3 => \result[8]_INST_0_i_9_n_0\,
      I4 => \result[0]_INST_0_i_10_n_0\,
      I5 => b(1),
      O => \result[2]_INST_0_i_5_n_0\
    );
\result[2]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(2),
      I3 => alu_op(0),
      I4 => b(2),
      O => \result[2]_INST_0_i_6_n_0\
    );
\result[2]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => a(1),
      I3 => b(3),
      I4 => b(4),
      O => \result[2]_INST_0_i_7_n_0\
    );
\result[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => a(16),
      I1 => b(4),
      I2 => b(3),
      I3 => \result[2]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_10_n_0\,
      O => \result[2]_INST_0_i_8_n_0\
    );
\result[2]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(24),
      I1 => b(4),
      I2 => a(8),
      O => \result[2]_INST_0_i_9_n_0\
    );
\result[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[30]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[30]_INST_0_i_2_n_0\,
      I3 => \result[30]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(30)
    );
\result[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \result[30]_INST_0_i_4_n_0\,
      I1 => a(31),
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[30]_INST_0_i_5_n_0\,
      I5 => \result[30]_INST_0_i_6_n_0\,
      O => \result[30]_INST_0_i_1_n_0\
    );
\result[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(24),
      I1 => a(8),
      I2 => b(3),
      I3 => a(0),
      I4 => b(4),
      I5 => a(16),
      O => \result[30]_INST_0_i_10_n_0\
    );
\result[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(28),
      I1 => a(12),
      I2 => b(3),
      I3 => a(4),
      I4 => b(4),
      I5 => a(20),
      O => \result[30]_INST_0_i_11_n_0\
    );
\result[30]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(30),
      I1 => a(14),
      I2 => b(3),
      I3 => a(6),
      I4 => b(4),
      I5 => a(22),
      O => \result[30]_INST_0_i_12_n_0\
    );
\result[30]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(26),
      I1 => a(10),
      I2 => b(3),
      I3 => a(2),
      I4 => b(4),
      I5 => a(18),
      O => \result[30]_INST_0_i_13_n_0\
    );
\result[30]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(25),
      I1 => a(9),
      I2 => b(3),
      I3 => a(1),
      I4 => b(4),
      I5 => a(17),
      O => \result[30]_INST_0_i_14_n_0\
    );
\result[30]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(29),
      I1 => a(13),
      I2 => b(3),
      I3 => a(5),
      I4 => b(4),
      I5 => a(21),
      O => \result[30]_INST_0_i_15_n_0\
    );
\result[30]_INST_0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(15),
      I1 => b(3),
      I2 => a(7),
      I3 => b(4),
      I4 => a(23),
      O => \result[30]_INST_0_i_16_n_0\
    );
\result[30]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(27),
      I1 => a(11),
      I2 => b(3),
      I3 => a(3),
      I4 => b(4),
      I5 => a(19),
      O => \result[30]_INST_0_i_17_n_0\
    );
\result[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__6_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__6_n_5\,
      I5 => \result[30]_INST_0_i_7_n_0\,
      O => \result[30]_INST_0_i_2_n_0\
    );
\result[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[30]_INST_0_i_8_n_0\,
      I2 => \result[30]_INST_0_i_9_n_0\,
      I3 => b(30),
      I4 => a(30),
      I5 => alu_op(0),
      O => \result[30]_INST_0_i_3_n_0\
    );
\result[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => b(1),
      I1 => a(30),
      I2 => b(4),
      I3 => b(3),
      I4 => a(31),
      I5 => b(2),
      O => \result[30]_INST_0_i_4_n_0\
    );
\result[30]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => a(30),
      I3 => b(3),
      I4 => b(4),
      O => \result[30]_INST_0_i_5_n_0\
    );
\result[30]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => a(31),
      I3 => b(3),
      I4 => b(4),
      O => \result[30]_INST_0_i_6_n_0\
    );
\result[30]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(30),
      I3 => alu_op(0),
      I4 => b(30),
      O => \result[30]_INST_0_i_7_n_0\
    );
\result[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \result[30]_INST_0_i_10_n_0\,
      I1 => b(2),
      I2 => \result[30]_INST_0_i_11_n_0\,
      I3 => \result[30]_INST_0_i_12_n_0\,
      I4 => \result[30]_INST_0_i_13_n_0\,
      I5 => b(1),
      O => \result[30]_INST_0_i_8_n_0\
    );
\result[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \result[30]_INST_0_i_14_n_0\,
      I1 => b(2),
      I2 => \result[30]_INST_0_i_15_n_0\,
      I3 => \result[30]_INST_0_i_16_n_0\,
      I4 => \result[30]_INST_0_i_17_n_0\,
      I5 => b(1),
      O => \result[30]_INST_0_i_9_n_0\
    );
\result[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22F222F222F222"
    )
        port map (
      I0 => \result[31]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[31]_INST_0_i_2_n_0\,
      I3 => \result[31]_INST_0_i_3_n_0\,
      I4 => \result[31]_INST_0_i_4_n_0\,
      I5 => a(31),
      O => \^result\(31)
    );
\result[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFA880"
    )
        port map (
      I0 => \result[31]_INST_0_i_5_n_0\,
      I1 => a(31),
      I2 => alu_op(0),
      I3 => b(31),
      I4 => \result[31]_INST_0_i_6_n_0\,
      I5 => \result[31]_INST_0_i_7_n_0\,
      O => \result[31]_INST_0_i_1_n_0\
    );
\result[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FFCC3300"
    )
        port map (
      I0 => \result[30]_INST_0_i_14_n_0\,
      I1 => b(2),
      I2 => \result[30]_INST_0_i_15_n_0\,
      I3 => \result[31]_INST_0_i_12_n_0\,
      I4 => \result[30]_INST_0_i_17_n_0\,
      I5 => b(1),
      O => \result[31]_INST_0_i_10_n_0\
    );
\result[31]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      O => \result[31]_INST_0_i_11_n_0\
    );
\result[31]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => a(31),
      I1 => a(15),
      I2 => b(3),
      I3 => a(7),
      I4 => b(4),
      I5 => a(23),
      O => \result[31]_INST_0_i_12_n_0\
    );
\result[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => b(4),
      I1 => b(3),
      I2 => a(31),
      I3 => b(1),
      I4 => b(2),
      I5 => \result[31]_INST_0_i_8_n_0\,
      O => \result[31]_INST_0_i_2_n_0\
    );
\result[31]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(2),
      I2 => alu_op(1),
      O => \result[31]_INST_0_i_3_n_0\
    );
\result[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(0),
      I2 => alu_op(2),
      O => \result[31]_INST_0_i_4_n_0\
    );
\result[31]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(1),
      O => \result[31]_INST_0_i_5_n_0\
    );
\result[31]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000C"
    )
        port map (
      I0 => p_1_in,
      I1 => p_1_in2_in,
      I2 => alu_op(2),
      I3 => alu_op(1),
      I4 => alu_op(0),
      O => \result[31]_INST_0_i_6_n_0\
    );
\result[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2A8A0AA0208000"
    )
        port map (
      I0 => \result[31]_INST_0_i_9_n_0\,
      I1 => b(0),
      I2 => alu_op(0),
      I3 => \result[30]_INST_0_i_8_n_0\,
      I4 => \result[31]_INST_0_i_10_n_0\,
      I5 => \result[31]_INST_0_i_11_n_0\,
      O => \result[31]_INST_0_i_7_n_0\
    );
\result[31]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0051"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(0),
      I2 => alu_op(1),
      I3 => b(0),
      O => \result[31]_INST_0_i_8_n_0\
    );
\result[31]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      O => \result[31]_INST_0_i_9_n_0\
    );
\result[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[3]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[3]_INST_0_i_2_n_0\,
      I3 => \result[3]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(3)
    );
\result[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[4]_INST_0_i_4_n_0\,
      I1 => \result[4]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[3]_INST_0_i_4_n_0\,
      I5 => \result[3]_INST_0_i_5_n_0\,
      O => \result[3]_INST_0_i_1_n_0\
    );
\result[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => result_internal0_carry_n_4,
      I4 => \result_internal0_inferred__0/i__carry_n_4\,
      I5 => \result[3]_INST_0_i_6_n_0\,
      O => \result[3]_INST_0_i_2_n_0\
    );
\result[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[4]_INST_0_i_7_n_0\,
      I2 => \result[3]_INST_0_i_7_n_0\,
      I3 => b(3),
      I4 => a(3),
      I5 => alu_op(0),
      O => \result[3]_INST_0_i_3_n_0\
    );
\result[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \result[0]_INST_0_i_11_n_0\,
      I1 => b(2),
      I2 => \result[0]_INST_0_i_12_n_0\,
      I3 => \result[3]_INST_0_i_8_n_0\,
      I4 => b(1),
      O => \result[3]_INST_0_i_4_n_0\
    );
\result[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \result[0]_INST_0_i_11_n_0\,
      I1 => b(2),
      I2 => \result[0]_INST_0_i_12_n_0\,
      I3 => \result[9]_INST_0_i_9_n_0\,
      I4 => \result[0]_INST_0_i_14_n_0\,
      I5 => b(1),
      O => \result[3]_INST_0_i_5_n_0\
    );
\result[3]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(3),
      I3 => alu_op(0),
      I4 => b(3),
      O => \result[3]_INST_0_i_6_n_0\
    );
\result[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => a(0),
      I1 => b(4),
      I2 => b(3),
      I3 => a(2),
      I4 => b(1),
      I5 => b(2),
      O => \result[3]_INST_0_i_7_n_0\
    );
\result[3]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => a(17),
      I1 => b(4),
      I2 => b(3),
      I3 => \result[3]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_14_n_0\,
      O => \result[3]_INST_0_i_8_n_0\
    );
\result[3]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a(25),
      I1 => b(4),
      I2 => a(9),
      O => \result[3]_INST_0_i_9_n_0\
    );
\result[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[4]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[4]_INST_0_i_2_n_0\,
      I3 => \result[4]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(4)
    );
\result[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[5]_INST_0_i_4_n_0\,
      I1 => \result[5]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[4]_INST_0_i_4_n_0\,
      I5 => \result[4]_INST_0_i_5_n_0\,
      O => \result[4]_INST_0_i_1_n_0\
    );
\result[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__0_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__0_n_7\,
      I5 => \result[4]_INST_0_i_6_n_0\,
      O => \result[4]_INST_0_i_2_n_0\
    );
\result[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[5]_INST_0_i_7_n_0\,
      I2 => \result[4]_INST_0_i_7_n_0\,
      I3 => b(4),
      I4 => a(4),
      I5 => alu_op(0),
      O => \result[4]_INST_0_i_3_n_0\
    );
\result[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[10]_INST_0_i_8_n_0\,
      I1 => \result[0]_INST_0_i_7_n_0\,
      I2 => b(1),
      I3 => \result[8]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_10_n_0\,
      O => \result[4]_INST_0_i_4_n_0\
    );
\result[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[10]_INST_0_i_9_n_0\,
      I1 => \result[0]_INST_0_i_7_n_0\,
      I2 => b(1),
      I3 => \result[8]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_10_n_0\,
      O => \result[4]_INST_0_i_5_n_0\
    );
\result[4]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(4),
      I3 => alu_op(0),
      I4 => b(4),
      O => \result[4]_INST_0_i_6_n_0\
    );
\result[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002020300"
    )
        port map (
      I0 => a(1),
      I1 => b(4),
      I2 => b(3),
      I3 => a(3),
      I4 => b(1),
      I5 => b(2),
      O => \result[4]_INST_0_i_7_n_0\
    );
\result[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[5]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[5]_INST_0_i_2_n_0\,
      I3 => \result[5]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(5)
    );
\result[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[6]_INST_0_i_4_n_0\,
      I1 => \result[6]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[5]_INST_0_i_4_n_0\,
      I5 => \result[5]_INST_0_i_5_n_0\,
      O => \result[5]_INST_0_i_1_n_0\
    );
\result[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__0_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__0_n_6\,
      I5 => \result[5]_INST_0_i_6_n_0\,
      O => \result[5]_INST_0_i_2_n_0\
    );
\result[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[6]_INST_0_i_7_n_0\,
      I2 => \result[5]_INST_0_i_7_n_0\,
      I3 => b(5),
      I4 => a(5),
      I5 => alu_op(0),
      O => \result[5]_INST_0_i_3_n_0\
    );
\result[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[11]_INST_0_i_8_n_0\,
      I1 => \result[0]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[9]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_14_n_0\,
      O => \result[5]_INST_0_i_4_n_0\
    );
\result[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[11]_INST_0_i_9_n_0\,
      I1 => \result[0]_INST_0_i_11_n_0\,
      I2 => b(1),
      I3 => \result[9]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_14_n_0\,
      O => \result[5]_INST_0_i_5_n_0\
    );
\result[5]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(5),
      I3 => alu_op(0),
      I4 => b(5),
      O => \result[5]_INST_0_i_6_n_0\
    );
\result[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => a(2),
      I1 => b(1),
      I2 => a(0),
      I3 => b(2),
      I4 => \result[27]_INST_0_i_8_n_0\,
      I5 => a(4),
      O => \result[5]_INST_0_i_7_n_0\
    );
\result[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[6]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[6]_INST_0_i_2_n_0\,
      I3 => \result[6]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(6)
    );
\result[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[7]_INST_0_i_4_n_0\,
      I1 => \result[7]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[6]_INST_0_i_4_n_0\,
      I5 => \result[6]_INST_0_i_5_n_0\,
      O => \result[6]_INST_0_i_1_n_0\
    );
\result[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__0_n_5\,
      I4 => \result_internal0_inferred__0/i__carry__0_n_5\,
      I5 => \result[6]_INST_0_i_6_n_0\,
      O => \result[6]_INST_0_i_2_n_0\
    );
\result[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF003C3CAAAA3C3C"
    )
        port map (
      I0 => \result[7]_INST_0_i_7_n_0\,
      I1 => a(6),
      I2 => b(6),
      I3 => \result[6]_INST_0_i_7_n_0\,
      I4 => alu_op(0),
      I5 => b(0),
      O => \result[6]_INST_0_i_3_n_0\
    );
\result[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[12]_INST_0_i_8_n_0\,
      I1 => \result[8]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[10]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_7_n_0\,
      O => \result[6]_INST_0_i_4_n_0\
    );
\result[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[12]_INST_0_i_9_n_0\,
      I1 => \result[8]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[10]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_7_n_0\,
      O => \result[6]_INST_0_i_5_n_0\
    );
\result[6]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(6),
      I3 => alu_op(0),
      I4 => b(6),
      O => \result[6]_INST_0_i_6_n_0\
    );
\result[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => a(3),
      I1 => b(1),
      I2 => a(1),
      I3 => b(2),
      I4 => \result[27]_INST_0_i_8_n_0\,
      I5 => a(5),
      O => \result[6]_INST_0_i_7_n_0\
    );
\result[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[7]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[7]_INST_0_i_2_n_0\,
      I3 => \result[7]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(7)
    );
\result[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[8]_INST_0_i_4_n_0\,
      I1 => \result[8]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[7]_INST_0_i_4_n_0\,
      I5 => \result[7]_INST_0_i_5_n_0\,
      O => \result[7]_INST_0_i_1_n_0\
    );
\result[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__0_n_4\,
      I4 => \result_internal0_inferred__0/i__carry__0_n_4\,
      I5 => \result[7]_INST_0_i_6_n_0\,
      O => \result[7]_INST_0_i_2_n_0\
    );
\result[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[8]_INST_0_i_7_n_0\,
      I2 => \result[7]_INST_0_i_7_n_0\,
      I3 => b(7),
      I4 => a(7),
      I5 => alu_op(0),
      O => \result[7]_INST_0_i_3_n_0\
    );
\result[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[13]_INST_0_i_8_n_0\,
      I1 => \result[9]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[11]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_11_n_0\,
      O => \result[7]_INST_0_i_4_n_0\
    );
\result[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[13]_INST_0_i_9_n_0\,
      I1 => \result[9]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[11]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[0]_INST_0_i_11_n_0\,
      O => \result[7]_INST_0_i_5_n_0\
    );
\result[7]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(7),
      I3 => alu_op(0),
      I4 => b(7),
      O => \result[7]_INST_0_i_6_n_0\
    );
\result[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(0),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(4),
      I4 => b(1),
      I5 => \result[7]_INST_0_i_8_n_0\,
      O => \result[7]_INST_0_i_7_n_0\
    );
\result[7]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => b(4),
      I3 => b(3),
      I4 => a(6),
      O => \result[7]_INST_0_i_8_n_0\
    );
\result[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[8]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[8]_INST_0_i_2_n_0\,
      I3 => \result[8]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(8)
    );
\result[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[9]_INST_0_i_4_n_0\,
      I1 => \result[9]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[8]_INST_0_i_4_n_0\,
      I5 => \result[8]_INST_0_i_5_n_0\,
      O => \result[8]_INST_0_i_1_n_0\
    );
\result[8]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => a(3),
      I1 => b(2),
      I2 => b(4),
      I3 => b(3),
      I4 => a(7),
      O => \result[8]_INST_0_i_10_n_0\
    );
\result[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__1_n_7\,
      I4 => \result_internal0_inferred__0/i__carry__1_n_7\,
      I5 => \result[8]_INST_0_i_6_n_0\,
      O => \result[8]_INST_0_i_2_n_0\
    );
\result[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[9]_INST_0_i_7_n_0\,
      I2 => \result[8]_INST_0_i_7_n_0\,
      I3 => b(8),
      I4 => a(8),
      I5 => alu_op(0),
      O => \result[8]_INST_0_i_3_n_0\
    );
\result[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[14]_INST_0_i_8_n_0\,
      I1 => \result[10]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[12]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[8]_INST_0_i_8_n_0\,
      O => \result[8]_INST_0_i_4_n_0\
    );
\result[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[14]_INST_0_i_9_n_0\,
      I1 => \result[10]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[12]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[8]_INST_0_i_9_n_0\,
      O => \result[8]_INST_0_i_5_n_0\
    );
\result[8]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(8),
      I3 => alu_op(0),
      I4 => b(8),
      O => \result[8]_INST_0_i_6_n_0\
    );
\result[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(1),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(5),
      I4 => b(1),
      I5 => \result[8]_INST_0_i_10_n_0\,
      O => \result[8]_INST_0_i_7_n_0\
    );
\result[8]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(16),
      I1 => b(3),
      I2 => a(24),
      I3 => b(4),
      I4 => a(8),
      O => \result[8]_INST_0_i_8_n_0\
    );
\result[8]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(16),
      I1 => a(31),
      I2 => b(3),
      I3 => a(24),
      I4 => b(4),
      I5 => a(8),
      O => \result[8]_INST_0_i_9_n_0\
    );
\result[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333030303030B8B8"
    )
        port map (
      I0 => \result[9]_INST_0_i_1_n_0\,
      I1 => alu_op(3),
      I2 => \result[9]_INST_0_i_2_n_0\,
      I3 => \result[9]_INST_0_i_3_n_0\,
      I4 => alu_op(1),
      I5 => alu_op(2),
      O => \^result\(9)
    );
\result[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \result[10]_INST_0_i_4_n_0\,
      I1 => \result[10]_INST_0_i_5_n_0\,
      I2 => b(0),
      I3 => \result[31]_INST_0_i_4_n_0\,
      I4 => \result[9]_INST_0_i_4_n_0\,
      I5 => \result[9]_INST_0_i_5_n_0\,
      O => \result[9]_INST_0_i_1_n_0\
    );
\result[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF03020100"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \result_internal0_carry__1_n_6\,
      I4 => \result_internal0_inferred__0/i__carry__1_n_6\,
      I5 => \result[9]_INST_0_i_6_n_0\,
      O => \result[9]_INST_0_i_2_n_0\
    );
\result[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4E4E4E400FFFF00"
    )
        port map (
      I0 => b(0),
      I1 => \result[10]_INST_0_i_7_n_0\,
      I2 => \result[9]_INST_0_i_7_n_0\,
      I3 => b(9),
      I4 => a(9),
      I5 => alu_op(0),
      O => \result[9]_INST_0_i_3_n_0\
    );
\result[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[15]_INST_0_i_8_n_0\,
      I1 => \result[11]_INST_0_i_8_n_0\,
      I2 => b(1),
      I3 => \result[13]_INST_0_i_8_n_0\,
      I4 => b(2),
      I5 => \result[9]_INST_0_i_8_n_0\,
      O => \result[9]_INST_0_i_4_n_0\
    );
\result[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \result[15]_INST_0_i_9_n_0\,
      I1 => \result[11]_INST_0_i_9_n_0\,
      I2 => b(1),
      I3 => \result[13]_INST_0_i_9_n_0\,
      I4 => b(2),
      I5 => \result[9]_INST_0_i_9_n_0\,
      O => \result[9]_INST_0_i_5_n_0\
    );
\result[9]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404000"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => a(9),
      I3 => alu_op(0),
      I4 => b(9),
      O => \result[9]_INST_0_i_6_n_0\
    );
\result[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      I2 => \result[27]_INST_0_i_8_n_0\,
      I3 => a(6),
      I4 => b(1),
      I5 => \result[11]_INST_0_i_10_n_0\,
      O => \result[9]_INST_0_i_7_n_0\
    );
\result[9]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => a(17),
      I1 => b(3),
      I2 => a(25),
      I3 => b(4),
      I4 => a(9),
      O => \result[9]_INST_0_i_8_n_0\
    );
\result[9]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => a(17),
      I1 => a(31),
      I2 => b(3),
      I3 => a(25),
      I4 => b(4),
      I5 => a(9),
      O => \result[9]_INST_0_i_9_n_0\
    );
result_internal0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => result_internal0_carry_n_0,
      CO(2) => result_internal0_carry_n_1,
      CO(1) => result_internal0_carry_n_2,
      CO(0) => result_internal0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => a(3 downto 0),
      O(3) => result_internal0_carry_n_4,
      O(2) => result_internal0_carry_n_5,
      O(1) => result_internal0_carry_n_6,
      O(0) => result_internal0_carry_n_7,
      S(3) => result_internal0_carry_i_1_n_0,
      S(2) => result_internal0_carry_i_2_n_0,
      S(1) => result_internal0_carry_i_3_n_0,
      S(0) => result_internal0_carry_i_4_n_0
    );
\result_internal0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => result_internal0_carry_n_0,
      CO(3) => \result_internal0_carry__0_n_0\,
      CO(2) => \result_internal0_carry__0_n_1\,
      CO(1) => \result_internal0_carry__0_n_2\,
      CO(0) => \result_internal0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3) => \result_internal0_carry__0_n_4\,
      O(2) => \result_internal0_carry__0_n_5\,
      O(1) => \result_internal0_carry__0_n_6\,
      O(0) => \result_internal0_carry__0_n_7\,
      S(3) => \result_internal0_carry__0_i_1_n_0\,
      S(2) => \result_internal0_carry__0_i_2_n_0\,
      S(1) => \result_internal0_carry__0_i_3_n_0\,
      S(0) => \result_internal0_carry__0_i_4_n_0\
    );
\result_internal0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(7),
      I1 => b(7),
      O => \result_internal0_carry__0_i_1_n_0\
    );
\result_internal0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(6),
      I1 => b(6),
      O => \result_internal0_carry__0_i_2_n_0\
    );
\result_internal0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(5),
      I1 => b(5),
      O => \result_internal0_carry__0_i_3_n_0\
    );
\result_internal0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(4),
      I1 => b(4),
      O => \result_internal0_carry__0_i_4_n_0\
    );
\result_internal0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_carry__0_n_0\,
      CO(3) => \result_internal0_carry__1_n_0\,
      CO(2) => \result_internal0_carry__1_n_1\,
      CO(1) => \result_internal0_carry__1_n_2\,
      CO(0) => \result_internal0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3) => \result_internal0_carry__1_n_4\,
      O(2) => \result_internal0_carry__1_n_5\,
      O(1) => \result_internal0_carry__1_n_6\,
      O(0) => \result_internal0_carry__1_n_7\,
      S(3) => \result_internal0_carry__1_i_1_n_0\,
      S(2) => \result_internal0_carry__1_i_2_n_0\,
      S(1) => \result_internal0_carry__1_i_3_n_0\,
      S(0) => \result_internal0_carry__1_i_4_n_0\
    );
\result_internal0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(11),
      I1 => b(11),
      O => \result_internal0_carry__1_i_1_n_0\
    );
\result_internal0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(10),
      I1 => b(10),
      O => \result_internal0_carry__1_i_2_n_0\
    );
\result_internal0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(9),
      I1 => b(9),
      O => \result_internal0_carry__1_i_3_n_0\
    );
\result_internal0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(8),
      I1 => b(8),
      O => \result_internal0_carry__1_i_4_n_0\
    );
\result_internal0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_carry__1_n_0\,
      CO(3) => \result_internal0_carry__2_n_0\,
      CO(2) => \result_internal0_carry__2_n_1\,
      CO(1) => \result_internal0_carry__2_n_2\,
      CO(0) => \result_internal0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(15 downto 12),
      O(3) => \result_internal0_carry__2_n_4\,
      O(2) => \result_internal0_carry__2_n_5\,
      O(1) => \result_internal0_carry__2_n_6\,
      O(0) => \result_internal0_carry__2_n_7\,
      S(3) => \result_internal0_carry__2_i_1_n_0\,
      S(2) => \result_internal0_carry__2_i_2_n_0\,
      S(1) => \result_internal0_carry__2_i_3_n_0\,
      S(0) => \result_internal0_carry__2_i_4_n_0\
    );
\result_internal0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(15),
      I1 => b(15),
      O => \result_internal0_carry__2_i_1_n_0\
    );
\result_internal0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(14),
      I1 => b(14),
      O => \result_internal0_carry__2_i_2_n_0\
    );
\result_internal0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(13),
      I1 => b(13),
      O => \result_internal0_carry__2_i_3_n_0\
    );
\result_internal0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(12),
      I1 => b(12),
      O => \result_internal0_carry__2_i_4_n_0\
    );
\result_internal0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_carry__2_n_0\,
      CO(3) => \result_internal0_carry__3_n_0\,
      CO(2) => \result_internal0_carry__3_n_1\,
      CO(1) => \result_internal0_carry__3_n_2\,
      CO(0) => \result_internal0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(19 downto 16),
      O(3) => \result_internal0_carry__3_n_4\,
      O(2) => \result_internal0_carry__3_n_5\,
      O(1) => \result_internal0_carry__3_n_6\,
      O(0) => \result_internal0_carry__3_n_7\,
      S(3) => \result_internal0_carry__3_i_1_n_0\,
      S(2) => \result_internal0_carry__3_i_2_n_0\,
      S(1) => \result_internal0_carry__3_i_3_n_0\,
      S(0) => \result_internal0_carry__3_i_4_n_0\
    );
\result_internal0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(19),
      I1 => b(19),
      O => \result_internal0_carry__3_i_1_n_0\
    );
\result_internal0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(18),
      I1 => b(18),
      O => \result_internal0_carry__3_i_2_n_0\
    );
\result_internal0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(17),
      I1 => b(17),
      O => \result_internal0_carry__3_i_3_n_0\
    );
\result_internal0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(16),
      I1 => b(16),
      O => \result_internal0_carry__3_i_4_n_0\
    );
\result_internal0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_carry__3_n_0\,
      CO(3) => \result_internal0_carry__4_n_0\,
      CO(2) => \result_internal0_carry__4_n_1\,
      CO(1) => \result_internal0_carry__4_n_2\,
      CO(0) => \result_internal0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(23 downto 20),
      O(3) => \result_internal0_carry__4_n_4\,
      O(2) => \result_internal0_carry__4_n_5\,
      O(1) => \result_internal0_carry__4_n_6\,
      O(0) => \result_internal0_carry__4_n_7\,
      S(3) => \result_internal0_carry__4_i_1_n_0\,
      S(2) => \result_internal0_carry__4_i_2_n_0\,
      S(1) => \result_internal0_carry__4_i_3_n_0\,
      S(0) => \result_internal0_carry__4_i_4_n_0\
    );
\result_internal0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(23),
      I1 => b(23),
      O => \result_internal0_carry__4_i_1_n_0\
    );
\result_internal0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(22),
      I1 => b(22),
      O => \result_internal0_carry__4_i_2_n_0\
    );
\result_internal0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(21),
      I1 => b(21),
      O => \result_internal0_carry__4_i_3_n_0\
    );
\result_internal0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(20),
      I1 => b(20),
      O => \result_internal0_carry__4_i_4_n_0\
    );
\result_internal0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_carry__4_n_0\,
      CO(3) => \result_internal0_carry__5_n_0\,
      CO(2) => \result_internal0_carry__5_n_1\,
      CO(1) => \result_internal0_carry__5_n_2\,
      CO(0) => \result_internal0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(27 downto 24),
      O(3) => \result_internal0_carry__5_n_4\,
      O(2) => \result_internal0_carry__5_n_5\,
      O(1) => \result_internal0_carry__5_n_6\,
      O(0) => \result_internal0_carry__5_n_7\,
      S(3) => \result_internal0_carry__5_i_1_n_0\,
      S(2) => \result_internal0_carry__5_i_2_n_0\,
      S(1) => \result_internal0_carry__5_i_3_n_0\,
      S(0) => \result_internal0_carry__5_i_4_n_0\
    );
\result_internal0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(27),
      I1 => b(27),
      O => \result_internal0_carry__5_i_1_n_0\
    );
\result_internal0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(26),
      I1 => b(26),
      O => \result_internal0_carry__5_i_2_n_0\
    );
\result_internal0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(25),
      I1 => b(25),
      O => \result_internal0_carry__5_i_3_n_0\
    );
\result_internal0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(24),
      I1 => b(24),
      O => \result_internal0_carry__5_i_4_n_0\
    );
\result_internal0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_carry__5_n_0\,
      CO(3) => \NLW_result_internal0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \result_internal0_carry__6_n_1\,
      CO(1) => \result_internal0_carry__6_n_2\,
      CO(0) => \result_internal0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a(30 downto 28),
      O(3) => p_1_in2_in,
      O(2) => \result_internal0_carry__6_n_5\,
      O(1) => \result_internal0_carry__6_n_6\,
      O(0) => \result_internal0_carry__6_n_7\,
      S(3) => \result_internal0_carry__6_i_1_n_0\,
      S(2) => \result_internal0_carry__6_i_2_n_0\,
      S(1) => \result_internal0_carry__6_i_3_n_0\,
      S(0) => \result_internal0_carry__6_i_4_n_0\
    );
\result_internal0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(31),
      I1 => b(31),
      O => \result_internal0_carry__6_i_1_n_0\
    );
\result_internal0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      O => \result_internal0_carry__6_i_2_n_0\
    );
\result_internal0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(29),
      I1 => b(29),
      O => \result_internal0_carry__6_i_3_n_0\
    );
\result_internal0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(28),
      I1 => b(28),
      O => \result_internal0_carry__6_i_4_n_0\
    );
result_internal0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => result_internal0_carry_i_1_n_0
    );
result_internal0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => result_internal0_carry_i_2_n_0
    );
result_internal0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      O => result_internal0_carry_i_3_n_0
    );
result_internal0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      O => result_internal0_carry_i_4_n_0
    );
\result_internal0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_internal0_inferred__0/i__carry_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => a(3 downto 0),
      O(3) => \result_internal0_inferred__0/i__carry_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\result_internal0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry_n_0\,
      CO(3) => \result_internal0_inferred__0/i__carry__0_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry__0_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__0_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3) => \result_internal0_inferred__0/i__carry__0_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry__0_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__0_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\result_internal0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry__0_n_0\,
      CO(3) => \result_internal0_inferred__0/i__carry__1_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry__1_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__1_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3) => \result_internal0_inferred__0/i__carry__1_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry__1_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__1_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\result_internal0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry__1_n_0\,
      CO(3) => \result_internal0_inferred__0/i__carry__2_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry__2_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__2_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(15 downto 12),
      O(3) => \result_internal0_inferred__0/i__carry__2_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry__2_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__2_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\result_internal0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry__2_n_0\,
      CO(3) => \result_internal0_inferred__0/i__carry__3_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry__3_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__3_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(19 downto 16),
      O(3) => \result_internal0_inferred__0/i__carry__3_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry__3_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__3_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\result_internal0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry__3_n_0\,
      CO(3) => \result_internal0_inferred__0/i__carry__4_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry__4_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__4_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(23 downto 20),
      O(3) => \result_internal0_inferred__0/i__carry__4_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry__4_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__4_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\result_internal0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry__4_n_0\,
      CO(3) => \result_internal0_inferred__0/i__carry__5_n_0\,
      CO(2) => \result_internal0_inferred__0/i__carry__5_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__5_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(27 downto 24),
      O(3) => \result_internal0_inferred__0/i__carry__5_n_4\,
      O(2) => \result_internal0_inferred__0/i__carry__5_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__5_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\result_internal0_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__0/i__carry__5_n_0\,
      CO(3) => \NLW_result_internal0_inferred__0/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \result_internal0_inferred__0/i__carry__6_n_1\,
      CO(1) => \result_internal0_inferred__0/i__carry__6_n_2\,
      CO(0) => \result_internal0_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a(30 downto 28),
      O(3) => p_1_in,
      O(2) => \result_internal0_inferred__0/i__carry__6_n_5\,
      O(1) => \result_internal0_inferred__0/i__carry__6_n_6\,
      O(0) => \result_internal0_inferred__0/i__carry__6_n_7\,
      S(3) => \i__carry__6_i_1_n_0\,
      S(2) => \i__carry__6_i_2_n_0\,
      S(1) => \i__carry__6_i_3_n_0\,
      S(0) => \i__carry__6_i_4_n_0\
    );
\result_internal0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_internal0_inferred__1/i__carry_n_0\,
      CO(2) => \result_internal0_inferred__1/i__carry_n_1\,
      CO(1) => \result_internal0_inferred__1/i__carry_n_2\,
      CO(0) => \result_internal0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__3_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__3_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__3_n_0\,
      S(2) => \i__carry_i_6__3_n_0\,
      S(1) => \i__carry_i_7__3_n_0\,
      S(0) => \i__carry_i_8__3_n_0\
    );
\result_internal0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__1/i__carry_n_0\,
      CO(3) => \result_internal0_inferred__1/i__carry__0_n_0\,
      CO(2) => \result_internal0_inferred__1/i__carry__0_n_1\,
      CO(1) => \result_internal0_inferred__1/i__carry__0_n_2\,
      CO(0) => \result_internal0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\result_internal0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__1/i__carry__0_n_0\,
      CO(3) => \result_internal0_inferred__1/i__carry__1_n_0\,
      CO(2) => \result_internal0_inferred__1/i__carry__1_n_1\,
      CO(1) => \result_internal0_inferred__1/i__carry__1_n_2\,
      CO(0) => \result_internal0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__1/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\result_internal0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__1/i__carry__1_n_0\,
      CO(3) => data2,
      CO(2) => \result_internal0_inferred__1/i__carry__2_n_1\,
      CO(1) => \result_internal0_inferred__1/i__carry__2_n_2\,
      CO(0) => \result_internal0_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__1/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\result_internal0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_internal0_inferred__2/i__carry_n_0\,
      CO(2) => \result_internal0_inferred__2/i__carry_n_1\,
      CO(1) => \result_internal0_inferred__2/i__carry_n_2\,
      CO(0) => \result_internal0_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\result_internal0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__2/i__carry_n_0\,
      CO(3) => \result_internal0_inferred__2/i__carry__0_n_0\,
      CO(2) => \result_internal0_inferred__2/i__carry__0_n_1\,
      CO(1) => \result_internal0_inferred__2/i__carry__0_n_2\,
      CO(0) => \result_internal0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\result_internal0_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__2/i__carry__0_n_0\,
      CO(3) => \result_internal0_inferred__2/i__carry__1_n_0\,
      CO(2) => \result_internal0_inferred__2/i__carry__1_n_1\,
      CO(1) => \result_internal0_inferred__2/i__carry__1_n_2\,
      CO(0) => \result_internal0_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\result_internal0_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_internal0_inferred__2/i__carry__1_n_0\,
      CO(3) => data3,
      CO(2) => \result_internal0_inferred__2/i__carry__2_n_1\,
      CO(1) => \result_internal0_inferred__2/i__carry__2_n_2\,
      CO(0) => \result_internal0_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__2_n_0\,
      O(3 downto 0) => \NLW_result_internal0_inferred__2/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__2_n_0\,
      S(2) => \i__carry_i_6__2_n_0\,
      S(1) => \i__carry_i_7__2_n_0\,
      S(0) => \i__carry_i_8__2_n_0\
    );
zero_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^result\(31),
      I1 => zero_INST_0_i_1_n_0,
      I2 => zero_INST_0_i_2_n_0,
      I3 => zero_INST_0_i_3_n_0,
      I4 => zero_INST_0_i_4_n_0,
      I5 => zero_INST_0_i_5_n_0,
      O => zero
    );
zero_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => zero_INST_0_i_6_n_0,
      I1 => \^result\(29),
      I2 => \^result\(28),
      I3 => \^result\(26),
      I4 => \^result\(25),
      I5 => \^result\(30),
      O => zero_INST_0_i_1_n_0
    );
zero_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \^result\(10),
      I1 => \^result\(11),
      I2 => \^result\(9),
      I3 => \^result\(7),
      I4 => \^result\(8),
      I5 => \^result\(6),
      O => zero_INST_0_i_10_n_0
    );
zero_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080A"
    )
        port map (
      I0 => zero_INST_0_i_7_n_0,
      I1 => \^result\(28),
      I2 => \^result\(29),
      I3 => \^result\(27),
      O => zero_INST_0_i_2_n_0
    );
zero_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080A"
    )
        port map (
      I0 => zero_INST_0_i_8_n_0,
      I1 => \^result\(19),
      I2 => \^result\(20),
      I3 => \^result\(18),
      O => zero_INST_0_i_3_n_0
    );
zero_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^result\(3),
      I1 => \^result\(0),
      I2 => \^result\(17),
      I3 => \^result\(5),
      I4 => \^result\(1),
      I5 => \^result\(4),
      O => zero_INST_0_i_4_n_0
    );
zero_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => zero_INST_0_i_9_n_0,
      I1 => \^result\(7),
      I2 => \^result\(2),
      I3 => \^result\(10),
      I4 => \^result\(8),
      I5 => zero_INST_0_i_10_n_0,
      O => zero_INST_0_i_5_n_0
    );
zero_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result\(20),
      I1 => \^result\(19),
      I2 => \^result\(23),
      I3 => \^result\(22),
      O => zero_INST_0_i_6_n_0
    );
zero_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \^result\(25),
      I1 => \^result\(26),
      I2 => \^result\(24),
      I3 => \^result\(22),
      I4 => \^result\(23),
      I5 => \^result\(21),
      O => zero_INST_0_i_7_n_0
    );
zero_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \^result\(16),
      I1 => \^result\(17),
      I2 => \^result\(15),
      I3 => \^result\(13),
      I4 => \^result\(14),
      I5 => \^result\(12),
      O => zero_INST_0_i_8_n_0
    );
zero_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^result\(16),
      I1 => \^result\(14),
      I2 => \^result\(13),
      I3 => \^result\(11),
      O => zero_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_alu_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    invalid_op : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_alu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_alu_0_0 : entity is "top_alu_0_0,alu,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_alu_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_alu_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_alu_0_0 : entity is "alu,Vivado 2025.1";
end top_alu_0_0;

architecture STRUCTURE of top_alu_0_0 is
begin
U0: entity work.top_alu_0_0_alu
     port map (
      a(31 downto 0) => a(31 downto 0),
      alu_op(3 downto 0) => alu_op(3 downto 0),
      b(31 downto 0) => b(31 downto 0),
      overflow => overflow,
      result(31 downto 0) => result(31 downto 0),
      zero => zero
    );
invalid_op_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => alu_op(3),
      I1 => alu_op(2),
      I2 => alu_op(1),
      O => invalid_op
    );
end STRUCTURE;
