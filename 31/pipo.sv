`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2026 22:03:18
// Design Name: 
// Module Name: pipo
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


module pipo(clk,rst,parallel_in,parallel_out );
input clk,rst;
input [3:0]parallel_in;
output logic [3:0]parallel_out;
always_ff @(posedge clk or negedge rst)  begin
if(!rst)
parallel_out<=4'b0000;
else
parallel_out<=parallel_in;
end
endmodule
