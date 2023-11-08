`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 11:30:36 AM
// Design Name: 
// Module Name: bidirection_shoft_register
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


module bidirection_shoft_register(
    input wire mode,
    input wire clk
    );
    reg [3:0] data;
    always @(posedge clk)begin
        if(mode) begin
            data = data<<<1;
        end else begin
            data = data>>>1;
        end
    end
endmodule
