library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity reset_logic is
  port (
        reset_in : in std_logic;
        hrs_bin1 : in std_logic_vector(3 downto 0);
        hrs_bin10: in std_logic_vector(3 downto 0);

        reset_out: out std_logic
  ) ;
end reset_logic;

architecture reset_logic_impl of reset_logic is

begin
    process(reset_in, hrs_bin1, hrs_bin10)
        begin
        if hrs_bin1 ="0100" and hrs_bin10 ="0010" then
            reset_out <= '0';
        else
            reset_out <= reset_in;
        end if;
    end process;

end reset_logic_impl ; -- reset_logic_impl
