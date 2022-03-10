library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_div is
    port
    (
        a: in std_logic_vector(7 downto 0);
        a_shl, a_shr, a_ror: out std_logic_vector(7 downto 0)
    );
end shift_div;

architecture shift_left_one of shift_div is
--bitshifter 8 bits Ã©n gang til venstre
    begin
        a_shl <= a(6 downto 0) & "0";
end shift_left_one;

architecture shift_right_two of shift_div is
--Bitshifter 8 bits 2 gange til hÃ¸jre
    begin
        a_shr <= "00" & a(7 downto 2);
end shift_right_two;

architecture rotate_three of shift_div is
--Roterer 8 bits 3 gange til hÃ¸jre
    begin
        a_ror <= a(2 downto 0 ) & a(7 downto 3);
 end rotate_three;