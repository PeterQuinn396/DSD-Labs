library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
library lpm;
use lpm.lpm_components.all;

entity g07_controller_FSM is

port (hit, stay, d_bust, p_bust, d_done, reset_sig, clock: in std_logic;
		d_sum, p_sum: in std_logic_vector(5 downto 0);
		en_p, en_d, p_inc, d_inc, init, d_turn: out std_logic
		);

end g07_controller_FSM;

architecture g07_controller_FSM_arch of g07_controller_FSM is
	TYPE state_signal IS (RESET, DEALER_CARD_1, DEALER_CARD_2, PLAYER_CARD_1, 
	PLAYER_CARD_2, PLAYER_HIT, PLAYER_CHOOSE, DEALER_TURN, PLAYER_WON, DEALER_WON);
	signal state: state_signal;
	signal vec_changed: std_logic;
	signal p_sum_last: std_logic_vector (5 downto 0);
	signal d_sum_last: std_logic_vector (5 downto 0);
	
begin
	update: process(clock,reset)
	begin
		if reset_sig = '1' then
			state <= RESET;
		elsif clock'EVENT and clock = '1' then
			case state is
			when RESET =>
				wait until clock='1';
				wait until clock='1'; --wait 2 clock cycles for stack to properly 
												--	initialize (delay due to POP_EN)
				state <= PLAYER_CARD_1; --deal player their first card
			
			when PLAYER_CARD_1 =>
				vec_changed <= or_reduce(p_sum xor p_sum_last);  --see if the sum has 
																				--changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes 
					state <= DEALER_CARD_1;	--(this is probably illegal b/c p_sum is a vec
				end if;
				
				
			when DEALER_CARD_1 =>
				vec_changed <= or_reduce(d_sum xor d_sum_last);  --see if the sum has changed 
																				--(i.e. wait until it has changed)
				if vec_changed = '1' then --wait until the sum changes (this is probably illegal b/c p_sum is a vec
					state <= PLAYER_CARD_2; 
				end if;
				
				
			when PLAYER_CARD_2 =>
				vec_changed <= or_reduce(p_sum xor p_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then --wait until the sum changes (this is probably illegal b/c p_sum is a vec
					state <= DEALER_CARD_2; 
				end if;
				
				
			when DEALER_CARD_2 =>
				vec_changed <= or_reduce(d_sum xor d_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then --wait until the sum changes (this is probably illegal b/c p_sum is a vec
					state <= PLAYER_CHOOSE; 
				end if;
		
				
			when PLAYER_CHOOSE =>
				--wait for player to press hit or stay button, which are active low
				if hit='0' then 
					state <= PLAYER_HIT;
				elsif stay='0' then 
					state <= DEALER_TURN;
				end if;		
	
			WHEN PLAYER_HIT =>
				vec_changed <= or_reduce(p_sum xor p_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then --wait until the sum changes
					state <= PLAYER_CHOOSE; 
				end if;
				
			
			when DEALER_TURN =>
				if d_done='1' then 
					--figure out winner here
					
				end if;
					
			end case;
			
			--always update these at the end to make sure they are current for when we go to a
			--state that needs them
			p_sum_last<=p_sum;
			d_sum_last<=d_sum;
			
		end if;
	end process;
	
	output_logic: process(state,clock)
	begin
		case state is
			when RESET => 
				init <= '1';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
			when DEALER_CARD_1=>
			
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
				wait until clock ='1'; --need to have a cycle where en_p and en_d 
												--are low for dealer to work properly
				init <= '0';
				en_p <= '0';
				en_d <= '1';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
			
			when DEALER_CARD_2=> 
			
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
				wait until clock ='1'; --need to have a cycle where en_p and en_d 
												--are low for dealer to work properly
				init <= '0';
				en_p <= '0';
				en_d <= '1';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
								
			when PLAYER_CARD_1 =>
			
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
				wait until clock ='1'; --need to have a cycle where en_p and en_d 
												--are low for dealer to work properly
				init <= '0';
				en_p <= '1';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
			
			when PLAYER_CARD_2 => 
			
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
				wait until clock ='1'; --need to have a cycle where en_p and en_d 
												--are low for dealer to work properly
				init <= '0';
				en_p <= '1';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
				
			when PLAYER_CHOOSE => 
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
			
			when PLAYER_HIT => 
				init <= '0';
				en_p <= '1';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '0';
			
			when DEALER_TURN =>
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '1';
				p_inc <= '0';
				d_inc <= '0';
			
			when PLAYER_WON => 
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '1';
				d_inc <= '0';
			
			when DEALER_WON => 
				init <= '0';
				en_p <= '0';
				en_d <= '0';
				d_turn <= '0';
				p_inc <= '0';
				d_inc <= '1';
				
		end case;
	end process;	
end architecture;