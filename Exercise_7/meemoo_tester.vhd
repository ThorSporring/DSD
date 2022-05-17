library ieee;
use ieee.std_logic_1164.all;

entity meemoo_tester is
    port(
        SW: in std_logic_vector(1 downto 0);
        KEY: in std_logic_vector(1 downto 0);
        LEDR: out std_logic_vector(1 downto 0)
    );
end meemoo_tester;

architecture meemoo_tester_impl of meemoo_tester is
    begin
        tst: entity work.meemoo(meemoo_impl) port map(
           clk => KEY(0),
           reset => KEY(1),
           a => SW(0),
           b => SW(1),
           moo_out => LEDR(0),
           mee_out => LEDR(1)
        );
end meemoo_tester_impl;