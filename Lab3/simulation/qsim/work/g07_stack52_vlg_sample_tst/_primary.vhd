library verilog;
use verilog.vl_types.all;
entity g07_stack52_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic;
        dataIn          : in     vl_logic_vector(5 downto 0);
        enable          : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_stack52_vlg_sample_tst;
