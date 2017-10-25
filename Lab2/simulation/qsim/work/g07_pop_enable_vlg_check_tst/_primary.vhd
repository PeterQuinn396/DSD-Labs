library verilog;
use verilog.vl_types.all;
entity g07_pop_enable_vlg_check_tst is
    port(
        P_EN            : in     vl_logic_vector(51 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_pop_enable_vlg_check_tst;
