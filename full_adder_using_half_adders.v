`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 12:50:19
// Design Name: 
// Module Name: full_adder_using_half_adders
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


module full_adder_using_half_adders(input A_FA,B_FA,Cin,output Sum_FA,Carry_FA);
wire W1,W2,W3;
half_adder ha1(.A(A_FA),.B(B_FA),.Carry(W2),.Sum(W1));
half_adder ha2(.A(W1),.B(Cin),.Carry(W3),.Sum(Sum_FA));
or o1(Carry_FA,W3,W2);
endmodule
