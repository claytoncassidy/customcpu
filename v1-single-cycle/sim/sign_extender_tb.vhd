library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extender_tb is
end entity sign_extender_tb;

architecture simulation of sign_extender_tb is
    signal instruction_tb   : std_logic_vector(31 downto 0);
    signal extended_tb      : std_logic_vector(31 downto 0);

    type test_case is record
        instruction : std_logic_vector(31 downto 0);
        extended    : std_logic_vector(31 downto 0);
    end record;

    type test_case_array is array(natural range <>) of test_case;
    constant test_vectors : test_case_array := (
        -- I-type positive immediate: imm = 1, sign bit 0, should zero-extend
        (instruction => "000000000001" & "0000000000000" & "0010011",
         extended    => x"00000001"),
        -- I-type negative immediate: imm = -1, sign bit 1, should sign-extend to all 1s
        (instruction => "111111111111" & "0000000000000" & "0010011",
         extended    => x"FFFFFFFF"),

        -- S-type positive immediate: imm = 9, split across imm[11:5] and imm[4:0]
        (instruction => "0000000" & "00000" & "00000" & "000" & "01001" & "0100011",
         extended    => x"00000009"),
        -- S-type negative immediate: imm = -8
        (instruction => "1111111" & "00000" & "00000" & "000" & "11000" & "0100011",
         extended    => x"FFFFFFF8"),

        -- B-type positive branch offset: imm = 16 (even, implicit bit 0 = 0)
        (instruction => "0" & "000000" & "00000" & "00000" & "000" & "1000" & "0" & "1100011",
         extended    => x"00000010"),
        -- B-type negative branch offset: imm = -16
        (instruction => "1" & "111111" & "00000" & "00000" & "000" & "1000" & "1" & "1100011",
         extended    => x"FFFFFFF0"),

        -- U-type: imm placed directly into the upper 20 bits, lower 12 zero-filled
        (instruction => "00010010001101000101" & "00000" & "0110111",
         extended    => x"12345000"),
        -- U-type all-ones upper immediate: confirms the low 12 bits still zero-fill
        (instruction => "11111111111111111111" & "00000" & "0010111",
         extended    => x"FFFFF000"),

        -- J-type positive jump offset: imm = 32 (even, implicit bit 0 = 0)
        (instruction => "0" & "0000010000" & "0" & "00000000" & "00000" & "1101111",
         extended    => x"00000020"),
        -- J-type negative jump offset: imm = -32
        (instruction => "1" & "1111110000" & "1" & "11111111" & "00000" & "1101111",
         extended    => x"FFFFFFE0"),

        -- unrecognized opcode (OP/R-type has no immediate): falls to others, output zero
        (instruction => (31 downto 7 => '1') & "0110011",
         extended    => x"00000000")
    );

begin
    uut : entity work.sign_extender
        port map(
            instruction => instruction_tb,
            extended => extended_tb
        );

    test_loop : process
        begin
            for i in test_vectors'range loop
                instruction_tb <= test_vectors(i).instruction;
                wait for 10 ns;
                assert extended_tb = test_vectors(i).extended
                    report "incorrect extended value at index " & integer'image(i) severity error;
            end loop;
            report "all tests completed";
            wait;
        end process;
end architecture simulation;