library verilog;
use verilog.vl_types.all;
entity g07_testing_vlg_sample_tst is
    port(
        old_sum         : in     vl_logic_vector(5 downto 0);
        top_card        : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end g07_testing_vlg_sample_tst;
