`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2022 22:11:54
// Design Name: 
// Module Name: two_bitadder_behavioral
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


module two_bitadder_behavioral(
  input [1:0]A,
  input Cin,
  input [1:0]B,
  output [1:0]Sum,
  output Carry); 
      assign sum1= A[0] ^ B[0] ;
      assign Sum[0]=sum1 ^ Cin;
      assign c1 = Cin & sum1;
      assign  c2= A[0] & B[0] ;
      assign cout = c1 | c2;
      assign sum2= A[1] ^ B[1] ;
      assign Sum[1]=sum2 ^ cout;
      assign c3 = cout & sum2;
      assign  c4= A[1] & B[1] ;
      assign Carry = c3 | c4;
      
endmodule
