`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2026 23:08:44
// Design Name: 
// Module Name: sequence_genrator_10110011_tb
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


module sequence_genrator_10110011_tb;
logic clk,rst;
wire dout;
sequence_genrator_10110011 dut(clk,rst,dout);
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;#100;
end
initial begin 
$monitor("time=%0t rst=%b dout=%b",$time,rst,dout);
end
endmodule
