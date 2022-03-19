library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;
entity hex_mux is 

    port(
        --input
        bin : in std_logic_vector (11 downto 0);
	    sel : in std_logic_vector (1 downto 0);
        --output
        tsseg: out std_logic_vector(20 downto 0)
    );
end hex_mux;

architecture hex_mux_impl of hex_mux is
 
--Midlertidigt signal for at gemme den potentielle besked der skal displayes
    signal ssTemp: std_logic_vector(20 downto 0);
--FÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¸lgende instantierer 3 styks 7-segment displays. Hhv ss1, ss2, og ss3
    begin
        ss1: entity work.bin_to_7_segment(bin_to_7_segment_impl)port map(
            bcd_input => bin(3 downto 0), s_seg => ssTemp(6 downto 0));

        ss2: entity work.bin_to_7_segment(bin_to_7_segment_impl)port map(
            bcd_input => bin(7 downto 4), s_seg => ssTemp(13 downto 7));
     
        ss3: entity work.bin_to_7_segment(bin_to_7_segment_impl)port map(
            bcd_input => bin(11 downto 8), s_seg => ssTemp(20 downto 14));

            --On message, vises nÃ¥r ingen knapper trykkes pÃ¥
        tsseg <= "1000000" & "0101011" & "1111111" when sel ="11" else
            --Error message, vises nÃ¥r key 1 trykkes pÃ¥
                 "0000110" & "0101111" & "0101111" when sel = "01" else
            --NÃ¥r key 0 trykkes pÃ¥, viser det valgte tal fra input bin
                 ssTemp when sel = "10" else 
            --NÃ¥r begge alt andet sker, slukker displayet
            "111111111111111111111"; 

    end hex_mux_impl;
