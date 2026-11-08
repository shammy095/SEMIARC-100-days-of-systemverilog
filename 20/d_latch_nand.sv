`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2026 11:44:13
// Design Name: 
// Module Name: d_latch_nand
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


module d_latch_nand(en,d,q,q_bar );
input d,en;
output logic q,q_bar;
wire w1,w2;
nand_gate g1(.a(d),.b(en),.y(w1));
nand_gate g2(.a(~d),.b(en),.y(w2));
nand_gate g3(.a(w1),.b(q_bar),.y(q));
nand_gate g4(.a(w2),.b(q),.y(q_bar));
endmodule
