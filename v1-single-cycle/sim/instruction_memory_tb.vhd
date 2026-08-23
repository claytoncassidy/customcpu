library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_memory_tb is
end entity instruction_memory_tb;

architecture simulation of instruction_memory_tb is
    signal address_tb     : std_logic_vector(31 downto 0);
    signal instruction_tb : std_logic_vector(31 downto 0);

    type test_case is record
        address     : std_logic_vector(31 downto 0);
        instruction : std_logic_vector(31 downto 0);
    end record;

    type test_case_array is array (natural range <>) of test_case;
    constant test_vectors : test_case_array := (
        -- word 0
        (address => x"00000000", instruction => x"AAAAAAAA"),
        -- word 1
        (address => x"00000004", instruction => x"BBBBBBBB"),
        -- word 2
        (address => x"00000008", instruction => x"CCCCCCCC"),
        -- word 3
        (address => x"0000000C", instruction => x"DDDDDDDD"),
        -- unpopulated word: defaults to zero
        (address => x"00000010", instruction => x"00000000")
    );

begin
    uut : entity work.instruction_memory
        port map(
            address     => address_tb,
            instruction => instruction_tb
        );

    test_loop : process
    begin
        for i in test_vectors'range loop
            address_tb <= test_vectors(i).address;
            wait for 10 ns;
            assert instruction_tb = test_vectors(i).instruction
                report "incorrect instruction at index " & integer'image(i) severity error;
        end loop;
        report "all tests completed";
        wait;
    end process;

end architecture simulation;