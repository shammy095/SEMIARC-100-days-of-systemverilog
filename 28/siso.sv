`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2026 16:32:34
// Design Name: 
// Module Name: siso
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


module siso(clk,rst,serial_in,serial_out);
input clk,rst,serial_in;
output logic serial_out;
logic [3:0]q;
always_ff @(posedge clk or negedge rst) begin 
if(!rst)
q<=4'b0000;
else
q<={q[2:0],serial_in};
end
assign serial_out=q[3];
endmodule
