`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2026 20:30:08
// Design Name: 
// Module Name: johnson_counter_tb
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


module johnson_counter_tb;
logic clk,rst,load;
logic [3:0]data_in;
wire [3:0]data_out;
johnson_counter dut(clk,rst,load,data_in,data_out);
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;load=1;data_in=4'b1010;#10;
load=0;#40;
$finish;
end
initial begin 
$monitor("time=%0t rst=%b load=%b data_in=%b data_out=%b",$time,rst,load,data_in,data_out);
end
endmodule
