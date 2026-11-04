`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2026 13:02:25
// Design Name: 
// Module Name: gray_binary
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


module gray_binary(a,y);
input [3:0]a;
output logic [3:0]y;
assign y[3]=a[3];
assign y[2]=y[3]^a[2];
assign y[1]=y[2]^a[1];
assign y[0]=y[1]^a[0];
endmodule
