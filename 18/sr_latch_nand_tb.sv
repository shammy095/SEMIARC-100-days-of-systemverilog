`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2026 21:22:01
// Design Name: 
// Module Name: sr_latch_nand_tb
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


module sr_latch_nand_tb;
logic s_bar,r_bar;
wire q,q_bar;
sr_latch_nand dut(.s_bar(s_bar),.r_bar(r_bar),.q(q),.q_bar(q_bar));
initial begin 
$monitor("time=%0t|s_bar=%b|r_bar=%b|q=%b|q_bar=%b",$time,s_bar,r_bar,q,q_bar);
s_bar=0;r_bar=1;#10;
s_bar=1;r_bar=1;#10;
s_bar=1;r_bar=0;#10;
s_bar=1;r_bar=1;#10;
s_bar=0;r_bar=0;#10;
$finish;
end
endmodule
