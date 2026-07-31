`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2026 12:38:19
// Design Name: 
// Module Name: S_D_1011_tb
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


module S_D_1011_tb(

    );
    
    reg clk,rst,Sin;
    wire detected;
    
    Sequence_Detector_1011 dut(clk,rst,Sin,detected);
    
    initial begin
    {clk,rst,Sin} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial begin
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    Sin = 1'b1;
    #10;
    Sin = 1'b0;
    #10;
    Sin = 1'b1;
    #10;
    Sin = 1'b1;
    #10;
    Sin = 1'b0;
    
    end
endmodule
