library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
    port(
        clk             : in std_logic;
        read_addr1      : in std_logic_vector(4 downto 0);
        read_addr2      : in std_logic_vector(4 downto 0);
        write_addr      : in std_logic_vector(4 downto 0);
        write_data      : in std_logic_vector(31 downto 0);
        write_enable    : in std_logic;
        reset           : in std_logic;
        data1      : out std_logic_vector(31 downto 0);
        data2      : out std_logic_vector(31 downto 0)
    );
end entity register_file;

architecture behavior of register_file is
    type register_array is array(0 to 31) of std_logic_vector(31 downto 0);
    signal registers : register_array := (others => (others => '0'));
begin
    data1 <= registers(to_integer(unsigned(read_addr1)));
    data2 <= registers(to_integer(unsigned(read_addr2)));
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                for i in 0 to 31 loop
                    registers(i) <= (others => '0');
                end loop;
            -- register 0 must always be value 0, so not allowing write to it
            elsif (write_enable = '1' and write_addr /= "00000") then
                registers(to_integer(unsigned(write_addr))) <= write_data;
            end if;
        end if;
    end process;
end architecture behavior;