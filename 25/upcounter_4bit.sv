`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2026 11:58:25
// Design Name: 
// Module Name: upcounter_4bit
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


module upcounter_4bit(clk,rst,count);
input clk,rst;
output logic [3:0]count;
always_ff @(posedge clk or negedge rst) begin 
if(!rst) begin 
count<=4'b0; end
else begin
count<= count+1'b1;
end
end
endmodule
