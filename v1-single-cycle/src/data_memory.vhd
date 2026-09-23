-- read/write memory for loads and stores, handles byte/halfword/word sizes
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_memory is
    port(
        clk             : in  std_logic;
        address         : in  std_logic_vector(31 downto 0);
        write_enable    : in  std_logic;
        write_data      : in  std_logic_vector(31 downto 0);
        data            : out std_logic_vector(31 downto 0);
        mem_size        : in  std_logic_vector(1 downto 0)
    );
end entity data_memory;

architecture behavior of data_memory is
    type data_memory_array is array (0 to 255) of std_logic_vector(31 downto 0);
    signal data_memory_registers : data_memory_array := (others => (others => '0'));
begin
    -- address(9 downto 2) selects the word, address(1 downto 0) + mem_size select
    -- which byte(s)/halfword within that word are actually being accessed
    process(address, mem_size, data_memory_registers)
        variable word : std_logic_vector(31 downto 0);
    begin
        word := data_memory_registers(to_integer(unsigned(address(9 downto 2))));
        case mem_size is
            when "00" => -- byte
                case address(1 downto 0) is
                    when "00" => data <= (31 downto 8 => '0') & word(7 downto 0);
                    when "01" => data <= (31 downto 8 => '0') & word(15 downto 8);
                    when "10" => data <= (31 downto 8 => '0') & word(23 downto 16);
                    when "11" => data <= (31 downto 8 => '0') & word(31 downto 24);
                    when others => data <= (others => '0');
                end case;
            when "01" => -- halfword
                case address(1) is
                    when '0' => data <= (31 downto 16 => '0') & word(15 downto 0);
                    when '1' => data <= (31 downto 16 => '0') & word(31 downto 16);
                    when others => data <= (others => '0');
                end case;
            when "10" => -- word
                data <= word;
            when others =>
                data <= (others => '0');
        end case;
    end process;
    process(clk)
        variable idx : integer;
    begin
        if rising_edge(clk) then
            if write_enable = '1' then
                idx := to_integer(unsigned(address(9 downto 2)));
                case mem_size is
                    when "00" => -- byte
                        case address(1 downto 0) is
                            when "00" => data_memory_registers(idx)(7 downto 0)   <= write_data(7 downto 0);
                            when "01" => data_memory_registers(idx)(15 downto 8)  <= write_data(7 downto 0);
                            when "10" => data_memory_registers(idx)(23 downto 16) <= write_data(7 downto 0);
                            when "11" => data_memory_registers(idx)(31 downto 24) <= write_data(7 downto 0);
                            when others => null;
                        end case;
                    when "01" => -- halfword
                        case address(1) is
                            when '0' => data_memory_registers(idx)(15 downto 0)  <= write_data(15 downto 0);
                            when '1' => data_memory_registers(idx)(31 downto 16) <= write_data(15 downto 0);
                            when others => null;
                        end case;
                    when "10" => -- word
                        data_memory_registers(idx) <= write_data;
                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;
end architecture behavior;