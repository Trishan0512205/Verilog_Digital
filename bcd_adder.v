`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 22:00:12
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder(input [3:0] a_bcd,[3:0] b_bcd,input Cin,output [3:0] Sum_bcd,output cout_bcd

    );
    wire [2:0] op_bcd;
    wire c_1;
    wire [3:0] Sum_wer;
    
    ripple_carry_adder rca1(a_bcd,b_bcd,Cin,Sum_wer,c_1);
    
    and a1(op_bcd[0],Sum_bcd[3],Sum_bcd[2]);
    and a2(op_bcd[1],Sum_bcd[3],Sum_bcd[1]);
    or o1(op_bcd[2],c_1,op_bcd[0],op_bcd[1]);
    
    assign b_bcd[0] = 0;
    assign b_bcd[3] = 0;
    assign b_bcd[1] = op_bcd[2];
    assign b_bcd[2] = op_bcd[2];
    
    ripple_carry_adder rca2(Sum_wer,b_bcd,0,Sum_bcd,cout_bcd);
    
    
endmodule
