library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity wrong_code is
	port(
		err_event: in std_logic;
		clk: in std_logic;
		reset: in std_logic;
		failed: out std_logic
	);
end;

architecture wrong_code_impl of wrong_code is
	-- Build an enumerated type for the state machine
	type state is (err_0, err_1, err_2, err_3);
	
	-- Register to hold the current state
	signal present_state, next_state: state;
	
begin
	process(clk,reset)
		begin
			if reset = '0' then
				present_state <= err_0;
			elsif rising_edge(clk) then
				present_state <= next_state;
			end if;
		end process;
	 
		-- Outputs when in different states
		outputs: process (present_state, clk, reset, err_event)
			begin
				case present_state is
				-- one case branch required for each state
					when err_0 => failed <= '0';
               when err_1 => failed <= '0';
               when err_2 => failed <= '0';
               when err_3 => failed <= '1';
	        end case;
		end process;
	
-- Logic to advance to the next state
    nxt_state: process (present_state, clk, reset, err_event)
        begin
	        case present_state is
			-- one case branch required for each state
		        when err_0 =>
			        if err_event = '1' then
			            next_state <= err_1;
			        else
			            next_state <= err_0;
			        end if;
                when err_1 =>
                    if err_event = '1' then
                        next_state <= err_2;
                    else
                        next_state <= err_0;
                    end if;
                when err_2 =>
                    if err_event = '1' then
                        next_state <= err_3;
                    else
                        next_state <= err_0;
                    end if;
               when err_3 =>
                    end case;
			end process;
	 
end architecture; 