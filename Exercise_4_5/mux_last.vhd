library ieee;
use ieee.std_logic_1164.all;

entity mux_last is
    port(
		  player: in std_logic;
		  player1_hex: in std_logic_vector(13 downto 0);
		  player2_hex: in std_logic_vector(13 downto 0);
		  hex_out: out std_logic_vector (13 downto 0)
		  );
end mux_last;

architecture mux_last_impl of mux_last is
	begin
	mux_if2: process(player)
		begin
			if player = '1' then
				hex_out <= player2_hex;
			else
				hex_out <= player1_hex;
			end if;
		end process mux_if2;
end mux_last_impl;