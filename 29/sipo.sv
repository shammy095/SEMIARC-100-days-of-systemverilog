`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2026 22:22:03
// Design Name: 
// Module Name: sipo
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


module sipo(clk,rst,serial_in,parallel_out);
input clk ,rst,serial_in;
output logic [3:0]parallel_out;
always_ff @(posedge clk or negedge rst) begin
if(!rst)
parallel_out<=4'b0000;
else
parallel_out<={parallel_out[2:0],serial_in};
end
endmodule
