`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2023 12:24:35 AM
// Design Name: 
// Module Name: Module_1
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


module four_bit_carry_lookahead_adder(
    input [3:0] A,
    input[3:0] B ,
    input Cin,
    output [3:0] sum,
    output Cout
    );
    wire G[3:0];
    wire P[3:0];
    
    for (genvar i=0; i<4;i= i+1) begin
    assign G[i] = A[i]&B[i];
    assign P[i] = A[i]^B[i];
    end
    
    for (genvar)
endmodule
