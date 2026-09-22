library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_wrapper_tb is
end entity top_wrapper_tb;

architecture simulation of top_wrapper_tb is
    signal clk_tb         : std_logic := '0';
    signal reset_tb       : std_logic;
    signal writebackOUT_tb : std_logic_vector(31 downto 0);

begin
    uut : entity work.top_wrapper
        port map(
            clk_0        => clk_tb,
            reset_0      => reset_tb,
            writebackOUT => writebackOUT_tb
        );

    clk_tb <= not clk_tb after 10 ns;

    test_loop : process
    begin
        reset_tb <= '1';
        wait until rising_edge(clk_tb);
        reset_tb <= '0';

        -- edge 2: ADD x3, x1, x2
        for i in 1 to 2 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"00000008"
            report "x3 failed: ADD did not produce 8" severity error;

        -- edge 4: LW x4, 0(x0)
        for i in 1 to 2 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"00000008"
            report "x4 failed: store-then-load round trip broken" severity error;

        -- edge 7: LB x6, 4(x0)
        for i in 1 to 3 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"FFFFFFFF"
            report "x6 failed: LB sign-extension not wired correctly" severity error;

        -- edge 9: LHU x7, 8(x0)
        for i in 1 to 2 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"0000FFFF"
            report "x7 failed: LHU zero-extension not wired correctly" severity error;

        -- edge 10: LUI x8
        wait until rising_edge(clk_tb);
        wait for 1 ns;
        assert writebackOUT_tb = x"12345000"
            report "x8 failed: LUI / alu_a_mux zero path broken" severity error;

        -- edge 11: AUIPC x9
        wait until rising_edge(clk_tb);
        wait for 1 ns;
        assert writebackOUT_tb = x"0000102C"
            report "x9 failed: AUIPC / alu_a_mux pc path broken" severity error;

        -- edge 13: taken BEQ's real target, x10 = 42
        for i in 1 to 2 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"0000002A"
            report "x10 failed: taken BEQ did not redirect correctly (got poison value?)" severity error;

        -- edge 15: not-taken BEQ's fallthrough, x11 = 42
        for i in 1 to 2 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"0000002A"
            report "x11 failed: not-taken BEQ did not fall through correctly" severity error;

        -- edge 18: JAL's real target, x14 = 42
        for i in 1 to 3 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"0000002A"
            report "x14 failed: JAL did not redirect correctly" severity error;

        -- edge 21: JALR's real target, x18 = 42
        for i in 1 to 3 loop
            wait until rising_edge(clk_tb);
        end loop;
        wait for 1 ns;
        assert writebackOUT_tb = x"0000002A"
            report "x18 failed: JALR did not redirect correctly" severity error;

        report "all tests completed";
        wait;
    end process;

end architecture simulation;
