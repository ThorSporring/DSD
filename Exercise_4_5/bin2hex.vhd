library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;
entity bin2hex is
-- This entity receives an input in BCD code
    port(
		bin:	in std_logic_vector(3 downto 0);
		seg:	out std_logic_vector(6 downto 0)
    );
end bin2hex;

architecture bin2hex_impl of bin2hex is
	-- Translates BCD code to the correct combination of LED's related to the truthtable
    begin
	process1:process(bin)
    begin 
       case(bin) is
            when "0000" => -- 0
            seg <= "1000000";
            when "0001" => -- 1
            seg <= "1111001";
            when "0010" => -- 2
            seg <= "0100100";
            when "0011" => -- 3
            seg <= "0110000";
            when "0100" => -- 4
            seg <= "0011001";
            when "0101" => -- 5
            seg <= "0010010";
            when "0110" => -- 6
            seg <= "0000010";
            when "0111" => -- 7
            seg <= "1111000";
            when "1000" => -- 8
            seg <= "0000000";
            when "1001" => -- 9
            seg <= "0011000";
            when "1010" => -- A
            seg <= "0001000";
            when "1011" => -- b
            seg <= "0000011";
            when "1100" => -- C
            seg <= "1000110";
            when "1101" => -- d
            seg <= "0100001";
            when "1110" => -- E
            seg <= "0000110";
            when "1111" => -- F
            seg <= "0001110";
            when others => -- Sluk Alle LED'er
            seg <= "1111111";
        end case;
    end process process1;
end bin2hex_impl;

    