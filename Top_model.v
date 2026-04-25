`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 13:25:16
// Design Name: 
// Module Name: top_model
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


module top_model(
input [3:0] I_top,output Y_top
    );
    
    wire [1:0] w,x;
    wire y,z;
    wire W1,W2;
    wire [1:0] S_top;
    
    assign I_top[0] = 0;
    assign I_top[1] = 1;
    assign I_top[2] = 1;
    assign I_top[3] = 0;
    
    assign S_top[0] = x[0];
    assign S_top[1] = w[0];
    
    four_x_one_Mux f1(I_top,S_top,W1);
    
    assign I_top[0] = 0;
    assign I_top[1] = 1;
    assign I_top[2] = 0;
    assign I_top[3] = 1;
    
    assign S_top[0] = w[1];
    assign S_top[1] = x[1];
    
    four_x_one_Mux f2(I_top,S_top,W2);
   
    assign I_top[1] = 0;
    assign I_top[3] = 1;
    
    assign I_top[0] = W1;
    assign I_top[2] = W2;
    
    assign S_top[0] = z;
    assign S_top[1] = y;
    
    four_x_one_Mux f3(I_top,S_top,Y_top);
    
endmodule
