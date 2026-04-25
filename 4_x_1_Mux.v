`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 13:03:13
// Design Name: 
// Module Name: four_x_one_Mux
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


module four_x_one_Mux(
input [3:0] I,input [1:0] S,output Y
    );
    
    wire W1,W2,W3,W4,W5,W6;
    
    not n1(W1,S[1]);
    not n2(W2,S[0]);
    
    and a1(W3,I[0],W2,W1);
    and a2(W4,I[1],W1,S[0]);
    and a3(W5,I[2],S[1],W2);
    and a4(W6,I[3],S[0],S[1]);
    
    or o1(Y,W3,W4,W5,W6);
    
endmodule
