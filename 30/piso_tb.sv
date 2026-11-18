`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 14:32:07
// Design Name: 
// Module Name: piso_tb
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


module piso_tb;
logic clk,rst,load;
logic [3:0]parallel_in;
wire serial_out;
piso dut(.clk(clk),.rst(rst),.load(load),.parallel_in(parallel_in),.serial_out(serial_out));
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;load=1;parallel_in=4'b1010;#10;
load=0;#50;
$finish;
end
initial begin
$monitor("time=%0t|rst=%b|load=%b|parallel_in=%b|serial_out=%b",$time,rst,load,parallel_in,serial_out);
end
endmodule
