`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 02:56:43 PM
// Design Name: 
// Module Name: S_R_Latch
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


module S_R_Latch(
    input S,
    input R,
    input clk,
    output Q,
    output Q_rev 
    );
    wire Q_wire;
    wire Q_rev_wire;
    wire S_wire;
    
    assign S_wire = ~(S & clk);
    assign R_wire = ~(R&clk);
    
    assign Q_wire = ~(Q_rev_wire & S_wire);
    assign Q_rev_wire = ~(Q_wire & R_wire);
    
    assign Q = Q_wire;
    assign Q_rev = Q_rev_wire;
endmodule
