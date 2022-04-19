library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity clock_gen is
	port (
		--input
		clk : in std_logic;
		speed : in std_logic;
		reset : in std_logic;
		--output
		clk_out : out std_logic
	);
end clock_gen;

architecture clock_gen_impl of clock_gen is
begin
	
 
	clock_process : 
	process (clk, speed, reset)
	
		variable maxCycle : integer := 0;
		variable clockCounter : integer := 0;
		
		begin
			maxCycle := 50000000;
			if speed = '0' then
				maxCycle := 250000; 
			end if;
			
			if reset = '0' then
				clockCounter := 0;
			
			elsif (rising_edge(clk)) then 
				clockCounter := clockCounter + 1;
				
				if clockCounter >= maxCycle then
					clk_out <= '1';
					clockCounter := 0;
 
				else
					clk_out <= '0';
				
				end if;
			end if;
		end process;

end clock_gen_impl; -- clock_gen_impl