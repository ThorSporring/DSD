library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

-- Producing a synchronous edge-detect pulse for the leading and trailing
-- edges of a long (many clocks) asynchronous pulse.

entity synch is
	port (
		enter : in std_logic;
		clk : in std_logic;
        reset: in std_logic;
		Enter_rising : out std_logic
        );
end;

architecture synch_impl of synch is
begin
	sync1 : process (clk,reset)
		variable resync : std_logic_vector(1 to 3):="000";
	begin
		if reset='0' then
			resync:="000";
		elsif rising_edge(clk) then
			-- detect rising and falling edges.
			Enter_rising <= resync(2) and not resync(3); --rising edge output
			-- update history shifter.
			
		end if;
	end process;

end synch_impl;