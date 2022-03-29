library ieee;
use ieee.std_logic_1164.all

entity mux2 is 
    port(
        seg_1: in std_logic_vector(13 downto 0);
        compare_logic: in std_logic_vector(2 downto 0);
        hex: out std_logic_vector(13 downto 0);
    );


architecture mux2_impl of mux2 is
    
    begin
        if compare_logic = "10" then
            hex <= "0001001" & "1101111"; -- "H i"
        elsif compare_logic = "01" then
            hex <= "1000111" & "0100011"; -- "L o"
        elsif compare_logic = "00" then
            hex <= "0111111" & "0111111"; -- "- -"
        else if compare_logic = "11" then
            hex <= seg_1;
        end if;

end mux2_impl;