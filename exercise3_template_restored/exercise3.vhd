library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity  four_bit_adder_tester is
	port
	(
		-- Input ports
		SW	: in  STD_LOGIC_VECTOR(7 downto 0);
		
		-- Output ports
		LEDR	: out STD_LOGIC_VECTOR(3 downto 0)
		
	);
end four_bit_adder_tester;


architecture four_bit_adder_tester_impl of four_bit_adder_tester is


begin

	uut: entity work.four_bit_adder_simple(unsigned_impl) port map (
		
		a(3 downto 0) => SW (3 downto 0),
		b(3 downto 0) => SW (7 downto 4),
		sum(3 downto 0) => LEDR (3 downto 0)

	);
	
end four_bit_adder_tester_impl;
