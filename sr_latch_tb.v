`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2026 19:49:06
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb(

    );
    
    reg enb_tb,res_tb,s_tb,r_tb;
    wire q_tb,qbar_tb;
    
    sr_latch dut(enb_tb,res_tb,s_tb,r_tb,q_tb,qbar_tb);
    
    initial
    begin
    {enb_tb,res_tb,s_tb,r_tb} = 0;
    end
    
    always begin 
    #5 enb_tb = ~enb_tb;
    end   
    
    initial
    begin
    res_tb = 1;
    #10 res_tb = 0;
    
    s_tb = 0;
    r_tb = 0;
    
    #10;
    s_tb = 0;
    r_tb = 1;
    
    #10;
    s_tb = 1;
    r_tb = 0;
    
    #10;
    s_tb = 1;
    r_tb = 1;
    
    end
endmodule
