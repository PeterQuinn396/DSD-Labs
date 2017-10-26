library verilog;
use verilog.vl_types.all;
entity g07_debouncer_vlg_sample_tst is
    port(
        btnPshd         : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_debouncer_vlg_sample_tst;
