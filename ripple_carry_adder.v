`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2026 21:38:46
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(input [3:0] a_rca,[3:0] b_rca,input Cin,output [3:0] Sum_rca,output cout);
wire [3:0] c_rca;
full_adder fa1(a_rca[0],b_rca[0],Cin,Sum_rca[0],c_rca[0]);
full_adder fa2(a_rca[1],b_rca[1],c_rca[0],Sum_rca[1],c_rca[1]);
full_adder fa3(a_rca[2],b_rca[2],c_rca[1],Sum_rca[2],c_rca[2]);
full_adder fa4(a_rca[3],b_rca[3],c_rca[2],Sum_rca[3],c_rca[3]);
endmodule
