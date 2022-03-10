library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity four_bit_adder is

	port (
	-- Input ports
	Cin : in std_logic;
	A, B : in std_logic_vector(3 downto 0);

	-- Output ports
	Sum : out std_logic_vector(3 downto 0);
	Cout : out std_logic
	);
end four_bit_adder;

architecture four_bit_adder_impl of four_bit_adder is

	signal carry1, carry2, carry3 : std_logic;

begin
-- Using 4 full_adders to complete the 4-bit adder portmapping the correct inputs
-- The carry flag is carried from fa1 to fa2 and so on

fa1: entity	full_adder port map (
		
		A => A(0),
		B => B(0),
		cin => Cin,
		sum => sum(0),
		cout => carry1

);
fa2: entity full_adder port map(

		A => A(1),
		B => B(1),
		cin => carry1,
		sum => sum(1),
		cout => carry2
);
fa3: entity full_adder port map(
		A => A(2),
		B => B(2),
		cin => carry2,
		sum => sum(2),
		cout => carry3
);
fa4: entity full_adder port map(
		A => A(3),
		B => B(3),
		cin => carry3,
		sum => sum(3),
		cout => cout
);
-- If there is a carry all the way, the cout flag is set 
	
end four_bit_adder_impl;
