`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2023 09:59:58 AM
// Design Name: 
// Module Name: Segment_Display_URom
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


module Segment_Display_URom (
    input wire [3:0] number, // 4-bitlik giriş sayısı
    output reg [6:0] seg // 7 segment display için 7 bitlik çıkış
);
reg [6:0] rom [15:0];
initial begin
        rom[0]<= 7'b0111111; 
        rom[1]<=7'b1000110 ;
        rom[2]<=7'b1011011 ;
        rom[3]<=7'b1100000 ;
        rom[4]<=7'b1001100 ;
        rom[5]<=7'b1001001 ;
        rom[6]<=7'b1000001 ;
        rom[7]<=7'b1110110 ;
        rom[8]<=7'b1000000 ;
        rom[9]<=7'b1001000 ;
        rom[10]<=7'b1000100 ;
        rom[11]<=7'b1000111 ;
        rom[12]<=7'b0111001 ;
        rom[13]<=7'b1011110 ;
        rom[14]<=7'b1000010 ;
        rom[15]<=7'b1000110 ;
end
    
   

    always @(number) begin
        seg <= rom[number];
    end
endmodule
