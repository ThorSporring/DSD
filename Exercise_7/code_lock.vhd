library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity code_lock is
	port(
			clk : in std_logic;
			reset : in std_logic;
			code : in std_logic_vector(3 downto 0);
			enter : in std_logic;
			lock : out std_logic;
			failed: out std_logic
			);
end;

architecture code_lock_impl of code_lock is

	------ Hardwired koder til kodelåsen

	constant code1 : std_logic_vector := "1100"; 
	constant code2 : std_logic_vector := "1110";
	
	--------Interne signaler---------------------
	signal enter_sync :std_logic;
	signal err_event: std_logic;
	signal failed_signal: std_logic;
	
	begin

		synchronizer: entity work.synch(RTL) port map ( 
			clk => clk, 
			async_sig => not enter,
			rise => enter_sync,
			fall => open,
			synced => open
			); --Brug enten rise eller fall output
	
		code_lock_fsm: entity work.code_lock_simple_fsm(code_lock_simple_fsm_impl) port map(
			code1 => code1,
			code2 => code2,
			code => code,
			reset => reset,
			lock => lock,
			clk => clk,
			enter => enter_sync,
			failed => failed_signal,
			err_event => err_event
		);
		
		wrong_code: entity work.wrong_code(wrong_code_impl) port map(
		clk => clk,
		reset => reset,
		err_event => err_event,
		failed => failed_signal
		);
		
		failed <= failed_signal;
		
end code_lock_impl;
