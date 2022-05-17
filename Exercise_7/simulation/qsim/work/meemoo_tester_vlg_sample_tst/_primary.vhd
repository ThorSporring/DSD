library verilog;
use verilog.vl_types.all;
entity meemoo_tester_vlg_sample_tst is
    port(
        KEY             : in     vl_logic_vector(1 downto 0);
        SW              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end meemoo_tester_vlg_sample_tst;
