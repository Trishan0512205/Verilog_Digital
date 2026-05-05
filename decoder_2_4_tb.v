`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 01:46:17
// Design Name: 
// Module Name: decoder_2_4_tb
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


module decoder_2_4_tb(

    );
    
    reg [1:0] in_tb;
    reg e_tb;
    wire [3:0] y_tb;
    
    Decoder_2_4 dcd1(in_tb,e_tb,y_tb);
    
    initial 
    begin
    {in_tb,e_tb} = 0;
    end
    
    initial
    begin
    #1;
    e_tb = 1;
    in_tb = 2'b11;
    $monitor("value %b",y_tb);
    end
endmodule
