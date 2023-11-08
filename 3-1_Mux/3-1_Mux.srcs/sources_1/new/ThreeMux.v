`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 01:17:51 PM
// Design Name: 
// Module Name: ThreeMux
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


module ThreeMux (
    input wire a,
    input wire b,
    input wire c,
    input wire [1:0] sel,
    output reg y
);
    always @* begin
        case(sel)
            2'b00: y = a;
            2'b01: y = b;
            2'b10: y = c;
            2'b11: y = 1'b0; 
            default: y = 1'b0; 
        endcase
    end
endmodule

