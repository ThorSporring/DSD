library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity four_bit_adder_tester is
	
	port
	(
		-- Input ports
		SW	: in  std_logic_vector(8 downto 0);

		-- Output ports
		LEDR	: out std_logic_vector(4 downto 0)
	);
end four_bit_adder_tester;


architecture four_bit_adder_tester_impl of four_bit_adder_tester is

	-- Declarations (optional)

begin
--Maps the inputs and outpus to switches and LED's on the Cyclone II
fba: entity four_bit_adder port map(
		Cin => sw(0),
		A(3 downto 0) => SW(4 downto 1),
		B(3 downto 0) => SW(8 downto 5),
		Sum(3 downto 0) => LEDR(3 downto 0),
		Cout => LEDR(4)

);


end four_bit_adder_tester_impl;

