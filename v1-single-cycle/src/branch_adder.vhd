-- adds the PC and immediate to get a branch/jump target
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity branch_adder is
    port(
        pc          : in  std_logic_vector(31 downto 0);
        immediate   : in  std_logic_vector(31 downto 0);
        target      : out std_logic_vector(31 downto 0)
    );
end entity branch_adder;

architecture behavior of branch_adder is
begin
    target <= std_logic_vector(unsigned(pc) + unsigned(immediate));
end architecture behavior;