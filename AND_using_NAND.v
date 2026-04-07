`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 20:36:21
// Design Name: 
// Module Name: AND_using_NAND
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


module AND_using_NAND(input A,B,output Y);
wire W1;
nand n1(W1,A,B);
nand n2(Y,W1,W1);
endmodule
