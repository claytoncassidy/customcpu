transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../../src/program_counter.vhd" \
"../../../../src/pc_plus_4.vhd" \
"../../../../src/instruction_memory.vhd" \
"../../../../src/control_unit.vhd" \
"../../../../src/register_file.vhd" \
"../../../../src/alu.vhd" \
"../../../../src/data_memory.vhd" \
"../../../../src/alu_a_mux.vhd" \
"../../../../src/alu_b_mux.vhd" \
"../../../../src/branch_adder.vhd" \
"../../../../src/pc_src_mux.vhd" \
"../../../../src/sign_extender.vhd" \
"../../../../src/writeback_mux.vhd" \
"../../../../src/load_extender.vhd" \
"../../bd/top/ip/top_program_counter_0_0/sim/top_program_counter_0_0.vhd" \
"../../bd/top/ip/top_pc_plus_4_0_0/sim/top_pc_plus_4_0_0.vhd" \
"../../bd/top/ip/top_instruction_memory_0_0/sim/top_instruction_memory_0_0.vhd" \
"../../bd/top/ip/top_control_unit_0_0/sim/top_control_unit_0_0.vhd" \
"../../bd/top/ip/top_register_file_0_0/sim/top_register_file_0_0.vhd" \
"../../bd/top/ip/top_alu_0_0/sim/top_alu_0_0.vhd" \
"../../bd/top/ip/top_data_memory_0_0/sim/top_data_memory_0_0.vhd" \
"../../bd/top/ip/top_alu_a_mux_0_0/sim/top_alu_a_mux_0_0.vhd" \
"../../bd/top/ip/top_alu_b_mux_0_0/sim/top_alu_b_mux_0_0.vhd" \
"../../bd/top/ip/top_branch_adder_0_0/sim/top_branch_adder_0_0.vhd" \
"../../bd/top/ip/top_pc_src_mux_0_0/sim/top_pc_src_mux_0_0.vhd" \
"../../bd/top/ip/top_sign_extender_0_0/sim/top_sign_extender_0_0.vhd" \
"../../bd/top/ip/top_writeback_mux_0_0/sim/top_writeback_mux_0_0.vhd" \
"../../bd/top/ip/top_load_extender_0_0/sim/top_load_extender_0_0.vhd" \
"../../bd/top/sim/top.vhd" \
"../../../../bd/top/hdl/top_wrapper.vhd" \
"../../../../sim/top_wrapper_tb.vhd" \


