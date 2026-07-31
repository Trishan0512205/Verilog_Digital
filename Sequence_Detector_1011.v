`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2026 11:58:38
// Design Name: 
// Module Name: Sequence_Detector_1011
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


module Sequence_Detector_1011(
input clk,rst,Sin,output reg detected
    );
    
    reg [1:0] ps,ns;
    
    parameter idle = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;
    
    always@(posedge clk) begin
    if (rst)
    ps <= idle;
    else
    ps <= ns;
 
    end
    
    always@(*) begin
    case(ps)
    idle : begin
    if (Sin == 1'b1)
    ns = S1;
    else
    ns = idle;
    end
    
    S1 : begin
    if (Sin == 1'b0)
    ns = S2;
    else
    ns = S1;
    end
    
    S2 : begin
    if (Sin == 1'b1)
    ns = S3;
    else 
    ns = idle;
    end
    
    S3 : begin
    if (Sin == 1'b1) begin
    ns = S1;
    end
    else 
    ns = S2;
    end
    
    default : ns = idle;
    endcase
    
    end
    
    always@(posedge clk) begin
    if (rst)
    detected <= 1'b0;
    else
    case(ps) 
    idle : detected <= 0;
    S1 : detected <= 0;
    S2 : detected <= 0;
    S3 : begin
    if (Sin == 1'b1)
    detected <= 1;
    else
    detected <= 0;
    end
    
    default : detected <= 0;
    endcase
    end 
endmodule
