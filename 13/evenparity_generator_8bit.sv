`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2026 17:55:57
// Design Name: 
// Module Name: evenparity_generator_8bit
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


module evenparity_generator_8bit(a,p );
input [7:0]a;
output logic p;
assign p=a[0]^a[1]^a[2]^a[3]^a[4]^a[5]^a[6]^a[7];
endmodule
