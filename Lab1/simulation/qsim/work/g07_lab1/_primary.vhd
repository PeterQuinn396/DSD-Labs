library verilog;
use verilog.vl_types.all;
entity g07_lab1 is
    port(
        AeqB            : out    vl_logic;
        A               : in     vl_logic_vector(6 downto 0);
        B               : in     vl_logic_vector(6 downto 0)
    );
end g07_lab1;
