`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 01:16:15 AM
// Design Name: 
// Module Name: SISO
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


module SISO(
    input wire clk,
    input wire rst,
    input wire serial_in,
    output wire serial_out
    );
    reg [3:0] shift;
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            shift <= 4'b0000;
        end
        else begin
        shift <= {serial_in,shift[3:1]};
        end
    end
    assign serial_out = shift;
endmodule
