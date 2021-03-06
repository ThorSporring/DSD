library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use work.all;

entity four_bit_adder_simple is

	generic -- mulig anvendelse af "generic"
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		a	   : in STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
		b	   : in STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);

		sum: out STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture unsigned_impl of four_bit_adder_simple is

begin

	sum <= std_logic_vector(unsigned(a) + unsigned(b));

end unsigned_impl;


architecture signed_impl of four_bit_adder_simple is

begin

	sum <= std_logic_vector(signed(a) + signed(b));

end signed_impl;







