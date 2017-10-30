library verilog;
use verilog.vl_types.all;
entity g07_stack52_vlg_check_tst is
    port(
        empty           : in     vl_logic;
        full            : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        sset_test       : in     vl_logic;
        value           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_stack52_vlg_check_tst;
