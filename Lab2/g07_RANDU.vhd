-- this circuit implements the IBM RANDU version of a linear congruential generator
--
-- entity name: g07_RANDU
--
-- Copyright (C) 2017 Peter Quinn, Gareth Peters
-- Version 1.0
-- Author: Peter Quinn (peter.quinn@mail.mcgill.ca), Gareth Peters (gareth.peters@mail.mcgill.ca)
-- Date: 26.09.2017


library ieee; 
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity g07_RANDU is
	port (seed:		in std_logic_vector(31 downto 0);
			rand: 	out std_logic_vector(31 downto 0));
			
end entity g07_RANDU;


architecture g07_RANDU_arch of g07_RANDU is

component add32
	port(dataa : in std_logic_vector(31 downto 0);
		 datab : in std_logic_vector(31 downto 0);
		 result : out std_logic_vector(31 downto 0)
	);
end component;


signal temp1: std_logic_vector(31 downto 0);
signal temp2: std_logic_vector(31 downto 0);
signal S1: std_logic_vector(31 downto 0);
signal S2: std_logic_vector(31 downto 0);

signal GND: std_logic_vector(15 downto 0);


begin

GND <= (others=>'0'); --set zeros to use later

temp1 <= (seed(15 downto 0) & GND(15 downto 0)); --seed<<16
temp2 <= (seed(30 downto 0) & GND (0));				--seed<<1



u1: add32 port map (dataa=>temp1,datab=>temp2,result=>S1); --add seed<<16 and seed<<1

u2: add32 port map (dataa=>S1,datab=>seed,result=>S2); --add the previous sum to seed

rand <= (GND(0) & S2(30 downto 0)); --take mod 2^31 by replacing the MSB with 0

end architecture g07_RANDU_arch;


			

