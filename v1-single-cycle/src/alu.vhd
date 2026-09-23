-- performs all 10 of the RV32I register-register operations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    port(
        -- signals
        a           : in  std_logic_vector(31 downto 0);
        b           : in  std_logic_vector(31 downto 0);
        alu_op      : in  std_logic_vector(3 downto 0);
        result      : out std_logic_vector(31 downto 0);
        -- flags (zero is the only one actively used, other two are for debugging)
        zero        : out std_logic;
        invalid_op  : out std_logic;
        overflow    : out std_logic
    );
end entity alu;

architecture behavior of alu is

    signal result_internal : std_logic_vector(31 downto 0);

begin
    process(a, b, alu_op)
        variable temp_result : std_logic_vector(31 downto 0);
    begin
        invalid_op  <= '0';
        overflow    <= '0';
        case alu_op is

            -- addition // ADD
            when "0000" =>
                temp_result := std_logic_vector(unsigned(a) + unsigned(b));
                result_internal <= temp_result;
                if (a(31) = b(31)) and (temp_result(31) /= a(31)) then
                    overflow <= '1';
                else
                    overflow <= '0';
                end if;
            -- subtraction // SUB
            when "0001" =>
                temp_result := std_logic_vector(unsigned(a) - unsigned(b));
                result_internal <= temp_result;
                if (a(31) /= b(31)) and (temp_result(31) /= a(31)) then
                    overflow <= '1';
                else
                    overflow <= '0';
                end if;

            -- set less than // SLT
            when "0010" =>
                if signed(a) < signed(b) then
                    result_internal <= (0 => '1', others => '0');
                else
                    result_internal <= (others => '0');
                end if;

            -- set less than unsigned // SLTU
            when "0011" =>
                if unsigned(a) < unsigned(b) then
                    result_internal <= (0 => '1', others => '0');
                else
                    result_internal <= (others => '0');
                end if;

            -- and // AND
            when "0100" =>
                result_internal <= (a AND b);

            -- or // OR
            when "0101" =>
                result_internal <= (a OR b);

            -- exclusive or // XOR
            when "0110" =>
                result_internal <= (a XOR b);

            -- shift left logical // SLL
            when "0111" =>
                result_internal <= std_logic_vector(shift_left(unsigned(a), to_integer(unsigned(b(4 downto 0)))));

            -- shift right logical // SRL
            when "1000" =>
                result_internal <= std_logic_vector(shift_right(unsigned(a), to_integer(unsigned(b(4 downto 0)))));

            -- shift right arithmetic // SRA
            when "1001" =>
                result_internal <= std_logic_vector(shift_right(signed(a), to_integer(unsigned(b(4 downto 0)))));

            -- if nothing hits some how, invalid operation
            when others =>
                result_internal <= (others => '0');
                invalid_op <= '1';

        end case;

    end process;

    result <= result_internal;
    zero   <= '1' when result_internal = x"00000000" else '0';

end architecture behavior;