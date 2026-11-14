`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2026 12:04:14
// Design Name: 
// Module Name: upcounter_4bit_tb
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


module upcounter_4bit_tb;
logic clk,rst;
wire [3:0]count;
upcounter_4bit dut(.clk(clk),.rst(rst),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;#180;
$finish;
end
initial begin 
$monitor("time=%0t|rst=%b|count=%b",$time,rst,count);
end
endmodule
