`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2023 01:07:40 PM
// Design Name: 
// Module Name: eight-bit-subtractor
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


module eightbitsubtractor(
        input wire [0:7] a,
        input wire [0:7] b,
        input wire clk,
        output wire [0:7] result
    );
    reg [0:7] data;
    always @(posedge clk)begin
        data <= a-b;
    end
    assign result = data;
endmodule
