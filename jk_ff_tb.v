`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2026 11:37:37
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb(

    );
    
    reg clk,rst,j,k;
    wire q,qbar;
    
    JK_flip_flop dut(clk,rst,j,k,q,qbar);
    
    initial
    begin
    {clk,rst,j,k} = 0;
    end
    
    always begin
    #5 clk = ~clk;
    end
    
    initial
    begin
    rst = 1;
    #10;
    rst = 0;
    
    j = 0;
    k = 0;
    
    #10;
    j = 0;
    k = 1;
    
    #10;
    j = 1;
    k = 0;
    
    #10;
    j = 1;
    k = 1;
    
    end
endmodule
