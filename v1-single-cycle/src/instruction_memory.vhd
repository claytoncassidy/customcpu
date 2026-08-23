library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_memory is
    port(
        address     : in  std_logic_vector(31 downto 0);
        instruction : out std_logic_vector(31 downto 0)
    );
end entity instruction_memory;

architecture behavior of instruction_memory is
    type instruction_array is array (0 to 255) of std_logic_vector(31 downto 0);

    -- placeholder
    constant memory : instruction_array := (
        0 => x"AAAAAAAA",
        1 => x"BBBBBBBB",
        2 => x"CCCCCCCC",
        3 => x"DDDDDDDD",
        others => (others => '0')
    );
begin
    instruction <= memory(to_integer(unsigned(address(9 downto 2))));
end architecture behavior;
