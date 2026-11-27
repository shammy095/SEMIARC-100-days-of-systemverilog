`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2026 22:56:59
// Design Name: 
// Module Name: sequence_genrator_10110011
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


module sequence_genrator_10110011(clk,rst,dout  );
input clk,rst;
output logic dout;
typedef enum logic [2:0]{s0,s1,s2,s3,s4,s5,s6,s7}state_t;
logic [2:0] state,next_state;
always_ff @(posedge clk or negedge rst) begin
if(!rst) 
state<=s0;
else
state<=next_state;
end
always_comb begin 
case(state)
s0: begin dout=1'b1;next_state=s1; end
s1: begin dout=1'b0;next_state=s2; end
s2: begin dout=1'b1;next_state=s3; end
s3: begin dout=1'b1;next_state=s4; end
s4: begin dout=1'b0;next_state=s5; end
s5: begin dout=1'b0;next_state=s6; end
s6: begin dout=1'b1;next_state=s7; end
s7: begin dout=1'b1;next_state=s0; end
default: begin dout=1'b0;next_state=s0; end
endcase
end
endmodule
