library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity multi_counter_tester is
  port (
    --Inputs
    KEY: in std_logic_vector (3 downto 0);
    SW : in std_logic_vector (17 downto 16);
    
    --Outputs
    HEX0: out std_logic_vector(6 downto 0);
    LEDR: out std_logic_vector(1 downto 0)

  ) ;
end multi_counter_tester;

architecture multi_counter_tester_impl of multi_counter_tester is
    --midlertidig variable mellem counter og 7 segment
    signal countOut : std_logic_vector (3 downto 0);
begin

    --Multi Counter entity
    mct: entity work.multi_counter(multi_counter_impl) port map(
        
		  clk => KEY(0),
        mode => SW(17 downto 16),
        reset => KEY(3),
        
		  cout => LEDR(0),
		  count => countOut
    );

    --7-Segment entity
    ssd: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(

        bcd_input => countOut,
        s_seg => HEX0
    );

end multi_counter_tester_impl;