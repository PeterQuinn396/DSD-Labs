library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g07_rules_v2 is

port (play_pile_top_card: in std_logic_vector(5 downto 0);
		card_play: in std_logic_vector(5 downto 0);
		legal_play: out std_logic;
		sum: out std_logic_vector(5 downto 0));

end g07_rules_v2;


architecture g07_rules_arch_v2 of g07_rules_v2 is

component g07_Modulo_13
	port (A : in std_logic_vector(5 downto 0);
		 floor13 : out std_logic_vector(2 downto 0);
		 Amod13: out std_logic_vector(3 downto 0)
	);
	
end component;


signal new_card_value: std_logic_vector(3 downto 0);
signal new_card_suit: std_logic_vector(2 downto 0);
signal old_sum: std_logic_vector(5 downto 0); --MSB is ace boolean, 5 other bits are previous total


signal new_card_value_int: unsigned (3 downto 0);
signal new_card_value_int_raw: unsigned (3 downto 0);
signal old_sum_int: unsigned (4 downto 0);
signal new_sum_int: unsigned (4 downto 0);
signal test_new_sum_int: unsigned (4 downto 0);


signal old_ace: std_logic :='0';
signal new_ace: std_logic :='0' ;

begin

u1: g07_Modulo_13 port map (A=>card_play,floor13=>new_card_suit,Amod13=>new_card_value); -- parse the new card input

process (new_card_value,new_card_suit)

begin

old_sum<=play_pile_top_card(5 downto 0); --grab the old sum
old_ace<=old_sum(5); --check if we had an ace from a past hand

new_card_value_int_raw <= unsigned(new_card_value(3 downto 0))+"0001"; --add 1 to the card value to correct it  
old_sum_int <= unsigned(old_sum(4 downto 0)); -- convert to intgers to make life easier

if (new_card_value_int_raw > "1010") then 
	new_card_value_int<="1010"; --correct for face value cards
elsif (new_card_value_int_raw="0001") then 
	new_card_value_int<="1101";	--correct for ace, this has to go in backwards for some reason
else new_card_value_int<=new_card_value_int_raw;
end if;
 
test_new_sum_int <= new_card_value_int+old_sum_int; --compute the new sum

 --check if the play is legal
if (test_new_sum_int < "10110") then --see if our sum is legal as is (less than 22)
	legal_play <= '1';
	new_sum_int<=test_new_sum_int;
	if (new_card_value_int="1011") then new_ace<='1'; --check if we got an new ace
		else new_ace<=old_ace;
	end if;

elsif (new_card_value_int="1011") then --check for a new ace, so we can fix our sum
	new_sum_int<=test_new_sum_int-"01010";
	legal_play<='1';
	new_ace<=old_ace;
	
elsif (old_ace='1') then --check for an old ace
	new_sum_int<=test_new_sum_int-"01010";
	legal_play<='1';
	new_ace<='0'; --remove the ace
		
else 
	legal_play<='0'; --no aces and over 21, so illegal play
	new_ace<=old_ace;
	new_sum_int<="11111";
end if;

end process;

sum <= new_ace&std_logic_vector(new_sum_int);

end architecture;