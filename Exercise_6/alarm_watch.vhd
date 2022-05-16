library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity alarm_watch is
  port (
	 --View button input
    choice : in std_logic;
	 
	 --Alarm input
	 in_min1 : in std_logic_vector(3 downto 0);
     in_min10: in std_logic_vector(3 downto 0);
     in_hrs1 : in std_logic_vector(3 downto 0);
     in_hrs10: in std_logic_vector(3 downto 0);
     
     --Watch inputs 
     clock : in std_logic;
     speed : in std_logic;
     reset : in std_logic;

    --Alarm output
    alarm : out std_logic;
    --7-seg output
    sec1 : out std_logic_vector (6 downto 0);
    sec10: out std_logic_vector (6 downto 0);
    min1 : out std_logic_vector (6 downto 0);
    min10: out std_logic_vector (6 downto 0);
    hrs1 : out std_logic_vector (6 downto 0);
    hrs10: out std_logic_vector (6 downto 0)
  ) ;
end alarm_watch;

architecture alarm_watch_impl of alarm_watch is

    --Midlertidige signaler til mellem entities
    signal time_alarm_temp : std_logic_vector (15 downto 0);
    signal tm_temp : std_logic_vector (15 downto 0);
    
    signal bin_min1 : std_logic_vector (6 downto 0);
    signal bin_min10 : std_logic_vector (6 downto 0);
    signal bin_hrs1 : std_logic_vector (6 downto 0);
    signal bin_hrs10 : std_logic_vector (6 downto 0);

    signal watch_sec1 : std_logic_vector (6 downto 0);
    signal watch_sec10 : std_logic_vector (6 downto 0);
    signal watch_min1 : std_logic_vector (6 downto 0);
    signal watch_min10 : std_logic_vector (6 downto 0);
    signal watch_hrs1 : std_logic_vector (6 downto 0);
    signal watch_hrs10 : std_logic_vector (6 downto 0);

begin
    --input limiter
    ipl: entity work.input_limiter(input_limiter_impl) port map(
        clk => clock,
        bin_min1 => in_min1,
        bin_min10 => in_min10,
        bin_hrs1 => in_hrs1,
        bin_hrs10 => in_hrs10,
        time_alarm => time_alarm_temp
    );
    
    --Konverterer alle satte alarmer til 7 seg
    bs1: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => time_alarm_temp (3 downto 0),
        s_seg => bin_min1
    );
    bs2: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => time_alarm_temp (7 downto 4),
        s_seg => bin_min10
    );
    bs3: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => time_alarm_temp (11 downto 8),
        s_seg => bin_hrs1
    );
    bs4: entity work.bin_to_7_segment(bin_to_7_segment_impl) port map(
        bcd_input => time_alarm_temp (15 downto 12),
        s_seg => bin_hrs10
    );

    --Watch entity

    wa1: entity work.watch(watch_impl) port map(
        --inputs
        clk => clock,
        speed => speed,
        reset => reset,

        --output
        sec_1 => watch_sec1,
        sec_10 => watch_sec10,
        min_1 => watch_min1,
        min_10 => watch_min10,
        hrs_1 => watch_hrs1,
        hrs_10 => watch_hrs10,
        tm => tm_temp
    );

    --compare entity
    co1: entity work.compare(compare_logic) port map(
        tm_watch => tm_temp,
        tm_alarm => time_alarm_temp,
        alarm => alarm
    );

    --Mux entity
    mu1: entity work.view_mux(view_mux_impl) port map(
        choice => choice,
    
        bin_min1 => bin_min1,
        bin_min10 => bin_min10,
        bin_hrs1 => bin_hrs1,
        bin_hrs10 => bin_hrs10,

        watch_sec1 => watch_sec1,
        watch_sec10 => watch_sec10,
        watch_min1 => watch_min1,
        watch_min10 => watch_min10,
        watch_hrs1 => watch_hrs1,
        watch_hrs10 => watch_hrs10,

        sec1 => sec1,
        sec10 => sec10,
        min1 => min1,
        min10 => min10,
        hrs1 => hrs1,
        hrs10 => hrs10
    );
  
  


end alarm_watch_impl ; -- alarm_watch_tester_impl