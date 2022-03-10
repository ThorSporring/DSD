library ieee;
use ieee.std_logic_1164.all;

-- Entity declaration for half adder

entity half_adder_dataflow is
	port(a,b: in std_logic;
	sum, carry: out std_logic);
end entity half_adder_dataflow;

--Dataflow architecture for half adder

architecture dataflow of half_adder_dataflow is
	begin
	sum <= a xor b;
	carry <= a and b;
end dataflow;