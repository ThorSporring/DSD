library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi_variable is 
--Define your data width of the sum (Prod)
generic --Definer bit størrelsen af dine variabler
	(
		N : natural := 8
	);
    port
    (
        --deklaration af inputs og outputs
        A : in std_logic_vector ((N-1) downto 0);
        B : in std_logic_vector ((N-1) downto 0);
        Prod : out std_logic_vector (((N*2)-1) downto 0)
    );
end multi_variable;


architecture multi_impl of multi_variable is 
--Declarations if necessary
begin
--Use logic operators for multiplication
    prod <= std_logic_vector(unsigned(a)*10);

end multi_impl;
