library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is
    port(
        instruction : in std_logic_vector(31 downto 0);
        alu_zero    : in std_logic;
        reg_write   : out std_logic;
        mem_write   : out std_logic;
        alu_op      : out std_logic_vector(3 downto 0);
        alu_a_sel   : out std_logic_vector(1 downto 0);
        alu_b_sel   : out std_logic;
        wb_sel      : out std_logic_vector(1 downto 0);
        pc_src_sel  : out std_logic_vector(1 downto 0)
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
        reg_write  <= '0';
        mem_write  <= '0';
        alu_op     <= "0000";
        alu_a_sel  <= "00";
        alu_b_sel  <= '0';
        wb_sel     <= "00";
        pc_src_sel <= "00";

        case opcode is
            when "0110011" => -- r type
                reg_write <= '1';
                mem_write <= '0';
                alu_a_sel <= "00";
                alu_b_sel <= '0';
                wb_sel <= "00";
                pc_src_sel <= "00";
                case funct3 is
                    when "000" =>
                    case funct7 is
                        when "0" => -- add
                            alu_op <= "0000";
                        when "1" => -- sub
                            alu_op <= "0001";
                    end case;
                    when "001" => -- sll
                        alu_op <= "0111";
                    when "010" =>
                    when "011" =>
                    when "100" =>
                    when "101" =>
                    when "110" =>
                    when "111" =>
                end case;
            when "0010011" => -- i type
            when "0000011" => -- lw
            when "0100011" => -- sw
            when "1100011" => -- branch
            when "1101111" => -- jal
            when "1100111" => -- jalr
            when "0110111" => -- lui
            when "0010111" => -- auipc
            when "0001111" => -- fence
            when "1110011" => -- system
        end case;
    end process;
end architecture behavior;