library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use work.all;
--Tester entity for multiplication operators
entity multi_tester is

    port
    (

        --input port
        SW : in std_logic_vector(15 downto 0);
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
        --output port
        LEDR : out std_logic_vector(15 downto 0)
    );
end multi_tester;

architecture multi_tester_impl of multi_tester is

begin
    --Følgende er en implementering af multiplieren. switch 0 - 7
    --sættes til input A, og switch 8 - 15 sættes til input B
    --Prod output sættes til LEDR 0 - 15
    mut: entity work.multi(multi_impl) port map(
    --input
        A => SW (7 downto 0),
<<<<<<< Updated upstream
		  B => SW (15 downto 8),
    --output 
		  Prod => LEDR(15 downto 0)
		  );
=======
        B => SW (15 downto 8),
    --output 
        prod => LEDR(15 downto 0)
    );
>>>>>>> Stashed changes
end multi_tester_impl; 
