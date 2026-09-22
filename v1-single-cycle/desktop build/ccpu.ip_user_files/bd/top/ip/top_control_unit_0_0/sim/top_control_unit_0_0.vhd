-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:control_unit:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_control_unit_0_0 IS
  PORT (
    instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    alu_zero : IN STD_LOGIC;
    reg_write : OUT STD_LOGIC;
    mem_write : OUT STD_LOGIC;
    alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    alu_a_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    alu_b_sel : OUT STD_LOGIC;
    wb_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    pc_src_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    mem_size : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    load_unsigned : OUT STD_LOGIC
  );
END top_control_unit_0_0;

ARCHITECTURE top_control_unit_0_0_arch OF top_control_unit_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_control_unit_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT control_unit IS
    PORT (
      instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      alu_zero : IN STD_LOGIC;
      reg_write : OUT STD_LOGIC;
      mem_write : OUT STD_LOGIC;
      alu_op : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      alu_a_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      alu_b_sel : OUT STD_LOGIC;
      wb_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      pc_src_sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      mem_size : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      load_unsigned : OUT STD_LOGIC
    );
  END COMPONENT control_unit;
BEGIN
  U0 : control_unit
    PORT MAP (
      instruction => instruction,
      alu_zero => alu_zero,
      reg_write => reg_write,
      mem_write => mem_write,
      alu_op => alu_op,
      alu_a_sel => alu_a_sel,
      alu_b_sel => alu_b_sel,
      wb_sel => wb_sel,
      pc_src_sel => pc_src_sel,
      mem_size => mem_size,
      load_unsigned => load_unsigned
    );
END top_control_unit_0_0_arch;
