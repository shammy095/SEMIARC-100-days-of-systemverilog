`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2026 14:14:01
// Design Name: 
// Module Name: d_flipflop_synch
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


module d_flipflop_synch(clk,rst,d,q,q_bar );
input clk,rst,d;
output logic q,q_bar;
always_ff @(posedge clk) begin
if(rst) begin 
q<=0;
end
else begin
q<=d;
end
end
assign q_bar=~q;
endmodule
