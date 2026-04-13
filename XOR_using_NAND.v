`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 17:16:42
// Design Name: 
// Module Name: XOR_using_NAND
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


module XOR_using_NAND(input A,B,output Y);
wire W1,W2,W3;
nand n1(W1,A,B);
nand n2(W2,A,W1);
nand n3(W3,B,W1);
nand n4(Y,W2,W3);
endmodule
