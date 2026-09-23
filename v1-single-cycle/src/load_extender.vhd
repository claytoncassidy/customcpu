-- sign or zero extends a loaded byte/halfword back up to a full word
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity load_extender is
    port(
        raw_data        : in  std_logic_vector(31 downto 0);
        mem_size        : in  std_logic_vector(1 downto 0);
        load_unsigned   : in  std_logic;
        extended        : out std_logic_vector(31 downto 0)
    );
end entity load_extender;

architecture behavior of load_extender is
begin
    process(mem_size, load_unsigned, raw_data)
    begin
        case mem_size is
            when "10" => -- full word
                extended <= raw_data;
            when "01" => -- half word
                case load_unsigned is
                    when '1' =>
                        extended <= (31 downto 16 => '0') & raw_data(15 downto 0);
                    when '0' =>
                        extended <= (31 downto 16 => raw_data(15)) & raw_data(15 downto 0);
                    when others =>
                        extended <= (others => '0');
                end case;
            when "00" => -- byte
                case load_unsigned is
                    when '1' =>
                        extended <= (31 downto 8 => '0') & raw_data(7 downto 0);
                    when '0' =>
                        extended <= (31 downto 8 => raw_data(7)) & raw_data(7 downto 0);
                    when others =>
                        extended <= (others => '0');
                end case;
            when others =>
                extended <= (others => '0');
        end case;
    end process;
end architecture behavior;