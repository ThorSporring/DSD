library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use work.all;
--Tester entity for multiplication operators
entity multi_tester is

    port
    (

        --input port
        SW : in std_logic_vector(15 downto 0),

        --output port
        LEDR : out in std_logic_vector(15 downto 0)
    );
end multi_tester;

architecture multi_tester_impl of multi_tester is

begin
    --Følgende er en implementering af multiplieren. switch 0 - 7
    --sættes til input A, og switch 8 - 15 sættes til input B
    --Prod output sættes til LEDR 0 - 15
    mt: entity work.multi(multi_impl) port map(
    --input
        A => SW (7 downto 0),
        B => SW (15 downto 8),
    --ouput 
        prod => (15 downto 0)
    );
end multi_tester_impl; 
