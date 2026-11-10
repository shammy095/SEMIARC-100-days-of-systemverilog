`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2026 16:45:41
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(t,rst,clk,q,q_bar);
input t,rst,clk;
output logic q,q_bar;
always_ff@(posedge clk) begin 
if(rst)  begin 
q<=0;
end
else if(t) begin
q<=~q;
end
end
assign q_bar=~q;
endmodule
