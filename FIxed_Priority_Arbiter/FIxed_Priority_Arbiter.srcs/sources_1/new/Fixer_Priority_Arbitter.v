`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2023 10:24:13 AM
// Design Name: 
// Module Name: Fixer_Priority_Arbitter
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


module Fixer_Priority_Arbitter(
    input request1,
    input request2,
    input clk,
    output reg permission
    );
    always @(posedge clk)begin
        if(request1)begin
            permission <= {0,1};
        end else if (request2)begin
            permission <= {1,0};
        end else begin
            permission <={0,0};
        end
    end 
endmodule
