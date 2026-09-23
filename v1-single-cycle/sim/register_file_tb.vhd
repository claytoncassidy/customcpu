library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file_tb is
end entity register_file_tb;

architecture simulation of register_file_tb is
    signal clk_tb          : std_logic := '0';
    signal read_addr1_tb   : std_logic_vector(4 downto 0);
    signal read_addr2_tb   : std_logic_vector(4 downto 0);
    signal write_addr_tb   : std_logic_vector(4 downto 0);
    signal write_data_tb   : std_logic_vector(31 downto 0);
    signal write_enable_tb : std_logic;
    signal reset_tb        : std_logic;
    signal data1_tb        : std_logic_vector(31 downto 0);
    signal data2_tb        : std_logic_vector(31 downto 0);

begin
    uut : entity work.register_file
        port map(
            clk          => clk_tb,
            read_addr1   => read_addr1_tb,
            read_addr2   => read_addr2_tb,
            write_addr   => write_addr_tb,
            write_data   => write_data_tb,
            write_enable => write_enable_tb,
            reset        => reset_tb,
            data1        => data1_tb,
            data2        => data2_tb
        );

    clk_tb <= not clk_tb after 10 ns;

    test_loop : process
    begin
        -- start from a defualt state
        reset_tb        <= '1';
        write_enable_tb <= '0';
        wait until rising_edge(clk_tb);
        reset_tb <= '0';

        -- test 1: write 42 into register 5, then read it back
        write_addr_tb   <= "00101";
        write_data_tb   <= x"0000002A";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        read_addr1_tb   <= "00101";
        wait for 1 ns;

        assert data1_tb = x"0000002A"
            report "test 1 failed" severity error;

        -- test 2: try to write a nonzero value to register x0
        write_addr_tb   <= "00000";
        write_data_tb   <= x"01234567";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        read_addr2_tb   <= "00000";
        wait for 1 ns;

        assert data2_tb = x"00000000"
            report "test 2 failed" severity error;
        assert data1_tb = x"0000002A"
            report "test 2 failed" severity error;

        -- test 3: write_enable = '0' should prevent any write
        write_addr_tb   <= "01010";
        write_data_tb   <= x"12345678";
        write_enable_tb <= '0';
        wait until rising_edge(clk_tb);

        read_addr1_tb   <= "01010";
        wait for 10 ns;

        assert data1_tb = x"00000000"
            report "test 3 failed" severity error;

        -- test 4: reset should clear out previously written values
        write_addr_tb   <= "00011"; -- register 3
        write_data_tb   <= x"000000FF";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        reset_tb        <= '1';
        wait until rising_edge(clk_tb);
        reset_tb        <= '0';

        read_addr1_tb   <= "00011";
        wait for 10 ns;

        assert data1_tb = x"00000000"
            report "test 4 failed" severity error;

        -- test 5: two independent, simultaneous reads
        write_addr_tb   <= "00001"; -- register 1
        write_data_tb   <= x"00000011";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_addr_tb   <= "00010"; -- register 2
        write_data_tb   <= x"00000022";
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        read_addr1_tb   <= "00001";
        read_addr2_tb   <= "00010";
        wait for 10 ns;

        assert data1_tb = x"00000011"
            report "test 5 failed: read_addr1 did not return register 1's value" severity error;
        assert data2_tb = x"00000022"
            report "test 5 failed: read_addr2 did not return register 2's value" severity error;

        -- test 6: reading a register the same cycle its written should show the OLD value first
        write_addr_tb   <= "00100"; -- register 4, currently 0
        write_data_tb   <= x"000000AA";
        write_enable_tb <= '1';
        read_addr1_tb   <= "00100"; -- reading the SAME register being written, same cycle
        wait for 1 ns; -- check before the clock edge applies the write

        assert data1_tb = x"00000000"
            report "test 6 failed: read showed the new value before the write took effect" severity error;

        wait until rising_edge(clk_tb);
        write_enable_tb <= '0';
        wait for 10 ns;

        assert data1_tb = x"000000AA"
            report "test 6 failed: register 4 did not hold the written value after the clock edge" severity error;

        -- test 7: a second write to the same register should overwrite the first
        write_addr_tb   <= "00110"; -- register 6
        write_data_tb   <= x"00000001";
        write_enable_tb <= '1';
        wait until rising_edge(clk_tb);

        write_data_tb   <= x"00000002";
        wait until rising_edge(clk_tb);

        write_enable_tb <= '0';
        read_addr1_tb   <= "00110";
        wait for 10 ns;

        assert data1_tb = x"00000002"
            report "test 7 failed" severity error;

        report "all tests completed";
        wait;
    end process;

end architecture simulation;