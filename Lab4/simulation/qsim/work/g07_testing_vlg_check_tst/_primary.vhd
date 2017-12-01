library verilog;
use verilog.vl_types.all;
entity g07_testing_vlg_check_tst is
    port(
        legal_play      : in     vl_logic;
        new_sum         : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_testing_vlg_check_tst;
