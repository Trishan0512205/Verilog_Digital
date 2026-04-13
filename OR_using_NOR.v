`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 17:07:01
// Design Name: 
// Module Name: OR_using_NOR
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
//////////////////////////////////////////////////////////////////////////////////

module OR_using_NOR(input A,B,output Y);
wire W1;
nor n1(W1,A,B);
nor n2(Y,W1,W1);
endmodule
