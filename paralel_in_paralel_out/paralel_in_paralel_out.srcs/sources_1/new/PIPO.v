`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 01:30:13 AM
// Design Name: 
// Module Name: PIPO
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


module PIPO(
    input wire [3:0]paralel_in,
    input wire rst,
    input wire clk,
    output wire paralel_out
    );
    reg [3:0] shift;
    always @(posedge clk or posedge rst)begin
        if(rst)begin
            shift<=4'b0000;
        end else begin
            shift <= paralel_in;
        end
    end
    assign paralel_out = paralel_in;
endmodule
