`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2026 12:37:19
// Design Name: 
// Module Name: twocoin_vendingmachine_tb
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


module twocoin_vendingmachine_tb;
logic clk,rst,din;
wire  dout;
twocoin_vendingmachine dut(clk,rst,din,dout );
initial clk=0;
always #5 clk=~clk;
initial begin 
rst=0;#10;
rst=1;din=1;#10;
din=1;#10;
din=0;#10;
din=0;#10;
din=1;#10;
din=1;#10;
$finish;
end
initial begin
$monitor("time=%0t rst=%b din=%b dout=%b",$time,rst,din,dout);
end
endmodule
