library verilog;
use verilog.vl_types.all;
entity code_lock_tester is
    port(
        SW              : in     vl_logic_vector(3 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0);
        CLOCK_50        : in     vl_logic;
        LEDG            : out    vl_logic_vector(2 downto 0)
    );
end code_lock_tester;
