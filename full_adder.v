`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 17:01:30
// Design Name: 
// Module Name: full_adder
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


module full_adder(input A,B,Cin,output Sum_FA,Carry_FA);
wire W1,W2,W3,W4;
xor x1(W1,A,B);
xor x2(Sum_FA,W1,Cin);
and a1(W2,A,B);
and a2(W3,B,C);
and a3(W4,A,C);
or o1(Carry_FA,W2,W3,W4);
endmodule
