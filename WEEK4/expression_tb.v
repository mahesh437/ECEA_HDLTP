`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 20:22:32
// Design Name: 
// Module Name: expression_tb
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


module expression_tb;
reg a,b,c;
wire x;
expression DUT(.a(a),.b(b),.c(c),.x(x));
initial begin $dumpfile("expression_tb.vcd");$dumpvars(); end
initial begin

a=1'b1;b=1'b1;c=1'b1;
#30
a=1'b0; b=1'b0;c=1'b0;
#30
a=1'b1; b=1'b0;c=1'b1;
end

initial begin $monitor(" time=%0d a=%b b=%b c=%b x=%b ",$time,a,b,c,x);end
endmodule
