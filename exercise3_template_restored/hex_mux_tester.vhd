library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use work.all;

entity hex_mux_tester is
    
    port(
        --Input ports
        SW : in std_logic_vector(11 downto 0);
        KEY : in std_logic_vector(1 downto 0);

        --output ports
        HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0)
    );
end hex_mux_tester;

architecture hex_mux_tester_porting of hex_mux_tester  is
begin
    hmt: entity work.hex_mux(hex_mux_impl)port map(

        bin => SW,
        sel => KEY,

        tsseg(6 downto 0) => HEX0,
        tsseg(13 downto 7) => HEX1,
        tsseg(20 downto 14) => HEX2

    );
end hex_mux_tester_porting; --