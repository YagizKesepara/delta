`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2023 06:47:19 PM
// Design Name: 
// Module Name: Single_Port_Ram
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


module Single_Port_Ram(
    input clk,
    input [7:0]data_in,
    input write,
    input [7:0] adress,
    output reg data_out
    );
    reg [7:0] ram [255:0];
    always @(posedge clk)begin
        if(write)begin
            ram[adress]<= data_in;
        end else begin
            data_out <= ram[adress];
        end
    end
endmodule
