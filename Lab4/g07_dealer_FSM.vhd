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

begin

end architecture;