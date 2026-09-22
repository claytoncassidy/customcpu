-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Tue Sep 22 00:46:37 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_top_wrapper_0_0/board_top_top_wrapper_0_0_sim_netlist.vhdl}
-- Design      : board_top_top_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_top_wrapper_0_0_top is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of board_top_top_wrapper_0_0_top : entity is "top";
  attribute hw_handoff : string;
  attribute hw_handoff of board_top_top_wrapper_0_0_top : entity is "top.hwdef";
end board_top_top_wrapper_0_0_top;

architecture STRUCTURE of board_top_top_wrapper_0_0_top is
  component board_top_top_wrapper_0_0_top_alu_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op : in STD_LOGIC_VECTOR ( 3 downto 0 );
    result : out STD_LOGIC_VECTOR ( 31 downto 0 );
    zero : out STD_LOGIC;
    invalid_op : out STD_LOGIC;
    overflow : out STD_LOGIC
  );
  end component board_top_top_wrapper_0_0_top_alu_0_0;
  component board_top_top_wrapper_0_0_top_alu_a_mux_0_0 is
  port (
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_a_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_a : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_alu_a_mux_0_0;
  component board_top_top_wrapper_0_0_top_alu_b_mux_0_0 is
  port (
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_b_sel : in STD_LOGIC;
    alu_b : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_alu_b_mux_0_0;
  component board_top_top_wrapper_0_0_top_branch_adder_0_0 is
  port (
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    immediate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    target : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_branch_adder_0_0;
  component board_top_top_wrapper_0_0_top_control_unit_0_0 is
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
  end component board_top_top_wrapper_0_0_top_control_unit_0_0;
  component board_top_top_wrapper_0_0_top_data_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_enable : in STD_LOGIC;
    write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_data_memory_0_0;
  component board_top_top_wrapper_0_0_top_instruction_memory_0_0 is
  port (
    address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_instruction_memory_0_0;
  component board_top_top_wrapper_0_0_top_load_extender_0_0 is
  port (
    raw_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_unsigned : in STD_LOGIC;
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_load_extender_0_0;
  component board_top_top_wrapper_0_0_top_pc_plus_4_0_0 is
  port (
    pc_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_pc_plus_4_0_0;
  component board_top_top_wrapper_0_0_top_pc_src_mux_0_0 is
  port (
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    branch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    jalr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_src_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_src : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_pc_src_mux_0_0;
  component board_top_top_wrapper_0_0_top_program_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    next_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    curr_addr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_program_counter_0_0;
  component board_top_top_wrapper_0_0_top_register_file_0_0 is
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
  end component board_top_top_wrapper_0_0_top_register_file_0_0;
  component board_top_top_wrapper_0_0_top_sign_extender_0_0 is
  port (
    instruction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    extended : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_sign_extender_0_0;
  component board_top_top_wrapper_0_0_top_writeback_mux_0_0 is
  port (
    alu : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    writeback : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component board_top_top_wrapper_0_0_top_writeback_mux_0_0;
  signal alu_0_result_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_0_zero : STD_LOGIC;
  signal alu_a_mux_0_alu_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal alu_b_mux_0_alu_b : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal branch_adder_0_target : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal control_unit_0_alu_a_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_unit_0_alu_b_sel : STD_LOGIC;
  signal control_unit_0_alu_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal control_unit_0_load_unsigned : STD_LOGIC;
  signal control_unit_0_mem_size_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_unit_0_mem_write : STD_LOGIC;
  signal control_unit_0_pc_src_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal control_unit_0_reg_write : STD_LOGIC;
  signal control_unit_0_wb_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_memory_0_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ilslice_0_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ilslice_1_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ilslice_2_Dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal immediate : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal instruction_memory_0_n_0 : STD_LOGIC;
  signal instruction_memory_0_n_1 : STD_LOGIC;
  signal instruction_memory_0_n_17 : STD_LOGIC;
  signal instruction_memory_0_n_18 : STD_LOGIC;
  signal instruction_memory_0_n_19 : STD_LOGIC;
  signal instruction_memory_0_n_2 : STD_LOGIC;
  signal instruction_memory_0_n_25 : STD_LOGIC;
  signal instruction_memory_0_n_26 : STD_LOGIC;
  signal instruction_memory_0_n_27 : STD_LOGIC;
  signal instruction_memory_0_n_28 : STD_LOGIC;
  signal instruction_memory_0_n_29 : STD_LOGIC;
  signal instruction_memory_0_n_3 : STD_LOGIC;
  signal instruction_memory_0_n_30 : STD_LOGIC;
  signal instruction_memory_0_n_31 : STD_LOGIC;
  signal instruction_memory_0_n_4 : STD_LOGIC;
  signal instruction_memory_0_n_5 : STD_LOGIC;
  signal instruction_memory_0_n_6 : STD_LOGIC;
  signal load_extender_0_extended : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc_plus_4_0_pc_out_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pc_src_mux_0_pc_src : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal register_file_0_data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^writebackout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_alu_0_invalid_op_UNCONNECTED : STD_LOGIC;
  signal NLW_alu_0_overflow_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of alu_0 : label is "top_alu_0_0,alu,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of alu_0 : label is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of alu_0 : label is "module_ref";
  attribute syn_black_box : string;
  attribute syn_black_box of alu_0 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of alu_0 : label is "alu,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of alu_a_mux_0 : label is "top_alu_a_mux_0_0,alu_a_mux,{}";
  attribute downgradeipidentifiedwarnings of alu_a_mux_0 : label is "yes";
  attribute ip_definition_source of alu_a_mux_0 : label is "module_ref";
  attribute syn_black_box of alu_a_mux_0 : label is "TRUE";
  attribute x_core_info of alu_a_mux_0 : label is "alu_a_mux,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of alu_b_mux_0 : label is "top_alu_b_mux_0_0,alu_b_mux,{}";
  attribute downgradeipidentifiedwarnings of alu_b_mux_0 : label is "yes";
  attribute ip_definition_source of alu_b_mux_0 : label is "module_ref";
  attribute syn_black_box of alu_b_mux_0 : label is "TRUE";
  attribute x_core_info of alu_b_mux_0 : label is "alu_b_mux,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of branch_adder_0 : label is "top_branch_adder_0_0,branch_adder,{}";
  attribute downgradeipidentifiedwarnings of branch_adder_0 : label is "yes";
  attribute ip_definition_source of branch_adder_0 : label is "module_ref";
  attribute syn_black_box of branch_adder_0 : label is "TRUE";
  attribute x_core_info of branch_adder_0 : label is "branch_adder,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of control_unit_0 : label is "top_control_unit_0_0,control_unit,{}";
  attribute downgradeipidentifiedwarnings of control_unit_0 : label is "yes";
  attribute ip_definition_source of control_unit_0 : label is "module_ref";
  attribute syn_black_box of control_unit_0 : label is "TRUE";
  attribute x_core_info of control_unit_0 : label is "control_unit,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of data_memory_0 : label is "top_data_memory_0_0,data_memory,{}";
  attribute downgradeipidentifiedwarnings of data_memory_0 : label is "yes";
  attribute ip_definition_source of data_memory_0 : label is "module_ref";
  attribute syn_black_box of data_memory_0 : label is "TRUE";
  attribute x_core_info of data_memory_0 : label is "data_memory,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of instruction_memory_0 : label is "top_instruction_memory_0_0,instruction_memory,{}";
  attribute downgradeipidentifiedwarnings of instruction_memory_0 : label is "yes";
  attribute ip_definition_source of instruction_memory_0 : label is "module_ref";
  attribute syn_black_box of instruction_memory_0 : label is "TRUE";
  attribute x_core_info of instruction_memory_0 : label is "instruction_memory,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of load_extender_0 : label is "top_load_extender_0_0,load_extender,{}";
  attribute downgradeipidentifiedwarnings of load_extender_0 : label is "yes";
  attribute ip_definition_source of load_extender_0 : label is "module_ref";
  attribute syn_black_box of load_extender_0 : label is "TRUE";
  attribute x_core_info of load_extender_0 : label is "load_extender,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of pc_plus_4_0 : label is "top_pc_plus_4_0_0,pc_plus_4,{}";
  attribute downgradeipidentifiedwarnings of pc_plus_4_0 : label is "yes";
  attribute ip_definition_source of pc_plus_4_0 : label is "module_ref";
  attribute syn_black_box of pc_plus_4_0 : label is "TRUE";
  attribute x_core_info of pc_plus_4_0 : label is "pc_plus_4,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of pc_src_mux_0 : label is "top_pc_src_mux_0_0,pc_src_mux,{}";
  attribute downgradeipidentifiedwarnings of pc_src_mux_0 : label is "yes";
  attribute ip_definition_source of pc_src_mux_0 : label is "module_ref";
  attribute syn_black_box of pc_src_mux_0 : label is "TRUE";
  attribute x_core_info of pc_src_mux_0 : label is "pc_src_mux,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of program_counter_0 : label is "top_program_counter_0_0,program_counter,{}";
  attribute downgradeipidentifiedwarnings of program_counter_0 : label is "yes";
  attribute ip_definition_source of program_counter_0 : label is "module_ref";
  attribute syn_black_box of program_counter_0 : label is "TRUE";
  attribute x_core_info of program_counter_0 : label is "program_counter,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of register_file_0 : label is "top_register_file_0_0,register_file,{}";
  attribute downgradeipidentifiedwarnings of register_file_0 : label is "yes";
  attribute ip_definition_source of register_file_0 : label is "module_ref";
  attribute syn_black_box of register_file_0 : label is "TRUE";
  attribute x_core_info of register_file_0 : label is "register_file,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of sign_extender_0 : label is "top_sign_extender_0_0,sign_extender,{}";
  attribute downgradeipidentifiedwarnings of sign_extender_0 : label is "yes";
  attribute ip_definition_source of sign_extender_0 : label is "module_ref";
  attribute syn_black_box of sign_extender_0 : label is "TRUE";
  attribute x_core_info of sign_extender_0 : label is "sign_extender,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of writeback_mux_0 : label is "top_writeback_mux_0_0,writeback_mux,{}";
  attribute downgradeipidentifiedwarnings of writeback_mux_0 : label is "yes";
  attribute ip_definition_source of writeback_mux_0 : label is "module_ref";
  attribute syn_black_box of writeback_mux_0 : label is "TRUE";
  attribute x_core_info of writeback_mux_0 : label is "writeback_mux,Vivado 2025.1";
  attribute x_interface_info : string;
  attribute x_interface_info of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN top_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute x_interface_parameter of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of writebackOUT : signal is "xilinx.com:signal:data:1.0 DATA.WRITEBACKOUT DATA";
  attribute x_interface_parameter of writebackOUT : signal is "XIL_INTERFACENAME DATA.WRITEBACKOUT, LAYERED_METADATA undef";
begin
  writebackOUT(31 downto 0) <= \^writebackout\(31 downto 0);
alu_0: component board_top_top_wrapper_0_0_top_alu_0_0
     port map (
      a(31 downto 0) => alu_a_mux_0_alu_a(31 downto 0),
      alu_op(3 downto 0) => control_unit_0_alu_op(3 downto 0),
      b(31 downto 0) => alu_b_mux_0_alu_b(31 downto 0),
      invalid_op => NLW_alu_0_invalid_op_UNCONNECTED,
      overflow => NLW_alu_0_overflow_UNCONNECTED,
      result(31 downto 0) => alu_0_result_0(31 downto 0),
      zero => alu_0_zero
    );
alu_a_mux_0: component board_top_top_wrapper_0_0_top_alu_a_mux_0_0
     port map (
      alu_a(31 downto 0) => alu_a_mux_0_alu_a(31 downto 0),
      alu_a_sel(1 downto 0) => control_unit_0_alu_a_sel(1 downto 0),
      data1(31 downto 0) => register_file_0_data1(31 downto 0),
      pc(31 downto 0) => pc(31 downto 0)
    );
alu_b_mux_0: component board_top_top_wrapper_0_0_top_alu_b_mux_0_0
     port map (
      alu_b(31 downto 0) => alu_b_mux_0_alu_b(31 downto 0),
      alu_b_sel => control_unit_0_alu_b_sel,
      data2(31 downto 0) => data2(31 downto 0),
      immediate(31 downto 0) => immediate(31 downto 0)
    );
branch_adder_0: component board_top_top_wrapper_0_0_top_branch_adder_0_0
     port map (
      immediate(31 downto 0) => immediate(31 downto 0),
      pc(31 downto 0) => pc(31 downto 0),
      target(31 downto 0) => branch_adder_0_target(31 downto 0)
    );
control_unit_0: component board_top_top_wrapper_0_0_top_control_unit_0_0
     port map (
      alu_a_sel(1 downto 0) => control_unit_0_alu_a_sel(1 downto 0),
      alu_b_sel => control_unit_0_alu_b_sel,
      alu_op(3 downto 0) => control_unit_0_alu_op(3 downto 0),
      alu_zero => alu_0_zero,
      instruction(31) => instruction_memory_0_n_0,
      instruction(30) => instruction_memory_0_n_1,
      instruction(29) => instruction_memory_0_n_2,
      instruction(28) => instruction_memory_0_n_3,
      instruction(27) => instruction_memory_0_n_4,
      instruction(26) => instruction_memory_0_n_5,
      instruction(25) => instruction_memory_0_n_6,
      instruction(24 downto 20) => ilslice_1_Dout(4 downto 0),
      instruction(19 downto 15) => ilslice_0_Dout(4 downto 0),
      instruction(14) => instruction_memory_0_n_17,
      instruction(13) => instruction_memory_0_n_18,
      instruction(12) => instruction_memory_0_n_19,
      instruction(11 downto 7) => ilslice_2_Dout(4 downto 0),
      instruction(6) => instruction_memory_0_n_25,
      instruction(5) => instruction_memory_0_n_26,
      instruction(4) => instruction_memory_0_n_27,
      instruction(3) => instruction_memory_0_n_28,
      instruction(2) => instruction_memory_0_n_29,
      instruction(1) => instruction_memory_0_n_30,
      instruction(0) => instruction_memory_0_n_31,
      load_unsigned => control_unit_0_load_unsigned,
      mem_size(1 downto 0) => control_unit_0_mem_size_0(1 downto 0),
      mem_write => control_unit_0_mem_write,
      pc_src_sel(1 downto 0) => control_unit_0_pc_src_sel(1 downto 0),
      reg_write => control_unit_0_reg_write,
      wb_sel(1 downto 0) => control_unit_0_wb_sel(1 downto 0)
    );
data_memory_0: component board_top_top_wrapper_0_0_top_data_memory_0_0
     port map (
      address(31 downto 0) => alu_0_result_0(31 downto 0),
      clk => clk_0,
      data(31 downto 0) => data_memory_0_data(31 downto 0),
      mem_size(1 downto 0) => control_unit_0_mem_size_0(1 downto 0),
      write_data(31 downto 0) => data2(31 downto 0),
      write_enable => control_unit_0_mem_write
    );
instruction_memory_0: component board_top_top_wrapper_0_0_top_instruction_memory_0_0
     port map (
      address(31 downto 0) => pc(31 downto 0),
      instruction(31) => instruction_memory_0_n_0,
      instruction(30) => instruction_memory_0_n_1,
      instruction(29) => instruction_memory_0_n_2,
      instruction(28) => instruction_memory_0_n_3,
      instruction(27) => instruction_memory_0_n_4,
      instruction(26) => instruction_memory_0_n_5,
      instruction(25) => instruction_memory_0_n_6,
      instruction(24 downto 20) => ilslice_1_Dout(4 downto 0),
      instruction(19 downto 15) => ilslice_0_Dout(4 downto 0),
      instruction(14) => instruction_memory_0_n_17,
      instruction(13) => instruction_memory_0_n_18,
      instruction(12) => instruction_memory_0_n_19,
      instruction(11 downto 7) => ilslice_2_Dout(4 downto 0),
      instruction(6) => instruction_memory_0_n_25,
      instruction(5) => instruction_memory_0_n_26,
      instruction(4) => instruction_memory_0_n_27,
      instruction(3) => instruction_memory_0_n_28,
      instruction(2) => instruction_memory_0_n_29,
      instruction(1) => instruction_memory_0_n_30,
      instruction(0) => instruction_memory_0_n_31
    );
load_extender_0: component board_top_top_wrapper_0_0_top_load_extender_0_0
     port map (
      extended(31 downto 0) => load_extender_0_extended(31 downto 0),
      load_unsigned => control_unit_0_load_unsigned,
      mem_size(1 downto 0) => control_unit_0_mem_size_0(1 downto 0),
      raw_data(31 downto 0) => data_memory_0_data(31 downto 0)
    );
pc_plus_4_0: component board_top_top_wrapper_0_0_top_pc_plus_4_0_0
     port map (
      pc_in(31 downto 0) => pc(31 downto 0),
      pc_out(31 downto 0) => pc_plus_4_0_pc_out_0(31 downto 0)
    );
pc_src_mux_0: component board_top_top_wrapper_0_0_top_pc_src_mux_0_0
     port map (
      branch(31 downto 0) => branch_adder_0_target(31 downto 0),
      jalr(31 downto 0) => alu_0_result_0(31 downto 0),
      pc4(31 downto 0) => pc_plus_4_0_pc_out_0(31 downto 0),
      pc_src(31 downto 0) => pc_src_mux_0_pc_src(31 downto 0),
      pc_src_sel(1 downto 0) => control_unit_0_pc_src_sel(1 downto 0)
    );
program_counter_0: component board_top_top_wrapper_0_0_top_program_counter_0_0
     port map (
      clk => clk_0,
      curr_addr(31 downto 0) => pc(31 downto 0),
      next_addr(31 downto 0) => pc_src_mux_0_pc_src(31 downto 0),
      reset => reset_0
    );
register_file_0: component board_top_top_wrapper_0_0_top_register_file_0_0
     port map (
      clk => clk_0,
      data1(31 downto 0) => register_file_0_data1(31 downto 0),
      data2(31 downto 0) => data2(31 downto 0),
      read_addr1(4 downto 0) => ilslice_0_Dout(4 downto 0),
      read_addr2(4 downto 0) => ilslice_1_Dout(4 downto 0),
      reset => reset_0,
      write_addr(4 downto 0) => ilslice_2_Dout(4 downto 0),
      write_data(31 downto 0) => \^writebackout\(31 downto 0),
      write_enable => control_unit_0_reg_write
    );
sign_extender_0: component board_top_top_wrapper_0_0_top_sign_extender_0_0
     port map (
      extended(31 downto 0) => immediate(31 downto 0),
      instruction(31) => instruction_memory_0_n_0,
      instruction(30) => instruction_memory_0_n_1,
      instruction(29) => instruction_memory_0_n_2,
      instruction(28) => instruction_memory_0_n_3,
      instruction(27) => instruction_memory_0_n_4,
      instruction(26) => instruction_memory_0_n_5,
      instruction(25) => instruction_memory_0_n_6,
      instruction(24 downto 20) => ilslice_1_Dout(4 downto 0),
      instruction(19 downto 15) => ilslice_0_Dout(4 downto 0),
      instruction(14) => instruction_memory_0_n_17,
      instruction(13) => instruction_memory_0_n_18,
      instruction(12) => instruction_memory_0_n_19,
      instruction(11 downto 7) => ilslice_2_Dout(4 downto 0),
      instruction(6) => instruction_memory_0_n_25,
      instruction(5) => instruction_memory_0_n_26,
      instruction(4) => instruction_memory_0_n_27,
      instruction(3) => instruction_memory_0_n_28,
      instruction(2) => instruction_memory_0_n_29,
      instruction(1) => instruction_memory_0_n_30,
      instruction(0) => instruction_memory_0_n_31
    );
writeback_mux_0: component board_top_top_wrapper_0_0_top_writeback_mux_0_0
     port map (
      alu(31 downto 0) => alu_0_result_0(31 downto 0),
      data(31 downto 0) => load_extender_0_extended(31 downto 0),
      pc4(31 downto 0) => pc_plus_4_0_pc_out_0(31 downto 0),
      wb_sel(1 downto 0) => control_unit_0_wb_sel(1 downto 0),
      writeback(31 downto 0) => \^writebackout\(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_top_wrapper_0_0_top_wrapper is
  port (
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of board_top_top_wrapper_0_0_top_wrapper : entity is "top_wrapper";
end board_top_top_wrapper_0_0_top_wrapper;

architecture STRUCTURE of board_top_top_wrapper_0_0_top_wrapper is
  attribute hw_handoff : string;
  attribute hw_handoff of top_i : label is "top.hwdef";
begin
top_i: entity work.board_top_top_wrapper_0_0_top
     port map (
      clk_0 => clk_0,
      reset_0 => reset_0,
      writebackOUT(31 downto 0) => writebackOUT(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity board_top_top_wrapper_0_0 is
  port (
    clk_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    writebackOUT : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of board_top_top_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of board_top_top_wrapper_0_0 : entity is "board_top_top_wrapper_0_0,top_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of board_top_top_wrapper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of board_top_top_wrapper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of board_top_top_wrapper_0_0 : entity is "top_wrapper,Vivado 2025.1";
end board_top_top_wrapper_0_0;

architecture STRUCTURE of board_top_top_wrapper_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset_0 : signal is "xilinx.com:signal:reset:1.0 reset_0 RST";
  attribute x_interface_mode : string;
  attribute x_interface_mode of reset_0 : signal is "slave reset_0";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset_0 : signal is "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.board_top_top_wrapper_0_0_top_wrapper
     port map (
      clk_0 => clk_0,
      reset_0 => reset_0,
      writebackOUT(31 downto 0) => writebackOUT(31 downto 0)
    );
end STRUCTURE;
