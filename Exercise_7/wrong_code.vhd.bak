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

	type state_type is (err_0, err_1, err_2, err_3);
	signal 