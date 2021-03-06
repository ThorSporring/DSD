library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity bin2hex_tester is
  port (
   --input ports
   SW : in std_logic_vector (3 downto 0);
   --output ports
   HEX0 : out std_logic_vector(6 downto 0)
  ) ;
end bin2hex_tester;

architecture bin2hex_test of bin2hex_tester is

    begin
        
        sst: entity work.bin2hex(bin2hex_impl)port map
        (
            bin => SW(3 downto 0),
            seg => HEX0(6 downto 0)
        );
    end bin2hex_test;