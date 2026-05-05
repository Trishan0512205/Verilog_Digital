`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 21:14:46
// Design Name: 
// Module Name: Mux_4_1
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


module Mux_4_1(input [3:0] i_mux,input[1:0] s_mux,output reg y_mux

    );
    
    always@(*)
    begin
    case(s_mux)
    2'b00 : y_mux = i_mux[0];
    2'b01 : y_mux = i_mux[1];
    2'b10 : y_mux = i_mux[2];
    2'b11 : y_mux = i_mux[3];
    
    default : y_mux = 2'b00;
    endcase
    
    end
endmodule
