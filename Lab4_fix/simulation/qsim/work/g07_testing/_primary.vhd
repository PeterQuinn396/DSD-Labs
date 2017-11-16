library verilog;
use verilog.vl_types.all;
entity g07_testing is
    port(
        legal_play      : out    vl_logic;
        old_sum         : in     vl_logic_vector(5 downto 0);
        top_card        : in     vl_logic_vector(5 downto 0);
        new_sum         : out    vl_logic_vector(5 downto 0)
    );
end g07_testing;
