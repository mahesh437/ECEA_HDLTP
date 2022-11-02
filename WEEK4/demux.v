`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 18:50:38
// Design Name: 
// Module Name: demux
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

// 1x4 demux
module demux(
input i,input [1:0] s,output [3:0]o);
assign o[0]=~s[0] & ~s[1] & i;
assign o[1]=~s[0] & s[1] & i;
assign o[2]=s[0] & ~s[1] & i;
assign o[3]=s[0] & s[1] & i;
endmodule
