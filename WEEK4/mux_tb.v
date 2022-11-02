`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 20:51:14
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
reg [3:0]i;
reg [1:0]s;
wire o;
mux DUT(.i(i),.s(s),.o(o));
initial begin $dumpfile("mux_tb.vcd");$dumpvars(); end
initial begin
i[0]=1'b1;s[0]=1'b0;s[1]=1'b0;
#30
i[1]=1'b0;s[0]=1'b0;s[1]=1'b1;
#30
i[2]=1'b0;s[0]=1'b1;s[1]=1'b0;
#30
i[3]=1'b1;s[0]=1'b1;s[1]=1'b1;
end
initial begin $monitor(" time=%0d i=%b s=%b o=%b",$time,i,s,o);end
endmodule
