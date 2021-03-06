library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;
entity watch_tester is
  port (
    CLOCK_50 : in std_logic;
    KEY : in std_logic_vector(3 downto 0);

    --output
    HEX0: out std_logic_vector(6 downto 0);
    HEX1: out std_logic_vector(6 downto 0);
    HEX2: out std_logic_vector(6 downto 0);
    HEX3: out std_logic_vector(6 downto 0);
    HEX4: out std_logic_vector(6 downto 0);
    HEX5: out std_logic_vector(6 downto 0)
  ) ;
end watch_tester;

architecture watch_tester_impl of watch_tester is


begin

    wat: entity work.watch(watch_impl) port map(
        clk => CLOCK_50,
        speed => KEY(0),
        reset => KEY(3),

        sec_1 => hex0,
        sec_10 => hex1,
        min_1 => hex2,
        min_10 => hex3,
        hrs_1 => hex4,
        hrs_10 => hex5,
        tm => open
    );
end watch_tester_impl ; -- watch_tester_impl