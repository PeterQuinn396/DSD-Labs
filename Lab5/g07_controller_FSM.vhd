library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g07_controller_FSM is

port (hit, stay, d_bust, p_bust, d_done, reset_sig, clock: in std_logic;
		d_sum, p_sum, new_card: in std_logic_vector(5 downto 0);
		en_p, en_d, p_won, d_won, init, d_turn,p_turn, rand_init,load: out std_logic
		);

end g07_controller_FSM;

architecture g07_controller_FSM_arch of g07_controller_FSM is
	TYPE state_signal IS (INIT_RAND,WAIT_RAND,RESET_DECK, DEALER_CARD_1, DEALER_CARD_2, PLAYER_CARD_1, 
	PLAYER_CARD_2, PLAYER_HIT, PLAYER_CHOOSE, DEALER_TURN, PLAYER_WON, DEALER_WON, ENDGAME, RESET_WAIT,
	LOAD_PLAYER_CARD, LOAD_PLAYER_CARD_2, LOAD_PLAYER_CARD_1,LOAD_DEALER_CARD_1,LOAD_DEALER_CARD_2);
	signal state: state_signal;
	signal vec_changed: std_logic;
	signal p_sum_last: std_logic_vector (5 downto 0);
	signal d_sum_last: std_logic_vector (5 downto 0);
	signal last_card: std_logic_vector (5 downto 0);
	signal counter: integer range 0 to 15;
	
begin
	update: process(clock,reset_sig)
	begin
		if reset_sig = '1' then
			state <= INIT_RAND;
		elsif clock'EVENT and clock = '1' then
			case state is
			
			when INIT_RAND => 
					state <= WAIT_RAND;

			when WAIT_RAND =>
				if hit='1' then
					state<=RESET_DECK;
				end if;
			
			when RESET_DECK => --initialize the stack (deck)
				if counter = 5 then --wait 5 clock cycles for stack to completly initialize (delay due to POP_EN and other things)
					counter <= 0;
					state <= RESET_WAIT;
				else counter <= counter+1;
				end if;
			
			when RESET_WAIT =>
				if counter = 12 then --wait 5 clock cycles for stack to completly initialize (delay due to POP_EN and other things)
					counter <= 0;
					state <= LOAD_PLAYER_CARD_1;
				else counter <= counter+1;
				end if;
				
			when LOAD_PLAYER_CARD_1 =>
				vec_changed <= or_reduce(new_card xor last_card);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes and we don't have the default value
					state<=PLAYER_CARD_1; --put card in players hand
				end if;
				
			when PLAYER_CARD_1 =>
				vec_changed <= or_reduce(p_sum xor p_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes and we don't have the default value
					state <= LOAD_DEALER_CARD_1;
				end if;
				
			when LOAD_DEALER_CARD_1 =>
				vec_changed <= or_reduce(new_card xor last_card);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes and we don't have the default value
					state<=DEALER_CARD_1; --put card in players hand
				end if;
				
			when DEALER_CARD_1 =>
				vec_changed <= or_reduce(d_sum xor d_sum_last);
				if vec_changed = '1' then 
					state <= LOAD_PLAYER_CARD_2; 
				end if;
				
			when LOAD_PLAYER_CARD_2 =>
				vec_changed <= or_reduce(new_card xor last_card);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes and we don't have the default value
					state<=PLAYER_CARD_2; --put card in players hand
				end if;
				
			when PLAYER_CARD_2 =>
				vec_changed <= or_reduce(p_sum xor p_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then 
					state <= LOAD_DEALER_CARD_2; 
				end if;
				
			when LOAD_DEALER_CARD_2 =>
				vec_changed <= or_reduce(new_card xor last_card);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes and we don't have the default value
					state<=DEALER_CARD_2; --put card in players hand
				end if;
				
			when DEALER_CARD_2 =>
				vec_changed <= or_reduce(d_sum xor d_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then 		
					state <= PLAYER_CHOOSE; 
				end if;
				
			when PLAYER_CHOOSE =>
				if to_integer(unsigned(d_sum(4 downto 0)))=21 then  --check if dealer got dealt 21, if so, he wins
						state<= DEALER_WON;
				elsif p_bust = '1' then
						state <= DEALER_WON; --dealer automatically wins if player busts
				elsif hit='1' then 
					state <= LOAD_PLAYER_CARD;
				elsif stay='1' then 
					state <= DEALER_TURN;
				end if;		
			
			when LOAD_PLAYER_CARD =>
				vec_changed <= or_reduce(new_card xor last_card);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then -- wait until the sum changes and we don't have the default value
					state<=PLAYER_HIT; --put card in players hand
				end if;
			
			WHEN PLAYER_HIT =>
				vec_changed <= or_reduce(p_sum xor p_sum_last);  --see if the sum has changed (i.e. wait until it has changed)
				if vec_changed = '1' then --wait until the sum changes
					state <= PLAYER_CHOOSE; 
				end if;
				
			when DEALER_TURN =>
				if d_done='1' then 			--logic for determining winner
					if d_bust = '1' then 	--if dealer bust, player won
						state <= PLAYER_WON;
					elsif to_integer(unsigned(p_sum(4 downto 0)))>to_integer(unsigned(d_sum(4 downto 0))) then --if player has a higher total than dealer, player wins
						state <= PLAYER_WON;
					else	
						state <= DEALER_WON;
					end if;
				end if;
				
			when DEALER_WON =>
				state <= ENDGAME; --go back to reset after doing the dealer won outputs
			
			when PLAYER_WON =>
				state <= ENDGAME; --go back to reset after doing the player own outputs
					
			when ENDGAME =>
				if hit = '1' then  --wait for press of hit button signal
					state <= RESET_DECK;
				end if;
			end case;
			
			--always update these at the end to make sure they are current for when we go to a
			--state that needs them
			p_sum_last<=p_sum;
			d_sum_last<=d_sum;
			last_card<=new_card;
			
		end if;
	end process;
	
	output_logic: process(state,clock)
	begin
	
		init <= '0';
		en_p <= '0';
		en_d <= '0';
		d_turn <= '0';
		p_won <= '0';
		d_won <= '0';
		p_turn <= '0';
		rand_init<='0';
		load<='0';
	
		case state is
			
			when INIT_RAND =>
				rand_init<='1';
				
			when RESET_DECK => 
				init <= '1';
				
			when DEALER_CARD_1=>
				en_d <= '1';
			
			when DEALER_CARD_2=> 	
				en_d <= '1';
								
			when PLAYER_CARD_1 =>		
				en_p <= '1';
			
			when PLAYER_CARD_2 => 
				en_p <= '1';
				
			when PLAYER_CHOOSE => 
				p_turn <= '1';
			
			when PLAYER_HIT => 
				en_p <= '1';
				
			when DEALER_TURN =>
				d_turn <= '1';
				
			when PLAYER_WON => 
				p_won <= '1';
			
			when DEALER_WON => 
				d_won <= '1';
				
			when ENDGAME =>
			 --all zero
			when WAIT_RAND =>
			 --do nothing
			when RESET_WAIT =>
			--nothing
			when others => --all the loads
			load <= '1';
				
		end case;
	end process;	
end architecture;