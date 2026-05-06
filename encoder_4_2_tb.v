`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 19:50:18
// Design Name: 
// Module Name: encoder_4_2_tb
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


module encoder_4_2_tb(

    );
    
    reg [3:0] in_tb;
    reg e_tb;
    wire [1:0] y_tb;
    integer i;
    reg [3:0] sum;
    
    Encoder_4_2 ecd1(in_tb,e_tb,y_tb);
    
    initial
    begin
    {in_tb,e_tb} = 0;
    end
    
    initial
    begin
    #1;
    in_tb = 4'b0001;
    e_tb = 1;
    
    #1;
    in_tb = 4'b0010;
    e_tb = 1;
    
    #1;
    in_tb = 4'b0100;
    e_tb = 1;
    
    #1;
    in_tb = 4'b1000;
    e_tb = 1;
    end
endmodule
