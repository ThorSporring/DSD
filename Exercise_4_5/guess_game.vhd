library ieee;
use ieee.std_logic_1164.all

entity guess_game is
    port(
        inputs: in std_logic_vector(7 downto 0);
        set: in std_logic; -- Set predefined value
        show: in std_logic; -- Show predefined value
        try: in std_logic; -- Evaluate guess
        hex1: out std_logic_vector(6 downto 0); -- 7-seg ones
        hex10: out std_logic_vector(6 downto 0); -- 7-seg tens
    );
end;

architecture guess_game_impl of guess_game is
   
    begin
        entity work.mylatch(mylatch_impl) port map(
            set => set,
            bin_input => inputs,
        )
        
end guess_game_impl;