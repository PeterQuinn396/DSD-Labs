library verilog;
use verilog.vl_types.all;
entity g07_RANDU_vlg_check_tst is
    port(
        rand            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_RANDU_vlg_check_tst;
