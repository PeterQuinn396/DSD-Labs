library ieee; 
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity g07_blinker is

port (blink_en, clock: in std_logic;
		blink_sig: out std_logic
		);

end g07_blinker;

architecture g07_blinker_arch of g07_blinker is
	TYPE state_signal IS (OFF,BLINK_LOW,BLINK_HIGH);
	signal state: state_signal;
	signal count_max: integer range 0 to 25000000 := 25000000;-- 50 000 000 is 1 sec with 50 MHz clock
	signal count: integer range 0 to 25000000 :=  0;
	
	begin
	update: process(clock)
	begin
		if blink_en = '0' then
			state<= OFF;
		elsif clock'EVENT and clock = '1' then
			case state is
			when OFF =>
				state <= BLINK_LOW;
				
			when BLINK_LOW =>
				count <= count + 1;
				if count=count_max then
					state<= BLINK_HIGH; 
					count<=0;
				end if;
				
			when BLINK_HIGH => 
				count <= count + 1;
				if count=count_max then 
					state<= BLINK_LOW;
					count<=0;	
				end if;
				
			end case;
		end if;
	end process;
	
	output_logic: process(state)
	begin
		case state is
			when BLINK_LOW => blink_sig <= '0';
			when BLINK_HIGH=> blink_sig <= '1';
			when OFF=> blink_sig <= '0';
		end case;
	end process;	
end architecture;