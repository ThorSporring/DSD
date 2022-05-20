library ieee;
use ieee.std_logic_1164.all;

entity code_lock_tester is
    port(
        SW: in std_logic_vector(3 downto 0);
        KEY: in std_logic_vector(3 downto 0);
		  CLOCK_50: in std_logic;
        LEDG: out std_logic_vector(1 downto 0)
    );
end code_lock_tester;
	 
architecture code_lock_tester_impl of code_lock_tester is
    begin
        clt: entity work.code_lock_simple(code_lock_simple_impl) port map(
            enter => KEY(0),
            reset => KEY(1),
            code => SW(3 downto 0),
            lock => LEDG(0),
				clk => CLOCK_50
        );
end code_lock_tester_impl;
