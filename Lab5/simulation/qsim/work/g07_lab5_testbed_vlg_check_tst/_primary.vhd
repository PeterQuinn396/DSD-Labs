library verilog;
use verilog.vl_types.all;
entity g07_lab5_testbed_vlg_check_tst is
    port(
        deal            : in     vl_logic;
        legal_play      : in     vl_logic;
        p_new_sum       : in     vl_logic_vector(5 downto 0);
        p_sum           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_lab5_testbed_vlg_check_tst;
