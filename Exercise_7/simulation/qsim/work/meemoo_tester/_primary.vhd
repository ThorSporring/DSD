library verilog;
use verilog.vl_types.all;
entity meemoo_tester is
    port(
        SW              : in     vl_logic_vector(1 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0);
        LEDR            : out    vl_logic_vector(1 downto 0)
    );
end meemoo_tester;
