library ieee;
use ieee.std_logic_1164.all;

entity meemoo is
    port(
        clk: in std_logic;
        reset: in std_logic;
        a: in std_logic;
        b: in std_logic;
        moo_out: out std_logic;
        mee_out: out std_logic
    );
end meemoo;

architecture meemoo_impl of meemoo is
    type state is (idle, init, active);
    signal present_state, next_state : state;
    begin
        state_register: process (clk,reset)
        begin
            if rising_edge(clk) then
                if reset = '0' then
                    present_state <= idle;
                else
                    present_state <= next_state;
                end if;
            end if;
        end process;

        outputs_moore: process (present_state)
        begin
            case present_state is
                -- one case branch required for each state  
                when idle => moo_out <= '0';
                when init => moo_out <= '1';
                when active => moo_out <= '1';
                when others => moo_out <= '0';
            end case;
        end process;

        nxt_state_moore: process (present_state)
        begin
            case present_state is
                -- one case branch required for each state
                when idle =>
                    if b = '0' then
                        next_state <= idle;
                    else
                        next_state <= init;
                    end if;
                when init =>
                    if b = '1' and a = '1' then
                        next_state <= init;
                    elsif b = '0' and a = '1' then
                        next_state <= active;
                    else
                        next_state <= init;
                    end if;
                when active =>
                    if a = '1' then
                        next_state <= idle;
                    else
                        next_state <= idle;
                    end if;
                when others =>
                        next_state <= idle;
            end case;
        end process;

        outputs_mealy: process (present_state,a,b)
        begin
            case present_state is
                -- one case branch required for each state  
                when idle => mee_out <= '0';
                when init =>
                    if a = '1' and b = '1' then
                        mee_out <= '1';
                    else
                        mee_out <= '0';
                    end if;
                when active => mee_out <= '0';
                when others => mee_out <= '0';
            end case;
        end process;
    end meemoo_impl;