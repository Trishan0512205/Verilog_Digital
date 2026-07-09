`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2026 17:55:24
// Design Name: 
// Module Name: Universal_counter
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


module Universal_counter(
input clk,rst,enb,
input [1:0] mode,
input count_up_down,
output reg two_bit_count,
output reg [1:0] four_bit_count,
output reg [2:0] eight_bit_count,
output reg [3:0] sixteen_bit_count
    );
    
    reg [3:0] count_temp;
    
    always@(posedge clk) begin
    if (rst) begin
    count_temp <= 0;
    end
    else if (enb && count_up_down)
    count_temp <= count_temp + 1'b1;
    else if (enb && ~count_up_down)
    count_temp <= count_temp - 1'b1;
    else
    count_temp <= count_temp;
    end
    
    always@(posedge clk) begin
    case(mode)
    2'b00 : begin
    two_bit_count <= count_temp[0];
    end
    2'b01 : begin
    four_bit_count <= count_temp[1:0];
    end
    2'b10 : begin
    eight_bit_count <= count_temp[2:0];
    end
    2'b11 : begin
    sixteen_bit_count <= count_temp;
    end
    default : begin
    two_bit_count <= 0;
    four_bit_count <= 0;
    eight_bit_count <= 0;
    sixteen_bit_count <= 0;
    end
    endcase
    
    end
endmodule
