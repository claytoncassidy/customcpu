library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity program_counter_tb is
end entity program_counter_tb;

architecture simulation of program_counter_tb is
    signal clk_tb       : std_logic := '0';
    signal reset_tb     : std_logic;
    signal next_addr_tb : std_logic_vector(31 downto 0);
    signal curr_addr_tb : std_logic_vector(31 downto 0);

begin
    uut : entity work.program_counter
        port map(
            clk       => clk_tb,
            reset     => reset_tb,
            next_addr => next_addr_tb,
            curr_addr => curr_addr_tb
        );

    clk_tb <= not clk_tb after 10 ns;

    test_loop : process
    begin
        -- start from defualt state
        reset_tb <= '1';
        wait until rising_edge(clk_tb);
        reset_tb <= '0';

        -- test 1: make sure initial value is 0
        wait for 1 ns;
        assert curr_addr_tb = x"00000000"
            report "test 1 failed" severity error;

        -- test 2: make sure it updates the address
        next_addr_tb <= x"12345678";
        wait until rising_edge(clk_tb);
        wait for 1 ns;

        assert curr_addr_tb = x"12345678"
            report "test 2 failed" severity error;

        -- test 3: make sure reset works
        next_addr_tb <= x"88888888";
        reset_tb <= '1';
        wait until rising_edge(clk_tb);
        wait for 1 ns;

        assert curr_addr_tb = x"00000000"
            report "test 3 failed" severity error;

        reset_tb <= '0';

        -- test 4: make sure consecutive updates work, not just a single one
        next_addr_tb <= x"00000010";
        wait until rising_edge(clk_tb);
        wait for 1 ns;

        next_addr_tb <= x"00000020";
        wait until rising_edge(clk_tb);
        wait for 1 ns;

        assert curr_addr_tb = x"00000020"
            report "test 4 failed" severity error;

        -- test 5: make sure curr_addr does not change without a clock edge
        next_addr_tb <= x"FFFFFFFF";
        wait for 1 ns;

        assert curr_addr_tb = x"00000020"
            report "test 5 failed" severity error;

        report "all tests completed";

        wait;
    end process;
end architecture simulation;