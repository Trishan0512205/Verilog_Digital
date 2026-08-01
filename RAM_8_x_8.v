`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2026 20:32:41
// Design Name: 
// Module Name: RAM_8_x_8
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


module RAM_8_x_8(
input clk,rst,w_enb,input [2:0] w_addr,input [7:0] data_in,input [2:0] r_addr,
output reg [7:0] data_out
    );
    
    reg [7:0] int_memo[7:0];
    
    integer i;
    
    always@(posedge clk or posedge rst) begin
    if (rst) begin
    for (i=0;i<8;i=i+1) begin
    int_memo[i] <= 0;
    end
    end
    
    else if(w_enb) begin
    int_memo[w_addr] <= data_in;
    end
    
    else if(w_enb == 0) begin
    data_out <= int_memo[r_addr];
    end
    
    end
endmodule
