`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 17:13:29
// Design Name: 
// Module Name: testbench_half_subtractor
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


module testbench_half_subtractor(

    );
    wire diff_tb,borrow_tb;
    reg a_tb,b_tb;
    
    half_subtractor_behaviour_modeling sut(a_tb,b_tb,diff_tb,borrow_tb);
    
    initial
    begin
    {a_tb,b_tb} = 0;
    end
    
    initial
    begin
    $monitor("Subtractor is %b and Borrow is %b",diff_tb,borrow_tb);
    
    a_tb = 0;
    b_tb = 0;
    
    #1;
    a_tb = 0;
    b_tb = 1;
    
    #1;
    a_tb = 1;
    b_tb = 0;
    
    #1;
    a_tb = 1;
    b_tb = 1;
    
    #1;
    end
endmodule
