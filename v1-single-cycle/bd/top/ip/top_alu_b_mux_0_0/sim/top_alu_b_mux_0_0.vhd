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

-- IP VLNV: xilinx.com:module_ref:alu_b_mux:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_alu_b_mux_0_0 IS
  PORT (
    data2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    immediate : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    alu_b_sel : IN STD_LOGIC;
    alu_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END top_alu_b_mux_0_0;

ARCHITECTURE top_alu_b_mux_0_0_arch OF top_alu_b_mux_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_alu_b_mux_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT alu_b_mux IS
    PORT (
      data2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      immediate : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      alu_b_sel : IN STD_LOGIC;
      alu_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT alu_b_mux;
BEGIN
  U0 : alu_b_mux
    PORT MAP (
      data2 => data2,
      immediate => immediate,
      alu_b_sel => alu_b_sel,
      alu_b => alu_b
    );
END top_alu_b_mux_0_0_arch;
