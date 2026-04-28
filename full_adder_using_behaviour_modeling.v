`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 01:43:18
// Design Name: 
// Module Name: full_adder
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


module full_adder(input a_fa,b_fa,cin,output reg sum_fa,carry_fa

    );
    
    always@(*)
    begin
    sum_fa = a_fa ^ b_fa ^ cin;
    carry_fa = (b_fa & cin) | (a_fa & cin) | (a_fa & b_fa);
    end
    
endmodule
