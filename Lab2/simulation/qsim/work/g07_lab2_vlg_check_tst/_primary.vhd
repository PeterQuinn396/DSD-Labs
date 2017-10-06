library verilog;
use verilog.vl_types.all;
entity g07_lab2_vlg_check_tst is
    port(
        P_EN            : in     vl_logic_vector(51 downto 0);
        segment         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_lab2_vlg_check_tst;
