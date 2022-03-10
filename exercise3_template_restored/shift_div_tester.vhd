library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_div_tester is
	
	port(
	SW : in std_logic_vector (7 downto 0);
	
	LEDR : out std_logic_vector (7 downto 0)
	);
	end shift_div_tester;

architecture shift_div_tester_impl of shift_div_tester is

	begin
	
		sl: entity work.shift_div(shift_left_one) port map
		(

			a(7 downto 0) => SW(7 downto 0),
			a_shl(7 downto 0) => LEDR(7 downto 0)
		);
	end shift_div_tester_impl;
	