library verilog;
use verilog.vl_types.all;
entity g07_lab5_testbed_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en_p            : in     vl_logic;
        request_deal    : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_lab5_testbed_vlg_sample_tst;
