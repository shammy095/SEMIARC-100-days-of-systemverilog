`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2026 10:57:50
// Design Name: 
// Module Name: jk_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 

module jk_flipflop_tb;
logic clk,j,k;
wire q,q_bar;
jk_flipflop dut(.clk(clk),.j(j),.k(k),.q(q),.q_bar(q_bar));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin 
$monitor("time=%0t|j=%b|k=%b|q=%b|q_bar=%b",$time,j,k,q,q_bar);
j=0;k=1;#10;
j=1;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;
j=0;k=0;#10;
$finish;
end
endmodule