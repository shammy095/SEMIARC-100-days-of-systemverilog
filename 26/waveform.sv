`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2026 12:40:59
// Design Name: 
// Module Name: up_down_counter_tb
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


module up_down_counter_tb;
logic clk,rst,up_counter;
wire [3:0] count;
up_down_counter dut(.clk(clk),.rst(rst),.up_counter(up_counter),.count(count));
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;up_counter=1;#10;
rst=1;#120;
up_counter=0;#110;
$finish;
end
initial begin
$monitor("time=%0t|rst=%b|up_counter=%b|count=%b",$time,rst,up_counter,count);
end
endmodule
