module DEC_7SEG(Hex_digit, segment_data);
	 input wire [3:0] Hex_digit;
	 output reg [6:0] segment_data;
 
				 always @(Hex_digit)
				/* Case statement implements a logic truth table using gates*/
				 case (Hex_digit)
				 4'b 0000: segment_data <= 7'b 1000000;
				 4'b 0001: segment_data <= 7'b 1111001;
				 4'b 0010: segment_data <= 7'b 0100100;
				 4'b 0011: segment_data <= 7'b 0110000;
				 4'b 0100: segment_data <= 7'b 0011001;
				 4'b 0101: segment_data <= 7'b 0010010;
				 4'b 0110: segment_data <= 7'b 0000010;
				 4'b 0111: segment_data <= 7'b 1111000;
				 4'b 1000: segment_data <= 7'b 0000000;
				 4'b 1001: segment_data <= 7'b 0011000;
				 4'b 1010: segment_data <= 7'b 0001000;
				 4'b 1011: segment_data <= 7'b 0000011;
				 4'b 1100: segment_data <= 7'b 0100111;
				 4'b 1101: segment_data <= 7'b 0100001;
				 4'b 1110: segment_data <= 7'b 0000110;
				 4'b 1111: segment_data <= 7'b 0001110;
				 default: segment_data <= 7'b 0110110;
 endcase 
 
 endmodule
 