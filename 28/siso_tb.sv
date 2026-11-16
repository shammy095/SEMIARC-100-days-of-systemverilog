`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2026 16:37:36
// Design Name: 
// Module Name: siso_tb
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


module siso_tb;
logic clk,rst,serial_in;
wire  serial_out;
siso dut(.clk(clk),.rst(rst),.serial_in(serial_in),.serial_out(serial_out));
initial clk=0;
always #5 clk=~clk;
initial begin
rst=0; #10;
rst=1;serial_in=1;#10;
serial_in=1;#10;
serial_in=0;#10;
serial_in=1;#10;
serial_in=0;#10;
$finish;
end
initial begin 
$monitor("time=%0t|rst=%b|serial_in=%b|serial_out=%b",$time,rst,serial_in,serial_out);
end
endmodule
