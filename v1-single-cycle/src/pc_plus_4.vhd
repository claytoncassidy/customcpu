-- adds 4 to the PC
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc_plus_4 is
    port(
        pc_in   : in  std_logic_vector(31 downto 0);
        pc_out  : out std_logic_vector(31 downto 0)
    );
end entity pc_plus_4;

architecture behavior of pc_plus_4 is
begin
    pc_out <= std_logic_vector(unsigned(pc_in) + 4);
end architecture behavior;