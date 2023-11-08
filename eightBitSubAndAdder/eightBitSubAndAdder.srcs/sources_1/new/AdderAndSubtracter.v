`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 01:24:07 PM
// Design Name: 
// Module Name: AdderAndSubtracter
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


module AdderAndSubtracter(
    input wire isAdder,
    input wire [0:7]a,
    input wire [0:7]b,
    input wire clk,
    output wire [0:7]result
    );
    reg [0:7] data;
    always @(posedge clk) begin
        if(isAdder)begin
            data <= a+b;
        end else begin
            data <= a-b;
        end
    end
    assign result = data;
endmodule
