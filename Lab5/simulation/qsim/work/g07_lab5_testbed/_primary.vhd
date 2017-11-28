library verilog;
use verilog.vl_types.all;
entity g07_lab5_testbed is
    port(
        deal            : out    vl_logic;
        request_deal    : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        legal_play      : out    vl_logic;
        p_new_sum       : out    vl_logic_vector(5 downto 0);
        en_p            : in     vl_logic;
        p_sum           : out    vl_logic_vector(5 downto 0)
    );
end g07_lab5_testbed;
