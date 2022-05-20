library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity code_lock_simple is
	port(
			clk : in std_logic;
			reset : in std_logic;
			code : in std_logic_vector(3 downto 0);
			enter : in std_logic;
			lock : out std_logic
			);
end;

architecture code_lock_simple_impl of code_lock_simple is

	------ Hardwired koder til kodelåsen

	constant code1 : std_logic_vector := "1100"; 
	constant code2 : std_logic_vector := "1110";
	
	--------Interne signaler---------------------
	signal enter_sync :std_logic;
	
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
			enter => enter_sync
		);

end code_lock_simple_impl;
