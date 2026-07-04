`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 20:35:48
// Design Name: 
// Module Name: SISI_tb
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


module SISI_tb(

    );
    
    reg clk,enb,rst,s_in_tb;
    wire s_out_tb;
    
    SISO dut(clk,rst,enb,s_in_tb,s_out_tb);
    
    initial begin
    {clk,enb,rst,s_in_tb} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    rst = 0;
    
    enb = 0;
    #10;
    enb = 1;
    
    s_in_tb = 1'b1;
    #10;
    s_in_tb = 1'b0;
    #10;
    s_in_tb = 1'b1;
    #10;
    s_in_tb = 1'b1;
    #50;
    enb = 0;
    end
    
endmodule
