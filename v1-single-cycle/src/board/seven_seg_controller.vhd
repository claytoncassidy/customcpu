library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_seg_controller is
    port (
        clk    : in  std_logic;
        value  : in  std_logic_vector(15 downto 0);
        hex_digit : out std_logic_vector(3 downto 0);
        an     : out std_logic_vector(3 downto 0)
    );
end entity seven_seg_controller;

architecture behavior of seven_seg_controller is
    constant refresh_limit : integer := 100000; -- 1 kHz per digit at 100 MHz

    signal refresh_counter : integer range 0 to refresh_limit := 0;
    signal digit_index     : unsigned(1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if refresh_counter = refresh_limit then
                refresh_counter <= 0;
                digit_index     <= digit_index + 1;
            else
                refresh_counter <= refresh_counter + 1;
            end if;
        end if;
    end process;

    with digit_index select
        hex_digit <=   value(3 downto 0)   when "00",
                    value(7 downto 4)   when "01",
                    value(11 downto 8)  when "10",
                    value(15 downto 12) when others;

    with digit_index select
        an <=   "1110" when "00",
                "1101" when "01",
                "1011" when "10",
                "0111" when others;
end architecture behavior;
