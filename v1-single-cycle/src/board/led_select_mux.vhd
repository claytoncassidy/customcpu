library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_select_mux is
    port (
        writeback : in  std_logic_vector(31 downto 0);
        led_sel   : in  std_logic;
        led       : out std_logic_vector(15 downto 0)
    );
end entity led_select_mux;

architecture behavior of led_select_mux is
begin
    with led_sel select
        led <=  writeback(31 downto 16) when '1',
                writeback(15 downto 0)  when others;
end architecture behavior;
