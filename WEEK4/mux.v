`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 11:27:41
// Design Name: 
// Module Name: mux
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

// 4:1 multiplexer
module mux(
input [3:0] i,
input [1:0] s,
output o);
 
assign o = (~s[1] & ~s[0] & i[0]) | (~s[1] & s[0] & i[1]) | (s[1] & ~s[0] & i[2]) | (s[1] & s[0] & i[3]);
endmodule
