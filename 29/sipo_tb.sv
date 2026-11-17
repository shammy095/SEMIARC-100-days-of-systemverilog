`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2026 22:28:04
// Design Name: 
// Module Name: sipo_tb
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


module sipo_tb;
logic clk ,rst,serial_in;
wire [3:0]parallel_out;
sipo dut(.clk(clk),.rst(rst),.serial_in(serial_in),.parallel_out(parallel_out));
initial clk=0;
always #5 clk=~clk;
initial begin  
rst=0;#10;
rst=1;serial_in=1;#10;
serial_in=1;#10;
serial_in=0;#10;
serial_in=1;#10;
serial_in=1;#10;
serial_in=1;#10;
$finish;
end
initial begin 
$monitor("time=%0t|rst=%b|serial_in=%b|parallel_out=%b",$time,rst,serial_in,parallel_out);
end
endmodule
