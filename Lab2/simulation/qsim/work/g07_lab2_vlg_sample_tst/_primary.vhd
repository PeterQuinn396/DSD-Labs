library verilog;
use verilog.vl_types.all;
entity g07_lab2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        code            : in     vl_logic_vector(3 downto 0);
        mode            : in     vl_logic;
        N               : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end g07_lab2_vlg_sample_tst;
