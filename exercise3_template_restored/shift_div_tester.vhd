library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_div_tester is
	
	port(
	SW : in std_logic_vector (7 downto 0);
	
	LEDR : out std_logic_vector (17 downto 0);
	LEDG : out std_logic_vector (7 downto 0)
	);
	end shift_div_tester;

architecture shift_div_tester_impl of shift_div_tester is

	begin
	
	
		sl: entity work.shift_div(shift_left_one) port map
		(
			--input sættes til switches
			a(7 downto 0) => SW(7 downto 0),

			--Shift left operator vises på led LEDG 7 - 0
			a_shl(7 downto 0) => LEDG(7 downto 0)
		);
		
		r2: entity work.shift_div(shift_right_two) port map
		(
			--input sættes til switches
			a(7 downto 0) => SW(7 downto 0),
			
			--Shift right twice vises på LEDR 7 - 0
			a_shr(7 downto 0) => LEDR(7 downto 0)
		
		);
		
		
		ro3: entity work.shift_div(rotate_three) port map
		(
			--input sættes til switches
			a(7 downto 0) => SW(7 downto 0),

			--Shift left operator vises på led LEDG 17 - 10
			a_ror(7 downto 0) => LEDR(17 downto 10)
		);
		
	end shift_div_tester_impl;
	