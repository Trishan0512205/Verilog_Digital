`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2026 22:18:35
// Design Name: 
// Module Name: de_mux_1_4
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


module de_mux_1_4(input i_demux,input [1:0] s_demux,output reg [3:0] y_demux

    );
    
    always@(*)
    begin
    
    case(s_demux)
    2'b00 : begin
    y_demux[0] = i_demux;
    y_demux[1] = 0;
    y_demux[2] = 0;
    y_demux[3] = 0;
    end
    
    2'b01 : begin
    y_demux[1] = i_demux;
    y_demux[0] = 0;
    y_demux[2] = 0;
    y_demux[3] = 0;
    end
    
    2'b10 : begin
    y_demux[2] = i_demux;
    y_demux[0] = 0;
    y_demux[1] = 0;
    y_demux[3] = 0;
    end

    2'b11 : begin
    y_demux[3] = i_demux;
    y_demux[0] = 0;
    y_demux[1] = 0;
    y_demux[2] = 0;
    end
    
    default : y_demux = 0;
    
    endcase
    end
endmodule
