`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2026 03:13:16
// Design Name: 
// Module Name: priority_encoder_4_2
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


module priority_encoder_4_2(input [3:0] in_ped,output reg [1:0] y_ped

    );
    
    always@(*)
    begin
    
    casex(in_ped)
    4'b0000 : y_ped = 2'bxx;
    4'b0001 : y_ped = 2'b00;
    4'b001x : y_ped = 2'b01;
    4'b01xx : y_ped = 2'b10;
    4'b1xxx : y_ped = 2'b11;
    
    default : y_ped = 2'b00;
    endcase
    end
endmodule
