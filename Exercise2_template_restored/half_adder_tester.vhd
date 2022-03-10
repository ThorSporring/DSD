library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder_tester is

	port
	(
		-- Input ports
		SW	: in  std_logic_VECTOR(1 downto 0);

		-- Output ports
		LEDR	: out std_logic_VECTOR(1 downto 0)
	);
end half_adder_tester;

architecture half_adder_tester_impl of half_adder_tester is

	-- Declarations (optional)

begin

-- To instantiate an entity directly, the entity must be written in VHDL.
-- You must also add the file containing the entity declaration to your 
-- Quartus II project.
DUT: entity work.half_adder_dataflow(half_adder_dataflow)
	
	port map 
	(
		A => SW(0),
		B => SW(1),
		Sum => LEDR(0),
		Cout=> LEDR(1)
	);



end half_adder_tester_impl;