library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit_tb is
end entity control_unit_tb;

architecture simulation of control_unit_tb is
    signal instruction_tb   : std_logic_vector(31 downto 0);
    signal alu_zero_tb      : std_logic;
    signal reg_write_tb     : std_logic;
    signal mem_write_tb     : std_logic;
    signal alu_op_tb        : std_logic_vector(3 downto 0);
    signal alu_a_sel_tb     : std_logic_vector(1 downto 0);
    signal alu_b_sel_tb     : std_logic;
    signal wb_sel_tb        : std_logic_vector(1 downto 0);
    signal pc_src_sel_tb    : std_logic_vector(1 downto 0);
    signal mem_size_tb      : std_logic_vector(1 downto 0);
    signal load_unsigned_tb : std_logic;

    type test_case is record
        instruction   : std_logic_vector(31 downto 0);
        alu_zero      : std_logic;
        reg_write     : std_logic;
        mem_write     : std_logic;
        alu_op        : std_logic_vector(3 downto 0);
        alu_a_sel     : std_logic_vector(1 downto 0);
        alu_b_sel     : std_logic;
        wb_sel        : std_logic_vector(1 downto 0);
        pc_src_sel    : std_logic_vector(1 downto 0);
        mem_size      : std_logic_vector(1 downto 0);
        load_unsigned : std_logic;
    end record;

    type test_case_array is array (natural range <>) of test_case;
    constant test_vectors : test_case_array := (
        -- OP: add/sub share funct3, split by funct7(5)
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0110011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- add
        (instruction => "0100000" & "00000" & "00000" & "000" & "00000" & "0110011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0001", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- sub
        (instruction => "0100000" & "00000" & "00000" & "101" & "00000" & "0110011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "1001", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- sra

        -- OP-IMM: addi (plain), srli/srai (split by funct7(5))
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0010011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- addi
        (instruction => "0000000" & "00000" & "00000" & "101" & "00000" & "0010011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "1000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- srli
        (instruction => "0100000" & "00000" & "00000" & "101" & "00000" & "0010011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "1001", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- srai

        -- LOAD: all 5 variants, verifying the funct3-reuse trick for mem_size/load_unsigned
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0000011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "01", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- lb
        (instruction => "0000000" & "00000" & "00000" & "001" & "00000" & "0000011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "01", pc_src_sel => "00", mem_size => "01", load_unsigned => '0'), -- lh
        (instruction => "0000000" & "00000" & "00000" & "010" & "00000" & "0000011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "01", pc_src_sel => "00", mem_size => "10", load_unsigned => '0'), -- lw
        (instruction => "0000000" & "00000" & "00000" & "100" & "00000" & "0000011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "01", pc_src_sel => "00", mem_size => "00", load_unsigned => '1'), -- lbu
        (instruction => "0000000" & "00000" & "00000" & "101" & "00000" & "0000011", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "01", pc_src_sel => "00", mem_size => "01", load_unsigned => '1'), -- lhu

        -- STORE: all 3 variants, verifying mem_size passthrough
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0100011", alu_zero => '0',
         reg_write => '0', mem_write => '1', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- sb
        (instruction => "0000000" & "00000" & "00000" & "001" & "00000" & "0100011", alu_zero => '0',
         reg_write => '0', mem_write => '1', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "01", load_unsigned => '0'), -- sh
        (instruction => "0000000" & "00000" & "00000" & "010" & "00000" & "0100011", alu_zero => '0',
         reg_write => '0', mem_write => '1', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "10", load_unsigned => '0'), -- sw

        -- BRANCH: all 6 types, each taken and not-taken -- the highest-risk logic in the module
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "1100011", alu_zero => '1',
         reg_write => '0', mem_write => '0', alu_op => "0001", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- beq taken
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "1100011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0001", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- beq not taken
        (instruction => "0000000" & "00000" & "00000" & "001" & "00000" & "1100011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0001", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- bne taken
        (instruction => "0000000" & "00000" & "00000" & "001" & "00000" & "1100011", alu_zero => '1',
         reg_write => '0', mem_write => '0', alu_op => "0001", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- bne not taken
        (instruction => "0000000" & "00000" & "00000" & "100" & "00000" & "1100011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0010", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- blt taken
        (instruction => "0000000" & "00000" & "00000" & "100" & "00000" & "1100011", alu_zero => '1',
         reg_write => '0', mem_write => '0', alu_op => "0010", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- blt not taken
        (instruction => "0000000" & "00000" & "00000" & "101" & "00000" & "1100011", alu_zero => '1',
         reg_write => '0', mem_write => '0', alu_op => "0010", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- bge taken
        (instruction => "0000000" & "00000" & "00000" & "101" & "00000" & "1100011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0010", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- bge not taken
        (instruction => "0000000" & "00000" & "00000" & "110" & "00000" & "1100011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0011", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- bltu taken
        (instruction => "0000000" & "00000" & "00000" & "110" & "00000" & "1100011", alu_zero => '1',
         reg_write => '0', mem_write => '0', alu_op => "0011", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- bltu not taken
        (instruction => "0000000" & "00000" & "00000" & "111" & "00000" & "1100011", alu_zero => '1',
         reg_write => '0', mem_write => '0', alu_op => "0011", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- bgeu taken
        (instruction => "0000000" & "00000" & "00000" & "111" & "00000" & "1100011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0011", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- bgeu not taken

        -- JAL, JALR, LUI, AUIPC -- each a family of one
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "1101111", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "10", pc_src_sel => "01", mem_size => "00", load_unsigned => '0'), -- jal
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "1100111", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '1',
         wb_sel => "10", pc_src_sel => "10", mem_size => "00", load_unsigned => '0'), -- jalr
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0110111", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "10", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- lui
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0010111", alu_zero => '0',
         reg_write => '1', mem_write => '0', alu_op => "0000", alu_a_sel => "01", alu_b_sel => '1',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- auipc

        -- MISC-MEM, SYSTEM -- inert by design, everything at default
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "0001111", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- fence
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "1110011", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0'), -- ecall/ebreak

        -- unrecognized opcode: falls to others, everything at default
        (instruction => "0000000" & "00000" & "00000" & "000" & "00000" & "1111111", alu_zero => '0',
         reg_write => '0', mem_write => '0', alu_op => "0000", alu_a_sel => "00", alu_b_sel => '0',
         wb_sel => "00", pc_src_sel => "00", mem_size => "00", load_unsigned => '0')
    );

begin
    uut : entity work.control_unit
        port map(
            instruction   => instruction_tb,
            alu_zero      => alu_zero_tb,
            reg_write     => reg_write_tb,
            mem_write     => mem_write_tb,
            alu_op        => alu_op_tb,
            alu_a_sel     => alu_a_sel_tb,
            alu_b_sel     => alu_b_sel_tb,
            wb_sel        => wb_sel_tb,
            pc_src_sel    => pc_src_sel_tb,
            mem_size      => mem_size_tb,
            load_unsigned => load_unsigned_tb
        );

    test_loop : process
    begin
        for i in test_vectors'range loop
            instruction_tb <= test_vectors(i).instruction;
            alu_zero_tb    <= test_vectors(i).alu_zero;
            wait for 10 ns;

            assert reg_write_tb = test_vectors(i).reg_write
                report "incorrect reg_write at index " & integer'image(i) severity error;
            assert mem_write_tb = test_vectors(i).mem_write
                report "incorrect mem_write at index " & integer'image(i) severity error;
            assert alu_op_tb = test_vectors(i).alu_op
                report "incorrect alu_op at index " & integer'image(i) severity error;
            assert alu_a_sel_tb = test_vectors(i).alu_a_sel
                report "incorrect alu_a_sel at index " & integer'image(i) severity error;
            assert alu_b_sel_tb = test_vectors(i).alu_b_sel
                report "incorrect alu_b_sel at index " & integer'image(i) severity error;
            assert wb_sel_tb = test_vectors(i).wb_sel
                report "incorrect wb_sel at index " & integer'image(i) severity error;
            assert pc_src_sel_tb = test_vectors(i).pc_src_sel
                report "incorrect pc_src_sel at index " & integer'image(i) severity error;
            assert mem_size_tb = test_vectors(i).mem_size
                report "incorrect mem_size at index " & integer'image(i) severity error;
            assert load_unsigned_tb = test_vectors(i).load_unsigned
                report "incorrect load_unsigned at index " & integer'image(i) severity error;
        end loop;
        report "all tests completed";
        wait;
    end process;

end architecture simulation;
