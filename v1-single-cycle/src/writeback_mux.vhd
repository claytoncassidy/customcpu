library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity writeback_mux is
    port (
        alu         : in std_logic_vector(31 downto 0);
        data        : in std_logic_vector(31 downto 0);
        pc4         : in std_logic_vector(31 downto 0);
        wb_sel  : in std_logic_vector(1 downto 0);
        writeback   : out std_logic_vector(31 downto 0)
    );
end entity writeback_mux;

architecture behavior of writeback_mux is
begin
    with wb_sel select
        writeback <=    alu when "00",
                        data when "01",
                        pc4 when "10",
                        pc4 when others;
end architecture behavior;