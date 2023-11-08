`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2023 03:21:38 PM
// Design Name: 
// Module Name: PRBS_sequence
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


module PRBS_sequence(
    input wire clk,
    input wire rst,
    output wire out
    );
    reg [6:0] data;
    always @(posedge clk, posedge rst) begin
        if(rst)begin
        data<= 7'b1;
        end else begin
            data <= {data[5:0], data[6]^data[3]};
        end
    end
endmodule
