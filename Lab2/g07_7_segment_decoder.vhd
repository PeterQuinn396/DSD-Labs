library IEEE;
use IEEE.std_logic_1164.all;
 entity g07_7_segment_decoder is
 port(code:in std_logic_vector(3 downto 0);
		mode:in std_logic;
		segments_out:out std_logic_vector(6 downto 0));
end g07_7_segment_decoder;

architecture g07_7_segment_decoder_arc of g07_7_segment_decoder is
signal xcode:std_logic_vector(4 downto 0);
begin
xcode (3 downto 0) <= code;
xcode (4)<= mode;
with xcode select
segments_out	<=	"1000000" when "00000" | "11001",
						"1111001" when "00001",
						"0100100" when "00010" | "10001",
						"0110000" when "00011" | "10010",
						"0011001" when "00100" | "10011",
						"0010010" when "00101" | "10100",
						"0000010" when "00110" | "10101",
						"1111000" when "00111" | "10110",
						"0000000" when "01000" | "10111",
						"0010000" when "01001" | "11000",
						"0001000" when "01010" | "10000",
						"0000011" when "01011",
						"1000110" when "01100",
						"0100001" when "01101",
						"0000110" when "01110",
						"0001110" when "01111",
						"1100001" when "11010",
						"0100011" when "11011",
						"0001001" when "11100",
						"0111111" when others;
end g07_7_segment_decoder_arc;
