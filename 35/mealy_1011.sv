`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2026 22:30:47
// Design Name: 
// Module Name: mealy_1011
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


module mealy_1011(clk,rst,bin,dout);
input clk,rst,bin;
output logic dout ;
parameter s0=3'b000 ,s1=3'b001,s2=3'b010,s3=3'b011;
logic [2:0] state,next_state;
always_ff @(posedge clk or negedge rst) begin 
if(!rst)
state<=s0;
else
state<=next_state;
end
always_comb begin
next_state=state;
dout=0;
case(state)
s0:if(bin) 
next_state=s1;
else
next_state=s0;
s1: if(bin) 
next_state=s1;
else
next_state=s2;
s2: if(bin)
next_state=s3;
else
next_state=s0;
s3: if(bin) begin
next_state=s1;
dout=1; end
else
next_state=s2;
default: next_state=s0;
endcase
end
endmodule
