--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
--Date        : Mon Sep 21 23:32:32 2026
--Host        : claytonsPC running 64-bit major release  (build 9200)
--Command     : generate_target top.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top : entity is "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top : entity is "top.hwdef";
end top;

architecture STRUCTURE of top is
  component top_program_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    next_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    curr_addr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_program_counter_0_0;
  component top_pc_plus_4_0_0 is
  port (
    pc_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_pc_plus_4_0_0;
  component top_instruction_memory_0_0 is
  port (
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_instruction_memory_0_0;
  component top_control_unit_0_0 is
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
  end component top_control_unit_0_0;
  component top_register_file_0_0 is
  port (
    clk : in STD_LOGIC;
    read_addr1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    read_addr2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_enable : in STD_LOGIC;
    reset : in STD_LOGIC;
    data1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_register_file_0_0;
  component top_alu_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    invalid_op : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  end component top_alu_0_0;
  component top_data_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_enable : in STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component top_data_memory_0_0;
  component top_alu_a_mux_0_0 is
  port (
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_a_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_a : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_alu_a_mux_0_0;
  component top_alu_b_mux_0_0 is
  port (
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_b_sel : in STD_LOGIC;
    alu_b : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_alu_b_mux_0_0;
  component top_branch_adder_0_0 is
  port (
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    target : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_branch_adder_0_0;
  component top_pc_src_mux_0_0 is
  port (
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    jalr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_src_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_src : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_pc_src_mux_0_0;
  component top_sign_extender_0_0 is
  port (
    instruction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_sign_extender_0_0;
  component top_writeback_mux_0_0 is
  port (
    alu : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    writeback : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_writeback_mux_0_0;
  component top_load_extender_0_0 is
  port (
    raw_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_unsigned : in STD_LOGIC;
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_load_extender_0_0;
  signal alu_0_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_0_zero : STD_LOGIC;
  signal alu_a_mux_0_alu_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_b_mux_0_alu_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal branch_adder_0_target : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_unit_0_alu_a_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_unit_0_alu_b_sel : STD_LOGIC;
  signal control_unit_0_alu_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_unit_0_load_unsigned : STD_LOGIC;
  signal control_unit_0_mem_size : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_unit_0_mem_write : STD_LOGIC;
  signal control_unit_0_pc_src_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_unit_0_reg_write : STD_LOGIC;
  signal control_unit_0_wb_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_memory_0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ilslice_0_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ilslice_1_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ilslice_2_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal instruction_memory_0_instruction : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal load_extender_0_extended : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc_plus_4_0_pc_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc_src_mux_0_pc_src : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal program_counter_0_curr_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register_file_0_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register_file_0_data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sign_extender_0_extended : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^writebackout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_alu_0_invalid_op_UNCONNECTED : STD_LOGIC;
  signal NLW_alu_0_overflow_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN top_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of writebackOUT : signal is "xilinx.com:signal:data:1.0 DATA.WRITEBACKOUT DATA";
  attribute X_INTERFACE_PARAMETER of writebackOUT : signal is "XIL_INTERFACENAME DATA.WRITEBACKOUT, LAYERED_METADATA undef";
begin
  writebackOUT(31 downto 0) <= \^writebackout\(31 downto 0);
alu_0: component top_alu_0_0
     port map (
      a(31 downto 0) => alu_a_mux_0_alu_a(31 downto 0),
      alu_op(3 downto 0) => control_unit_0_alu_op(3 downto 0),
      b(31 downto 0) => alu_b_mux_0_alu_b(31 downto 0),
      invalid_op => NLW_alu_0_invalid_op_UNCONNECTED,
      overflow => NLW_alu_0_overflow_UNCONNECTED,
      result(31 downto 0) => alu_0_result(31 downto 0),
      zero => alu_0_zero
    );
alu_a_mux_0: component top_alu_a_mux_0_0
     port map (
      alu_a(31 downto 0) => alu_a_mux_0_alu_a(31 downto 0),
      alu_a_sel(1 downto 0) => control_unit_0_alu_a_sel(1 downto 0),
      data1(31 downto 0) => register_file_0_data1(31 downto 0),
      pc(31 downto 0) => program_counter_0_curr_addr(31 downto 0)
    );
alu_b_mux_0: component top_alu_b_mux_0_0
     port map (
      alu_b(31 downto 0) => alu_b_mux_0_alu_b(31 downto 0),
      alu_b_sel => control_unit_0_alu_b_sel,
      data2(31 downto 0) => register_file_0_data2(31 downto 0),
      immediate(31 downto 0) => sign_extender_0_extended(31 downto 0)
    );
branch_adder_0: component top_branch_adder_0_0
     port map (
      immediate(31 downto 0) => sign_extender_0_extended(31 downto 0),
      pc(31 downto 0) => program_counter_0_curr_addr(31 downto 0),
      target(31 downto 0) => branch_adder_0_target(31 downto 0)
    );
control_unit_0: component top_control_unit_0_0
     port map (
      alu_a_sel(1 downto 0) => control_unit_0_alu_a_sel(1 downto 0),
      alu_b_sel => control_unit_0_alu_b_sel,
      alu_op(3 downto 0) => control_unit_0_alu_op(3 downto 0),
      alu_zero => alu_0_zero,
      instruction(31 downto 0) => instruction_memory_0_instruction(31 downto 0),
      load_unsigned => control_unit_0_load_unsigned,
      mem_size(1 downto 0) => control_unit_0_mem_size(1 downto 0),
      mem_write => control_unit_0_mem_write,
      pc_src_sel(1 downto 0) => control_unit_0_pc_src_sel(1 downto 0),
      reg_write => control_unit_0_reg_write,
      wb_sel(1 downto 0) => control_unit_0_wb_sel(1 downto 0)
    );
data_memory_0: component top_data_memory_0_0
     port map (
      address(31 downto 0) => alu_0_result(31 downto 0),
      clk => clk_0,
      data(31 downto 0) => data_memory_0_data(31 downto 0),
      mem_size(1 downto 0) => control_unit_0_mem_size(1 downto 0),
      write_data(31 downto 0) => register_file_0_data2(31 downto 0),
      write_enable => control_unit_0_mem_write
    );
  ilslice_0_Dout <= instruction_memory_0_instruction(19 downto 15);
  ilslice_1_Dout <= instruction_memory_0_instruction(24 downto 20);
  ilslice_2_Dout <= instruction_memory_0_instruction(11 downto 7);
instruction_memory_0: component top_instruction_memory_0_0
     port map (
      address(31 downto 0) => program_counter_0_curr_addr(31 downto 0),
      instruction(31 downto 0) => instruction_memory_0_instruction(31 downto 0)
    );
load_extender_0: component top_load_extender_0_0
     port map (
      extended(31 downto 0) => load_extender_0_extended(31 downto 0),
      load_unsigned => control_unit_0_load_unsigned,
      mem_size(1 downto 0) => control_unit_0_mem_size(1 downto 0),
      raw_data(31 downto 0) => data_memory_0_data(31 downto 0)
    );
pc_plus_4_0: component top_pc_plus_4_0_0
     port map (
      pc_in(31 downto 0) => program_counter_0_curr_addr(31 downto 0),
      pc_out(31 downto 0) => pc_plus_4_0_pc_out(31 downto 0)
    );
pc_src_mux_0: component top_pc_src_mux_0_0
     port map (
      branch(31 downto 0) => branch_adder_0_target(31 downto 0),
      jalr(31 downto 0) => alu_0_result(31 downto 0),
      pc4(31 downto 0) => pc_plus_4_0_pc_out(31 downto 0),
      pc_src(31 downto 0) => pc_src_mux_0_pc_src(31 downto 0),
      pc_src_sel(1 downto 0) => control_unit_0_pc_src_sel(1 downto 0)
    );
program_counter_0: component top_program_counter_0_0
     port map (
      clk => clk_0,
      curr_addr(31 downto 0) => program_counter_0_curr_addr(31 downto 0),
      next_addr(31 downto 0) => pc_src_mux_0_pc_src(31 downto 0),
      reset => reset_0
    );
register_file_0: component top_register_file_0_0
     port map (
      clk => clk_0,
      data1(31 downto 0) => register_file_0_data1(31 downto 0),
      data2(31 downto 0) => register_file_0_data2(31 downto 0),
      read_addr1(4 downto 0) => ilslice_0_Dout(4 downto 0),
      read_addr2(4 downto 0) => ilslice_1_Dout(4 downto 0),
      reset => reset_0,
      write_addr(4 downto 0) => ilslice_2_Dout(4 downto 0),
      write_data(31 downto 0) => \^writebackout\(31 downto 0),
      write_enable => control_unit_0_reg_write
    );
sign_extender_0: component top_sign_extender_0_0
     port map (
      extended(31 downto 0) => sign_extender_0_extended(31 downto 0),
      instruction(31 downto 0) => instruction_memory_0_instruction(31 downto 0)
    );
writeback_mux_0: component top_writeback_mux_0_0
     port map (
      alu(31 downto 0) => alu_0_result(31 downto 0),
      data(31 downto 0) => load_extender_0_extended(31 downto 0),
      pc4(31 downto 0) => pc_plus_4_0_pc_out(31 downto 0),
      wb_sel(1 downto 0) => control_unit_0_wb_sel(1 downto 0),
      writeback(31 downto 0) => \^writebackout\(31 downto 0)
    );
end STRUCTURE;
