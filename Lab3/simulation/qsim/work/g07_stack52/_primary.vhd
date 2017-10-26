library verilog;
use verilog.vl_types.all;
entity g07_stack52 is
    port(
        full            : out    vl_logic;
        num             : out    vl_logic_vector(5 downto 0);
        enable          : in     vl_logic;
        empty           : out    vl_logic;
        address         : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        value           : out    vl_logic_vector(5 downto 0);
        dataIn          : in     vl_logic_vector(5 downto 0)
    );
end g07_stack52;
