`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 21:07:37
// Design Name: 
// Module Name: tb_bcd
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


module tb_bcd(

    );
    reg [3:0] a_tb,b_tb;
    reg c_tb;
    wire [3:0] sum_tb;
    wire carry_tb;
    
    bcd_adder_behaviour_modeling sut(a_tb,b_tb,c_tb,sum_tb,carry_tb);
    
    initial
    begin
    {a_tb,b_tb,c_tb} = 0;
    end
    
    initial
    begin
    
    a_tb = 4'b0011;
    b_tb = 4'b0100;
    c_tb = 1'b1;
    $monitor("Sum is %b and Carry is %b",sum_tb,carry_tb);
    end
    
endmodule
