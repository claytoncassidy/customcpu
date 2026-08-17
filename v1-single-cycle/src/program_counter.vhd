library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity program_counter is
    port (
        clk         : in std_logic;
        reset       : in std_logic;
        next_addr   : in std_logic_vector(31 downto 0);
        curr_addr   : out std_logic_vector(31 downto 0)
    );
end entity program_counter;

architecture behavior of program_counter is
    signal curr_addr_internal : std_logic_vector(31 downto 0) := x"00000000";
begin
    curr_addr <= curr_addr_internal;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                curr_addr_internal <= x"00000000";
            else
                curr_addr_internal <= next_addr;
            end if;
        end if;
    end process;
end architecture behavior;