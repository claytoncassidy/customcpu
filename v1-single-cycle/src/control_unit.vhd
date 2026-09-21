library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is
    port(
        instruction     : in std_logic_vector(31 downto 0);
        alu_zero        : in std_logic;
        reg_write       : out std_logic;
        mem_write       : out std_logic;
        alu_op          : out std_logic_vector(3 downto 0);
        alu_a_sel       : out std_logic_vector(1 downto 0);
        alu_b_sel       : out std_logic;
        wb_sel          : out std_logic_vector(1 downto 0);
        pc_src_sel      : out std_logic_vector(1 downto 0);
        mem_size        : out std_logic_vector(1 downto 0);
        load_unsigned   : out std_logic
    );
end entity control_unit;

architecture behavior of control_unit is
signal opcode   : std_logic_vector(6 downto 0);
signal funct3   : std_logic_vector(2 downto 0);
signal funct7   : std_logic_vector(6 downto 0);
begin
    opcode <= instruction(6 downto 0);
    funct3 <= instruction(14 downto 12);
    funct7 <= instruction(31 downto 25);
    process(opcode, funct3, funct7, alu_zero)
    begin
        -- defaults
        reg_write       <= '0';
        mem_write       <= '0';
        alu_op          <= "0000";
        alu_a_sel       <= "00";
        alu_b_sel       <= '0';
        wb_sel          <= "00";
        pc_src_sel      <= "00";
        mem_size        <= "00";
        load_unsigned   <= '0';

        case opcode is
            when "0110011" => -- OP
                reg_write <= '1';
                case funct3 is
                    when "000" =>
                        case funct7(5) is
                            when '0' => alu_op <= "0000"; -- add
                            when '1' => alu_op <= "0001"; -- sub
                            when others => null;
                        end case;
                    when "001" => alu_op <= "0111"; -- sll
                    when "010" => alu_op <= "0010"; -- slt
                    when "011" => alu_op <= "0011"; -- sltu
                    when "100" => alu_op <= "0110"; -- xor
                    when "101" =>
                        case funct7(5) is
                            when '0' => alu_op <= "1000"; -- srl
                            when '1' => alu_op <= "1001"; -- sra
                            when others => null;
                        end case;
                    when "110" => alu_op <= "0101"; -- or
                    when "111" => alu_op <= "0100"; -- and
                    when others => null;
                end case;

            when "0010011" => -- OP-IMM
                reg_write <= '1';
                alu_b_sel <= '1';
                case funct3 is
                    when "000" => alu_op <= "0000"; -- addi
                    when "010" => alu_op <= "0010"; -- slti
                    when "011" => alu_op <= "0011"; -- sltiu
                    when "100" => alu_op <= "0110"; -- xori
                    when "110" => alu_op <= "0101"; -- ori
                    when "111" => alu_op <= "0100"; -- andi
                    when "001" => alu_op <= "0111"; -- slli
                    when "101" =>
                        case funct7(5) is
                            when '0' => alu_op <= "1000"; -- srli
                            when '1' => alu_op <= "1001"; -- srai
                            when others => null;
                        end case;
                    when others => null;
                end case;

            when "0000011" => -- LOAD (lb/lh/lw/lbu/lhu)
                -- word-only for now: data_memory has no byte/halfword support yet,
                -- so every load funct3 currently produces identical control signals
                reg_write       <= '1';
                alu_b_sel       <= '1';
                alu_op          <= "0000"; -- address = rs1 + immediate
                wb_sel          <= "01";   -- writeback comes from memory, not the ALU
                mem_size        <= funct3(1 downto 0); -- bottom 2 bits determine byte, halfword, or fullword
                load_unsigned   <= funct3(2); -- this bit determines signed vs unsigned

            when "0100011" => -- STORE (sb/sh/sw)
                -- word-only for now, same limitation as LOAD
                mem_write <= '1';
                alu_b_sel <= '1';
                alu_op    <= "0000"; -- address = rs1 + immediate
                mem_size        <= funct3(1 downto 0); --bottom 2 bits determine byte, halfword, or fullword

            when "1100011" => -- BRANCH
                case funct3 is
                    when "000" => -- beq
                        alu_op <= "0001"; -- sub
                        if alu_zero = '1' then
                            pc_src_sel <= "01";
                        end if;
                    when "001" => -- bne
                        alu_op <= "0001"; -- sub
                        if alu_zero = '0' then
                            pc_src_sel <= "01";
                        end if;
                    when "100" => -- blt
                        alu_op <= "0010"; -- slt
                        if alu_zero = '0' then
                            pc_src_sel <= "01";
                        end if;
                    when "101" => -- bge
                        alu_op <= "0010"; -- slt
                        if alu_zero = '1' then
                            pc_src_sel <= "01";
                        end if;
                    when "110" => -- bltu
                        alu_op <= "0011"; -- sltu
                        if alu_zero = '0' then
                            pc_src_sel <= "01";
                        end if;
                    when "111" => -- bgeu
                        alu_op <= "0011"; -- sltu
                        if alu_zero = '1' then
                            pc_src_sel <= "01";
                        end if;
                    when others => null;
                end case;

            when "1101111" => -- JAL
                reg_write  <= '1';
                wb_sel     <= "10"; -- PC+4
                pc_src_sel <= "01"; -- reuses the branch-target adder's PC+immediate output

            when "1100111" => -- JALR
                reg_write  <= '1';
                alu_b_sel  <= '1';
                alu_op     <= "0000"; -- target = rs1 + immediate
                wb_sel     <= "10";   -- PC+4
                pc_src_sel <= "10";   -- ALU-computed target

            when "0110111" => -- LUI
                reg_write <= '1';
                alu_a_sel <= "10"; -- zero
                alu_b_sel <= '1';
                alu_op    <= "0000"; -- zero + immediate = immediate

            when "0010111" => -- AUIPC
                reg_write <= '1';
                alu_a_sel <= "01"; -- pc
                alu_b_sel <= '1';
                alu_op    <= "0000"; -- pc + immediate

            when "0001111" => -- MISC-MEM (fence)
                null; -- no cache, no pipeline, nothing to order -- legally a no-op

            when "1110011" => -- SYSTEM (ecall/ebreak)
                null; -- minimal scope for v1: no privileged/trap infrastructure, treated as inert

            when others =>
                null; -- unrecognized opcode, defaults already cover it
        end case;
    end process;
end architecture behavior;
