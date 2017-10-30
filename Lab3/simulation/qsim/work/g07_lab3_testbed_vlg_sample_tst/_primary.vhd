library verilog;
use verilog.vl_types.all;
entity g07_lab3_testbed_vlg_sample_tst is
    port(
        adr             : in     vl_logic_vector(5 downto 0);
        button          : in     vl_logic;
        clk             : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_lab3_testbed_vlg_sample_tst;
