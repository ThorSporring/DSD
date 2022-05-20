library ieee;
use ieee.std_logic_1164.all;

entity code_lock_simple_fsm is
	port(
        clk: in std_logic;
        reset: in std_logic;
        enter: in std_logic;
        code: in std_logic_vector(3 downto 0);
        code1: in std_logic_vector(3 downto 0);
        code2: in std_logic_vector(3 downto 0);
        lock: out std_logic
    );
end code_lock_simple_fsm;

architecture code_lock_simple_fsm_impl of code_lock_simple_fsm is
	type state is (locked,idle,ev_code1,get_code2,ev_code2,unlocked);
	signal present_state, next_state : state;
begin

    state_reg: process (clk)
    begin
	    if reset = '0' then
		    present_state <= idle;
	    elsif rising_edge(clk) then
		    present_state <= next_state
	    end if;
    end process;

    outputs: process (present_state, clk, reset, enter, code);
        begin
	        case present_state is
	        -- one case branch required for each state
	            when idle => lock <= '1';
                when locked => lock <= '1';
                when ev_code1 => lock <= '1';
                when get_code2 => lock <= '1';
                when ev_code2 => lock <= '1'
                when unlocked => lock <= '0';
	        end case;
    end process;

    nxt_state: process (present_state, clk, reset, enter, code);
        begin
	        case present_state is
	    -- one case branch required for each state
		        when idle =>
			        if enter = '1' then
			            next_state <= ev_code1;
			        else
			            next_state <= idle;
			        end if;
                when ev_code1 =>
                    if code = code1 then
                        next_state <= get_code2;
                    else
                        next_state <= idle;
                    end if;
                when get_code2 =>
                    if enter = '1' then
                        next_state <= ev_code2;
                    else
                        next_state <= get_code2;
                    end if
                when ev_code2 =>
                        if code = code2 then
                            next_state <= unlocked;
                        else
                            next_state <= idle;
                        end if
                when unlocked =>
                        if enter = '1' then
                            next_state <= idle;
                        else
                            next_state <= unlocked;
                        end if
		        -- default branch
		        when others =>
		            next_state <= idle;
	        end case;
    end process;

end code_lock_simple_fsm_impl;