`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2022 23:56:42
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
  input clk_in,
  input Cin,
  input [1:0]B,
  output [1:0]Sum,
  output Carry);
  always@(negedge clk_in)
  begin
  
  if (A[0]==B[0])
    sum1=0;
  else
    sum1=1;
 
   if(A[0]==B[0]==1)
          cout=1;
   else
          cout=0;
  if (Cin==sum1)
       Sum[0]=0;
  else
         Sum[0]=1;
  if (A[1]==B[1])
         sum2=0;
         
  else
         sum2=1;
   if(A[1]==B[1]==1)
             Carry=1;
         else
             Carry=0;
  if (cout==sum2)
       Sum[1]=0;
  else
         Sum[1]=1;
            
end
endmodule