`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2026 18:24:05
// Design Name: 
// Module Name: U_C_tb
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


module U_C_tb(

    );
    
    reg clk;
    reg rst;
    reg enb;
    reg [1:0] mode;
    reg count_up_down;
    wire two_bit_count;
    wire [1:0] four_bit_count;
    wire [2:0] eight_bit_count;
    wire [3:0] sixteen_bit_count;
    
    Universal_counter dut(clk,rst,enb,mode,count_up_down,two_bit_count,four_bit_count,eight_bit_count,sixteen_bit_count);
    
    initial begin
    {clk,rst,enb,mode,count_up_down} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    count_up_down = 1'b1;
    mode = 2'b11;
    #90;
    enb = 0;
    
    
    end
endmodule
