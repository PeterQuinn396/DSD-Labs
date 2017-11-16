library verilog;
use verilog.vl_types.all;
entity g07_dealer_FSM_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        request_deal    : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_dealer_FSM_vlg_sample_tst;
