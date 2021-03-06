library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity  four_bit_adder_tester_carry is
	port
	(
		-- Input ports
		SW	: in  STD_LOGIC_VECTOR(8 downto 0);
		
		-- Output ports
		LEDR	: out STD_LOGIC_VECTOR(9 downto 0)
		
	);
end four_bit_adder_tester_carry;


architecture four_bit_adder_tester_impl of four_bit_adder_tester_carry is


begin
-- Der implementeres 2 entities, den ene med unsigned addition og den anden med signed addition
-- De to enities har samme inputs, dog to forskellige outputs, hvor unsigned tager fat i
-- LEDR 0 - 4 og signed tager fat i 5 - 9
	uut: entity work.four_bit_adder_carry(unsigned_impl) port map (
		
		a => SW (4 downto 1),
		b => SW (8 downto 5),
		cin => SW(0),

		cout => LEDR(4),
		sum(3 downto 0) => LEDR (3 downto 0)

	);
	
	sut: entity work.four_bit_adder_carry(signed_impl) port map (
		
		a => SW (4 downto 1),
		b => SW (8 downto 5),
		cin => SW(0),

		cout => LEDR(9),
		sum(3 downto 0) => LEDR (8 downto 5)

	);
end four_bit_adder_tester_impl;
