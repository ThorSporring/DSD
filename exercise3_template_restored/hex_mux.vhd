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
--FÃ¸lgende instantierer 3 styks 7-segment displays. Hhv ss1, ss2, og ss3 
    begin
	 
	 --Lader input gÃ¥ til output (Standard mode)
    if (sel = "10") then
		ss1: entity work.bin_to_7_segment(bin_to_7_segment_impl)
        port map
        (
            --input
            bcd_input => bin(3 downto 0),
            --output
            s_seg => tsseg(6 downto 0)
        );
        ss2: entity work.bin_to_7_segment(bin_to_7_segment_impl)
        port map
        (
            --input
            bcd_input => bin(7 downto 4),
            --output
            s_seg => tsseg(13 downto 7)
        );
        ss3: entity work.bin_to_7_segment(bin_to_7_segment_impl)
        port map
        (
            --input
            bcd_input => bin(11 downto 8),
            --output
            s_seg => tsseg(20 downto 14)
        );
   
	--Udskriver On message
    else if (sel = "11") then
        onMsg: entity work.bin_to_7_segment(bin_to_7_segment_impl)
        port map
        (
        "0101011" => tsseg(6 downto 0),
        "1000000" => tsseg(13 downto 7)
        );
    
    --Udskriver error message 
    else if (sel = "01") then 
        errorMsg: entity work.bin_to_7_segment(bin_to_7_segment_impl)
        port map
        (
        "0101111" => tsseg(6 downto 0),
        "0101111" => tsseg(13 downto 7),
        "0000110" => tsseg(20 downto 14)
        );
    end if;

    end hex_mux_impl;
