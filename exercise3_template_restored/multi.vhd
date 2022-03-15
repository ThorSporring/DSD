library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi is 

generic -- mulig anvendelse af "generic"
	(
		DATA_WIDTH : natural := 15
	);
    port
    (
        A : in std_logic_vector (7 downto 0),
        B : in std_logic_vector (7 downto 0),
        Prod : out std_logic_vector (DATA_WIDTH downto 0)
    );
end multi;

architecture multi_impl of multi is 

begin
    prod <= std_logic_vector(unsigned(a)*unsigned(b));

end multi_impl;
