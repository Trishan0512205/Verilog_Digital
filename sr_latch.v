`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 19:05:13
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(input enb,res,s,r,output reg q,q_bar
    );
    
    always@(enb)
    begin
    if (enb) begin
    
    if (res) begin
    q <= 1'b0;
    q_bar <= 1'b1;
    end
    
    else if (s == 0 && r == 0) begin
    q <= q;
    q_bar <= q_bar;
    end
    
    else if (s == 0 && r == 1) begin
    q <= 1'b0;
    q_bar <= 1'b1;
    end 
    
    else if (s == 1 && r == 0) begin
    q <= 1'b1;
    q_bar <= 1'b0;
    end
    
    else if (s == 1 && r == 1) begin
    q <= 'bx;
    q_bar <= 'bx;
    end
    
    end
    end
endmodule
