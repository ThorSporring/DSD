library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;
use work.my_gates.all;

entity gates_tester is
  port (
  --Inputs fra switches
    SW : in std_logic_vector (1 downto 0);
	--Outputs til LED'er
    LEDR: out std_logic_vector(15 downto 0)
  ) ;
end gates_tester;

architecture tester of gates_tester is
	--Midlertidige signaler til at carry returværdier
    signal s1,s2,s3,s4 : std_logic;
begin
	--Procedure kald
    u1: procedure_and_or(s1,s2,s3,s4);
	--Funktions kald, direkte mappet til en LED XOR
    LEDR(2) <= function_xor(s1,s2);
	--a
    s1 <= SW(0);
	--b
    s2 <= SW(1);
	--OR gate 
    LEDR(0) <= s3;
	--AND gate
    LEDR(1) <= s4;


end tester ; -- tester
