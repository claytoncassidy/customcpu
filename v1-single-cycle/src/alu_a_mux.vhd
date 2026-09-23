-- picks the ALU's first input: a register, the PC, or zero
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_a_mux is
    port (
        data1       : in  std_logic_vector(31 downto 0);
        pc          : in  std_logic_vector(31 downto 0);
        alu_a_sel   : in  std_logic_vector(1 downto 0);
        alu_a       : out std_logic_vector(31 downto 0)
    );
end entity alu_a_mux;

architecture behavior of alu_a_mux is
begin
    with alu_a_sel select
        alu_a <=    data1 when "00",                -- r/i type, loads, stores, branches, JALR
                    pc when "01",                   -- AUIPC
                    (others => '0') when "10",      -- LUI
                    (others => '0') when others;
end architecture behavior;