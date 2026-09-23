-- picks the next PC: PC+4, a branch target, or a JALR target
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc_src_mux is
    port (
        pc4         : in  std_logic_vector(31 downto 0);
        branch      : in  std_logic_vector(31 downto 0);
        jalr        : in  std_logic_vector(31 downto 0);
        pc_src_sel  : in  std_logic_vector(1 downto 0);
        pc_src      : out std_logic_vector(31 downto 0)
    );
end entity pc_src_mux;

architecture behavior of pc_src_mux is
begin
    with pc_src_sel select
        pc_src <=   pc4 when "00",
                    branch when "01",
                    jalr when "10",
                    (others => '0') when others;
end architecture behavior;