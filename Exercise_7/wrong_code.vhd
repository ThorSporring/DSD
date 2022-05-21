library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

-- Producing a synchronous edge-detect pulse for the leading and trailing
-- edges of a long (many clocks) asynchronous pulse.

entity wrong_code is
	port (
		err_event : in std_logic;
		clk		: 	in std_logic;
		reset		: 	in std_logic;
		failed	: 	out std_logic
		);
end;

architecture wrong_code_impl of wrong_code is

	type state_type is (err_0, err_1, err_2, err_3);
	signal state   : state_type;

begin

	process (clk, reset)
		begin
			if reset = '0' then
				state <= err_0;
			elsif (rising_edge(clk)) then
				case state is
					TIl when err_0 =>
						if err_event='1' then
							state <= err_1;
						end if;
					when err_1 =>
						if err_event='1' then
							state <= err_2;
						end if;
					when err_2 =>
						if err_event='1' then
							state <= err_3;
						end if;
					when err_3 =>
				end case;
			end if;
		end process;
		
	process(state)
		begin
			case state is
				when err_0 =>
					failed <= '0';
				when err_1 =>
					failed <= '0';
				when err_2 =>
					failed <= '0';
				when err_3 =>
					failed <= '1';
			end case;
		end process;

end architecture;