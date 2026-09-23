-- pulls the immediate out of an instruction and sign extends it
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extender is
    port(
        instruction : in  std_logic_vector(31 downto 0);
        extended    : out std_logic_vector(31 downto 0)
    );
end entity sign_extender;

architecture behavior of sign_extender is
    signal opcode : std_logic_vector(6 downto 0);
begin
    opcode <= instruction(6 downto 0);
    with opcode select
        extended <= 
                    -- i-type
                    (31 downto 12 => instruction(31)) & instruction(31 downto 20)
                        when "1100111" | "0000011" | "0010011",
                    -- s-type
                    (31 downto 12 => instruction(31)) & instruction(31 downto 25) & instruction(11 downto 7)
                        when "0100011",
                    -- b-type
                    (31 downto 13 => instruction(31)) & instruction(31) & instruction(7) & instruction(30 downto 25) & instruction(11 downto 8) & '0'
                        when "1100011",
                    -- u-type
                    instruction(31 downto 12) & "000000000000"
                        when "0110111" | "0010111",
                    -- j-type
                    (31 downto 21 => instruction(31)) & instruction(31) & instruction(19 downto 12) & instruction(20) & instruction(30 downto 21) & '0'
                        when "1101111",
                    -- unrecognized opcode
                    (others => '0')
                        when others;
end architecture behavior;