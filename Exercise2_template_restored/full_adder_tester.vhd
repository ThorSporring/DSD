library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder_tester is

	port
	(
		-- Input ports
		SW : in std_logic_VECTOR(2 downto 0);

		-- Output ports
		LEDR : out std_logic_VECTOR(1 downto 0)
	);
end full_adder_tester;

architecture full_adder_tester_impl of full_adder_tester is


begin

-- To instantiate an entity directly, the entity must be written in VHDL.
-- You must also add the file containing the entity declaration to your
-- Quartus II project.
UUT: entity work.full_adder(full_adder_struct)
	
	port map 
	(
		A => SW(0),
		B => SW(1),
		Cin =>SW(2),
		Sum =>LEDR(0),
		Cout =>LEDR(1)
	);


end full_adder_tester_impl;

