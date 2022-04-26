library ieee;
use ieee.std_logic_1164.all;

entity Two_player_guess_game is	-- Implementation of in and outputs
	port(
		show: in std_logic;
		set: in std_logic;
		input: in std_logic_vector(7 downto 0);
		try: in std_logic;
		player: in std_logic;
		hex1: out std_logic_vector(6 downto 0);
		hex10: out std_logic_vector(6 downto 0);
		hex_p: out std_logic_vector(6 downto 0)
	);
end Two_player_guess_game;

architecture Two_player_guess_game_impl of Two_player_guess_game is
	-- Temporary signals used between input and outputs of different entities
	signal show_temp1: std_logic;
	signal set_temp1: std_logic;
	signal input_temp1: std_logic_vector(7 downto 0);
	signal try_temp1: std_logic;
	signal seg1_temp1: std_logic_vector(6 downto 0);
	signal seg10_temp1: std_logic_vector(6 downto 0);
	signal show_temp2: std_logic;
	signal set_temp2: std_logic;
	signal input_temp2: std_logic_vector(7 downto 0);
	signal try_temp2: std_logic;
	signal seg1_temp2: std_logic_vector(6 downto 0);
	signal seg10_temp2: std_logic_vector(6 downto 0);
	signal temp_1: std_logic_vector(2 downto 0);
	
	begin
	-- Declares which local signals the modules inputs and outputs are connected to. (Port Mapping)
		mux1: entity work.mux_first(mux_first_impl) port map(
			show => show,
			input => input,
			set => set,
			try => try,
			show1 => show_temp1,
			mux_out1 => input_temp1,
			set1 => set_temp1,
			try1 => try_temp1,
			show2 => show_temp2,
			mux_out2 => input_temp2,
			set2 => set_temp2,
			try2 => try_temp2,
			player => player
		);
		
		gg1: entity work.guess_game(guess_game_impl) port map(
			show => show_temp2,
			set => set_temp2,
			inputs => input_temp1 ,
			try => try_temp1,
			hex1 => seg1_temp1,
			hex10 => seg10_temp1
		);
		
		gg2: entity work.guess_game(guess_game_impl) port map(
			show => show_temp1,
			set => set_temp1,
			inputs => input_temp2,
			try => try_temp2,
			hex1 => seg1_temp2,
			hex10 => seg10_temp2
		);
		
		bin: entity work.bin2hex(bin2hex_impl) port map(
			bin => temp_1 & player,
			seg => hex_p
		);
		mux2: entity work.mux_last(mux_last_impl) port map(
			player => player,
			player1_hex(13 downto 7) => seg10_temp1,
			player1_hex(6 downto 0) => seg1_temp1,
			player2_hex(13 downto 7) => seg10_temp2,
			player2_hex(6 downto 0) => seg1_temp2,
			hex_out(13 downto 7) => hex10,
			hex_out(6 downto 0) => hex1
		);
end Two_player_guess_game_impl;
		
		
	
	