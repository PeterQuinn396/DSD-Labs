library verilog;
use verilog.vl_types.all;
entity g07_computer_FSM_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dealer_sum      : in     vl_logic_vector(5 downto 0);
        dealer_turn     : in     vl_logic;
        reset_all       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g07_computer_FSM_vlg_sample_tst;
