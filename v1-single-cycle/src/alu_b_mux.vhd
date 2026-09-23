-- picks the ALU's second input: a register or the immediate
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_b_mux is
    port (
        data2       : in  std_logic_vector(31 downto 0);
        immediate   : in  std_logic_vector(31 downto 0);
        alu_b_sel   : in  std_logic;
        alu_b       : out std_logic_vector(31 downto 0)
    );
end entity alu_b_mux;

architecture behavior of alu_b_mux is
begin
    alu_b <= data2 when alu_b_sel = '0' else immediate;
end architecture behavior;