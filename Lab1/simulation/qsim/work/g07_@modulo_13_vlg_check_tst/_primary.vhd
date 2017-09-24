library verilog;
use verilog.vl_types.all;
entity g07_Modulo_13_vlg_check_tst is
    port(
        Amod13          : in     vl_logic_vector(3 downto 0);
        floor13         : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_Modulo_13_vlg_check_tst;
