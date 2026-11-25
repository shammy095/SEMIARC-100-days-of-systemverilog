`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2026 23:39:23
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb;
logic clk,rst;
wire ar,ag,ay,br,bg,by;
traffic_light dut(clk,rst,ar,ag,ay,br,bg,by );
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;#50;
$finish;
end
initial begin 
$monitor("time=%0t rst=%b ar=%b ay=%b ag=%b br=%b by=%b bg=%b",$time,rst,ar,ay,ag,br,by,bg);
end
endmodule
