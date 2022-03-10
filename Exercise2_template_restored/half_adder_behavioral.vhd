library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity half_adder_behavioral is

	port (
		-- Input ports
		A : in std_logic;
		B : in std_logic;

		-- Output ports
		Sum : out std_logic;
		Cout : out std_logic
	);
end half_adder_behavioral;

architecture half_adder_behavioral of half_adder_behavioral is
begin
ha: process(a,b)
		begin
			if a = '1' then				-- If a is one, then the sum can't be zero
				sum <= not b;				-- sum is not b, ergo sum is 1
				cout <= b;					-- carry flag is 0
			else
				sum <= b;					
				cout <= '0';
	
			end if;
		end process ha;

end half_adder_behavioral;



