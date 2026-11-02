`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 22:03:07
// Design Name: 
// Module Name: seven_segment_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_segment_decoder(a,y);
input [3:0]a;
output logic [6:0]y;
always_comb begin 
case(a)
4'b0000:y=7'b1111110;
4'b0001:y=7'b0110000;
4'b0010:y=7'b1101101;
4'b0011:y=7'b1111001;
4'b0100:y=7'b0110011;
4'b0101:y=7'b1011011;
4'b0110:y=7'b1011111;
4'b0111:y=7'b1110000;
4'b1000:y=7'b1111111;
4'b1001:y=7'b1111011;
default:y=7'b0000000;
endcase
end
endmodule
