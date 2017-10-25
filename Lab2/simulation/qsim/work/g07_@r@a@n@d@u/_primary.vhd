library verilog;
use verilog.vl_types.all;
entity g07_RANDU is
    port(
        seed            : in     vl_logic_vector(31 downto 0);
        rand            : out    vl_logic_vector(31 downto 0)
    );
end g07_RANDU;
