`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2026 16:49:27
// Design Name: 
// Module Name: T_flipflop_tb
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


module T_flipflop_tb;
logic t,rst,clk;
wire q,q_bar;
T_flipflop dut(.clk(clk),.rst(rst),.t(t),.q(q),.q_bar(q_bar));
initial clk=0;
always #5 clk=~clk;

initial begin
rst=1;;t=0;#10;
rst=0;#10;
t=0;#10;
t=1;#10;
t=0;#10;
$finish;
end
initial begin 
$monitor("time=%0t|t=%b|q=%b|q_bar=%b",$time,t,q,q_bar);
end
endmodule

