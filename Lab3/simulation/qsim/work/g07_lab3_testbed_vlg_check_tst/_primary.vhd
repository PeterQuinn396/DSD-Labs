library verilog;
use verilog.vl_types.all;
entity g07_lab3_testbed_vlg_check_tst is
    port(
        activeLED       : in     vl_logic;
        gled            : in     vl_logic;
        LED1            : in     vl_logic_vector(6 downto 0);
        LED2            : in     vl_logic_vector(6 downto 0);
        num_test        : in     vl_logic_vector(5 downto 0);
        rled            : in     vl_logic;
        value_test      : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g07_lab3_testbed_vlg_check_tst;
