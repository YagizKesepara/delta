`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 02:01:29 AM
// Design Name: 
// Module Name: PISO
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


module PISO(
    input wire [3:0] paralel_in,
    input wire rst,
    input wire clk,
    input wire load,
    output wire serial_out
    );
    reg [3:0]data;
    assign serial_out = data[3];
    always @(posedge clk or posedge rst) begin
        if(rst)begin
            data <=4'b0000;
        end else begin
            if(load)begin
                data<=paralel_in;
            end else begin
                data<={data[2:0],1'b0};
                
            end
        end
    end
endmodule
