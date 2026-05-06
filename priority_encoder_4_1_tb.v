`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 03:24:52
// Design Name: 
// Module Name: priority_encoder_4_1_tb
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


module priority_encoder_4_1_tb(

    );
    
    reg [3:0] in_tb;
    wire [1:0] y_tb;
    
    priority_encoder_4_2 ped1(in_tb,y_tb);
    
    initial
    begin
    {in_tb} = 0;
    end
    
    initial
    begin
    #1;
    in_tb = 4'b0000;
    #1;
    in_tb = 4'b0001;
    #1;
    in_tb = 4'b0010;
    #1;
    in_tb = 4'b0100;
    #1;
    in_tb = 4'b1000;
    end
endmodule
