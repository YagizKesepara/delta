`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 03:59:56 PM
// Design Name: 
// Module Name: Mux4
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


module Mux4(
    input [3:0]data_in,
    input [1:0]select,
    output reg Q
    );
    always @* begin
    case(select) 
        2'b00 : Q <= data_in[0];
        2'b01 : Q <= data_in[1];
        2'b10 : Q <= data_in[2];
        2'b11 : Q <= data_in[3];
    endcase
    end
endmodule
