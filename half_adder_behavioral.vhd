library ieee;
use ieee.std_logic_1164.all;


--Entity declaration for half adder

entity half_adder_behavioral is
	port(a,b: in std_logic;
	sum, carry: out std_logic);
end half_adder_behavioral;

architecture behavioral of half_adder_behavioral is
	begin 
	ha: process(a,b)
		begin
			if a = '1' then
				sum <= not b;
				carry <= b;
			else
				sum <= b;
				carry <= '0';
	
			end if;
		end process ha;
	end behavioral; 	
		
	