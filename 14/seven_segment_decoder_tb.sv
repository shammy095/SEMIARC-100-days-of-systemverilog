`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2026 22:10:34
// Design Name: 
// Module Name: seven_segment_decoder_tb
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


module seven_segment_decoder_tb;
logic [3:0]a;
wire [6:0]y;
integer i;
seven_segment_decoder dut(.a(a),.y(y));
initial begin 
$monitor("time+%0t|a=%d|y=%b",$time,a,y);
for(i=0;i<16;i=i+1) begin
a=i;#10;
end
$finish;
end
endmodule
