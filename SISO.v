`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2026 20:21:01
// Design Name: 
// Module Name: SISO
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


module SISO(input clk,rst,enb,s_in,output reg [3:0] s_out

    );
    
    reg [3:0] temp;
    
    always@(posedge clk) begin
    if (rst)
    temp <= 4'b0000;
    else if (enb) begin
    temp <= temp>>1;
    temp[3] <= s_in;
    s_out <= temp[0];
    end
    end
     
endmodule 