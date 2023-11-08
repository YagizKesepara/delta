`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 06:12:41 PM
// Design Name: 
// Module Name: cnc_flip_flop
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


module cnc_flip_flop (
    input wire clk,   
    input wire rst,   
    output reg q
    ); 
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q <= 1'b0;  
        end else begin
            q <= ~q;    
        end
    end
endmodule
