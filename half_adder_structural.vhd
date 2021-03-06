library ieee;
use ieee.std_logic_1164.all;

---------------XOR component--------------

entity xor_gate is
	port(i1,i2: in std_logic;
			o1: out std_logic);
end xor_gate;

architecture dataflow of xor_gate is
	begin
		o1 <= i1 xor i2;
end dataflow;

----------------AND component----------------
library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
	port(i1, i2:in std_logic; 
			o1: out std_logic);
end and_gate;

architecture dataflow of and_gate is
	begin
		o1 <= i1 and i2;
end dataflow;


----------------Half adder component-------------
library ieee;
use ieee.std_logic_1164.all;
entity half_adder_structural is
	port(a,b: in std_logic;
	sum, carry: out std_logic);
end half_adder_structural;

architecture structure of half_adder_structural is
	begin
		u1: entity xor_gate port map (i1 => a, i2 => b, o1 => sum);
		u2: entity and_gate port map (i1 => a, i2 => b, o1 => carry);
end structure;