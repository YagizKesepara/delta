`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 11:20:10 AM
// Design Name: 
// Module Name: masterSlaveJKFlipFlop
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

module jkFlipFlop(
    input j,
    input k,
    input clk,
    output reg q,
    output q_reverse
);
    assign q_reverse = ~q;
    always @(posedge clk) begin
        case({j,k})
            2'b00 : q<=q;
            2'b10 : q<=1;
            2'b01 : q<=0;
            2'b11 : q<=~q;
        endcase
    end
endmodule

module masterSlaveJKFlipFlop(
    input set,
    input reset,
    input clk,
    output q,
    output q_reverse    
    );
    wire clk_reverse = ~clk;
    wire q_Master;
    wire q_Rev_Master;
    jkFlipFlop Master (set, reset,clk,q_Master, q_Rev_Master);
    jkFlipFlop Slave (q_Master, q_Rev_Master, clk_reverse,q,q_reverse);
endmodule
