library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity my_gates_entity is port(
    --Inputs fra switches
    SW : in std_logic_vector(1 downto 0);
    --Output til LED'er
    LEDR: out std_logic_vector(15 downto 0)
);
end my_gates_entity;

architecture impl of my_gates_entity is

    --Procedure for and og or gates. Kører på samme input men går ud til to outputs
    procedure procedure_and_or(signal a,b : in std_logic; signal or_out, and_out: out std_logic) is
        begin
            or_out <= a or b;
            and_out <= a and b;
        end procedure_and_or;
    --Function for xor gate. Returnerer xor værdien af a og b
    function function_xor(signal a,b:in std_logic)return std_logic is
        begin
            return(a xor b);
        end function_xor;
    
    signal s1,s2,s3,s4,s5 : std_logic;
    
begin
    --Procedure kald
    proc1: procedure_and_or(a=>s1, b=>s2, or_out=>s3, and_out=>s4);
    --Funktion kald
    func1: s5 <= function_xor(a => s1, b => s2);

    --Mapping af signaler til fysiske porte
    s1 <= SW(0);
	 s2 <= SW(1);
    LEDR(0) <= s3;
    LEDR(1) <= s4;
    LEDR(2) <= s5;



end impl; -- behavioral