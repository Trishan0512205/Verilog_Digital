`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 21:04:33
// Design Name: 
// Module Name: OR_using_NAND
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


module OR_using_NAND(input A,B,output Y);
wire W1,W2,W3;
nand n1(W1,A);
nand n2(W2,B);
nand n3(W3,W1,W2);
nand n4(Y,W3);
endmodule
