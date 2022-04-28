library ieee;
use ieee.std_logic_1164.all;

entity mux_first is
	-- Implementation of in and outputs
    port(
        show: in std_logic;
        set: in std_logic;
        input: in std_logic_vector(7 downto 0);
		  try: in std_logic;
		  player: in std_logic;
        show1: out std_logic;
		  set1: out std_logic;
		  mux_out1: out std_logic_vector(7 downto 0);
		  try1: out std_logic;
		  show2: out std_logic;
		  set2: out std_logic;
		  mux_out2: out std_logic_vector(7 downto 0);
		  try2: out std_logic
		  );
end mux_first;

architecture mux_first_impl of mux_first is
	-- Used to determine which input is going to the output
	begin
	mux_if1: process(show,set,input,try,player) 
	begin
	if player = '1' then	-- if player is 1 set all inputs to 1st set of outputs
		show1 <= show;
		set1 <= set;
		mux_out2 <= input;
		try2 <= try;
	else		-- else if player is 0 set all inputs to 2nd set of outputs
		show2 <= show;
		set2 <= set;
		mux_out1 <= input;
		try1 <= try;
	end if;
	end process mux_if1;
end mux_first_impl;