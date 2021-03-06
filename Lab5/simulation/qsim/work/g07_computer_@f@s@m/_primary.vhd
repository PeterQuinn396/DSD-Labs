library verilog;
use verilog.vl_types.all;
entity g07_computer_FSM is
    port(
        dealer_turn     : in     vl_logic;
        clk             : in     vl_logic;
        reset_all       : in     vl_logic;
        dealer_sum      : in     vl_logic_vector(5 downto 0);
        new_card        : in     vl_logic_vector(5 downto 0);
        dealer_done     : out    vl_logic;
        request_card    : out    vl_logic;
        add_card_to_hand: out    vl_logic
    );
end g07_computer_FSM;
