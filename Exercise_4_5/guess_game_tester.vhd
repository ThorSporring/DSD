library ieee;
use ieee.std_logic_1164.all;

entity guess_game_tester is
    port(
        SW: in std_logic_vector(7 downto 0);
        KEY: in std_logic_vector(2 downto 0);
        HEX0: out std_logic_vector(6 downto 0);
        HEX1: out std_logic_vector(6 downto 0)
    );
end guess_game_tester;

architecture guess_game_tester_imp of guess_game_tester is
    begin
        ggt: entity work.guess_game(guess_game_impl) port map(
            inputs => SW,
            set => KEY(0),
            try => KEY(1),
            show => KEY(2),
            hex1 => HEX0,
            hex10 => HEX1
        );
end guess_game_tester_imp;