-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:41 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_data_memory_0_0/top_data_memory_0_0_sim_netlist.vhdl}
-- Design      : top_data_memory_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_data_memory_0_0_data_memory is
  port (
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    address : in STD_LOGIC_VECTOR ( 9 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    write_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_data_memory_0_0_data_memory : entity is "data_memory";
end top_data_memory_0_0_data_memory;

architecture STRUCTURE of top_data_memory_0_0_data_memory is
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal p_3_in : STD_LOGIC_VECTOR ( 31 downto 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[10]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data[11]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[12]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[13]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data[24]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data[25]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data[26]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data[27]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[28]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[29]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[30]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data[31]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[8]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data[9]_INST_0\ : label is "soft_lutpair1";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_0_0 : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_0_0 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_0_0 : label is "auto";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of data_memory_registers_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of data_memory_registers_reg_0_255_0_0 : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of data_memory_registers_reg_0_255_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of data_memory_registers_reg_0_255_0_0 : label is 0;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_10_10 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_10_10 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_10_10 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_10_10 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_10_10 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_10_10 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_10_10 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_10_10 : label is 10;
  attribute ram_slice_end of data_memory_registers_reg_0_255_10_10 : label is 10;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_11_11 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_11_11 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_11_11 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_11_11 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_11_11 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_11_11 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_11_11 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_11_11 : label is 11;
  attribute ram_slice_end of data_memory_registers_reg_0_255_11_11 : label is 11;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_12_12 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_12_12 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_12_12 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_12_12 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_12_12 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_12_12 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_12_12 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_12_12 : label is 12;
  attribute ram_slice_end of data_memory_registers_reg_0_255_12_12 : label is 12;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_13_13 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_13_13 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_13_13 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_13_13 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_13_13 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_13_13 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_13_13 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_13_13 : label is 13;
  attribute ram_slice_end of data_memory_registers_reg_0_255_13_13 : label is 13;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_14_14 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_14_14 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_14_14 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_14_14 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_14_14 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_14_14 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_14_14 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_14_14 : label is 14;
  attribute ram_slice_end of data_memory_registers_reg_0_255_14_14 : label is 14;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_15_15 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_15_15 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_15_15 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_15_15 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_15_15 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_15_15 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_15_15 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_15_15 : label is 15;
  attribute ram_slice_end of data_memory_registers_reg_0_255_15_15 : label is 15;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_16_16 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_16_16 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_16_16 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_16_16 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_16_16 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_16_16 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_16_16 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_16_16 : label is 16;
  attribute ram_slice_end of data_memory_registers_reg_0_255_16_16 : label is 16;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_17_17 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_17_17 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_17_17 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_17_17 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_17_17 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_17_17 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_17_17 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_17_17 : label is 17;
  attribute ram_slice_end of data_memory_registers_reg_0_255_17_17 : label is 17;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_18_18 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_18_18 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_18_18 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_18_18 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_18_18 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_18_18 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_18_18 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_18_18 : label is 18;
  attribute ram_slice_end of data_memory_registers_reg_0_255_18_18 : label is 18;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_19_19 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_19_19 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_19_19 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_19_19 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_19_19 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_19_19 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_19_19 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_19_19 : label is 19;
  attribute ram_slice_end of data_memory_registers_reg_0_255_19_19 : label is 19;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_1_1 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_1_1 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_1_1 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_1_1 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of data_memory_registers_reg_0_255_1_1 : label is 1;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_20_20 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_20_20 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_20_20 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_20_20 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_20_20 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_20_20 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_20_20 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_20_20 : label is 20;
  attribute ram_slice_end of data_memory_registers_reg_0_255_20_20 : label is 20;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_21_21 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_21_21 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_21_21 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_21_21 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_21_21 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_21_21 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_21_21 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_21_21 : label is 21;
  attribute ram_slice_end of data_memory_registers_reg_0_255_21_21 : label is 21;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_22_22 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_22_22 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_22_22 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_22_22 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_22_22 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_22_22 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_22_22 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_22_22 : label is 22;
  attribute ram_slice_end of data_memory_registers_reg_0_255_22_22 : label is 22;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_23_23 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_23_23 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_23_23 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_23_23 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_23_23 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_23_23 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_23_23 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_23_23 : label is 23;
  attribute ram_slice_end of data_memory_registers_reg_0_255_23_23 : label is 23;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_24_24 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_24_24 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_24_24 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_24_24 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_24_24 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_24_24 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_24_24 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_24_24 : label is 24;
  attribute ram_slice_end of data_memory_registers_reg_0_255_24_24 : label is 24;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_25_25 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_25_25 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_25_25 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_25_25 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_25_25 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_25_25 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_25_25 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_25_25 : label is 25;
  attribute ram_slice_end of data_memory_registers_reg_0_255_25_25 : label is 25;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_26_26 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_26_26 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_26_26 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_26_26 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_26_26 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_26_26 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_26_26 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_26_26 : label is 26;
  attribute ram_slice_end of data_memory_registers_reg_0_255_26_26 : label is 26;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_27_27 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_27_27 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_27_27 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_27_27 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_27_27 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_27_27 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_27_27 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_27_27 : label is 27;
  attribute ram_slice_end of data_memory_registers_reg_0_255_27_27 : label is 27;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_28_28 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_28_28 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_28_28 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_28_28 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_28_28 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_28_28 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_28_28 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_28_28 : label is 28;
  attribute ram_slice_end of data_memory_registers_reg_0_255_28_28 : label is 28;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_29_29 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_29_29 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_29_29 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_29_29 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_29_29 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_29_29 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_29_29 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_29_29 : label is 29;
  attribute ram_slice_end of data_memory_registers_reg_0_255_29_29 : label is 29;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_2_2 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_2_2 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_2_2 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_2_2 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of data_memory_registers_reg_0_255_2_2 : label is 2;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_30_30 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_30_30 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_30_30 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_30_30 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_30_30 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_30_30 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_30_30 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_30_30 : label is 30;
  attribute ram_slice_end of data_memory_registers_reg_0_255_30_30 : label is 30;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_31_31 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_31_31 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_31_31 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_31_31 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_31_31 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_31_31 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_31_31 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_31_31 : label is 31;
  attribute ram_slice_end of data_memory_registers_reg_0_255_31_31 : label is 31;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_3_3 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_3_3 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_3_3 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_3_3 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of data_memory_registers_reg_0_255_3_3 : label is 3;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_4_4 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_4_4 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_4_4 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_4_4 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of data_memory_registers_reg_0_255_4_4 : label is 4;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_5_5 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_5_5 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_5_5 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_5_5 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of data_memory_registers_reg_0_255_5_5 : label is 5;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_6_6 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_6_6 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_6_6 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_6_6 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of data_memory_registers_reg_0_255_6_6 : label is 6;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_7_7 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_7_7 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_7_7 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_7_7 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of data_memory_registers_reg_0_255_7_7 : label is 7;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_8_8 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_8_8 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_8_8 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_8_8 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_8_8 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_8_8 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_8_8 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_8_8 : label is 8;
  attribute ram_slice_end of data_memory_registers_reg_0_255_8_8 : label is 8;
  attribute RTL_RAM_BITS of data_memory_registers_reg_0_255_9_9 : label is 8192;
  attribute RTL_RAM_NAME of data_memory_registers_reg_0_255_9_9 : label is "top_data_memory_0_0/U0/data_memory_registers_reg";
  attribute RTL_RAM_STYLE of data_memory_registers_reg_0_255_9_9 : label is "auto";
  attribute RTL_RAM_TYPE of data_memory_registers_reg_0_255_9_9 : label is "RAM_SP";
  attribute ram_addr_begin of data_memory_registers_reg_0_255_9_9 : label is 0;
  attribute ram_addr_end of data_memory_registers_reg_0_255_9_9 : label is 255;
  attribute ram_offset of data_memory_registers_reg_0_255_9_9 : label is 0;
  attribute ram_slice_begin of data_memory_registers_reg_0_255_9_9 : label is 9;
  attribute ram_slice_end of data_memory_registers_reg_0_255_9_9 : label is 9;
begin
\data[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(16),
      I2 => mem_size(0),
      I3 => data0(0),
      I4 => mem_size(1),
      I5 => \data[0]_INST_0_i_1_n_0\,
      O => data(0)
    );
\data[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(8),
      I1 => data0(0),
      I2 => data0(24),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(16),
      O => \data[0]_INST_0_i_1_n_0\
    );
\data[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(26),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(10),
      O => data(10)
    );
\data[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(27),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(11),
      O => data(11)
    );
\data[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(28),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(12),
      O => data(12)
    );
\data[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(29),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(13),
      O => data(13)
    );
\data[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(30),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(14),
      O => data(14)
    );
\data[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(31),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(15),
      O => data(15)
    );
\data[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(16),
      I2 => mem_size(1),
      O => data(16)
    );
\data[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(17),
      I2 => mem_size(1),
      O => data(17)
    );
\data[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(18),
      I2 => mem_size(1),
      O => data(18)
    );
\data[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(19),
      I2 => mem_size(1),
      O => data(19)
    );
\data[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(17),
      I2 => mem_size(0),
      I3 => data0(1),
      I4 => mem_size(1),
      I5 => \data[1]_INST_0_i_1_n_0\,
      O => data(1)
    );
\data[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(9),
      I1 => data0(1),
      I2 => data0(25),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(17),
      O => \data[1]_INST_0_i_1_n_0\
    );
\data[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(20),
      I2 => mem_size(1),
      O => data(20)
    );
\data[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(21),
      I2 => mem_size(1),
      O => data(21)
    );
\data[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(22),
      I2 => mem_size(1),
      O => data(22)
    );
\data[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(23),
      I2 => mem_size(1),
      O => data(23)
    );
\data[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(24),
      I2 => mem_size(1),
      O => data(24)
    );
\data[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(25),
      I2 => mem_size(1),
      O => data(25)
    );
\data[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(26),
      I2 => mem_size(1),
      O => data(26)
    );
\data[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(27),
      I2 => mem_size(1),
      O => data(27)
    );
\data[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(28),
      I2 => mem_size(1),
      O => data(28)
    );
\data[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(29),
      I2 => mem_size(1),
      O => data(29)
    );
\data[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(18),
      I2 => mem_size(0),
      I3 => data0(2),
      I4 => mem_size(1),
      I5 => \data[2]_INST_0_i_1_n_0\,
      O => data(2)
    );
\data[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(10),
      I1 => data0(2),
      I2 => data0(26),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(18),
      O => \data[2]_INST_0_i_1_n_0\
    );
\data[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(30),
      I2 => mem_size(1),
      O => data(30)
    );
\data[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mem_size(0),
      I1 => data0(31),
      I2 => mem_size(1),
      O => data(31)
    );
\data[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(19),
      I2 => mem_size(0),
      I3 => data0(3),
      I4 => mem_size(1),
      I5 => \data[3]_INST_0_i_1_n_0\,
      O => data(3)
    );
\data[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(11),
      I1 => data0(3),
      I2 => data0(27),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(19),
      O => \data[3]_INST_0_i_1_n_0\
    );
\data[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(20),
      I2 => mem_size(0),
      I3 => data0(4),
      I4 => mem_size(1),
      I5 => \data[4]_INST_0_i_1_n_0\,
      O => data(4)
    );
\data[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(12),
      I1 => data0(4),
      I2 => data0(28),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(20),
      O => \data[4]_INST_0_i_1_n_0\
    );
\data[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(21),
      I2 => mem_size(0),
      I3 => data0(5),
      I4 => mem_size(1),
      I5 => \data[5]_INST_0_i_1_n_0\,
      O => data(5)
    );
\data[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(13),
      I1 => data0(5),
      I2 => data0(29),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(21),
      O => \data[5]_INST_0_i_1_n_0\
    );
\data[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(22),
      I2 => mem_size(0),
      I3 => data0(6),
      I4 => mem_size(1),
      I5 => \data[6]_INST_0_i_1_n_0\,
      O => data(6)
    );
\data[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(14),
      I1 => data0(6),
      I2 => data0(30),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(22),
      O => \data[6]_INST_0_i_1_n_0\
    );
\data[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF8F0F00D080"
    )
        port map (
      I0 => address(1),
      I1 => data0(23),
      I2 => mem_size(0),
      I3 => data0(7),
      I4 => mem_size(1),
      I5 => \data[7]_INST_0_i_1_n_0\,
      O => data(7)
    );
\data[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => data0(15),
      I1 => data0(7),
      I2 => data0(31),
      I3 => address(1),
      I4 => address(0),
      I5 => data0(23),
      O => \data[7]_INST_0_i_1_n_0\
    );
\data[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(24),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(8),
      O => data(8)
    );
\data[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FD00080"
    )
        port map (
      I0 => address(1),
      I1 => data0(25),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => data0(9),
      O => data(9)
    );
data_memory_registers_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(0),
      O => data0(0),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_0_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F310000"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => write_enable,
      O => p_1_in(0)
    );
data_memory_registers_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(10),
      O => data0(10),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_10_10_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(10),
      I2 => mem_size(0),
      I3 => write_data(2),
      O => p_3_in(10)
    );
data_memory_registers_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(11),
      O => data0(11),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_11_11_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(11),
      I2 => mem_size(0),
      I3 => write_data(3),
      O => p_3_in(11)
    );
data_memory_registers_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(12),
      O => data0(12),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_12_12_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(12),
      I2 => mem_size(0),
      I3 => write_data(4),
      O => p_3_in(12)
    );
data_memory_registers_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(13),
      O => data0(13),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_13_13_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(13),
      I2 => mem_size(0),
      I3 => write_data(5),
      O => p_3_in(13)
    );
data_memory_registers_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(14),
      O => data0(14),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_14_14_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(14),
      I2 => mem_size(0),
      I3 => write_data(6),
      O => p_3_in(14)
    );
data_memory_registers_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(15),
      O => data0(15),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_15_15_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(15),
      I2 => mem_size(0),
      I3 => write_data(7),
      O => p_3_in(15)
    );
data_memory_registers_reg_0_255_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(16),
      O => data0(16),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_16_16_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(16),
      I1 => mem_size(1),
      I2 => write_data(0),
      O => p_3_in(16)
    );
data_memory_registers_reg_0_255_16_16_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FA20000"
    )
        port map (
      I0 => address(1),
      I1 => address(0),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => write_enable,
      O => p_1_in(16)
    );
data_memory_registers_reg_0_255_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(17),
      O => data0(17),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_17_17_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(17),
      I1 => mem_size(1),
      I2 => write_data(1),
      O => p_3_in(17)
    );
data_memory_registers_reg_0_255_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(18),
      O => data0(18),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_18_18_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(18),
      I1 => mem_size(1),
      I2 => write_data(2),
      O => p_3_in(18)
    );
data_memory_registers_reg_0_255_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(19),
      O => data0(19),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_19_19_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(19),
      I1 => mem_size(1),
      I2 => write_data(3),
      O => p_3_in(19)
    );
data_memory_registers_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(1),
      O => data0(1),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(20),
      O => data0(20),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_20_20_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(20),
      I1 => mem_size(1),
      I2 => write_data(4),
      O => p_3_in(20)
    );
data_memory_registers_reg_0_255_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(21),
      O => data0(21),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_21_21_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(21),
      I1 => mem_size(1),
      I2 => write_data(5),
      O => p_3_in(21)
    );
data_memory_registers_reg_0_255_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(22),
      O => data0(22),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_22_22_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(22),
      I1 => mem_size(1),
      I2 => write_data(6),
      O => p_3_in(22)
    );
data_memory_registers_reg_0_255_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(23),
      O => data0(23),
      WCLK => clk,
      WE => p_1_in(16)
    );
data_memory_registers_reg_0_255_23_23_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => write_data(23),
      I1 => mem_size(1),
      I2 => write_data(7),
      O => p_3_in(23)
    );
data_memory_registers_reg_0_255_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(24),
      O => data0(24),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_24_24_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(24),
      I1 => mem_size(1),
      I2 => write_data(8),
      I3 => mem_size(0),
      I4 => write_data(0),
      O => p_3_in(24)
    );
data_memory_registers_reg_0_255_24_24_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FA80000"
    )
        port map (
      I0 => address(1),
      I1 => address(0),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => write_enable,
      O => p_1_in(24)
    );
data_memory_registers_reg_0_255_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(25),
      O => data0(25),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_25_25_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(25),
      I1 => mem_size(1),
      I2 => write_data(9),
      I3 => mem_size(0),
      I4 => write_data(1),
      O => p_3_in(25)
    );
data_memory_registers_reg_0_255_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(26),
      O => data0(26),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_26_26_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(26),
      I1 => mem_size(1),
      I2 => write_data(10),
      I3 => mem_size(0),
      I4 => write_data(2),
      O => p_3_in(26)
    );
data_memory_registers_reg_0_255_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(27),
      O => data0(27),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_27_27_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(27),
      I1 => mem_size(1),
      I2 => write_data(11),
      I3 => mem_size(0),
      I4 => write_data(3),
      O => p_3_in(27)
    );
data_memory_registers_reg_0_255_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(28),
      O => data0(28),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_28_28_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(28),
      I1 => mem_size(1),
      I2 => write_data(12),
      I3 => mem_size(0),
      I4 => write_data(4),
      O => p_3_in(28)
    );
data_memory_registers_reg_0_255_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(29),
      O => data0(29),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_29_29_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(29),
      I1 => mem_size(1),
      I2 => write_data(13),
      I3 => mem_size(0),
      I4 => write_data(5),
      O => p_3_in(29)
    );
data_memory_registers_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(2),
      O => data0(2),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(30),
      O => data0(30),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_30_30_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(30),
      I1 => mem_size(1),
      I2 => write_data(14),
      I3 => mem_size(0),
      I4 => write_data(6),
      O => p_3_in(30)
    );
data_memory_registers_reg_0_255_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(31),
      O => data0(31),
      WCLK => clk,
      WE => p_1_in(24)
    );
data_memory_registers_reg_0_255_31_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_data(31),
      I1 => mem_size(1),
      I2 => write_data(15),
      I3 => mem_size(0),
      I4 => write_data(7),
      O => p_3_in(31)
    );
data_memory_registers_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(3),
      O => data0(3),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(4),
      O => data0(4),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(5),
      O => data0(5),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(6),
      O => data0(6),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => write_data(7),
      O => data0(7),
      WCLK => clk,
      WE => p_1_in(0)
    );
data_memory_registers_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(8),
      O => data0(8),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_8_8_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(8),
      I2 => mem_size(0),
      I3 => write_data(0),
      O => p_3_in(8)
    );
data_memory_registers_reg_0_255_8_8_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F320000"
    )
        port map (
      I0 => address(0),
      I1 => address(1),
      I2 => mem_size(0),
      I3 => mem_size(1),
      I4 => write_enable,
      O => p_1_in(8)
    );
data_memory_registers_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => address(9 downto 2),
      D => p_3_in(9),
      O => data0(9),
      WCLK => clk,
      WE => p_1_in(8)
    );
data_memory_registers_reg_0_255_9_9_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => mem_size(1),
      I1 => write_data(9),
      I2 => mem_size(0),
      I3 => write_data(1),
      O => p_3_in(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_data_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_enable : in STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_data_memory_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_data_memory_0_0 : entity is "top_data_memory_0_0,data_memory,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_data_memory_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_data_memory_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_data_memory_0_0 : entity is "data_memory,Vivado 2025.1";
end top_data_memory_0_0;

architecture STRUCTURE of top_data_memory_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clk_0, INSERT_VIP 0";
begin
U0: entity work.top_data_memory_0_0_data_memory
     port map (
      address(9 downto 0) => address(9 downto 0),
      clk => clk,
      data(31 downto 0) => data(31 downto 0),
      mem_size(1 downto 0) => mem_size(1 downto 0),
      write_data(31 downto 0) => write_data(31 downto 0),
      write_enable => write_enable
    );
end STRUCTURE;
