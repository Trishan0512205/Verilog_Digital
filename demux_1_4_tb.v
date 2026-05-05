`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 00:48:56
// Design Name: 
// Module Name: demux_1_4_tb
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


module demux_1_4_tb(

    );
    
    reg i_tb;
    reg [1:0] s_tb;
    wire [3:0] y_tb;
    
    integer i;
    
    de_mux_1_4 dem1(i_tb,s_tb,y_tb);
    
    initial 
    begin
    {s_tb,i_tb} = 0;
    end
    
    initial 
    begin
    for(i = 0;i<64;i=i+1) begin
    #1;
    {s_tb,i_tb} = i;
    end
    
    end
endmodule
