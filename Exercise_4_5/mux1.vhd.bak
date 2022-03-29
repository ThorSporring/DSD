library ieee;
use ieee.std_logic_1164.all

entity mux1 is
    port(
        show: in std_logic;
        secret_value: in std_logic_vector(7 downto 0);
        bin_input: in std_logic_vector(7 downto 0);
        mux1: out std_logic_vector(7 downto 0)
    ;

architecture mux1_impl of mux1 is

    begin
        if show = '1' then
            mux1 <= bin_input;
        else
            mux1 <= secret_value;
            
end mux1_impl;