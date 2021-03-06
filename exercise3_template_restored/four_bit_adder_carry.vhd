library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use work.all;

entity four_bit_adder_carry is

	generic -- mulig anvendelse af "generic"
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		a	   : in STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
		b	   : in STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0);
        cin    : in STD_LOGIC;
        
        cout: out STD_LOGIC;
		sum: out STD_LOGIC_VECTOR ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture unsigned_impl of four_bit_adder_carry is

	--Declaration of variables
	signal temp: STD_LOGIC_VECTOR(4 downto 0); --Placeholder variables
	constant Cin_temp: STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
-- Resize alle vores vectorer til den samme stÃ¸rrelse sÃ¥ de kan plusses sammen
	temp <= std_logic_vector(resize(unsigned(a),5) + resize(unsigned(b),5) + unsigned(Cin_temp & cin));
-- De fÃ¸rste 4 tal er resultatet og den sidste er carry
	sum <= temp(3 downto 0);
	cout <= temp(4);

end unsigned_impl;


architecture signed_impl of four_bit_adder_carry is

	--Declaration of variables
	signal temp: STD_LOGIC_VECTOR(4 downto 0); --Placeholder variables
	constant Cin_temp: STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin

	temp <= std_logic_vector(resize(signed(a),5) + resize(signed(b),5) + signed(Cin_temp & cin));
	sum <= temp(3 downto 0);
	cout <= temp(4);


end signed_impl;







