library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

------------Ved simulering skal denne entity vaere "top level"------------------
--DUS/DUT skal aendres alt efter hvilken udgave af four_bit_adderen jeg vil simulere

entity four_bit_adder_simulering is

	port
	(
		-- Input ports
		signal A, B : in std_logic_vector(3 downto 0);

		-- Output ports
		Sum         : out std_logic_vector(3 downto 0)
	);
end four_bit_adder_simulering;

architecture four_bit_adder_simulering_impl of four_bit_adder_simulering is
begin
	-----Instantierer den four_bit adder jeg vil simulere, dvs. jeg kan nu vÃƒÆ’Ã‚Â¦lge hvilken arkitektur jeg vil simulere

	-- To instantiate an entity directly, the entity must be written in VHDL.
	-- You must also add the file containing the entity declaration to your
	-- Quartus II project.
	DUS : entity four_bit_adder_simple(unsigned_impl)

		port map
		(
			A   => A, -- porte mappes "en-til-en"
			B   => B,
			Sum => Sum
		);

end four_bit_adder_simulering_impl;