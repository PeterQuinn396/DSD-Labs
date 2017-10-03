library verilog;
use verilog.vl_types.all;
entity g07_lab2 is
    port(
        P_EN            : out    vl_logic_vector(51 downto 0);
        N               : in     vl_logic_vector(5 downto 0);
        segment         : out    vl_logic_vector(6 downto 0);
        mode            : in     vl_logic;
        code            : in     vl_logic_vector(3 downto 0)
    );
end g07_lab2;
