library ieee;
use ieee.std_logic_1164.all;

entity guess_game is
    port(
        inputs: in std_logic_vector(7 downto 0);
        set: in std_logic; -- Set predefined value
        show: in std_logic; -- Show predefined value
        try: in std_logic; -- Evaluate guess
        hex1: out std_logic_vector(6 downto 0); -- 7-seg ones
        hex10: out std_logic_vector(6 downto 0) -- 7-seg tens
    );
end guess_game;

architecture guess_game_impl of guess_game is
   signal secret_value: std_logic_vector(7 downto 0);
   signal compare_value: std_logic_vector(1 downto 0);
    signal mux1: std_logic_vector(7 downto 0);
    signal bin_to_mux2: std_logic_vector(13 downto 0);
    

    begin
        ml:entity work.mylatch(mylatch_impl) port map(
            set => set,
            bin_input => inputs,
            secret_value => secret_value
        );

        cl:entity work.compare_logic(compare_logic_impl) port map(
            try => try,
            bin_input => inputs,
            secret_value => secret_value,
            compare_value => compare_value
        );

        mx1:entity work.mux1(mux1_impl) port map(
            secret_value => secret_value,
            bin_input => inputs,
            show => show,
            mux1 => mux1
        );

        b2h1:entity work.bin2hex(bin2hex_impl) port map(
            bin => mux1(7 downto 4),
            seg => bin_to_mux2(13 downto 7)
        );

        b2h2:entity work.bin2hex(bin2hex_impl) port map(
            bin => mux1(3 downto 0),
            seg => bin_to_mux2(6 downto 0)
        );

        mx2:entity work.mux2(mux2_impl) port map(
            compare_logic => compare_value,
            seg_1 => bin_to_mux2,
            hex(13 downto 7) => hex10,
            hex(6 downto 0) => hex1    
        );
end guess_game_impl;