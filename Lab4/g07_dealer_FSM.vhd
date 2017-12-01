library ieee; 
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity g07_dealer_FSM is

port (request_deal: in std_logic;
		reset:in std_logic;
		clock:in std_logic;
		stack_enable:out std_logic);

end g07_dealer_FSM;

architecture g07_dealer_FSM_arch of g07_dealer_FSM is
	TYPE state_signal IS (WAIT_LOW,WAIT_HIGH,ENABLE_STACK);
	signal state: state_signal;
begin
	update: process(clock,reset)
	begin
		if reset = '1' then
			state<= WAIT_LOW;
		elsif clock'EVENT and clock = '1' then
			case state is
			when WAIT_LOW =>
				if request_deal = '0' then state<= WAIT_HIGH; end if;
			when WAIT_HIGH =>
				if request_deal = '1' then state<= ENABLE_STACK; end if;
			when ENABLE_STACK => state <= WAIT_LOW;
			end case;
		end if;
	end process;
	
	output_logic: process(state)
	begin
		case state is
			when WAIT_LOW => stack_enable <= '0';
			when WAIT_HIGH=> stack_enable <= '0';
			when ENABLE_STACK=> stack_enable <= '1';
		end case;
	end process;	
end architecture;