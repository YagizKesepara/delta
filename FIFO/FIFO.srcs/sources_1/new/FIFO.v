`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2023 08:10:33 PM
// Design Name: 
// Module Name: FIFO
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


module FIFO(
    input clk,
    input write,
    input read,
    input [7:0]data_in,
    output reg [7:0]data_out
    );
    reg [7:0]fifo[15:0];
    reg [3:0]index;
     always @(posedge clk)begin
        if(write)begin
              fifo[index]<=data_in;
              index <= index+1;   
        end
        if(read)begin
            data_out<=fifo[15];
            fifo[] <= {fifo[14],8'b00000000};
        end
     end
endmodule
