`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 01:51:02
// Design Name: 
// Module Name: testbench_full_adder
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


module testbench_full_adder(

    );
    
    reg a_tb,b_tb,c_tb;
    wire sum_tb,carry_tb;
    
    full_adder sut(a_tb,b_tb,c_tb,sum_tb,carry_tb);
    
    initial
    begin
    {a_tb,b_tb,c_tb} = 0;
    end
    
    initial
    begin
    $monitor("Sum is %b and Carry is %b",sum_tb,carry_tb);
    
    a_tb = 1'b0;
    b_tb = 1'b0;
    c_tb = 1'b0;
    
    #1;
    a_tb = 1'b0;
    b_tb = 1'b0;
    c_tb = 1'b1;
    
    #1;
    a_tb = 1'b0;
    b_tb = 1'b1;
    c_tb = 1'b0;
    
    #1;
    a_tb = 1'b0;
    b_tb = 1'b1;
    c_tb = 1'b1;
    
    #1;
    a_tb = 1'b1;
    b_tb = 1'b0;
    c_tb = 1'b0;
    
    #1;
    a_tb = 1'b1;
    b_tb = 1'b0;
    c_tb = 1'b1;
    
    #1;
    a_tb = 1'b1;
    b_tb = 1'b1;
    c_tb = 1'b0;
    
    #1;
    a_tb = 1'b1;
    b_tb = 1'b1;
    c_tb = 1'b1;
    
    #1;
    end
    
endmodule
