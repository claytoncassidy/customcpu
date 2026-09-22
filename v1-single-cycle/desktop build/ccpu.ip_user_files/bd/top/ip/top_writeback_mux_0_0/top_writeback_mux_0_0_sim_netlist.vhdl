-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Sep 21 17:24:42 2026
-- Host        : claytonsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Programming/Personal/Custom
--               CPU/customcpu/v1-single-cycle/bd/top/ip/top_writeback_mux_0_0/top_writeback_mux_0_0_sim_netlist.vhdl}
-- Design      : top_writeback_mux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_writeback_mux_0_0_writeback_mux is
  port (
    writeback : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_writeback_mux_0_0_writeback_mux : entity is "writeback_mux";
end top_writeback_mux_0_0_writeback_mux;

architecture STRUCTURE of top_writeback_mux_0_0_writeback_mux is
begin
\writeback[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(0),
      I1 => alu(0),
      I2 => pc4(0),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(0)
    );
\writeback[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(10),
      I1 => alu(10),
      I2 => pc4(10),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(10)
    );
\writeback[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(11),
      I1 => alu(11),
      I2 => pc4(11),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(11)
    );
\writeback[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(12),
      I1 => alu(12),
      I2 => pc4(12),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(12)
    );
\writeback[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(13),
      I1 => alu(13),
      I2 => pc4(13),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(13)
    );
\writeback[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(14),
      I1 => alu(14),
      I2 => pc4(14),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(14)
    );
\writeback[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(15),
      I1 => alu(15),
      I2 => pc4(15),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(15)
    );
\writeback[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(16),
      I1 => alu(16),
      I2 => pc4(16),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(16)
    );
\writeback[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(17),
      I1 => alu(17),
      I2 => pc4(17),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(17)
    );
\writeback[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(18),
      I1 => alu(18),
      I2 => pc4(18),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(18)
    );
\writeback[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(19),
      I1 => alu(19),
      I2 => pc4(19),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(19)
    );
\writeback[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(1),
      I1 => alu(1),
      I2 => pc4(1),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(1)
    );
\writeback[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(20),
      I1 => alu(20),
      I2 => pc4(20),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(20)
    );
\writeback[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(21),
      I1 => alu(21),
      I2 => pc4(21),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(21)
    );
\writeback[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(22),
      I1 => alu(22),
      I2 => pc4(22),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(22)
    );
\writeback[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(23),
      I1 => alu(23),
      I2 => pc4(23),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(23)
    );
\writeback[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(24),
      I1 => alu(24),
      I2 => pc4(24),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(24)
    );
\writeback[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(25),
      I1 => alu(25),
      I2 => pc4(25),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(25)
    );
\writeback[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(26),
      I1 => alu(26),
      I2 => pc4(26),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(26)
    );
\writeback[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(27),
      I1 => alu(27),
      I2 => pc4(27),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(27)
    );
\writeback[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(28),
      I1 => alu(28),
      I2 => pc4(28),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(28)
    );
\writeback[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(29),
      I1 => alu(29),
      I2 => pc4(29),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(29)
    );
\writeback[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(2),
      I1 => alu(2),
      I2 => pc4(2),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(2)
    );
\writeback[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(30),
      I1 => alu(30),
      I2 => pc4(30),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(30)
    );
\writeback[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(31),
      I1 => alu(31),
      I2 => pc4(31),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(31)
    );
\writeback[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(3),
      I1 => alu(3),
      I2 => pc4(3),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(3)
    );
\writeback[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(4),
      I1 => alu(4),
      I2 => pc4(4),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(4)
    );
\writeback[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(5),
      I1 => alu(5),
      I2 => pc4(5),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(5)
    );
\writeback[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(6),
      I1 => alu(6),
      I2 => pc4(6),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(6)
    );
\writeback[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(7),
      I1 => alu(7),
      I2 => pc4(7),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(7)
    );
\writeback[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(8),
      I1 => alu(8),
      I2 => pc4(8),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(8)
    );
\writeback[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => data(9),
      I1 => alu(9),
      I2 => pc4(9),
      I3 => wb_sel(0),
      I4 => wb_sel(1),
      O => writeback(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_writeback_mux_0_0 is
  port (
    alu : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    writeback : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_writeback_mux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_writeback_mux_0_0 : entity is "top_writeback_mux_0_0,writeback_mux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_writeback_mux_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of top_writeback_mux_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of top_writeback_mux_0_0 : entity is "writeback_mux,Vivado 2025.1";
end top_writeback_mux_0_0;

architecture STRUCTURE of top_writeback_mux_0_0 is
begin
U0: entity work.top_writeback_mux_0_0_writeback_mux
     port map (
      alu(31 downto 0) => alu(31 downto 0),
      data(31 downto 0) => data(31 downto 0),
      pc4(31 downto 0) => pc4(31 downto 0),
      wb_sel(1 downto 0) => wb_sel(1 downto 0),
      writeback(31 downto 0) => writeback(31 downto 0)
    );
end STRUCTURE;
