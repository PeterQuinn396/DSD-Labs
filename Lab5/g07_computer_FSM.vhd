library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g07_computer_FSM is
port(dealer_turn,clk,reset_all: in std_logic;
		dealer_sum:in std_logic_vector (5 downto 0);
		dealer_done:out std_logic;
		request_card:out std_logic);
end g07_computer_FSM;

architecture g07_computer_FSM_arc of g07_computer_FSM is

	TYPE state_signal IS (WAIT_TURN,CP_TURN,DRAW,END_TURN);
	signal state: state_signal;
	signal old_sum_int: integer range 0 to 31:=0;
	signal old_sum_last: integer range 0 to 31:=0;
	
begin
old_sum_int <= to_integer(unsigned(dealer_sum(4 downto 0)));
	update: process(clk,reset_all)
	begin
		if reset_all = '1' then
			state <= WAIT_TURN;
		elsif clk'EVENT and clk = '1' then
			case state is
			when WAIT_TURN =>
				if dealer_turn = '1' then state<=CP_TURN; end if;
			when CP_TURN=>
				if (old_sum_int > 16) then state<=END_TURN;
				else state<= DRAW;
				end if;
			when DRAW=>
				if old_sum_int /= old_sum_last then --wait until the sum changes
					state <= CP_TURN;
				end if;
			when END_TURN=>
				state<= WAIT_TURN;
			end case;
		old_sum_last <= old_sum_int;
		end if;
	end process;
	output_logic: process(state,clk)
	begin
			case state is
			when WAIT_TURN =>
				dealer_done <= '1';
				request_card<='0';
			when CP_TURN=>
				dealer_done <= '0';
				request_card<='0';
			when DRAW=>
				dealer_done <= '0';
				request_card <='1';
			when END_TURN=>
				dealer_done <= '1';
				request_card <='0';
			end case;
	end process;
end architecture;
	