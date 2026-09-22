// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 21 17:24:41 2026
// Host        : claytonsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {e:/Programming/Personal/Custom
//               CPU/customcpu/v1-single-cycle/bd/top/ip/top_data_memory_0_0/top_data_memory_0_0_sim_netlist.v}
// Design      : top_data_memory_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_data_memory_0_0,data_memory,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "data_memory,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module top_data_memory_0_0
   (clk,
    address,
    write_enable,
    write_data,
    data,
    mem_size);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_clk_0, INSERT_VIP 0" *) input clk;
  input [31:0]address;
  input write_enable;
  input [31:0]write_data;
  output [31:0]data;
  input [1:0]mem_size;

  wire [31:0]address;
  wire clk;
  wire [31:0]data;
  wire [1:0]mem_size;
  wire [31:0]write_data;
  wire write_enable;

  top_data_memory_0_0_data_memory U0
       (.address(address[9:0]),
        .clk(clk),
        .data(data),
        .mem_size(mem_size),
        .write_data(write_data),
        .write_enable(write_enable));
endmodule

(* ORIG_REF_NAME = "data_memory" *) 
module top_data_memory_0_0_data_memory
   (data,
    clk,
    write_data,
    address,
    mem_size,
    write_enable);
  output [31:0]data;
  input clk;
  input [31:0]write_data;
  input [9:0]address;
  input [1:0]mem_size;
  input write_enable;

  wire [9:0]address;
  wire clk;
  wire [31:0]data;
  wire [31:0]data0;
  wire \data[0]_INST_0_i_1_n_0 ;
  wire \data[1]_INST_0_i_1_n_0 ;
  wire \data[2]_INST_0_i_1_n_0 ;
  wire \data[3]_INST_0_i_1_n_0 ;
  wire \data[4]_INST_0_i_1_n_0 ;
  wire \data[5]_INST_0_i_1_n_0 ;
  wire \data[6]_INST_0_i_1_n_0 ;
  wire \data[7]_INST_0_i_1_n_0 ;
  wire [1:0]mem_size;
  wire [24:0]p_1_in;
  wire [31:8]p_3_in;
  wire [31:0]write_data;
  wire write_enable;

  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[0]_INST_0 
       (.I0(address[1]),
        .I1(data0[16]),
        .I2(mem_size[0]),
        .I3(data0[0]),
        .I4(mem_size[1]),
        .I5(\data[0]_INST_0_i_1_n_0 ),
        .O(data[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[0]_INST_0_i_1 
       (.I0(data0[8]),
        .I1(data0[0]),
        .I2(data0[24]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[16]),
        .O(\data[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[10]_INST_0 
       (.I0(address[1]),
        .I1(data0[26]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[10]),
        .O(data[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[11]_INST_0 
       (.I0(address[1]),
        .I1(data0[27]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[11]),
        .O(data[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[12]_INST_0 
       (.I0(address[1]),
        .I1(data0[28]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[12]),
        .O(data[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[13]_INST_0 
       (.I0(address[1]),
        .I1(data0[29]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[13]),
        .O(data[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[14]_INST_0 
       (.I0(address[1]),
        .I1(data0[30]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[14]),
        .O(data[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[15]_INST_0 
       (.I0(address[1]),
        .I1(data0[31]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[15]),
        .O(data[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[16]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[16]),
        .I2(mem_size[1]),
        .O(data[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[17]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[17]),
        .I2(mem_size[1]),
        .O(data[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[18]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[18]),
        .I2(mem_size[1]),
        .O(data[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[19]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[19]),
        .I2(mem_size[1]),
        .O(data[19]));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[1]_INST_0 
       (.I0(address[1]),
        .I1(data0[17]),
        .I2(mem_size[0]),
        .I3(data0[1]),
        .I4(mem_size[1]),
        .I5(\data[1]_INST_0_i_1_n_0 ),
        .O(data[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[1]_INST_0_i_1 
       (.I0(data0[9]),
        .I1(data0[1]),
        .I2(data0[25]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[17]),
        .O(\data[1]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[20]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[20]),
        .I2(mem_size[1]),
        .O(data[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[21]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[21]),
        .I2(mem_size[1]),
        .O(data[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[22]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[22]),
        .I2(mem_size[1]),
        .O(data[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[23]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[23]),
        .I2(mem_size[1]),
        .O(data[23]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[24]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[24]),
        .I2(mem_size[1]),
        .O(data[24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[25]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[25]),
        .I2(mem_size[1]),
        .O(data[25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[26]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[26]),
        .I2(mem_size[1]),
        .O(data[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[27]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[27]),
        .I2(mem_size[1]),
        .O(data[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[28]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[28]),
        .I2(mem_size[1]),
        .O(data[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[29]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[29]),
        .I2(mem_size[1]),
        .O(data[29]));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[2]_INST_0 
       (.I0(address[1]),
        .I1(data0[18]),
        .I2(mem_size[0]),
        .I3(data0[2]),
        .I4(mem_size[1]),
        .I5(\data[2]_INST_0_i_1_n_0 ),
        .O(data[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[2]_INST_0_i_1 
       (.I0(data0[10]),
        .I1(data0[2]),
        .I2(data0[26]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[18]),
        .O(\data[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[30]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[30]),
        .I2(mem_size[1]),
        .O(data[30]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data[31]_INST_0 
       (.I0(mem_size[0]),
        .I1(data0[31]),
        .I2(mem_size[1]),
        .O(data[31]));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[3]_INST_0 
       (.I0(address[1]),
        .I1(data0[19]),
        .I2(mem_size[0]),
        .I3(data0[3]),
        .I4(mem_size[1]),
        .I5(\data[3]_INST_0_i_1_n_0 ),
        .O(data[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[3]_INST_0_i_1 
       (.I0(data0[11]),
        .I1(data0[3]),
        .I2(data0[27]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[19]),
        .O(\data[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[4]_INST_0 
       (.I0(address[1]),
        .I1(data0[20]),
        .I2(mem_size[0]),
        .I3(data0[4]),
        .I4(mem_size[1]),
        .I5(\data[4]_INST_0_i_1_n_0 ),
        .O(data[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[4]_INST_0_i_1 
       (.I0(data0[12]),
        .I1(data0[4]),
        .I2(data0[28]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[20]),
        .O(\data[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[5]_INST_0 
       (.I0(address[1]),
        .I1(data0[21]),
        .I2(mem_size[0]),
        .I3(data0[5]),
        .I4(mem_size[1]),
        .I5(\data[5]_INST_0_i_1_n_0 ),
        .O(data[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[5]_INST_0_i_1 
       (.I0(data0[13]),
        .I1(data0[5]),
        .I2(data0[29]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[21]),
        .O(\data[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[6]_INST_0 
       (.I0(address[1]),
        .I1(data0[22]),
        .I2(mem_size[0]),
        .I3(data0[6]),
        .I4(mem_size[1]),
        .I5(\data[6]_INST_0_i_1_n_0 ),
        .O(data[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[6]_INST_0_i_1 
       (.I0(data0[14]),
        .I1(data0[6]),
        .I2(data0[30]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[22]),
        .O(\data[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DF8F0F00D080)) 
    \data[7]_INST_0 
       (.I0(address[1]),
        .I1(data0[23]),
        .I2(mem_size[0]),
        .I3(data0[7]),
        .I4(mem_size[1]),
        .I5(\data[7]_INST_0_i_1_n_0 ),
        .O(data[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \data[7]_INST_0_i_1 
       (.I0(data0[15]),
        .I1(data0[7]),
        .I2(data0[31]),
        .I3(address[1]),
        .I4(address[0]),
        .I5(data0[23]),
        .O(\data[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[8]_INST_0 
       (.I0(address[1]),
        .I1(data0[24]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[8]),
        .O(data[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FD00080)) 
    \data[9]_INST_0 
       (.I0(address[1]),
        .I1(data0[25]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(data0[9]),
        .O(data[9]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_0_0
       (.A(address[9:2]),
        .D(write_data[0]),
        .O(data0[0]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  LUT5 #(
    .INIT(32'h0F310000)) 
    data_memory_registers_reg_0_255_0_0_i_1
       (.I0(address[0]),
        .I1(address[1]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(write_enable),
        .O(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_10_10
       (.A(address[9:2]),
        .D(p_3_in[10]),
        .O(data0[10]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_10_10_i_1
       (.I0(mem_size[1]),
        .I1(write_data[10]),
        .I2(mem_size[0]),
        .I3(write_data[2]),
        .O(p_3_in[10]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_11_11
       (.A(address[9:2]),
        .D(p_3_in[11]),
        .O(data0[11]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_11_11_i_1
       (.I0(mem_size[1]),
        .I1(write_data[11]),
        .I2(mem_size[0]),
        .I3(write_data[3]),
        .O(p_3_in[11]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_12_12
       (.A(address[9:2]),
        .D(p_3_in[12]),
        .O(data0[12]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_12_12_i_1
       (.I0(mem_size[1]),
        .I1(write_data[12]),
        .I2(mem_size[0]),
        .I3(write_data[4]),
        .O(p_3_in[12]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_13_13
       (.A(address[9:2]),
        .D(p_3_in[13]),
        .O(data0[13]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_13_13_i_1
       (.I0(mem_size[1]),
        .I1(write_data[13]),
        .I2(mem_size[0]),
        .I3(write_data[5]),
        .O(p_3_in[13]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_14_14
       (.A(address[9:2]),
        .D(p_3_in[14]),
        .O(data0[14]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_14_14_i_1
       (.I0(mem_size[1]),
        .I1(write_data[14]),
        .I2(mem_size[0]),
        .I3(write_data[6]),
        .O(p_3_in[14]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_15_15
       (.A(address[9:2]),
        .D(p_3_in[15]),
        .O(data0[15]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_15_15_i_1
       (.I0(mem_size[1]),
        .I1(write_data[15]),
        .I2(mem_size[0]),
        .I3(write_data[7]),
        .O(p_3_in[15]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_16_16
       (.A(address[9:2]),
        .D(p_3_in[16]),
        .O(data0[16]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_16_16_i_1
       (.I0(write_data[16]),
        .I1(mem_size[1]),
        .I2(write_data[0]),
        .O(p_3_in[16]));
  LUT5 #(
    .INIT(32'h0FA20000)) 
    data_memory_registers_reg_0_255_16_16_i_2
       (.I0(address[1]),
        .I1(address[0]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(write_enable),
        .O(p_1_in[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_17_17
       (.A(address[9:2]),
        .D(p_3_in[17]),
        .O(data0[17]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_17_17_i_1
       (.I0(write_data[17]),
        .I1(mem_size[1]),
        .I2(write_data[1]),
        .O(p_3_in[17]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_18_18
       (.A(address[9:2]),
        .D(p_3_in[18]),
        .O(data0[18]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_18_18_i_1
       (.I0(write_data[18]),
        .I1(mem_size[1]),
        .I2(write_data[2]),
        .O(p_3_in[18]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_19_19
       (.A(address[9:2]),
        .D(p_3_in[19]),
        .O(data0[19]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_19_19_i_1
       (.I0(write_data[19]),
        .I1(mem_size[1]),
        .I2(write_data[3]),
        .O(p_3_in[19]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_1_1
       (.A(address[9:2]),
        .D(write_data[1]),
        .O(data0[1]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_20_20
       (.A(address[9:2]),
        .D(p_3_in[20]),
        .O(data0[20]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_20_20_i_1
       (.I0(write_data[20]),
        .I1(mem_size[1]),
        .I2(write_data[4]),
        .O(p_3_in[20]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_21_21
       (.A(address[9:2]),
        .D(p_3_in[21]),
        .O(data0[21]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_21_21_i_1
       (.I0(write_data[21]),
        .I1(mem_size[1]),
        .I2(write_data[5]),
        .O(p_3_in[21]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_22_22
       (.A(address[9:2]),
        .D(p_3_in[22]),
        .O(data0[22]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_22_22_i_1
       (.I0(write_data[22]),
        .I1(mem_size[1]),
        .I2(write_data[6]),
        .O(p_3_in[22]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_23_23
       (.A(address[9:2]),
        .D(p_3_in[23]),
        .O(data0[23]),
        .WCLK(clk),
        .WE(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    data_memory_registers_reg_0_255_23_23_i_1
       (.I0(write_data[23]),
        .I1(mem_size[1]),
        .I2(write_data[7]),
        .O(p_3_in[23]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_24_24
       (.A(address[9:2]),
        .D(p_3_in[24]),
        .O(data0[24]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_24_24_i_1
       (.I0(write_data[24]),
        .I1(mem_size[1]),
        .I2(write_data[8]),
        .I3(mem_size[0]),
        .I4(write_data[0]),
        .O(p_3_in[24]));
  LUT5 #(
    .INIT(32'h0FA80000)) 
    data_memory_registers_reg_0_255_24_24_i_2
       (.I0(address[1]),
        .I1(address[0]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(write_enable),
        .O(p_1_in[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_25_25
       (.A(address[9:2]),
        .D(p_3_in[25]),
        .O(data0[25]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_25_25_i_1
       (.I0(write_data[25]),
        .I1(mem_size[1]),
        .I2(write_data[9]),
        .I3(mem_size[0]),
        .I4(write_data[1]),
        .O(p_3_in[25]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_26_26
       (.A(address[9:2]),
        .D(p_3_in[26]),
        .O(data0[26]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_26_26_i_1
       (.I0(write_data[26]),
        .I1(mem_size[1]),
        .I2(write_data[10]),
        .I3(mem_size[0]),
        .I4(write_data[2]),
        .O(p_3_in[26]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_27_27
       (.A(address[9:2]),
        .D(p_3_in[27]),
        .O(data0[27]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_27_27_i_1
       (.I0(write_data[27]),
        .I1(mem_size[1]),
        .I2(write_data[11]),
        .I3(mem_size[0]),
        .I4(write_data[3]),
        .O(p_3_in[27]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_28_28
       (.A(address[9:2]),
        .D(p_3_in[28]),
        .O(data0[28]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_28_28_i_1
       (.I0(write_data[28]),
        .I1(mem_size[1]),
        .I2(write_data[12]),
        .I3(mem_size[0]),
        .I4(write_data[4]),
        .O(p_3_in[28]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_29_29
       (.A(address[9:2]),
        .D(p_3_in[29]),
        .O(data0[29]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_29_29_i_1
       (.I0(write_data[29]),
        .I1(mem_size[1]),
        .I2(write_data[13]),
        .I3(mem_size[0]),
        .I4(write_data[5]),
        .O(p_3_in[29]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_2_2
       (.A(address[9:2]),
        .D(write_data[2]),
        .O(data0[2]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_30_30
       (.A(address[9:2]),
        .D(p_3_in[30]),
        .O(data0[30]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_30_30_i_1
       (.I0(write_data[30]),
        .I1(mem_size[1]),
        .I2(write_data[14]),
        .I3(mem_size[0]),
        .I4(write_data[6]),
        .O(p_3_in[30]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_31_31
       (.A(address[9:2]),
        .D(p_3_in[31]),
        .O(data0[31]),
        .WCLK(clk),
        .WE(p_1_in[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    data_memory_registers_reg_0_255_31_31_i_1
       (.I0(write_data[31]),
        .I1(mem_size[1]),
        .I2(write_data[15]),
        .I3(mem_size[0]),
        .I4(write_data[7]),
        .O(p_3_in[31]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_3_3
       (.A(address[9:2]),
        .D(write_data[3]),
        .O(data0[3]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_4_4
       (.A(address[9:2]),
        .D(write_data[4]),
        .O(data0[4]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_5_5
       (.A(address[9:2]),
        .D(write_data[5]),
        .O(data0[5]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_6_6
       (.A(address[9:2]),
        .D(write_data[6]),
        .O(data0[6]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_7_7
       (.A(address[9:2]),
        .D(write_data[7]),
        .O(data0[7]),
        .WCLK(clk),
        .WE(p_1_in[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_8_8
       (.A(address[9:2]),
        .D(p_3_in[8]),
        .O(data0[8]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_8_8_i_1
       (.I0(mem_size[1]),
        .I1(write_data[8]),
        .I2(mem_size[0]),
        .I3(write_data[0]),
        .O(p_3_in[8]));
  LUT5 #(
    .INIT(32'h0F320000)) 
    data_memory_registers_reg_0_255_8_8_i_2
       (.I0(address[0]),
        .I1(address[1]),
        .I2(mem_size[0]),
        .I3(mem_size[1]),
        .I4(write_enable),
        .O(p_1_in[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "top_data_memory_0_0/U0/data_memory_registers_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    data_memory_registers_reg_0_255_9_9
       (.A(address[9:2]),
        .D(p_3_in[9]),
        .O(data0[9]),
        .WCLK(clk),
        .WE(p_1_in[8]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    data_memory_registers_reg_0_255_9_9_i_1
       (.I0(mem_size[1]),
        .I1(write_data[9]),
        .I2(mem_size[0]),
        .I3(write_data[1]),
        .O(p_3_in[9]));
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
