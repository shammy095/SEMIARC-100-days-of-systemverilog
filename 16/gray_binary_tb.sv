`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2026 13:06:34
// Design Name: 
// Module Name: gray_binary_tb
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


module gray_binary_tb;
logic [3:0]a;
wire [3:0]y;
integer i;
gray_binary dut(.a(a),.y(y));
initial begin 
$monitor("time=%0t|a=%b|y=%b",$time,a,y);
for(i=0;i<16;i=i+1) begin
a=i;#10;
end
$finish;
end
endmodule
