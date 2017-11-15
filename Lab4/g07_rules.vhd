library ieee; 
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity g07_rules is

port (play_pile_top_card: in std_logic_vector(5 downto 0);
		card_play: in std_logic_vector(5 downto 0);
		legal_play: out std_logic);

end g07_rules;


architecture g07_rules_arch of g07_rules is

component g07_Modulo_13
	port (dataa : in std_logic_vector(6 downto 0);
		 floor13 : out std_logic_vector(2 downto 0);
		 Amod13: out std_logic_vector(3 downto 0)
	);
	
end component;

component add_card_values
	port (dataa : in std_logic_vector(4 downto 0);
		 datab : in std_logic_vector(4 downto 0);
		 total: out std_logic_vector(4 downto 0)
	);


signal new_card_value: std_logic_vector(3 downto 0);
signal new_card_suit: std_logic_vector(2 downto 0);
signal old_card_value: std_logic_vector(3 downto 0);
signal old_card_suit: std_logic_vector(2 downto 0);

signal new_card_value_int: integer range 0 to 15;
signal old_card_value_int: integer range 0 to 15;
signal sum: integer range 0 to 63;
 

begin

getInput process

begin
u1: g07_Modulo_13 port map (dataa=>card_play, floor13=>new_card_suit, Amod13=>new_card_value); --parse the new card input
u2: g07_Modulo_13 port map (dataa=>play_pile_top_card, floor13=>old_card_suit, Amod13=>old_card_value); --parse the old card input

new_card_value_int <= to_integer(unsigned(new_card_value))+1; --convert to intgers to make life easier
old_card_value_int <= to_integer(unsigned(old_card_value))+1; --add 1 to the card values to correct them

if (new_card_value > 10) then new_card_value<=10;
if (old_card_value > 10) then old_card_value<=10;


end process

isLegalPlay process

begin
legal_play<='1'; 
if (new_card_value_int+old_card_value_int>21)then 
	legal_play <= '0';
	sum <= new_card_value_int+old_card_value_int;

elsif (new_card_value_int=1 or old_card_value_int=1) then --check for an ace
		
		if (new_card_value_int+old_card_value_int+10<21) then --took ace as 11 and it still fit
			
			sum <= new_card_value_int+old_card_value_int+10;
		else legal_play<=1	


end process

end architecture;