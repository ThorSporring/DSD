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
    HEX0: out std_logic_vector(6 downot 0);
  ) ;
end clock_gen_tester;

architecture One_digit_clock_tester_impl of One_digit_clock_tester is

  signal 

begin

end One_digit_clock_tester_impl ; -- One_digit_clock_tester