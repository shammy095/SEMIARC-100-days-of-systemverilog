`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2026 23:24:57
// Design Name: 
// Module Name: traffic_light
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


module traffic_light(clk,rst,ar,ag,ay,br,bg,by );
input clk,rst;
output logic ar,ag,ay,br,bg,by;
logic [1:0] state,next_state;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
always_ff @(posedge clk or negedge rst) begin 
if(!rst)
state<=s0;
else
state<=next_state;
end
always_comb begin 
case(state)
s0:next_state=s1;
s1:next_state=s2;
s2:next_state=s3;
s3:next_state=s0;
default:next_state=s0;
endcase
end
always_comb begin
ar=0;br=0;ay=0;by=0;ag=0;bg=0;
case(state)
s0:begin ag=1;br=1; end
s1:begin ay=1;br=1;end
s2:begin ar=1;bg=1;end
s3:begin ar=1;by=1 ; end
default: begin ar=1;br=1;end
endcase
end
endmodule
