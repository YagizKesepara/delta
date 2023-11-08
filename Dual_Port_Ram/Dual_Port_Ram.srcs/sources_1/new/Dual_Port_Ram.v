`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2023 07:16:26 PM
// Design Name: 
// Module Name: Dual_Port_Ram
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
////////////////////////////////////////////////////////////////////////////////


module Dual_Port_Ram(
    input clk,
    input data_in1,
    input data_in2,
    input address1,
    input address2,
    input write1,
    input write2,
    output reg data_out1,
    output reg data_out2
    );
    reg [7:0]ram[255:0];
    always @(posedge clk)begin
        if(write1)begin
            ram[address1] <= data_in1;
        end else begin
            data_out1 <= ram[address1];
        end
    end
    always @(posedge clk)begin
        if(write2)begin
            ram[address2] <= data_in2;
        end else begin
            data_out2 <= ram[address2];
        end
    end
endmodule
