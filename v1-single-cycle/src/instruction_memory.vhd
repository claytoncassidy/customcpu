-- stores the program, outputs whatever instruction the PC points to
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_memory is
    port(
        address     : in  std_logic_vector(31 downto 0);
        instruction : out std_logic_vector(31 downto 0)
    );
end entity instruction_memory;

architecture behavior of instruction_memory is
    type instruction_array is array (0 to 255) of std_logic_vector(31 downto 0);

    -- top-level integration test program
    constant memory : instruction_array := (
        0   => x"00500093", -- ADDI x1, x0, 5
        1   => x"00300113", -- ADDI x2, x0, 3
        2   => x"002081B3", -- ADD x3, x1, x2
        3   => x"00302023", -- SW x3, 0(x0)
        4   => x"00002203", -- LW x4, 0(x0)
        5   => x"FFF00293", -- ADDI x5, x0, -1
        6   => x"00500223", -- SB x5, 4(x0)
        7   => x"00400303", -- LB x6, 4(x0)
        8   => x"00501423", -- SH x5, 8(x0)
        9   => x"00805383", -- LHU x7, 8(x0)
        10  => x"12345437", -- LUI x8, 0x12345
        11  => x"00001497", -- AUIPC x9, 0x1
        12  => x"00000463", -- BEQ x0, x0, +8 (taken, skips instruction design to mess result up)
        13  => x"06300513", -- ADDI x10, x0, 99 (bad instruction, supposed to skip this)
        14  => x"02A00513", -- ADDI x10, x0, 42 (real target)
        15  => x"00208663", -- BEQ x1, x2, +12 (not taken)
        16  => x"02A00593", -- ADDI x11, x0, 42 (correct next instruction after not taking branch)
        17  => x"0080006F", -- JAL x0, +8 (skip bad instruction)
        18  => x"04D00593", -- ADDI x11, x0, 77 (bad instruction, supposed to skip this)
        19  => x"0080066F", -- JAL x12, +8
        20  => x"04D00693", -- ADDI x13, x0, 77 (bad instruction, supposed to skip this)
        21  => x"02A00713", -- ADDI x14, x0, 42 (real target)
        22  => x"06400793", -- ADDI x15, x0, 0x64 (base addr setup)
        23  => x"00078867", -- JALR x16, 0(x15)
        24  => x"04D00893", -- ADDI x17, x0, 77 (bad instruction, supposed to skip this)
        25  => x"02A00913", -- ADDI x18, x0, 42 (real target)
        others => (others => '0')
    );
begin
    instruction <= memory(to_integer(unsigned(address(9 downto 2))));
end architecture behavior;