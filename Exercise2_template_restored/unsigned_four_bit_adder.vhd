library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

-- Declares a unsigned 4-bit adder, by not using the cin and cout

entity unsigned_four_bit_adder is
    port(
        --input ports
        A, B: in std_logic_vector(3 downto 0);

        --output ports
        Sum : out std_logic_vector(3 downto 0)
    );
end unsigned_four_bit_adder;

architecture unsigned_four_bit_adder_impl of unsigned_four_bit_adder is
    --Declarations
begin
    fourA1: entity four_bit_adder port map(

        A(3 downto 0) => A(3 downto 0),
        B(3 downto 0) => B(3 downto 0)
        Sum(3 downto 0) => Sum(3 downto 0)
    );
end unsigned_four_bit_adder_impl;
