library ieee;
use ieee.std_logic_1164.all;

entity  mylatch is	-- Implementation of in and outputs
    port(
        set: in std_logic;
        bin_input: in std_logic_vector(7 downto 0);
        secret_value: out std_logic_vector(7 downto 0)
    );
end mylatch;

architecture mylatch_impl of mylatch is
	-- Used to determine which input is going to the output
    begin
    p1:process(set,bin_input)
    begin
		if set = '0' then				-- if set is 0 bin_input goes to secret_value
			secret_value <= bin_input;
		end if;
    end process p1;
end mylatch_impl;