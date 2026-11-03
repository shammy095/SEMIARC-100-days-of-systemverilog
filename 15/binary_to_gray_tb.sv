`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2026 23:54:29
// Design Name: 
// Module Name: binary_to_gray_tb
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


module binary_to_gray_tb;
logic [3:0]a;
wire [3:0]y;
integer i;
binary_to_gray dut(.a(a),.y(y));
initial begin
$monitor("time=%0t|a=%b|y=%b",$time,a,y);
for(i=0;i<16;i=i+1) begin 
a=i;#10;
end
$finish;
end
endmodule
