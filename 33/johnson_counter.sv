`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2026 20:21:40
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(clk,rst,load,data_in,data_out);
input clk,rst,load;
input [3:0] data_in;
output logic [3:0]data_out;
always_ff @(posedge clk or negedge rst) begin 
if(!rst)
data_out<=4'b0000;
else if(load)
data_out<=data_in;
else
data_out<={data_out[2:0],~data_out[3]};
end
endmodule
