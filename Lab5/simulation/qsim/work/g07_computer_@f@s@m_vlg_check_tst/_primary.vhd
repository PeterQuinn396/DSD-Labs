library verilog;
use verilog.vl_types.all;
entity g07_computer_FSM_vlg_check_tst is
    port(
        add_card_to_hand: in     vl_logic;
        dealer_done     : in     vl_logic;
        request_card    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g07_computer_FSM_vlg_check_tst;
