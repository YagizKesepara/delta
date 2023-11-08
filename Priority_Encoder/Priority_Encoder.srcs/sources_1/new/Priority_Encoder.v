`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2023 09:45:00 AM
// Design Name: 
// Module Name: Priority_Encoder
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


module Priority_Encoder(
    input clk,
    input enable,
    input [7:0] data,
    output reg [2:0] out 
    );
    reg [2:0] mem;
    always @(posedge clk)begin
        if(enable) begin
            case(data)
                8'b00000001: mem = 3'b000;
                8'b0000001x: mem = 3'b001;
                8'b000001xx: mem = 3'b010;
                8'b00001xxx: mem = 3'b011;
                8'b0001xxxx: mem = 3'b100;
                8'b001xxxxx: mem = 3'b101;
                8'b01xxxxxx: mem = 3'b110;
                8'b1xxxxxxx: mem = 3'b111;
            endcase
        end
        assign out = mem;
    end
endmodule
