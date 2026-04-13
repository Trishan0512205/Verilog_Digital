`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2026 17:01:21
// Design Name: 
// Module Name: AND_using_NOR
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

module AND_using_NOR(input A,B,output Y);
wire W1,W2;
nor n1(W1,A,A);
nor n2(W2,B,B);
nor n3(Y,W1,W2);
endmodule
