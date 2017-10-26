library verilog;
use verilog.vl_types.all;
entity g07_debouncer is
    port(
        sig             : out    vl_logic;
        clk             : in     vl_logic;
        btnPshd         : in     vl_logic
    );
end g07_debouncer;
