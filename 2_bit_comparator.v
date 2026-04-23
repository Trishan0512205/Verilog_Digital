`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2026 01:53:53
// Design Name: 
// Module Name: two_bit_comparator
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


module two_bit_comparator(
input [1:0] a,b,output gt,eq,ls
    );
    
    wire W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15;
    
    not n1(W1,b[1]);
    not n2(W2,b[0]);
    
    and a1(W3,a[0],W2,W1);
    and a2(W4,a[1],W1);
    and a3(W5,W2,a[0],a[1]);
    
    or o1(gt,W3,W4,W5);
    
    xnor xn_or1(W7,a[1],b[1]);
    xnor xn_or2(W8,a[0],b[0]);
    
    and a4(eq,W7,W8);
    
    not n3(W9,a[0]);
    not n4(W10,a[1]);
    
    and a5(W11,b[0],W9,W10);
    and a6(W12,W10,b[1]);
    and a7(W13,W9,b[1],b[0]);
    
    or o2(ls,W11,W12,W13);
endmodule
