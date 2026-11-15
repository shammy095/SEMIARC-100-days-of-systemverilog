`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2026 13:03:43
// Design Name: 
// Module Name: counter_modulo_n
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


module counter_modulo_n # (parameter n=4,parameter mod=10)(clk,rst,count);
input clk,rst;
output logic [n-1:0]count;
always_ff @(posedge clk or negedge rst) begin 
if (!rst) begin 
count<=0;end
else if(count==mod-1) 
count<=0;
else
count<=count+1'b1;
end
endmodule
