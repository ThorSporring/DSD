library ieee;
use ieee.std_logic_1164.all;

entity Two_player_tester is
    port(
        SW: in std_logic_vector(17 downto 0);
        KEY: in std_logic_vector(2 downto 0);
        HEX0: out std_logic_vector(6 downto 0);
        HEX1: out std_logic_vector(6 downto 0);
		  HEX7: out std_logic_vector(6 downto 0)
    );
end Two_player_tester;

architecture Two_player_tester_impl of Two_player_tester is
	signal temp: std_logic_vector(8 downto 0);
    begin
	-- Declares which local signals the modules inputs and outputs are connected to. 
    --(Port Mapping)
        ggt: entity work.Two_player_guess_game(Two_player_guess_game_impl) port map(
        input => SW(7 downto 0),
         set => KEY(0),
        try => KEY(1),
        show => KEY(2),
        hex1 => HEX0,
         hex10 => HEX1,
		player => SW(17),
		hex_p => HEX7
        );
end Two_player_tester_impl;