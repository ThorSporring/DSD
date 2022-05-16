library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package my_gates is
    --Deklaration af procedure and og or
    procedure procedure_and_or(signal a,b : in std_logic; signal or_out, and_out: out std_logic);
    --Deklaration af funktion for xor
    function function_xor(signal a,b:in std_logic)return std_logic;
end package;

package body my_gates is
    --Implementering af and og or procedure
    procedure procedure_and_or(signal a,b : in std_logic; signal or_out, and_out: out std_logic) 
	 is
        begin
            or_out <= a or b;
            and_out <= a and b;
        end procedure_and_or;
    --Implementering af xor function
    function function_xor(signal a,b:in std_logic) return std_logic is
        begin
            return(a xor b);
        end function_xor;
end my_gates;