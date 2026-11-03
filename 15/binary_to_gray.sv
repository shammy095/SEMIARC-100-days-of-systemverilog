`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2026 23:51:43
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray(a,y );
input [3:0]a;
output logic [3:0]y;
assign y[3]=a[3];
assign y[2]=a[3]^a[2];
assign y[1]=a[2]^a[1];
assign y[0]=a[1]^a[0];
endmodule
