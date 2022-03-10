library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity half_adder_structural is

	port (
		-- Input ports
		a_halfadder : in std_logic;
		b_halfadder : in std_logic;

		-- Output ports
		Sum : out std_logic;
		Cout : out std_logic
	);
end half_adder_structural;



architecture half_adder_structural of half_adder_structural is

	-- Declarations (optional)

begin
-- Port mapping of xor & and gate to the respective inputs and outputs
 u1: entity my_xor port map (a => a_halfadder, b => b_halfadder, f => sum);
 u2: entity my_and port map (a => a_halfadder, b=> b_halfadder, f=> Cout);


end half_adder_structural;