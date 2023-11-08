`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 02:54:18 PM
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
    output Q,
    output Q_rev
    );
    S_R_Latch srlatch (.S(data), .clk(clk), .R(~data), .Q(Q), .Q_rev(Q_rev));
endmodule
