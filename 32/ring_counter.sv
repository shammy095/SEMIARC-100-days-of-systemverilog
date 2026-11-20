`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2026 11:15:09
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(clk,rst,load,data,ring_count );
input clk,rst,load;
input [3:0] data;
output logic [3:0]ring_count;
always_ff @(posedge clk or negedge rst) begin 
if(!rst) 
ring_count<=4'b0000;
else if(load)
ring_count<=data;
else
ring_count<={ring_count[0],ring_count[3:1]};
end
endmodule
