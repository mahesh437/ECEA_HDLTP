`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 20:17:12
// Design Name: 
// Module Name: expression
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
//X = (A•B) + (A•C) + (A•B•C)

module expression(a,b,c,x);
input a,b,c;
output x;
assign x = (a&b) | (a&c) | (a&b&c);
endmodule
