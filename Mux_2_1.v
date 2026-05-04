`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 01:46:35
// Design Name: 
// Module Name: Mux_2_1
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


module Mux_2_1(input [1:0] I,input S,output reg y

    );
    
    always@(*)
    begin
    case(S)
    0 : y = I[0];
    1 : y = I[1];
    
    default : y = 0;
    endcase
    end
endmodule
