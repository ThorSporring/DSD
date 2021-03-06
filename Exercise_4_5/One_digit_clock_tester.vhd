library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity One_digit_clock_tester is
  port (
    --input
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(17 downto 16);
    --output
    LEDR: out std_logic_vector(1 downto 0);
    HEX0: out std_logic_vector(6 downto 0)
  ) ;
end One_digit_clock_tester;

architecture One_digit_clock_tester_impl of One_digit_clock_tester is

  signal countOut : std_logic_vector (3 downto 0);
  signal clockOut : std_logic; 

  begin
    --Clock genereator entity
      cge: entity work.clock_gen(clock_gen_impl) port map(

      clk =>  CLOCK_50,
      speed => KEY(0),
      reset => KEY(3),
      clk_out => clockOut
      );

     --Multi Counter entity
      mct: entity work.multi_counter(multi_counter_impl) port map(
        
          clk => clockOut,
          mode => SW(17 downto 16),
          reset => KEY(3),
          
        cout => LEDR(0),
        count => countOut
      );
  
      --7-Segment entity
      ssd: entity work.bin2sevenseg(bin2sevenseg_impl) port map(
  
          bcd_input => countOut,
          s_seg => HEX0
      );


end One_digit_clock_tester_impl ; -- One_digit_clock_tester