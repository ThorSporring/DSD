library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity view_mux is
  port (
    --input fra key
    choice : in std_logic;

    --input fra den satte alarm
    bin_min1 : in std_logic_vector(6 downto 0);
    bin_min10 : in std_logic_vector(6 downto 0);
    bin_hrs1 : in std_logic_vector(6 downto 0);
    bin_hrs10 : in std_logic_vector(6 downto 0);

    --input fra det tÃ¦llende ur
    watch_sec1 : in std_logic_vector(6 downto 0);
    watch_sec10 : in std_logic_vector(6 downto 0);
    watch_min1 : in std_logic_vector(6 downto 0);
    watch_min10 : in std_logic_vector(6 downto 0);
    watch_hrs1 : in std_logic_vector(6 downto 0);
    watch_hrs10 : in std_logic_vector(6 downto 0);
  
    --output til syvsegment
    sec1 : out std_logic_vector(6 downto 0);
    sec10 : out std_logic_vector(6 downto 0);
    min1 : out std_logic_vector(6 downto 0);
    min10 : out std_logic_vector(6 downto 0);
    hrs1 : out std_logic_vector(6 downto 0);
    hrs10 : out std_logic_vector(6 downto 0)
    ) ;
end view_mux;

architecture view_mux_impl of view_mux is

begin
    process(choice)
    begin
      if choice = '0' then
        sec1 <= "0000000";
        sec10 <= "0000000";
        min1 <= bin_min1;
        min10 <= bin_min10;
        hrs1 <= bin_hrs1;
        hrs10 <= bin_hrs10;
    else
        sec1 <= watch_sec1;
        sec10 <= watch_sec10;
        min1 <= watch_min1;
        min10 <= watch_min10;
        hrs1 <= watch_hrs1;
        hrs10 <= watch_hrs10;
    end if;
	end process;
end view_mux_impl ; -- view_mux_impl