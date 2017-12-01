library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;

entity g07_rules is

port (play_pile_top_card: in std_logic_vector(5 downto 0);
		card_play: in std_logic_vector(5 downto 0);
		legal_play: out std_logic;
		sum: out std_logic_vector(5 downto 0)
		clock, enable: in std_logic);

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


signal new_card_value_int: integer range 0 to 15:=0;
signal new_card_value_int_raw: integer range 0 to 15:=0;
signal old_sum_int: integer range 0 to 30:=0;
signal new_sum_int: integer range 0 to 63:=0;
signal test_new_sum_int: integer range 0 to 63:=0;


signal old_ace: std_logic :='0';
signal new_ace: std_logic :='0' ;

begin

u1: g07_Modulo_13 port map (A=>card_play,floor13=>new_card_suit,Amod13=>new_card_value); -- parse the new card input

process (new_card_value,new_card_suit)

begin

if clock'EVENT and clock='1' and enable then 
old_sum<=play_pile_top_card(5 downto 0); --grab the old sum
old_ace<=old_sum(5); --check if we had an ace from a past hand

new_card_value_int_raw <= (to_integer(unsigned(new_card_value(3 downto 0)))+1); --add 1 to the card value to correct it  
old_sum_int <= to_integer(unsigned(old_sum(4 downto 0))); -- convert to intgers to make life easier

if (new_card_value_int_raw > 10) then 
	new_card_value_int<=10; --correct for face value cards
elsif (new_card_value_int_raw=1) then 
	new_card_value_int<=11;	--correct for ace
else new_card_value_int<=new_card_value_int_raw;
end if;
 
test_new_sum_int <= new_card_value_int+old_sum_int; --compute the new sum

 --check if the play is legal
if (test_new_sum_int < 22) then --see if our sum is legal as is
	legal_play <= '1';
	new_sum_int<=test_new_sum_int;
	if (new_card_value_int=11) then new_ace<='1'; --check if we got an new ace
		else new_ace<=old_ace;
	end if;

elsif (new_card_value_int=11) then --check for a new ace, so we can fix our sum
	new_sum_int<=test_new_sum_int-10;
	legal_play<='1';
	new_ace<=old_ace;
	
elsif (old_ace='1') then --check for an old ace
	new_sum_int<=test_new_sum_int-10;
	legal_play<='1';
	new_ace<='0'; --remove the ace
		
else 
	legal_play<='0'; --no aces and over 21, so illegal play
	new_ace<=old_ace;
	new_sum_int<=31;
end if;

end if;
end process;

sum <= new_ace&std_logic_vector(to_unsigned(new_sum_int,5));

end architecture;