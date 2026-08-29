library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_memory is
    port(
        clk             : in std_logic;
        address         : in std_logic_vector(31 downto 0);
        write_enable    : in std_logic;
        write_data      : in std_logic_vector(31 downto 0);
        data            : out std_logic_vector(31 downto 0)
    );
end entity data_memory;

architecture behavior of data_memory is
    type data_memory_array is array (0 to 255) of std_logic_vector(31 downto 0);
    signal data_memory_registers : data_memory_array := (others => (others => '0'));
begin
    -- 9 downto 2 since bits 0 and 1 will carry no value since lw and sw will word align to multiples of 4
    -- this assumes word only access. needs changing if halfword loads and stores
    -- (lb/sb/lh/sh) ever get added, since those addresses won't always be multiples of 4
    data <= data_memory_registers(to_integer(unsigned(address(9 downto 2))));
    process(clk)
    begin
        if rising_edge(clk) then
            if write_enable = '1' then
                data_memory_registers(to_integer(unsigned(address(9 downto 2)))) <= write_data;
            end if;
        end if;
    end process;
end architecture behavior;