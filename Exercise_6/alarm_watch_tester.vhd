library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity alarm_watch_tester is
  port (
    --inputs
    KEY : in std_logic_vector(3 downto 0);
    SW : in std_logic_vector(15 downto 0);
    CLOCK_50 : in std_logic;

    --outputs
    HEX2: out std_logic_vector(6 downto 0);
    HEX3: out std_logic_vector(6 downto 0);
    HEX4: out std_logic_vector(6 downto 0);
    HEX5: out std_logic_vector(6 downto 0);
    HEX6: out std_logic_vector(6 downto 0);
    HEX7: out std_logic_vector(6 downto 0);
	 
	 LEDR: out std_logic_vector(1 downto 0)
  ) ;
end alarm_watch_tester;

architecture alarm_watch_tester_imp of alarm_watch_tester is

begin

    aw1: entity work.alarm_watch(alarm_watch_impl) port map(
       
        choice => KEY(2),

        in_min1 => SW(3 downto 0),
        in_min10 => SW(7 downto 4),
        in_hrs1 => SW(11 downto 8),
        in_hrs10 => SW(15 downto 12),

        clock => CLOCK_50,
        speed => KEY(0),
        reset => KEY(3),

        sec1 => HEX2,
        sec10 => HEX3,
        min1 => HEX4,
        min10 => HEX5,
        hrs1 => HEX6,
        hrs10 => HEX7,
		  
		  alarm => LEDR(0)
    );

end alarm_watch_tester_imp ; -- alarm_watch_tester_imp