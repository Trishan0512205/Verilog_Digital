`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 21:35:21
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb(

    );
    
    reg [3:0] i_tb;
    reg [1:0] s_tb;
    wire y_tb;
    
    integer i;
    
    Mux_4_1 mux1(i_tb,s_tb,y_tb);
    
    initial 
    begin
    {i_tb,s_tb} = 0;
    end
    
    initial 
    begin
    
    for(i = 0;i<64;i=i+1) begin
    #1;
    {i_tb,s_tb} = i;
    end
    
    end 
endmodule
