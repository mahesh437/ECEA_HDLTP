`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2022 22:08:42
// Design Name: 
// Module Name: two_bitadder
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
module full_adder(s,c,a,b,cin);
input a,b,cin;
output s,c;

xor x1(s1,a,b);
xor x2(s,s1,cin);
and y1(z1,cin,s1);
and y2(z2,a,b);
or y3(c,z1,z2);
endmodule


module two_bitadder(A,B,Cin,Sum,Carry);
wire A0,B0,A1,B1,C0,Sum0,Sum1;
input [1:0]A,B;
input Cin;
output wire [1:0]Sum;
output wire Carry;
full_adder f1(Sum[0],C0,A[0],B[0],Cin);
full_adder f2(Sum[1],Carry,A[1],B[1],C0);
endmodule
