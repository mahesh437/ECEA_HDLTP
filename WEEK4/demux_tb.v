`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 19:00:34
// Design Name: 
// Module Name: demux_tb
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
wire [3:0]o;
reg [1:0]s;
reg i;
demux DUT(.i(i),.s(s),.o(o));
initial begin $dumpfile("demux_tb.vcd");$dumpvars(); end
initial begin
i=1'b1;s[0]=1'b0;s[1]=1'b0;
#30
i=1'b0;s[0]=1'b0;s[1]=1'b1;
#30
i=1'b0;s[0]=1'b1;s[1]=1'b0;
#30
i=1'b1;s[0]=1'b1;s[1]=1'b1;
end
initial begin $monitor(" time=%0d i=%b s=%b o=%b",$time,i,s,o);end
endmodule