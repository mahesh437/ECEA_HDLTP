`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2022 00:28:40
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;
reg a,b;
wire sum;
wire carry;
half_adder DUT(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin $dumpfile("half_adder_tb.vcd");$dumpvars(); end
initial begin 
#50
a=1'b1;b=1'b0;
#50
a=1'b1; b=1'b1;
#50
a=1'b0; b=1'b1;
#50
a=1'b0; b=1'b0;
end
initial begin $monitor(" time=%0d a=%b b=%b sum=%b carry=%b",$time,a,b,sum,carry);end
endmodule

