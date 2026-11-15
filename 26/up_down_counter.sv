`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2026 12:25:00
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(clk,rst,up_counter,count );
input clk,rst,up_counter;
output logic [3:0] count;
always_ff @(posedge clk or negedge rst ) begin 
 if(!rst) begin 
 count<=0; end
 else if(up_counter) begin
 count<=count+1'b1;
 end
 else begin 
 count<=count-1'b1;
 end
 end
 endmodule
