library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

-- Declares a unsigned 4-bit adder, by not using the cin and cout

entity simple_four_bit_adder is
  
    port(
        --input ports
        A, B: in std_logic_vector(3 downto 0);

        --output ports
        Sum : out std_logic_vector(3 downto 0)
    );

    end simple_four_bit_adder;

architecture unsigned_four_bit_adder_impl of simple_four_bit_adder is
    --Declarations
begin

    sum <= std_logic_vector(unsigned(a)+unsigned(b));

    end unsigned_four_bit_adder_impl;

architecture signed_four_bit_adder_impl of simple_four_bit_adder is
    --Declarations
begin
    
    sum <= std_logic_vector(signed(a)+signed(b));
    
    end signed_four_bit_adder_impl;