library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_xor is
	
	port
	(
		-- Input ports
		a,b: in  std_logic;
		
		-- Output ports
		f	: out std_logic
	);
end my_xor;

architecture my_xor_impl of my_xor is
	begin
		f <= a xor b;
end my_xor_impl;

