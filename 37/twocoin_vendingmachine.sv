`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2026 12:16:55
// Design Name: 
// Module Name: twocoin_vendingmachine
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


module twocoin_vendingmachine(clk,rst,din,dout  );
input clk,rst,din;
output logic dout;
logic [1:0]state,next_state;
parameter s0=2'b0,s1=2'b01,s2=2'b10;
always_ff @(posedge clk or negedge rst) begin 
if(!rst)
state<=s0;
else
state<=next_state;
end
always_comb begin
dout=0;next_state=s0;

case(state)
s0: if(din)
next_state=s1;
else
next_state=s0;
s1: if(din)
next_state=s2;
else
next_state=s1;
s2:begin dout=1;
if(din) 
next_state =s1;
else
next_state=s0;
end
default:next_state=s0;
endcase
end
endmodule
