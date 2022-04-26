library ieee;
use ieee.std_logic_1164.all;

entity mux1 is	-- Implementation of in and outputs
    port(
        show: in std_logic;
        secret_value: in std_logic_vector(7 downto 0);
        bin_input: in std_logic_vector(7 downto 0);
        mux1: out std_logic_vector(7 downto 0)
		  );
end mux1;

architecture mux1_impl of mux1 is
	-- Used to determine which input is going to the output
	begin
	mux1_if: process(show,bin_input,secret_value)
    begin
        if show = '1' then				
            mux1 <= bin_input;	-- if show is 1 bin_input goes to mux1
        else
            mux1 <= secret_value;	-- if show is 0 secret_value goes to mux1
        end if;
	end process mux1_if;
end mux1_impl;