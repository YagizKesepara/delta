`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 02:09:30 PM
// Design Name: 
// Module Name: BCD_To_Seven_Segment
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
//
//
//   _ _ _ _ sec1
//   _ _ _ _ sec2
//
//
//
//
module BCD_To_Seven_Segment(
    input [3:0] BCD_input [4:0],
    input clk,
    input rst,
    output reg [6:0] seven_segment [4:0]
    );
    reg [4:0] [3:0]BCD_input_reg;
    integer i, a ;
    always @(posedge clk or posedge rst)begin
        //BCD_input_reg <= BCD_input;
        if(rst)begin
            BCD_input_reg<=0;
        end else begin
            for(i=0; i<6;i=i+1)begin
                case(BCD_input_reg[i])
                    4'b0000: seven_segment[i] <= 7'b1000000; // 0
                    4'b0001: seven_segment[i] <= 7'b1111001; // 1
                    4'b0010: seven_segment[i] <= 7'b0100100; // 2
                    4'b0011: seven_segment[i] <= 7'b0110000; // 3
                    4'b0100: seven_segment[i] <= 7'b0011001; // 4
                    4'b0101: seven_segment[i] <= 7'b0010010; // 5
                    4'b0110: seven_segment[i] <= 7'b0000010; // 6
                    4'b0111: seven_segment[i] <= 7'b1111000; // 7
                    4'b1000: seven_segment[i] <= 7'b0000000; // 8
                    4'b1001: seven_segment[i] <= 7'b0010000; // 9
                    default: seven_segment[i] <= 7'b1111111; // Diğer durumlar için göstergeyi kapat
                endcase
            end
        end
    end
endmodule
