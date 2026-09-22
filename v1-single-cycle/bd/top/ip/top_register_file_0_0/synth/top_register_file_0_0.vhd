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

-- IP VLNV: xilinx.com:module_ref:register_file:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_register_file_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    read_addr1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    read_addr2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    write_addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    write_enable : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    data1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    data2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END top_register_file_0_0;

ARCHITECTURE top_register_file_0_0_arch OF top_register_file_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_register_file_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT register_file IS
    PORT (
      clk : IN STD_LOGIC;
      read_addr1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      read_addr2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      write_addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      write_enable : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      data1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      data2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT register_file;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF top_register_file_0_0_arch: ARCHITECTURE IS "register_file,Vivado 2025.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF top_register_file_0_0_arch : ARCHITECTURE IS "top_register_file_0_0,register_file,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF top_register_file_0_0_arch: ARCHITECTURE IS "top_register_file_0_0,register_file,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=register_file,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_register_file_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF clk: SIGNAL IS "slave clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clk_0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_MODE OF reset: SIGNAL IS "slave reset";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
BEGIN
  U0 : register_file
    PORT MAP (
      clk => clk,
      read_addr1 => read_addr1,
      read_addr2 => read_addr2,
      write_addr => write_addr,
      write_data => write_data,
      write_enable => write_enable,
      reset => reset,
      data1 => data1,
      data2 => data2
    );
END top_register_file_0_0_arch;
