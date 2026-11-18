`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2026 14:20:37
// Design Name: 
// Module Name: piso
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


module piso(clk,rst,load,parallel_in,serial_out );
input clk,rst,load;
input [3:0]parallel_in;
output logic serial_out;
logic [3:0]q;
always_ff @(posedge clk or negedge rst) begin 
if(!rst)
q<=4'b0000;
else if(load)
q<=parallel_in;
else
q<={1'b0,q[3:1]};
end
assign serial_out=q[0];
endmodule
