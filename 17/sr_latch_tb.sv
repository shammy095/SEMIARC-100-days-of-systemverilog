`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2026 23:33:26
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
logic s,r;
wire q,q_bar;
sr_latch dut(.s(s),.r(r),.q(q),.q_bar(q_bar));
initial begin 
$monitor("time=%0t|s=%b|r=%b|q=%b|q_bar=%b",$time,s,r,q,q_bar);
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=0;r=0;#10;
s=1;r=1;#10;
$finish;
end
endmodule
