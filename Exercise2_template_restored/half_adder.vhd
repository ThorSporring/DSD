library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity half_adder is

	port (
		-- Input ports
		A : in std_logic;
		B : in std_logic;

		-- Output ports
		Sum : out std_logic;
		Cout : out std_logic
	);
end half_adder;

architecture half_adder_behavioral of half_adder is
begin

	Sum_calc :
	process (A, B) is
		-- Declaration(s)
	begin
		if A = B then
			Sum <= '0';

		else
			Sum <= '1';
		end if;

	end process;

	Cout_calc :
	process (A, B) is
		-- Declaration(s)
	begin
		if A = '1' and B = '1' then
			Cout <= '1';
		else
			Cout <= '0';
		end if;

	end process;

end half_adder_behavioral;

architecture half_adder_behavioral_alt of half_adder is
begin

	Calc :
	process (A, B) is

	begin
		if A = '0' and B = '0' then
			Sum <= '0';
			Cout <= '0';
		elsif A = '0' and B = '1' then
			Sum <= '1';
			Cout <= '0';
		elsif A = '1' and B = '0' then
			Sum <= '1';
			Cout <= '0';
		else
			Sum <= '0';
			Cout <= '1';

		end if;

	end process;

end half_adder_behavioral_alt;

architecture half_adder_dataflow of half_adder is

begin

	Sum <= A xor B;
	Cout <= A and B;

end half_adder_dataflow;

architecture half_adder_structural of half_adder is

	-- Declarations (optional)

begin

	-- To instantiate an entity directly, the entity must be written in VHDL.
	-- You must also add the file containing the entity declaration to your 
	-- Quartus II project.
	Sum_calc : entity work.my_xor

		port map
		(
			a => A,
			b => B,
			f => Sum
		);

	Cout_calc : entity work.my_and

		port map
		(
			a => A,
			b => B,
			f => Cout
		);

end half_adder_structural;