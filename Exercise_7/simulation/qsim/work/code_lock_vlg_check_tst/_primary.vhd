library verilog;
use verilog.vl_types.all;
entity code_lock_vlg_check_tst is
    port(
        failed          : in     vl_logic;
        lock            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end code_lock_vlg_check_tst;
