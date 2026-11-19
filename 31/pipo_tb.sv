`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2026 22:10:49
// Design Name: 
// Module Name: pipo_tb
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


module pipo_tb;
logic clk,rst;
logic [3:0]parallel_in;
wire [3:0]parallel_out;
pipo dut(.clk(clk),.rst(rst),.parallel_in(parallel_in),.parallel_out(parallel_out));
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;parallel_in=4'b1010;#10;
parallel_in=4'b1011;#10;
parallel_in=4'b1110;#10;
parallel_in=4'b1110;#10;
parallel_in=4'b1111;#10;
$finish;
end
initial begin 
$monitor("time=%0t,rst=%b,parallel_in=%b,parallel_out=%b",$time,rst,parallel_in,parallel_out);
end
endmodule
