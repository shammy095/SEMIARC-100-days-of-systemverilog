`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2026 14:32:42
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb;
logic clk,rst,load;
logic [3:0] data;
wire [3:0]ring_count;
ring_counter dut(.clk(clk),.rst(rst),.load(load),.data(data),.ring_count(ring_count));
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;load=1;data=4'b1010;#10;
load=0;#100;
$finish;
end
initial begin 
$monitor("time=%0t|rst=%b|load=%b|data=%b|ring_count=%b",$time,rst,load,data,ring_count);
end
endmodule
