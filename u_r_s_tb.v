`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2026 02:49:26
// Design Name: 
// Module Name: u_r_s_tb
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


module u_r_s_tb(

    );
    
    reg clk,rst,load,shift,s_in;
    reg [1:0] mode;
    reg [3:0] p_in;
    wire s_out;
    wire [3:0] p_out;
    
    Universal_Shift_Resistor dut(clk,rst,load,shift,s_in,mode,p_in,s_out,p_out);
    
    initial begin
    {clk,load,shift,s_in,mode,p_in} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1'b1;
    #10;
    rst = 0;
    #10;
    
    mode = 2'b00;
    
    shift = 1'b1;
    s_in = 1'b1;
    #10;
    s_in = 1'b0;
    #10;
    s_in = 1'b1;
    #10;
    s_in = 1'b1;
    #50;
    
    shift = 1'b0;
    
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    mode = 2'b11;
    load = 1'b1;
    #10;
    p_in = 4'b1001;
    
    #10;
    load = 1'b0;
    
    end 
endmodule
