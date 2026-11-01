`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2026 15:40:23
// Design Name: 
// Module Name: evenparity_generator_4bit
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


module evenparity_generator_4bit(a,p );
input [3:0]a;
output logic p;
assign p=a[0]^a[1]^a[2]^a[3];
endmodule
