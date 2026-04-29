`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 17:05:26
// Design Name: 
// Module Name: half_subtractor_behaviour_modeling
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


module half_subtractor_behaviour_modeling(input a,b,output reg diff,borrow

    );
    reg ad_in;
    always@(*)
    begin
    diff = a ^ b;
    ad_in = ~a;
    borrow = ad_in & b;
    end
endmodule
