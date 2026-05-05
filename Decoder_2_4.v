`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2026 01:15:17
// Design Name: 
// Module Name: Decoder_2_4
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


module Decoder_2_4(input [1:0] in_dcd,input e_dcd,output reg [3:0] y_dcd

    );
    
    always@(*)
    begin
    if (e_dcd == 1) begin
    case(in_dcd)
    2'b00 : begin
    y_dcd[0] = 1;
    y_dcd[1] = 0;
    y_dcd[2] = 0;
    y_dcd[3] = 0;
    end
    
    2'b01 : begin
    y_dcd[1] = 1;
    y_dcd[0] = 0;
    y_dcd[2] = 0;
    y_dcd[3] = 0;
    end
    
    2'b10 : begin
    y_dcd[2] = 1;
    y_dcd[0] = 0;
    y_dcd[1] = 0;
    y_dcd[3] = 0;
    end
    
    2'b11 : begin
    y_dcd[3] = 1;
    y_dcd[0] = 0;
    y_dcd[1] = 0;
    y_dcd[2] = 0;
    end
    
    default : y_dcd = 4'b0000;
    endcase
    end
    else begin
    y_dcd = 4'b0000;
    
    end
    
    end
endmodule
