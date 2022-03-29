library ieee;
use ieee.std_logic_1164.all;

entity compare_logic is
    port(
        try: in std_logic;
        bin_input: in std_logic_vector(7 downto 0);
        secret_value: in std_logic_vector(7 downto 0);
        compare_value: out std_logic_vector(1 downto 0) -- "Hi", "Lo" or "-"
    );
end compare_logic;

architecture compare_logic_impl of compare_logic is
	begin 
    p1:process(try,bin_input,secret_value)
    begin
        if try = '0' then
            if bin_input > secret_value then
                compare_value <= "10";
            elsif bin_input < secret_value then
                compare_value <= "01";
            elsif bin_input = secret_value then
                compare_value <= "00";
            end if;
        else 
            compare_value <= "11";
        end if;
	end process p1;
end compare_logic_impl;