`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2026 12:09:52
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(input clk,rst,s,r,output reg q,qbar

    );
    
    always@(posedge clk)
    begin
    
    if (clk)
    if (rst) begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
    
    else if (s == 1'b0 && r == 1'b0) begin
    q <= q;
    qbar <= qbar;
    end 
    
    else if (s == 1'b0 && r == 1'b1) begin
    q <= 1'b0;
    qbar <= 1'b1;
    end
    
    else if (s == 1'b1 && r == 1'b0) begin
    q <= 1'b1;
    qbar <= 1'b0;
    end
    
    else if (s == 1'b1 && r == 1'b1) begin
    q <= 'bx;
    qbar <= 'bx;
    end
    
    
    end  
endmodule
