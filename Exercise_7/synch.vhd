library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

-- Producing a synchronous edge-detect pulse for the leading and trailing
-- edges of a long (many clocks) asynchronous pulse.

entity synch is
	port (
		async_sig : in std_logic;
		clk : in std_logic;
		rise : out std_logic;
		fall : out std_logic;
		synced : out std_logic
      );
end;

architecture RTL of synch is
begin
	sync1 : process (clk)
		variable resync : std_logic_vector(1 to 3):="000";
	begin
		if rising_edge(clk) then
			-- detect rising and falling edges.
			fall <= resync(2) and not resync(3); --rising edge output
			rise <= resync(3) and not resync(2); -- falling edge output
			synced <= resync(2); -- synched output
			-- update history shifter.
			resync := async_sig & resync(1 to 2);
		end if;
	end process;

end architecture;