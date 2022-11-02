`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2022 22:42:05
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
reg [7:0]x;
wire [2:0]y;
encoder DUT(.x(x),.y(y));
initial begin $dumpfile("encoder_tb.vcd");$dumpvars(); end
initial begin
x=8'b00000000;
#30
x=8'b00001000;
#30
x=8'b00100000;
#30
x=8'b10000000;

end
initial begin $monitor(" time=%0d x=%8b y=%8b",$time,x,y);end
endmodule
