`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 11:17:02
// Design Name: 
// Module Name: JK_flip_flop
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


module JK_flip_flop(input clk,rst,j,k,output reg q,qbar
    );
    
    always@(posedge clk) begin
    if (clk)
    
    if (rst) begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
    
    else if (j == 0 && k == 0) begin
    q <= q;
    qbar <= qbar;
    end
    
    else if (j == 0 && k == 1) begin
    q <= q;
    qbar <= qbar;
    end
    
    else if (j == 1 && k == 0) begin
    q <= 1;
    qbar <= 0;
    end
    
    else if (j == 1 && k == 1) begin
    q <= ~q;
    qbar <= ~qbar;
    end
    
    end  
endmodule
