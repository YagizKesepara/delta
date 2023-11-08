`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 04:31:39 PM
// Design Name: 
// Module Name: Shift_Operations
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


module Shift_Operations(
    input [7:0] A,
    input [2:0] select,
    output reg [7:0]Q
    );
    always @* begin
        case(select)
            3'b000: Q <= A<<1;
            3'b001: Q <= A>>1;
            
            3'b010: Q <= A<<<1;
            3'b011: Q <= A>>>1;
            
            3'b100: Q <= {A[6:0],A[7]};
            3'b101: Q<= {A[0], A[7:1]};
            
        endcase
    end
endmodule
