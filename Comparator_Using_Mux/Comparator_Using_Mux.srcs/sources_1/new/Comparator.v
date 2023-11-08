`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 03:59:56 PM
// Design Name: 
// Module Name: Comparator
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


module Comparator(
    input A,
    input B,
    output Greater,
    output Equal,
    output Lesser
    );
    wire Arr = {A,B};
    Mux4 greater (.data_in(4'b0010), .select(Arr), .Q(Greater));
    Mux4 equal (.data_in(4'b1001), .select(Arr), .Q(Equal));
    Mux4 lesser (.data_in(4'b0100), .select(Arr), .Q(Lesser));
endmodule
