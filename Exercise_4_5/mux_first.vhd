library ieee;
use ieee.std_logic_1164.all;

entity mux_first is
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
	begin
	mux_if1: process(show,set,input,try,player)
		begin
        if player = '1' then
           show1 <= show;
			  set1 <= set;
			  mux_out2 <= input;
			  try2 <= try;
        else
            show2 <= show;
				set2 <= set;
				mux_out1 <= input;
				try1 <= try;
        end if;
	end process mux_if1;
end mux_first_impl;