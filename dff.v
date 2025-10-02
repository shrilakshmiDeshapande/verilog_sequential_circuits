`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2025 20:16:47
// Design Name: 
// Module Name: dff
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


module dff(d,clk,rst,q,qb);
input d,clk,rst;
output reg q,qb;
always @(posedge clk)
begin
if(rst)
begin
q<=0;
qb<=~q;
end
else
begin
q<=d;
qb<=~q;
end
end
endmodule
