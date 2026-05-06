`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 18:34:09
// Design Name: 
// Module Name: Encoder_4_2
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


module Encoder_4_2(input [3:0] in_ecd,input e_ecd,output reg [1:0] y_ecd

    );
    
    always@(*)
    begin
    
    if (e_ecd == 1)
    case(in_ecd)
    4'b0001 : begin
    y_ecd = 2'b00;
    end
    
    4'b0010 : begin
    y_ecd = 2'b01;
    end
    
    4'b0100 : begin
    y_ecd = 2'b10;
    end
    
    4'b1000 : begin
    y_ecd = 2'b11;
    end
    
    default : y_ecd = 2'b00;
    
    endcase
    
    else if(e_ecd == 0)
    y_ecd = 2'b00;
    
    end  
endmodule
