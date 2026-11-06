`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2026 23:49:49
// Design Name: 
// Module Name: sr_latch_nand
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


module sr_latch_nand(s_bar,r_bar,q,q_bar);
input s_bar,r_bar;
output logic q,q_bar;
nand_gate g1(.a(s_bar),.b(q_bar),.y(q));
nand_gate g2(.a(q),.b(r_bar),.y(q_bar));
endmodule
