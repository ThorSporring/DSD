library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity compare is
  port (
    --input
    tm_watch : in std_logic_vector(15 downto 0);
    tm_alarm : in std_logic_vector;  

    --output
    alarm : out std_logic
    ); 
end compare;

architecture compare_logic of compare is
begin
	process(tm_alarm,tm_watch) begin
    if tm_watch = tm_alarm then
        alarm <= '1';
    else
        alarm <= '0';
    end if;
	 end process;

end compare_logic ; -- compare_logic