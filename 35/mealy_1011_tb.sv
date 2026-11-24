`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2026 23:34:01
// Design Name: 
// Module Name: mealy_1011_tb
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


module mealy_1011_tb;
logic clk,rst,bin;
wire dout;
mealy_1011 dut(clk,rst,bin,dout);
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;bin=1;#10;
bin=0;#10;
bin=1;#10bin=1;#10;
bin=1;#10;
bin=1;#10;
bin=1;#10;
end
initial begin 
$monitor("time=%0t,rst=%b,bin=%b,dout=%b",$time,rst,bin,dout);
end
endmodule
