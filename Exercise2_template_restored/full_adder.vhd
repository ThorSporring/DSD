library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity full_adder is

	port (
		-- Input ports
		A, B, Cin : in std_logic;

		-- Output ports
		Sum, Cout : out std_logic
	);
end full_adder;
architecture full_adder_struct of full_adder is
	signal s1, c1, c2 : std_logic;

begin
-- Using two half_adder's
-- Port map all the inputs and outputs to the half_adder's
	h1 : entity half_adder_structural port map (

		a_halfadder => A,
		b_halfadder => B,
		sum => s1,
		cout => c1

		);

	h2 : entity half_adder_structural port map(

		a_halfadder => s1,
		b_halfadder => Cin,
		sum => sum,
		cout => c2

		);

-- carry flag is set if either carry from h1 or h2 is set
	cout <= c1 or c2;

end full_adder_struct;