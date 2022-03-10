library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity half_adder_dataflow is

	port (
		-- Input ports
		A : in std_logic;
		B : in std_logic;

		-- Output ports
		Sum : out std_logic;
		Cout : out std_logic
	);
end half_adder_dataflow;

architecture half_adder_dataflow of half_adder_dataflow is

	begin
	sum <= a xor b;			--Sum is the result of a xor b
	cout <= a and b;			--Both a and b has to be 1 to set carry flag
	

end half_adder_dataflow;

