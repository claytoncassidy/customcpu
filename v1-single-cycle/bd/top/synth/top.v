//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Sep 21 17:18:52 2026
//Host        : claytonsPC running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=17,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=14,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   (clk_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN top_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;

  wire [31:0]alu_0_result;
  wire alu_0_zero;
  wire [31:0]alu_a_mux_0_alu_a;
  wire [31:0]alu_b_mux_0_alu_b;
  wire [31:0]branch_adder_0_target;
  wire clk_0;
  wire [1:0]control_unit_0_alu_a_sel;
  wire control_unit_0_alu_b_sel;
  wire [3:0]control_unit_0_alu_op;
  wire control_unit_0_load_unsigned;
  wire [1:0]control_unit_0_mem_size;
  wire control_unit_0_mem_write;
  wire [1:0]control_unit_0_pc_src_sel;
  wire control_unit_0_reg_write;
  wire [1:0]control_unit_0_wb_sel;
  wire [31:0]data_memory_0_data;
  wire [4:0]ilslice_0_Dout;
  wire [4:0]ilslice_1_Dout;
  wire [4:0]ilslice_2_Dout;
  wire [31:0]instruction_memory_0_instruction;
  wire [31:0]load_extender_0_extended;
  wire [31:0]pc_plus_4_0_pc_out;
  wire [31:0]pc_src_mux_0_pc_src;
  wire [31:0]program_counter_0_curr_addr;
  wire [31:0]register_file_0_data1;
  wire [31:0]register_file_0_data2;
  wire reset_0;
  wire [31:0]sign_extender_0_extended;
  wire [31:0]writeback_mux_0_writeback;

  top_alu_0_0 alu_0
       (.a(alu_a_mux_0_alu_a),
        .alu_op(control_unit_0_alu_op),
        .b(alu_b_mux_0_alu_b),
        .result(alu_0_result),
        .zero(alu_0_zero));
  top_alu_a_mux_0_0 alu_a_mux_0
       (.alu_a(alu_a_mux_0_alu_a),
        .alu_a_sel(control_unit_0_alu_a_sel),
        .data1(register_file_0_data1),
        .pc(pc_plus_4_0_pc_out));
  top_alu_b_mux_0_0 alu_b_mux_0
       (.alu_b(alu_b_mux_0_alu_b),
        .alu_b_sel(control_unit_0_alu_b_sel),
        .data2(register_file_0_data2),
        .immediate(sign_extender_0_extended));
  top_branch_adder_0_0 branch_adder_0
       (.immediate(sign_extender_0_extended),
        .pc(pc_plus_4_0_pc_out),
        .target(branch_adder_0_target));
  top_control_unit_0_0 control_unit_0
       (.alu_a_sel(control_unit_0_alu_a_sel),
        .alu_b_sel(control_unit_0_alu_b_sel),
        .alu_op(control_unit_0_alu_op),
        .alu_zero(alu_0_zero),
        .instruction(instruction_memory_0_instruction),
        .load_unsigned(control_unit_0_load_unsigned),
        .mem_size(control_unit_0_mem_size),
        .mem_write(control_unit_0_mem_write),
        .pc_src_sel(control_unit_0_pc_src_sel),
        .reg_write(control_unit_0_reg_write),
        .wb_sel(control_unit_0_wb_sel));
  top_data_memory_0_0 data_memory_0
       (.address(alu_0_result),
        .clk(clk_0),
        .data(data_memory_0_data),
        .mem_size(control_unit_0_mem_size),
        .write_data(register_file_0_data2),
        .write_enable(control_unit_0_mem_write));
  assign ilslice_0_Dout = instruction_memory_0_instruction[19:15];
  assign ilslice_1_Dout = instruction_memory_0_instruction[24:20];
  assign ilslice_2_Dout = instruction_memory_0_instruction[11:7];
  top_instruction_memory_0_0 instruction_memory_0
       (.address(program_counter_0_curr_addr),
        .instruction(instruction_memory_0_instruction));
  top_load_extender_0_0 load_extender_0
       (.extended(load_extender_0_extended),
        .load_unsigned(control_unit_0_load_unsigned),
        .mem_size(control_unit_0_mem_size),
        .raw_data(data_memory_0_data));
  top_pc_plus_4_0_0 pc_plus_4_0
       (.pc_in(program_counter_0_curr_addr),
        .pc_out(pc_plus_4_0_pc_out));
  top_pc_src_mux_0_0 pc_src_mux_0
       (.branch(branch_adder_0_target),
        .jalr(alu_0_result),
        .pc4(pc_plus_4_0_pc_out),
        .pc_src(pc_src_mux_0_pc_src),
        .pc_src_sel(control_unit_0_pc_src_sel));
  top_program_counter_0_0 program_counter_0
       (.clk(clk_0),
        .curr_addr(program_counter_0_curr_addr),
        .next_addr(pc_src_mux_0_pc_src),
        .reset(reset_0));
  top_register_file_0_0 register_file_0
       (.clk(clk_0),
        .data1(register_file_0_data1),
        .data2(register_file_0_data2),
        .read_addr1(ilslice_0_Dout),
        .read_addr2(ilslice_1_Dout),
        .reset(reset_0),
        .write_addr(ilslice_2_Dout),
        .write_data(writeback_mux_0_writeback),
        .write_enable(control_unit_0_reg_write));
  top_sign_extender_0_0 sign_extender_0
       (.extended(sign_extender_0_extended),
        .instruction(instruction_memory_0_instruction));
  top_writeback_mux_0_0 writeback_mux_0
       (.alu(alu_0_result),
        .data(load_extender_0_extended),
        .pc4(pc_plus_4_0_pc_out),
        .wb_sel(control_unit_0_wb_sel),
        .writeback(writeback_mux_0_writeback));
endmodule
