`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2026 14:56:12
// Design Name: 
// Module Name: moore_fsm1011
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


module moore_fsm1011(clk,rst,din,dout);
input clk,rst,din;
output logic dout;
logic [2:0]state,next_state;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
always_ff @(posedge clk or negedge rst) begin
if(!rst)
state<=s0;
else
state<=next_state;
end
always_comb begin
case(state)
s0:if(din) next_state=s1;
else
next_state=s0;
s1:if(din) next_state=s1;
else next_state=s2;
s2:if(din) next_state=s3;
else
next_state=s0;
s3: if(din) next_state=s4;
else
next_state=s2;
s4:if(din) next_state=s1;
else
next_state=s2;
default:next_state=s0;
endcase
end
always_comb begin 
if(state==s4)
dout=1;
else 
dout=0;
end
endmodule
