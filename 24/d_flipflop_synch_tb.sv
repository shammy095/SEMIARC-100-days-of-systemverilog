`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2026 14:17:43
// Design Name: 
// Module Name: d_flipflop_synch_tb
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


module d_flipflop_synch_tb;
logic clk,rst,d;
wire q,q_bar;
d_flipflop_synch dut(.clk(clk),.rst(rst),.d(d),.q(q),.q_bar(q_bar));
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;d=0;#10;
rst=0;#10;
d=1;#10;
d=0;#10;
end
initial begin 
$monitor("time=%0t|rst=%b|d=%b|q=%b|q_bar=%b",$time,rst,d,q,q_bar);
end
endmodule
