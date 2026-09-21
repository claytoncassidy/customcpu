library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity load_extender_tb is
end entity load_extender_tb;

architecture simulation of load_extender_tb is
    signal raw_data_tb      : std_logic_vector(31 downto 0);
    signal mem_size_tb      : std_logic_vector(1 downto 0);
    signal load_unsigned_tb : std_logic;
    signal extended_tb      : std_logic_vector(31 downto 0);

    type test_case is record
        raw_data      : std_logic_vector(31 downto 0);
        mem_size      : std_logic_vector(1 downto 0);
        load_unsigned : std_logic;
        extended      : std_logic_vector(31 downto 0);
    end record;

    type test_case_array is array (natural range <>) of test_case;
    constant test_vectors : test_case_array := (
        -- byte, unsigned: 0xFF zero-extends to 255
        (raw_data => x"000000FF", mem_size => "00", load_unsigned => '1', extended => x"000000FF"),
        -- byte, signed, negative: 0xFF sign-extends to -1
        (raw_data => x"000000FF", mem_size => "00", load_unsigned => '0', extended => x"FFFFFFFF"),
        -- byte, signed, positive: sign bit clear, extension is a no-op
        (raw_data => x"00000045", mem_size => "00", load_unsigned => '0', extended => x"00000045"),

        -- halfword, unsigned: 0xFFFF zero-extends to 65535
        (raw_data => x"0000FFFF", mem_size => "01", load_unsigned => '1', extended => x"0000FFFF"),
        -- halfword, signed, negative: 0xFFFF sign-extends to -1
        (raw_data => x"0000FFFF", mem_size => "01", load_unsigned => '0', extended => x"FFFFFFFF"),
        -- halfword, signed, positive: sign bit clear, extension is a no-op
        (raw_data => x"00001234", mem_size => "01", load_unsigned => '0', extended => x"00001234"),

        -- word: always passes through unchanged, load_unsigned irrelevant either way
        (raw_data => x"12345678", mem_size => "10", load_unsigned => '0', extended => x"12345678"),
        (raw_data => x"12345678", mem_size => "10", load_unsigned => '1', extended => x"12345678"),

        -- unused mem_size encoding: defaults to others, output forced to zero
        (raw_data => x"FFFFFFFF", mem_size => "11", load_unsigned => '0', extended => x"00000000")
    );

begin
    uut : entity work.load_extender
        port map(
            raw_data      => raw_data_tb,
            mem_size      => mem_size_tb,
            load_unsigned => load_unsigned_tb,
            extended      => extended_tb
        );

    test_loop : process
    begin
        for i in test_vectors'range loop
            raw_data_tb      <= test_vectors(i).raw_data;
            mem_size_tb      <= test_vectors(i).mem_size;
            load_unsigned_tb <= test_vectors(i).load_unsigned;
            wait for 10 ns;

            assert extended_tb = test_vectors(i).extended
                report "incorrect extended value at index " & integer'image(i) severity error;
        end loop;
        report "all tests completed";
        wait;
    end process;

end architecture simulation;
