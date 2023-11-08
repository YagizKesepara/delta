`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 03:21:01 PM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
    input data,
    input clk,
    output Q
    );
    wire middle;
    Mux(.A(middle), .B(data), .Q(middle), .select(clk));
    Mux (.A(middle), .B(Q), .Q(Q), .select(clk));
endmodule
