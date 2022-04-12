library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multi_counter is
  
	port (
	
	--Inputs
	clk : in std_logic;
	mode : in std_logic_vector (1 downto 0);
	reset : in std_logic;

	--outputs
	count : out std_logic_vector (3 downto 0);
	cout : out std_logic
  
	) ;
end multi_counter;

architecture multi_counter_impl of multi_counter is

--Shared variable betyder at alle processer kan tilgå dem
	shared variable max_count: integer := 0;
	shared variable min_count: integer := 0;

begin

--Mode_set står for hvilken tælle mode vi er i
	mode_set:
	process(mode)
		begin
			if mode = "00" then
				max_count := 10;
				min_count := 0;
			elsif mode = "01" then
				max_count := 6;
				min_count := 0;
			elsif mode = "10" or mode = "11" then
				max_count := 3;
				min_count := 0;
			else
				max_count := 2;
				min_count := 0;
			end if;
		end process;

--counter process står for at optælle og resette, samt output
	counter:
	process(clk, reset)
		--cnt: Counter der bliver ouputtet på count 
		variable cnt : integer := 0;
		--cout_temp: carry out flaget bliver sat når counter overflower
		variable cout_temp: std_logic := '0';
		begin
			
		
		--Hvis reset sættes, så sættes counter og cout lig 0
			if reset = '0' then
				cnt := min_count;
				cout_temp := '0';
		--Hvis vi får en clock pulse tælles counter 1 op
			elsif(rising_edge(clk)) then
				cnt := cnt + 1;
				cout_temp := '0';
				
		--Hvis cnt går over max count, sættes cnt til min count, og carry flag sættes
				if cnt >= max_count then
					cnt := min_count;
					cout_temp := '1';		
				end if;
			end if;

			--Output cnt på count (konverterer int til std_logic)
			count <= std_logic_vector(to_unsigned(cnt, count'length));
			--Output carry flag
			cout <= cout_temp;
			--resetter carry flag hver gang
			
		end process;

end multi_counter_impl; -- multi_counter multi_counter