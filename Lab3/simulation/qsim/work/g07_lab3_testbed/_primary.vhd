library verilog;
use verilog.vl_types.all;
entity g07_lab3_testbed is
    port(
        rled            : out    vl_logic;
        button          : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        adr             : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        gled            : out    vl_logic;
        activeLED       : out    vl_logic;
        LED1            : out    vl_logic_vector(6 downto 0);
        LED2            : out    vl_logic_vector(6 downto 0);
        num_test        : out    vl_logic_vector(5 downto 0);
        value_test      : out    vl_logic_vector(5 downto 0)
    );
end g07_lab3_testbed;
