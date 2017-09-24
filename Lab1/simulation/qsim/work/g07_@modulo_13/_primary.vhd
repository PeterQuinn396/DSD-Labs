library verilog;
use verilog.vl_types.all;
entity g07_Modulo_13 is
    port(
        Amod13          : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(5 downto 0);
        floor13         : out    vl_logic_vector(2 downto 0)
    );
end g07_Modulo_13;
