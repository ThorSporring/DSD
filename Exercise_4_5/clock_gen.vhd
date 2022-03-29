library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity clock_gen is
  port (
    --input
    clk : in std_logic;
    speed: in std_logic;
    reset: in std_logic;
    --output
    clk_out: out std_logic
  ) ;
end clock_gen;

architecture clock_gen_impl of clock_gen is

    variable clockCounter : integer := 0;

begin
    process(clk)
    begin
        clockCounter := clockCounter + 1;
        if speed = 1 then 
            if clockCounter = 50000000 then
                clk_out <= '1';
            else
                clk_out <= '0';
            end if;
        end if;

        if speed = 0 then
            if clockCounter = 250000 then
                clk_out <= '1';
            else
                clk_out <= '0';
            end if;
        end if;

        if reset = 0 then
            clockCounter := 0;
            clk_out <= '0';
        end if;
    end process;

end clock_gen_impl ; -- clock_gen_impl
