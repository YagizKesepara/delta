`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2023 10:32:09 AM
// Design Name: 
// Module Name: Round_Robin_Arbitter
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


module Round_Robin_Arbiter (
    input wire clk,        
    input wire rst,        
    input wire request_0,  
    input wire request_1,  
    input wire request_2,  
    output reg [2:0] grant 
);
    reg [1:0] counter; 
    reg [2:0] priority; 

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 2'b0;
            priority <= 3'b0;
        end else begin
            counter <= counter + 1;
            case (counter)
                2'b00: priority <= 3'b100; 
                2'b01: priority <= 3'b010; 
                2'b10: priority <= 3'b001; 
                default: priority <= 3'b000; 
            endcase
            grant <= priority & {request_0, request_1, request_2};
        end
    end
endmodule
