`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2026 18:02:50
// Design Name: 
// Module Name: evenparity_generator_tb
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


module evenparity_generator_tb;
logic [7:0]a;
wire p;
integer i;
evenparity_generator_8bit dut(.a(a),.p(p));
initial begin 
$monitor("time=%0t|a=%b|p=%b",$time,a,p);
for(i=0;i<256;i=i+1) begin 
a=i;#10;
end
$finish;
end
endmodule
