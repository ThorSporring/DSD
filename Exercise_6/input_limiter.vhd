library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity input_limiter is
  port (
   --input
    bin_min1: in std_logic_vector (3 downto 0);
    bin_min10: in std_logic_vector (3 downto 0);
    bin_hrs1: in std_logic_vector (3 downto 0);
    bin_hrs10: in std_logic_vector (3 downto 0);
    clk: in std_logic;
   --Output
    time_alarm: out std_logic_vector (15 downto 0)
    ) ;
end input_limiter;

architecture input_limiter_impl of input_limiter is

    begin
        --
        process(clk,bin_min1,bin_min10,bin_hrs1,bin_hrs10)
            begin
            
                if bin_min1 <= "1001" then
                   time_alarm(3 downto 0) <= bin_min1;
                else
                    time_alarm(3 downto 0) <= "1111";
                end if;


                if bin_min10 <= "0101" then
                   time_alarm (7 downto 4)  <= bin_min1;
                else
                    time_alarm(7 downto 4) <= "1111";
                end if;


                if bin_hrs1 <= "1001" then
                    time_alarm(11 downto 8)  <= bin_hrs1;
                elsif bin_hrs1 < "0011" and bin_hrs10 < "0010" then
                    time_alarm(11 downto 8)<= "1111";
                else
                    time_alarm(11 downto 8)<= "1111";
                end if;


                if bin_hrs10 <= "0010" then
                    time_alarm(15 downto 12) <= bin_hrs10 ;
                else
                    time_alarm(15 downto 12) <= "1111";
                end if;

            end process;

end input_limiter_impl ; -- input_limiter_impl