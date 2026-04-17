`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2026 01:17:14
// Design Name: 
// Module Name: 4_bit_binary_adder
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


module four_bit_binary_adder(input A0,A1,A2,A3,B0,B1,B2,B3,output S0,S1,S2,S3,S4);
wire C0,C1,C2,C3;
half_adder ha1(.A(A0),.B(B0),.Sum(S0),.Carry(C0));
full_adder fa1(.A(A1),.B(B1),.Cin(C0),.Sum_FA(S1),.Carry_FA(C1));
full_adder fa2(.A(A2),.B(B2),.Cin(C1),.Sum_FA(S2),.Carry_FA(C2));
full_adder fa3(.A(A3),.B(B3),.Cin(C2),.Sum_FA(S3),.Carry_FA(S4));


endmodule
