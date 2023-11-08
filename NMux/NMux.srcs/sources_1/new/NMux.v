`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 04:26:01 PM
// Design Name: 
// Module Name: NMux
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


module NMux#(parameter N=2)(
    input [N-1:0] data_in,
    input  [ 31:0] select,
    output reg selected
);
    localparam log2_n = $clog2(N);
    always @* begin
        if(select>=log2_n) begin
            selected <=0;
        end else begin
            selected <= data_in[select];
        end
    end
endmodule
