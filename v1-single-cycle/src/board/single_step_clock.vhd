-- debounces the step button into one clean clock pulse
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity single_step_clock is
    port (
        clk        : in  std_logic; -- the board's clock
        btn_in     : in  std_logic;
        step_pulse : out std_logic
    );
end entity single_step_clock;

architecture behavior of single_step_clock is
    constant debounce_limit : integer := 1000000; -- 10 ms at 100 MHz

    signal btn_sync0, btn_sync1         : std_logic := '0';
    signal btn_stable, btn_stable_prev  : std_logic := '0';
    signal counter                      : integer range 0 to debounce_limit := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            btn_sync0 <= btn_in;
            btn_sync1 <= btn_sync0;
            -- if button is held for debounce_limit amount of time, count it as a press
            if btn_sync1 /= btn_stable then
                if counter = debounce_limit then
                    btn_stable <= btn_sync1;
                    counter    <= 0;
                else
                    counter <= counter + 1;
                end if;
            else
                counter <= 0;
            end if;
            btn_stable_prev <= btn_stable;
        end if;
    end process;
    -- makes sure only one button press per holding down
    step_pulse <= '1' when (btn_stable = '1' and btn_stable_prev = '0') else '0';
end architecture behavior;