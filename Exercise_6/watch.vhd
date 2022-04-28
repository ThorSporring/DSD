library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity watch is
    port(
        --input
        clk: in std_logic;
        speed: in std_logic;
        reset: in std_logic;
        --output
        sec_1: out std_logic_vector(6 downto 0);
        sec_10: out std_logic_vector(6 downto 0);

        min_1: out std_logic_vector(6 downto 0);
        min_10: out std_logic_vector(6 downto 0);

        hrs_1: out std_logic_vector(6 downto 0);
        hrs_10: out std_logic_vector(6 downto 0);
        tm: out std_logic_vector(15 downto 0)

        );
end watch;

architecture watch_impl of watch is

--Signal defintioner af alle de nÃƒÂ¸dvÃƒÂ¦ndige 
--temp signaler 
	 signal reset_temp : std_logic;
    signal clk_out_temp : std_logic;
    signal cout : std_logic_vector(5 downto 0);
    signal count_sec1 : std_logic_vector(3 downto 0);
    signal count_sec10: std_logic_vector(3 downto 0);
    signal count_min1: std_logic_vector(3 downto 0);
    signal count_min10: std_logic_vector(3 downto 0);
    signal count_hrs10: std_logic_vector(3 downto 0);
    signal count_hrs1: std_logic_vector(3 downto 0);

begin
    --Mapping til clock_gen
	 cge: entity work.clock_gen(clock_gen_impl) port map(
        clk => clk,
        speed => speed,
        reset => reset_temp,
        clk_out => clk_out_temp

    );
	
	--FÃƒÂ¸lgende mapper 6 forskellige multi counters med de respektive modes
	--til clock_gen. Hver gang den overflower carry'er den videre til
	--den nÃƒÂ¦ste counter
    mc1: entity work.multi_counter(multi_counter_impl) port map(
        clk => clk_out_temp,
        mode => "00",
        reset => reset_temp,
        count => count_sec1,
        cout => cout(0)
    );
    mc2: entity work.multi_counter(multi_counter_impl) port map(
        clk => cout(0),
        mode => "01",
        reset => reset_temp,
        count => count_sec10,
        cout => cout(1)
        );
    mc3: entity work.multi_counter(multi_counter_impl) port map(
        clk => cout(1),
        mode => "00",
        reset => reset_temp,
        count => count_min1,
        cout => cout(2)
    );
    mc4: entity work.multi_counter(multi_counter_impl) port map(
        clk => cout(2),
        mode => "01",
        reset => reset_temp,
        count => count_min10,
        cout => cout(3)
        );
    mc5: entity work.multi_counter(multi_counter_impl) port map(
        clk => cout(3),
        mode => "00",
        reset => reset_temp,
        count => count_hrs1,
        cout => cout(4)
    );
    mc6: entity work.multi_counter(multi_counter_impl) port map(
        clk => cout(4),
        mode => "11",
        reset => reset_temp,
        count => count_hrs10,
        cout => cout(5)
        );
    
	 --Mapper minutter og timer til TM så vi kan sammenligne det i Alarm clock opgaven
	 process(count_min1,count_min10,count_hrs1,count_hrs10)
		begin
			tm(3 downto 0) <= count_min1;
			tm(7 downto 4) <=count_min10 ;
			tm(11 downto 8) <= count_hrs1;
			tm(15 downto 12) <= count_hrs10;
	 end Process;
	 
	 
	 --Her mapper vi tÃƒÂ¦llerne til bin_to_7_segment decoderne
    bn1: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => count_sec1,
        s_seg => sec_1
    );
    bn2: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => count_sec10,
        s_seg => sec_10
    );
    bn3: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => count_min1,
        s_seg => min_1
    );
    bn4: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => count_min10,
        s_seg => min_10
    );
    bn5: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => count_hrs1,
        s_seg => hrs_1
    );
    bn6: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => count_hrs10,
        s_seg => hrs_10
    );
	 
	 --FÃƒÂ¸lgende kode hÃƒÂ¥ndtere at clocken skal resettes nÃƒÂ¥r den
	 --rammer 23:59:59. Ellers sÃƒÂ¦ttes reset_temp til input reset
	rsl: entity work.reset_logic(reset_logic_impl) port map(
        hrs_bin1 => count_hrs1,
        hrs_bin10 => count_hrs10,
        reset_out => reset_temp,
        reset_in => reset
    );

end watch_impl ; -- watch_impl