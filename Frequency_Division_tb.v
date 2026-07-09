`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2026 20:57:31
// Design Name: 
// Module Name: Frequency_Division_tb
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


module Frequency_Division_tb(

    );
    
     reg clk;
    reg rst;
    reg enb;
    reg [1:0] mode;
    wire two_bit_count;
    wire four_bit_count;
    wire eight_bit_count;
    wire sixteen_bit_count;
    
    Freqency_Division dut(clk,rst,enb,mode,two_bit_count,four_bit_count,eight_bit_count,sixteen_bit_count);
    
    initial begin
    {clk,rst,enb,mode} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b11;
    #500;
    enb = 0;
    
    
    end
    
endmodule
