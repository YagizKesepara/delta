`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 01:30:54 PM
// Design Name: 
// Module Name: fourBitMultiplier
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


module fourBitMultiplier(
    input wire a,
    input wire b,
    input wire clk,
    output wire result
    );
    reg [0:7] data;
    always @(posedge clk)begin
        data<= a*b;
    end
    assign result = data;
endmodule
