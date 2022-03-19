library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2sevenseg_tester is
    port(
    --input ports
        SW : in std_logic_vector (3 downto 0);
    --output ports
        HEX0 : out std_logic_vector(6 downto 0)
    );
end bin2sevenseg_tester;

architecture bin2sevenseg_tester_impl of bin2sevenseg_tester is
    
    begin
        
        sst: entity work.bin_to_7_segment(bin_to_7_segment_impl)port map
        (
            bcd_input => SW(3 downto 0),
            s_seg => HEX0(6 downto 0)
        );
    end bin2sevenseg_tester_impl;