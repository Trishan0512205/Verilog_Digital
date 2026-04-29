`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 17:31:46
// Design Name: 
// Module Name: bcd_adder_behaviour_modeling
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


module bcd_adder_behaviour_modeling(input [3:0] a_bcd,b_bcd,input c_bcd,output reg [3:0] sum_bcd,output reg carry_bcd

    );
    
    reg [4:0] temp;
    
    always@(*)
    begin
    temp = a_bcd + b_bcd + c_bcd;
    if (temp > 'd9)
    temp = 4'b0110 + temp;
    else
    temp = temp;
    end
    
    assign sum_bcd = temp[3:0];
    assign carry_bcd = temp[4];
    
endmodule
