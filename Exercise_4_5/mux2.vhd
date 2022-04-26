library ieee;
use ieee.std_logic_1164.all;

entity mux2 is -- Implementation of in and outputs
    port(
        seg_1: in std_logic_vector(13 downto 0);
        compare_logic: in std_logic_vector(1 downto 0);
        hex: out std_logic_vector(13 downto 0)
    );
end mux2;

architecture mux2_impl of mux2 is
	-- Sends two binary numbers out on the output, which is used to
	-- print numbers and letters on the 7-segment
	-- in comparison with whichever value compare_logic has.
    begin
	 mux2_if: process(compare_logic,seg_1)
    begin
	 case(compare_logic) is
		when "10" => hex <= "0001001" & "1101111"; -- "H i"
		when "01" => hex <= "1000111" & "0100011"; -- "L o"
		when "00" => hex <= "0111111" & "0111111"; -- "- -"
		when "11" => hex <= seg_1;    
   end case;
	end process mux2_if;
end mux2_impl;