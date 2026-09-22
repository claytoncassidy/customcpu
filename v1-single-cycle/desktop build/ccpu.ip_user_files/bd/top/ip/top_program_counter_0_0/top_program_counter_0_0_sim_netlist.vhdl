-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:41 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_program_counter_0_0/top_program_counter_0_0_sim_netlist.vhdl}
-- Design      : top_program_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_program_counter_0_0_program_counter is
  port (
    curr_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC;
    next_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_program_counter_0_0_program_counter : entity is "program_counter";
end top_program_counter_0_0_program_counter;

architecture STRUCTURE of top_program_counter_0_0_program_counter is
begin
\curr_addr_internal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(0),
      Q => curr_addr(0),
      R => reset
    );
\curr_addr_internal_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(10),
      Q => curr_addr(10),
      R => reset
    );
\curr_addr_internal_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(11),
      Q => curr_addr(11),
      R => reset
    );
\curr_addr_internal_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(12),
      Q => curr_addr(12),
      R => reset
    );
\curr_addr_internal_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(13),
      Q => curr_addr(13),
      R => reset
    );
\curr_addr_internal_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(14),
      Q => curr_addr(14),
      R => reset
    );
\curr_addr_internal_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(15),
      Q => curr_addr(15),
      R => reset
    );
\curr_addr_internal_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(16),
      Q => curr_addr(16),
      R => reset
    );
\curr_addr_internal_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(17),
      Q => curr_addr(17),
      R => reset
    );
\curr_addr_internal_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(18),
      Q => curr_addr(18),
      R => reset
    );
\curr_addr_internal_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(19),
      Q => curr_addr(19),
      R => reset
    );
\curr_addr_internal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(1),
      Q => curr_addr(1),
      R => reset
    );
\curr_addr_internal_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(20),
      Q => curr_addr(20),
      R => reset
    );
\curr_addr_internal_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(21),
      Q => curr_addr(21),
      R => reset
    );
\curr_addr_internal_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(22),
      Q => curr_addr(22),
      R => reset
    );
\curr_addr_internal_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(23),
      Q => curr_addr(23),
      R => reset
    );
\curr_addr_internal_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(24),
      Q => curr_addr(24),
      R => reset
    );
\curr_addr_internal_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(25),
      Q => curr_addr(25),
      R => reset
    );
\curr_addr_internal_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(26),
      Q => curr_addr(26),
      R => reset
    );
\curr_addr_internal_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(27),
      Q => curr_addr(27),
      R => reset
    );
\curr_addr_internal_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(28),
      Q => curr_addr(28),
      R => reset
    );
\curr_addr_internal_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(29),
      Q => curr_addr(29),
      R => reset
    );
\curr_addr_internal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(2),
      Q => curr_addr(2),
      R => reset
    );
\curr_addr_internal_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(30),
      Q => curr_addr(30),
      R => reset
    );
\curr_addr_internal_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(31),
      Q => curr_addr(31),
      R => reset
    );
\curr_addr_internal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(3),
      Q => curr_addr(3),
      R => reset
    );
\curr_addr_internal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(4),
      Q => curr_addr(4),
      R => reset
    );
\curr_addr_internal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(5),
      Q => curr_addr(5),
      R => reset
    );
\curr_addr_internal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(6),
      Q => curr_addr(6),
      R => reset
    );
\curr_addr_internal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(7),
      Q => curr_addr(7),
      R => reset
    );
\curr_addr_internal_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(8),
      Q => curr_addr(8),
      R => reset
    );
\curr_addr_internal_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_addr(9),
      Q => curr_addr(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_program_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    next_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    curr_addr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_program_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_program_counter_0_0 : entity is "top_program_counter_0_0,program_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_program_counter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_program_counter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_program_counter_0_0 : entity is "program_counter,Vivado 2025.1";
end top_program_counter_0_0;

architecture STRUCTURE of top_program_counter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clk_0, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_mode of reset : signal is "slave reset";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.top_program_counter_0_0_program_counter
     port map (
      clk => clk,
      curr_addr(31 downto 0) => curr_addr(31 downto 0),
      next_addr(31 downto 0) => next_addr(31 downto 0),
      reset => reset
    );
end STRUCTURE;
