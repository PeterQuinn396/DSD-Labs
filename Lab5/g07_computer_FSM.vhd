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
	signal vec_changed: std_logic;
	signal old_sum_int: integer range 0 to 31:=0;
	signal old_sum_last: std_logic_vector(5 downto 0);
	
begin
	update: process(clk,reset_all)
	begin
	
		if reset_all = '1' then
			state <= WAIT_TURN;
			old_sum_last <= "000000";
		elsif clk'EVENT and clk = '1' then
			
			case state is
			when WAIT_TURN =>
				if dealer_turn = '1' then state<=CP_TURN; end if;
			when CP_TURN=>
				old_sum_int <= to_integer(unsigned(dealer_sum(4 downto 0))); --get the old sum as an int
				if (old_sum_int > 16) then state<=END_TURN;
				else state <= DRAW;
				end if;
			when DRAW =>
				vec_changed <= or_reduce(old_sum_last xor dealer_sum);
				if vec_changed = '1' then --wait until the sum changes
					state <= CP_TURN;
				end if;
			when END_TURN=>
				state<= WAIT_TURN;
			end case;
			
			old_sum_last <= dealer_sum;
			
		end if;
	end process;
	output_logic: process(state,clk)
	begin
			case state is
			when WAIT_TURN =>
				dealer_done <= '0';
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
	