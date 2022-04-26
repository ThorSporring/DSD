library ieee;
use ieee.std_logic_1164.all;

entity mux_last is -- Implementation of in and outputs.
	port(
		player: in std_logic;
		player1_hex: in std_logic_vector(13 downto 0);
		player2_hex: in std_logic_vector(13 downto 0);
		hex_out: out std_logic_vector (13 downto 0)
		);
end mux_last;

architecture mux_last_impl of mux_last is
	-- Used to determine which input is going to the output.
	begin
	mux_if2: process(player,player1_hex,player2_hex)
	begin
		if player = '1' then				
			hex_out <= player2_hex;	-- if player is 1 player2_hex goes to the output.
		else				
			hex_out <= player1_hex;	-- if player is 0	player1_hex goes to the output.
		end if;
	end process mux_if2;
end mux_last_impl;