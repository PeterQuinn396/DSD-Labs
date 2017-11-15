library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g07_rules is

port (play_pile_top_card: in std_logic_vector(5 downto 0);
		card_play: in std_logic_vector(5 downto 0);
		legal_play: out std_logic;
		sum: out std_logic_vector(5 downto 0));

end g07_rules;


architecture g07_rules_arch of g07_rules is

component g07_Modulo_13
	port (A : in std_logic_vector(5 downto 0);
		 floor13 : out std_logic_vector(2 downto 0);
		 Amod13: out std_logic_vector(3 downto 0)
	);
	
end component;


signal new_card_value: std_logic_vector(3 downto 0);
signal new_card_suit: std_logic_vector(2 downto 0);
signal old_sum: std_logic_vector(5 downto 0); --MSB is ace boolean, 5 other bits are previous total


signal new_card_value_int: integer range 0 to 15;
signal old_sum_int: integer range 0 to 31;
signal new_sum_int: integer range 0 to 63;

signal ace: std_logic;

begin

old_sum<=play_pile_top_card(5 downto 0); --grab the old sum

u1: g07_Modulo_13 port map (A=>card_play,floor13=>new_card_suit,Amod13=>new_card_value); -- parse the new card input

process (old_sum,new_card_value)

begin

new_card_value_int <= to_integer(unsigned(new_card_value))+1; --add 1 to the card value to correct it  
old_sum_int <= to_integer(unsigned(old_sum(4 downto 0))); -- convert to intgers to make life easier

if (new_card_value_int > 10) then 
	new_card_value_int<=10; --correct for face value cards
elsif (new_card_value_int=1) then 
	new_card_value_int<=11;	--correct for ace
end if;

ace<=old_sum(5); --check if we had an ace from a past hand
 
new_sum_int <= old_sum_int+new_card_value_int; --compute the new sum


 --check if the play is legal
if (new_sum_int <= 21) then --see if our sum is legal as is
	legal_play <= '1';
	new_sum_int <= new_card_value_int+old_sum_int;
	if (new_sum_int=11) then ace<='1'; --check if we got an new ace
	end if;

elsif (new_card_value_int=11) then --check for a new ace, so we can fix our sum
	new_sum_int<=new_sum_int-10;
	legal_play<='1';
		
elsif (ace='1') then --check for an old ace
	new_sum_int<=new_sum_int-10;
	legal_play<='1';
	ace<='0'; --remove the ace
		
else 
	legal_play<='0'; 

end if;


sum <= ace&std_logic_vector(to_unsigned(new_sum_int,5));


end process;



end architecture;