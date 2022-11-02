`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 18:14:48
// Design Name: 
// Module Name: decoder
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

// 3x8 decoder
module decoder(
input [2:0] y,
   output reg [7:0] x);
   
always @(y or x)
begin
 case (y)
   3'b000 : x = 8'b00000001;
   3'b001 : x = 8'b00000010;
   3'b010 : x = 8'b00000100;
   3'b011 : x = 8'b00001000;
   3'b100 : x = 8'b00010000;
   3'b101 : x = 8'b00100000;
   3'b110 : x = 8'b01000000;
   3'b111 : x = 8'b10000000;
   default :x = 8'b00000001;
 endcase
end
endmodule
