`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2025 20:28:39
// Design Name: 
// Module Name: tb_dff
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


module tb_dff();
reg d,clk,rst;
wire q,qb;

dff uut(d,clk,rst,q,qb);
initial begin
clk=0;
rst=0;
d=0;
#10;
clk=1;
rst=1;
#30;
d=1;
end
always #20 clk=~clk;
always begin
rst=#30~rst;
#20 d=$random;
end
endmodule
