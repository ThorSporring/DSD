library verilog;
use verilog.vl_types.all;
entity meemoo_tester_vlg_check_tst is
    port(
        LEDR            : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end meemoo_tester_vlg_check_tst;
