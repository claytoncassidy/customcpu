library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_tb is
end entity alu_tb;

architecture simulation of alu_tb is
    signal a_tb             : std_logic_vector(31 downto 0);
    signal b_tb             : std_logic_vector(31 downto 0);
    signal alu_op_tb        : std_logic_vector(3 downto 0);
    signal result_tb        : std_logic_vector(31 downto 0);
    signal zero_tb          : std_logic;
    signal invalid_op_tb    : std_logic;
    signal overflow_tb      : std_logic;

    type test_case is record
        a           : std_logic_vector(31 downto 0);
        b           : std_logic_vector(31 downto 0);
        alu_op      : std_logic_vector(3 downto 0);
        result      : std_logic_vector(31 downto 0);
        zero        : std_logic;
        invalid_op  : std_logic;
        overflow    : std_logic;
    end record;

    type test_case_array is array (natural range <>) of test_case;
    constant test_vectors : test_case_array := (
        -- ADD: 1 + 2 = 3
        (a => x"00000001", b => x"00000002", alu_op => "0000", result => x"00000003", zero => '0', invalid_op => '0', overflow => '0'),
        -- ADD overflow: wraps around to 0x80000000
        (a => x"7FFFFFFF", b => x"00000001", alu_op => "0000", result => x"80000000", zero => '0', invalid_op => '0', overflow => '1'),

        -- SUB: 3 - 3 = 0
        (a => x"00000003", b => x"00000003", alu_op => "0001", result => x"00000000", zero => '1', invalid_op => '0', overflow => '0'),
        -- SUB overflow: most negative value minus a positive number wraps around to the most positive value
        (a => x"80000000", b => x"00000001", alu_op => "0001", result => x"7FFFFFFF", zero => '0', invalid_op => '0', overflow => '1'),

        -- SLT: -1 < 5 is true
        (a => x"FFFFFFFF", b => x"00000005", alu_op => "0010", result => x"00000001", zero => '0', invalid_op => '0', overflow => '0'),
        -- SLT equal values: 5 < 5 is false
        (a => x"00000005", b => x"00000005", alu_op => "0010", result => x"00000000", zero => '1', invalid_op => '0', overflow => '0'),

        -- SLTU: 4294967295 < 5 is false
        (a => x"FFFFFFFF", b => x"00000005", alu_op => "0011", result => x"00000000", zero => '1', invalid_op => '0', overflow => '0'),
        -- SLTU normal case: 3 < 7 is true
        (a => x"00000003", b => x"00000007", alu_op => "0011", result => x"00000001", zero => '0', invalid_op => '0', overflow => '0'),

        -- AND: 0xF AND 0x9 = 0x9
        (a => x"FFFFFFF0", b => x"F000000F", alu_op => "0100", result => x"F0000000", zero => '0', invalid_op => '0', overflow => '0'),
        -- AND resulting in zero: no overlapping bits
        (a => x"000000F0", b => x"0000000F", alu_op => "0100", result => x"00000000", zero => '1', invalid_op => '0', overflow => '0'),

        -- OR: 0xF OR 0xF0 = 0xFF
        (a => x"FFFF0000", b => x"0000FFFF", alu_op => "0101", result => x"FFFFFFFF", zero => '0', invalid_op => '0', overflow => '0'),
        -- OR identity: stays the same
        (a => x"12345678", b => x"00000000", alu_op => "0101", result => x"12345678", zero => '0', invalid_op => '0', overflow => '0'),

        -- XOR: 0xF XOR 0xF = 0
        (a => x"0000000F", b => x"0000000F", alu_op => "0110", result => x"00000000", zero => '1', invalid_op => '0', overflow => '0'),
        -- XOR: 1111 XOR 1001 = 0110
        (a => x"0000000F", b => x"00000009", alu_op => "0110", result => x"00000006", zero => '0', invalid_op => '0', overflow => '0'),

        -- SLL: 1 shifted left by 4 = 16
        (a => x"00000001", b => x"00000004", alu_op => "0111", result => x"00000010", zero => '0', invalid_op => '0', overflow => '0'),
        -- SLL: only the lower 5 bits of b should matter, upper garbage bits ignored (same shift amount as above, different b)
        (a => x"00000001", b => x"FFFFFFE4", alu_op => "0111", result => x"00000010", zero => '0', invalid_op => '0', overflow => '0'),

        -- SRL: 0x80000000 shifted right by 4 = 0x08000000
        (a => x"80000000", b => x"00000004", alu_op => "1000", result => x"08000000", zero => '0', invalid_op => '0', overflow => '0'),
        -- SRL shift by 0: value passes through unchanged
        (a => x"12345678", b => x"00000000", alu_op => "1000", result => x"12345678", zero => '0', invalid_op => '0', overflow => '0'),

        -- SRA: 0x80000000 shifted right by 4 = 0xF8000000 (filled with 1s because it is signed)
        (a => x"80000000", b => x"00000004", alu_op => "1001", result => x"F8000000", zero => '0', invalid_op => '0', overflow => '0'),
        -- SRA on a positive value: matches SRL exactly, since the sign bit is 0
        (a => x"40000000", b => x"00000004", alu_op => "1001", result => x"04000000", zero => '0', invalid_op => '0', overflow => '0'),

        -- invalid opcode: an unused alu_op code should raise invalid_op
        (a => x"00000000", b => x"00000000", alu_op => "1111", result => x"00000000", zero => '1', invalid_op => '1', overflow => '0')
    );

begin
    uut : entity work.alu
        port map(
            a => a_tb,
            b => b_tb,
            alu_op => alu_op_tb,
            result => result_tb,
            zero => zero_tb,
            invalid_op => invalid_op_tb,
            overflow => overflow_tb
        );

    test_loop : process
    begin
        for i in test_vectors'range loop
            a_tb <= test_vectors(i).a;
            b_tb <= test_vectors(i).b;
            alu_op_tb <= test_vectors(i).alu_op;
            wait for 10 ns;
            assert result_tb = test_vectors(i).result
                report "incorrect result at index " & integer'image(i) severity error;
            assert zero_tb = test_vectors(i).zero
                report "incorrect zero at index " & integer'image(i) severity error;
            assert invalid_op_tb = test_vectors(i).invalid_op
                report "incorrect invalid_op at index " & integer'image(i) severity error;
            assert overflow_tb = test_vectors(i).overflow
                report "incorrect overflow at index " & integer'image(i) severity error;
        end loop;
        report "all tests completed";
        wait;
    end process;
    
end architecture simulation;