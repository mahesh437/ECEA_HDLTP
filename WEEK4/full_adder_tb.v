`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 01:10:04
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
reg a,b,cin;
wire sum;
wire carry;
full_adder DUT(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin $dumpfile("full_adder_tb.vcd");$dumpvars(); end
initial begin 
a=1'b1;b=1'b0;cin=1'b0;
#50
a=1'b1; b=1'b1;cin=1'b1;
#50
a=1'b0; b=1'b1;cin=1'b0;
end
initial begin $monitor(" time=%0d a=%b b=%b sum=%b carry=%b",$time,a,b,sum,carry);end
endmodule