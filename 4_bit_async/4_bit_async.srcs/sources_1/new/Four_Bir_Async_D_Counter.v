`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 05:17:51 PM
// Design Name: 
// Module Name: Four_Bir_Async_D_Counter
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


module Four_Bir_Async_D_Counter(
    input clk,
    input reset,
    output reg [3:0] counter
    );
    always @(posedge reset or posedge clk) begin
        if(reset) begin
            counter <= 4'b1111;
        end else begin
            counter <= counter - 1;
        end
    end
endmodule
