library IEEE;
use IEEE.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;
entity g07_pop_enable is
port(N		:in std_logic_vector(5 downto 0);
	  clk		:in std_logic;
	  P_EN	:out std_logic_vector(51 downto 0));
end g07_pop_enable;

architecture g07_pop_enable_arc of g07_pop_enable is

component LUT
	port(address: in std_logic_vector(5 downto 0);
			clock: in std_logic :='1';
			q:		out std_logic_vector(51 downto 0));
end component;

begin

lut1: lut port map (address => N, q => P_EN,clock =>clk);

end architecture g07_pop_enable_arc;
