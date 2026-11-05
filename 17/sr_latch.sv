`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2026 23:21:52
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(s,r,q,q_bar );
input s,r;
output logic q,q_bar;
always_latch begin 
if(s && r) begin 
q=1'b0;
q_bar=1'b0;end
else if(s) begin
q=1'b1;
q_bar=1'b0; end
else if(r) begin
q=1'b0;
q_bar=1'b1;
end
end
endmodule
