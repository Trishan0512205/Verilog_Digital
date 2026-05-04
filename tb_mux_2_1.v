`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 01:56:09
// Design Name: 
// Module Name: tb_mux_2_1
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


module tb_mux_2_1(

    );
    
    wire [3:0] y_tb;
    reg [1:0] I_tb;
    reg s_tb;
    integer i;
    
    Mux_2_1 mux1(I_tb,s_tb,y_tb);
    
    initial
    begin
    {I_tb,s_tb} = 0;
    end
    
    initial 
    begin
    for (i = 0;i<8;i=i+1) begin
    #1;
    {s_tb,I_tb} = i;
          
    end
    
    #1;
    s_tb = 0;
    I_tb[0] = 4'b1010;
    I_tb[1] = 4'b1001;
    
    #1;
    s_tb = 1;
    I_tb[0] = 4'b1100;
    I_tb[1] = 4'b1101;
    $monitor("The value of output %b",y_tb);
    
    end
endmodule
