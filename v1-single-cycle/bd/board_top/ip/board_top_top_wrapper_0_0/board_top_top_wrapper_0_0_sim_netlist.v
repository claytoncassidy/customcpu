// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Sep 22 00:46:37 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/board_top/ip/board_top_top_wrapper_0_0/board_top_top_wrapper_0_0_sim_netlist.v}
// Design      : board_top_top_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "board_top_top_wrapper_0_0,top_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top_wrapper,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module board_top_top_wrapper_0_0
   (clk_0,
    reset_0,
    writebackOUT);
  input clk_0;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_0 RST" *) (* x_interface_mode = "slave reset_0" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_0;
  output [31:0]writebackOUT;

  wire clk_0;
  wire reset_0;
  wire [31:0]writebackOUT;

  board_top_top_wrapper_0_0_top_wrapper U0
       (.clk_0(clk_0),
        .reset_0(reset_0),
        .writebackOUT(writebackOUT));
endmodule

(* ORIG_REF_NAME = "top" *) (* hw_handoff = "top.hwdef" *) 
module board_top_top_wrapper_0_0_top
   (clk_0,
    reset_0,
    writebackOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN top_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.WRITEBACKOUT DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.WRITEBACKOUT, LAYERED_METADATA undef" *) output [31:0]writebackOUT;

  wire [31:0]alu_0_result_0;
  wire alu_0_zero;
  wire [31:0]alu_a_mux_0_alu_a;
  wire [31:0]alu_b_mux_0_alu_b;
  wire [31:0]branch_adder_0_target;
  wire clk_0;
  wire [1:0]control_unit_0_alu_a_sel;
  wire control_unit_0_alu_b_sel;
  wire [3:0]control_unit_0_alu_op;
  wire control_unit_0_load_unsigned;
  wire [1:0]control_unit_0_mem_size_0;
  wire control_unit_0_mem_write;
  wire [1:0]control_unit_0_pc_src_sel;
  wire control_unit_0_reg_write;
  wire [1:0]control_unit_0_wb_sel;
  wire [31:0]data2;
  wire [31:0]data_memory_0_data;
  wire [4:0]ilslice_0_Dout;
  wire [4:0]ilslice_1_Dout;
  wire [4:0]ilslice_2_Dout;
  wire [31:0]immediate;
  wire instruction_memory_0_n_0;
  wire instruction_memory_0_n_1;
  wire instruction_memory_0_n_17;
  wire instruction_memory_0_n_18;
  wire instruction_memory_0_n_19;
  wire instruction_memory_0_n_2;
  wire instruction_memory_0_n_25;
  wire instruction_memory_0_n_26;
  wire instruction_memory_0_n_27;
  wire instruction_memory_0_n_28;
  wire instruction_memory_0_n_29;
  wire instruction_memory_0_n_3;
  wire instruction_memory_0_n_30;
  wire instruction_memory_0_n_31;
  wire instruction_memory_0_n_4;
  wire instruction_memory_0_n_5;
  wire instruction_memory_0_n_6;
  wire [31:0]load_extender_0_extended;
  wire [31:0]pc;
  wire [31:0]pc_plus_4_0_pc_out_0;
  wire [31:0]pc_src_mux_0_pc_src;
  wire [31:0]register_file_0_data1;
  wire reset_0;
  wire [31:0]writebackOUT;
  wire NLW_alu_0_invalid_op_UNCONNECTED;
  wire NLW_alu_0_overflow_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "top_alu_0_0,alu,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "alu,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_alu_0_0 alu_0
       (.a(alu_a_mux_0_alu_a),
        .alu_op(control_unit_0_alu_op),
        .b(alu_b_mux_0_alu_b),
        .invalid_op(NLW_alu_0_invalid_op_UNCONNECTED),
        .overflow(NLW_alu_0_overflow_UNCONNECTED),
        .result(alu_0_result_0),
        .zero(alu_0_zero));
  (* CHECK_LICENSE_TYPE = "top_alu_a_mux_0_0,alu_a_mux,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "alu_a_mux,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_alu_a_mux_0_0 alu_a_mux_0
       (.alu_a(alu_a_mux_0_alu_a),
        .alu_a_sel(control_unit_0_alu_a_sel),
        .data1(register_file_0_data1),
        .pc(pc));
  (* CHECK_LICENSE_TYPE = "top_alu_b_mux_0_0,alu_b_mux,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "alu_b_mux,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_alu_b_mux_0_0 alu_b_mux_0
       (.alu_b(alu_b_mux_0_alu_b),
        .alu_b_sel(control_unit_0_alu_b_sel),
        .data2(data2),
        .immediate(immediate));
  (* CHECK_LICENSE_TYPE = "top_branch_adder_0_0,branch_adder,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "branch_adder,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_branch_adder_0_0 branch_adder_0
       (.immediate(immediate),
        .pc(pc),
        .target(branch_adder_0_target));
  (* CHECK_LICENSE_TYPE = "top_control_unit_0_0,control_unit,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "control_unit,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_control_unit_0_0 control_unit_0
       (.alu_a_sel(control_unit_0_alu_a_sel),
        .alu_b_sel(control_unit_0_alu_b_sel),
        .alu_op(control_unit_0_alu_op),
        .alu_zero(alu_0_zero),
        .instruction({instruction_memory_0_n_0,instruction_memory_0_n_1,instruction_memory_0_n_2,instruction_memory_0_n_3,instruction_memory_0_n_4,instruction_memory_0_n_5,instruction_memory_0_n_6,ilslice_1_Dout,ilslice_0_Dout,instruction_memory_0_n_17,instruction_memory_0_n_18,instruction_memory_0_n_19,ilslice_2_Dout,instruction_memory_0_n_25,instruction_memory_0_n_26,instruction_memory_0_n_27,instruction_memory_0_n_28,instruction_memory_0_n_29,instruction_memory_0_n_30,instruction_memory_0_n_31}),
        .load_unsigned(control_unit_0_load_unsigned),
        .mem_size(control_unit_0_mem_size_0),
        .mem_write(control_unit_0_mem_write),
        .pc_src_sel(control_unit_0_pc_src_sel),
        .reg_write(control_unit_0_reg_write),
        .wb_sel(control_unit_0_wb_sel));
  (* CHECK_LICENSE_TYPE = "top_data_memory_0_0,data_memory,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "data_memory,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_data_memory_0_0 data_memory_0
       (.address(alu_0_result_0),
        .clk(clk_0),
        .data(data_memory_0_data),
        .mem_size(control_unit_0_mem_size_0),
        .write_data(data2),
        .write_enable(control_unit_0_mem_write));
  (* CHECK_LICENSE_TYPE = "top_instruction_memory_0_0,instruction_memory,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "instruction_memory,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_instruction_memory_0_0 instruction_memory_0
       (.address(pc),
        .instruction({instruction_memory_0_n_0,instruction_memory_0_n_1,instruction_memory_0_n_2,instruction_memory_0_n_3,instruction_memory_0_n_4,instruction_memory_0_n_5,instruction_memory_0_n_6,ilslice_1_Dout,ilslice_0_Dout,instruction_memory_0_n_17,instruction_memory_0_n_18,instruction_memory_0_n_19,ilslice_2_Dout,instruction_memory_0_n_25,instruction_memory_0_n_26,instruction_memory_0_n_27,instruction_memory_0_n_28,instruction_memory_0_n_29,instruction_memory_0_n_30,instruction_memory_0_n_31}));
  (* CHECK_LICENSE_TYPE = "top_load_extender_0_0,load_extender,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "load_extender,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_load_extender_0_0 load_extender_0
       (.extended(load_extender_0_extended),
        .load_unsigned(control_unit_0_load_unsigned),
        .mem_size(control_unit_0_mem_size_0),
        .raw_data(data_memory_0_data));
  (* CHECK_LICENSE_TYPE = "top_pc_plus_4_0_0,pc_plus_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "pc_plus_4,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_pc_plus_4_0_0 pc_plus_4_0
       (.pc_in(pc),
        .pc_out(pc_plus_4_0_pc_out_0));
  (* CHECK_LICENSE_TYPE = "top_pc_src_mux_0_0,pc_src_mux,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "pc_src_mux,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_pc_src_mux_0_0 pc_src_mux_0
       (.branch(branch_adder_0_target),
        .jalr(alu_0_result_0),
        .pc4(pc_plus_4_0_pc_out_0),
        .pc_src(pc_src_mux_0_pc_src),
        .pc_src_sel(control_unit_0_pc_src_sel));
  (* CHECK_LICENSE_TYPE = "top_program_counter_0_0,program_counter,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "program_counter,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_program_counter_0_0 program_counter_0
       (.clk(clk_0),
        .curr_addr(pc),
        .next_addr(pc_src_mux_0_pc_src),
        .reset(reset_0));
  (* CHECK_LICENSE_TYPE = "top_register_file_0_0,register_file,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "register_file,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_register_file_0_0 register_file_0
       (.clk(clk_0),
        .data1(register_file_0_data1),
        .data2(data2),
        .read_addr1(ilslice_0_Dout),
        .read_addr2(ilslice_1_Dout),
        .reset(reset_0),
        .write_addr(ilslice_2_Dout),
        .write_data(writebackOUT),
        .write_enable(control_unit_0_reg_write));
  (* CHECK_LICENSE_TYPE = "top_sign_extender_0_0,sign_extender,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "sign_extender,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_sign_extender_0_0 sign_extender_0
       (.extended(immediate),
        .instruction({instruction_memory_0_n_0,instruction_memory_0_n_1,instruction_memory_0_n_2,instruction_memory_0_n_3,instruction_memory_0_n_4,instruction_memory_0_n_5,instruction_memory_0_n_6,ilslice_1_Dout,ilslice_0_Dout,instruction_memory_0_n_17,instruction_memory_0_n_18,instruction_memory_0_n_19,ilslice_2_Dout,instruction_memory_0_n_25,instruction_memory_0_n_26,instruction_memory_0_n_27,instruction_memory_0_n_28,instruction_memory_0_n_29,instruction_memory_0_n_30,instruction_memory_0_n_31}));
  (* CHECK_LICENSE_TYPE = "top_writeback_mux_0_0,writeback_mux,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "writeback_mux,Vivado 2025.1" *) 
  board_top_top_wrapper_0_0_top_writeback_mux_0_0 writeback_mux_0
       (.alu(alu_0_result_0),
        .data(load_extender_0_extended),
        .pc4(pc_plus_4_0_pc_out_0),
        .wb_sel(control_unit_0_wb_sel),
        .writeback(writebackOUT));
endmodule

(* CHECK_LICENSE_TYPE = "top_alu_0_0,alu,{}" *) (* ORIG_REF_NAME = "top_alu_0_0" *) 
module board_top_top_wrapper_0_0_top_alu_0_0
   (a,
    b,
    alu_op,
    result,
    zero,
    invalid_op,
    overflow);
  input [31:0]a;
  input [31:0]b;
  input [3:0]alu_op;
  output [31:0]result;
  output zero;
  output invalid_op;
  output overflow;


endmodule

(* CHECK_LICENSE_TYPE = "top_alu_a_mux_0_0,alu_a_mux,{}" *) (* ORIG_REF_NAME = "top_alu_a_mux_0_0" *) 
module board_top_top_wrapper_0_0_top_alu_a_mux_0_0
   (data1,
    pc,
    alu_a_sel,
    alu_a);
  input [31:0]data1;
  input [31:0]pc;
  input [1:0]alu_a_sel;
  output [31:0]alu_a;


endmodule

(* CHECK_LICENSE_TYPE = "top_alu_b_mux_0_0,alu_b_mux,{}" *) (* ORIG_REF_NAME = "top_alu_b_mux_0_0" *) 
module board_top_top_wrapper_0_0_top_alu_b_mux_0_0
   (data2,
    immediate,
    alu_b_sel,
    alu_b);
  input [31:0]data2;
  input [31:0]immediate;
  input alu_b_sel;
  output [31:0]alu_b;


endmodule

(* CHECK_LICENSE_TYPE = "top_branch_adder_0_0,branch_adder,{}" *) (* ORIG_REF_NAME = "top_branch_adder_0_0" *) 
module board_top_top_wrapper_0_0_top_branch_adder_0_0
   (pc,
    immediate,
    target);
  input [31:0]pc;
  input [31:0]immediate;
  output [31:0]target;


endmodule

(* CHECK_LICENSE_TYPE = "top_control_unit_0_0,control_unit,{}" *) (* ORIG_REF_NAME = "top_control_unit_0_0" *) 
module board_top_top_wrapper_0_0_top_control_unit_0_0
   (instruction,
    alu_zero,
    reg_write,
    mem_write,
    alu_op,
    alu_a_sel,
    alu_b_sel,
    wb_sel,
    pc_src_sel,
    mem_size,
    load_unsigned);
  input [31:0]instruction;
  input alu_zero;
  output reg_write;
  output mem_write;
  output [3:0]alu_op;
  output [1:0]alu_a_sel;
  output alu_b_sel;
  output [1:0]wb_sel;
  output [1:0]pc_src_sel;
  output [1:0]mem_size;
  output load_unsigned;


endmodule

(* CHECK_LICENSE_TYPE = "top_data_memory_0_0,data_memory,{}" *) (* ORIG_REF_NAME = "top_data_memory_0_0" *) 
module board_top_top_wrapper_0_0_top_data_memory_0_0
   (clk,
    address,
    write_enable,
    write_data,
    data,
    mem_size);
  input clk;
  input [31:0]address;
  input write_enable;
  input [31:0]write_data;
  output [31:0]data;
  input [1:0]mem_size;


endmodule

(* CHECK_LICENSE_TYPE = "top_instruction_memory_0_0,instruction_memory,{}" *) (* ORIG_REF_NAME = "top_instruction_memory_0_0" *) 
module board_top_top_wrapper_0_0_top_instruction_memory_0_0
   (address,
    instruction);
  input [31:0]address;
  output [31:0]instruction;


endmodule

(* CHECK_LICENSE_TYPE = "top_load_extender_0_0,load_extender,{}" *) (* ORIG_REF_NAME = "top_load_extender_0_0" *) 
module board_top_top_wrapper_0_0_top_load_extender_0_0
   (raw_data,
    mem_size,
    load_unsigned,
    extended);
  input [31:0]raw_data;
  input [1:0]mem_size;
  input load_unsigned;
  output [31:0]extended;


endmodule

(* CHECK_LICENSE_TYPE = "top_pc_plus_4_0_0,pc_plus_4,{}" *) (* ORIG_REF_NAME = "top_pc_plus_4_0_0" *) 
module board_top_top_wrapper_0_0_top_pc_plus_4_0_0
   (pc_in,
    pc_out);
  input [31:0]pc_in;
  output [31:0]pc_out;


endmodule

(* CHECK_LICENSE_TYPE = "top_pc_src_mux_0_0,pc_src_mux,{}" *) (* ORIG_REF_NAME = "top_pc_src_mux_0_0" *) 
module board_top_top_wrapper_0_0_top_pc_src_mux_0_0
   (pc4,
    branch,
    jalr,
    pc_src_sel,
    pc_src);
  input [31:0]pc4;
  input [31:0]branch;
  input [31:0]jalr;
  input [1:0]pc_src_sel;
  output [31:0]pc_src;


endmodule

(* CHECK_LICENSE_TYPE = "top_program_counter_0_0,program_counter,{}" *) (* ORIG_REF_NAME = "top_program_counter_0_0" *) 
module board_top_top_wrapper_0_0_top_program_counter_0_0
   (clk,
    reset,
    next_addr,
    curr_addr);
  input clk;
  input reset;
  input [31:0]next_addr;
  output [31:0]curr_addr;


endmodule

(* CHECK_LICENSE_TYPE = "top_register_file_0_0,register_file,{}" *) (* ORIG_REF_NAME = "top_register_file_0_0" *) 
module board_top_top_wrapper_0_0_top_register_file_0_0
   (clk,
    read_addr1,
    read_addr2,
    write_addr,
    write_data,
    write_enable,
    reset,
    data1,
    data2);
  input clk;
  input [4:0]read_addr1;
  input [4:0]read_addr2;
  input [4:0]write_addr;
  input [31:0]write_data;
  input write_enable;
  input reset;
  output [31:0]data1;
  output [31:0]data2;


endmodule

(* CHECK_LICENSE_TYPE = "top_sign_extender_0_0,sign_extender,{}" *) (* ORIG_REF_NAME = "top_sign_extender_0_0" *) 
module board_top_top_wrapper_0_0_top_sign_extender_0_0
   (instruction,
    extended);
  input [31:0]instruction;
  output [31:0]extended;


endmodule

(* ORIG_REF_NAME = "top_wrapper" *) 
module board_top_top_wrapper_0_0_top_wrapper
   (writebackOUT,
    clk_0,
    reset_0);
  output [31:0]writebackOUT;
  input clk_0;
  input reset_0;

  wire clk_0;
  wire reset_0;
  wire [31:0]writebackOUT;

  (* hw_handoff = "top.hwdef" *) 
  board_top_top_wrapper_0_0_top top_i
       (.clk_0(clk_0),
        .reset_0(reset_0),
        .writebackOUT(writebackOUT));
endmodule

(* CHECK_LICENSE_TYPE = "top_writeback_mux_0_0,writeback_mux,{}" *) (* ORIG_REF_NAME = "top_writeback_mux_0_0" *) 
module board_top_top_wrapper_0_0_top_writeback_mux_0_0
   (alu,
    data,
    pc4,
    wb_sel,
    writeback);
  input [31:0]alu;
  input [31:0]data;
  input [31:0]pc4;
  input [1:0]wb_sel;
  output [31:0]writeback;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
