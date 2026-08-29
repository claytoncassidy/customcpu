library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_memory_tb is
end entity data_memory_tb;

architecture simulation of data_memory_tb is
    signal clk_tb          : std_logic := '0';
    signal address_tb      : std_logic_vector(31 downto 0);
    signal write_data_tb   : std_logic_vector(31 downto 0);
    signal write_enable_tb : std_logic;
    signal data_tb         : std_logic_vector(31 downto 0);

begin
    uut : entity work.data_memory
        port map(
            clk          => clk_tb,
            address      => address_tb,
            write_data   => write_data_tb,
            write_enable => write_enable_tb,
            data         => data_tb
        );

    clk_tb <= not clk_tb after 10 ns;

    test_loop : process
    begin
        write_enable_tb <= '0';

        -- test 1: write 42 to address 0x14 (word index 5), then read it back
        address_tb      <= x"00000014";
        write_data_tb   <= x"0000002A";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        wait for 1 ns;

        assert data_tb = x"0000002A"
            report "test 1 failed" severity error;

        -- test 2: writing to one address should not affect a different address
        address_tb      <= x"00000000";
        write_data_tb   <= x"01234567";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        address_tb      <= x"00000004"; -- never written, should still be 0
        wait for 1 ns;

        assert data_tb = x"00000000"
            report "test 2 failed: unrelated address was affected" severity error;

        address_tb <= x"00000014"; -- test 1's address, should still hold its value
        wait for 1 ns;

        assert data_tb = x"0000002A"
            report "test 2 failed: earlier write was overwritten" severity error;

        -- test 3: write_enable = '0' should prevent any write
        address_tb      <= x"00000028";
        write_data_tb   <= x"12345678";
        write_enable_tb <= '0';
        wait until rising_edge(clk_tb);

        wait for 10 ns;

        assert data_tb = x"00000000"
            report "test 3 failed" severity error;

        -- test 4: an address that has never been written defaults to zero
        address_tb <= x"00000030";
        wait for 10 ns;

        assert data_tb = x"00000000"
            report "test 4 failed" severity error;

        -- test 5: two distinct addresses hold independent values
        address_tb      <= x"00000004";
        write_data_tb   <= x"00000011";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        address_tb      <= x"00000008";
        write_data_tb   <= x"00000022";
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        address_tb      <= x"00000004";
        wait for 10 ns;

        assert data_tb = x"00000011"
            report "test 5 failed: first address did not hold its own value" severity error;

        address_tb <= x"00000008";
        wait for 10 ns;

        assert data_tb = x"00000022"
            report "test 5 failed: second address did not hold its own value" severity error;

        -- test 6: reading an address the same cycle it's written should show the OLD value first
        address_tb      <= x"00000010";
        write_data_tb   <= x"000000AA";
        write_enable_tb <= '1';
        wait for 1 ns; -- check before the clock edge applies the write

        assert data_tb = x"00000000"
            report "test 6 failed: read showed the new value before the write took effect" severity error;

        wait until rising_edge(clk_tb);
        write_enable_tb <= '0';
        wait for 10 ns;

        assert data_tb = x"000000AA"
            report "test 6 failed: address did not hold the written value after the clock edge" severity error;

        -- test 7: a second write to the same address should overwrite the first
        address_tb      <= x"00000018";
        write_data_tb   <= x"00000001";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_data_tb   <= x"00000002";
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        wait for 10 ns;

        assert data_tb = x"00000002"
            report "test 7 failed" severity error;

        report "all tests completed";
        wait;
    end process;

end architecture simulation;
