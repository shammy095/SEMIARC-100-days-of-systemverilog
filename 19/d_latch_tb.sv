`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2026 23:07:22
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;
logic d,en;
wire q,q_bar;
d_latch dut(.d(d),.en(en),.q(q),.q_bar(q_bar));
initial begin 
$monitor("time=%0t|d=%b|en=%b|q=%b|q_bar=%b",$time,d,en,q,q_bar);
en=1;d=0;#10;
en=1;d=1;#10
en=0;d=0;#10;
en=0;d=0;#10;
en=1;d=0;#10;
$finish;
end
endmodule
