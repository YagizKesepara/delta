`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 12:03:17 PM
// Design Name: 
// Module Name: BCD_Adder
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


module BCD_Adder(
    input [3:0] A,
    input [3:0] B,
    input clk,
    output carry,
    output [3:0] result
    );
    reg [3:0] temp_Sum;
    reg temp_Crry;
    always @(posedge clk)begin
        temp_Sum <= A+B;
        if(temp_Sum > 9)begin
            temp_Crry <= 1;
            temp_Sum <= temp_Sum - 10;
        end
    end
    assign result = temp_Sum;
    assign carry = temp_Crry;
endmodule
