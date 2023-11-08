`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 04:43:03 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0] A,
    input [3:0]B,
    input [1:0]select,
    output reg [3:0]Q
    );
    always @* begin
        case(select)
            2'b00 : Q <= A+B; 
            2'b01 : Q <= A-B;
            2'b10 : Q <= A&B;
            2'b11 : Q <= A|B;        
        endcase
    end
endmodule
