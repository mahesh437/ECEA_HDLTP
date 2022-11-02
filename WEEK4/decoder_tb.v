`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2022 18:33:25
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
reg [2:0]y;
wire [7:0]x;
decoder DUT(.x(x),.y(y));
initial begin $dumpfile("decoder_tb.vcd");$dumpvars(); end
initial begin
y=3'b000;
#30
y=3'b100;
#30
y=3'b111;
end
initial begin $monitor(" time=%0d x=%8b y=%8b",$time,x,y);end
endmodule
