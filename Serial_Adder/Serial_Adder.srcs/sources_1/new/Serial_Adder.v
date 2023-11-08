`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2023 10:06:25 AM
// Design Name: 
// Module Name: Serial_Adder
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


module Serial_Adder (
    input wire clk,        
    input wire rst,        
    input wire a,          
    input wire b,          
    output reg sum,        
    output reg carry_out   
);
    reg carry; 

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            carry <= 1'b0; 
            sum <= 1'b0;
            carry_out <= 1'b0;
        end else begin
            {carry, sum} <= a + b + carry;
            carry_out <= carry; // Taşıma bitini bir sonraki adıma taşı
            carry <= sum; // Taşıma bitini güncelle
        end
    end
endmodule
