`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 01:23:01 AM
// Design Name: 
// Module Name: SIPO
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


module SIPO(
    input wire clk,
    input wire rst,
    input serial_in,
    output [3:0]paralel_out
    );
    reg [3:0] shift = 4'b0000;
    always @(posedge clk or posedge rst) begin
        if(rst)begin
            shift <= 4'b0000;
        end
        else begin
            shift <= {serial_in, shift[3:1]};
        end
    end
    for(genvar i=0;i<4;i=i+1)begin
        assign paralel_out[i]=shift[i];
    end
    
endmodule
