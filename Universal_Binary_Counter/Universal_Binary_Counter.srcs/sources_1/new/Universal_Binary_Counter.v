`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 05:49:53 PM
// Design Name: 
// Module Name: Universal_Binary_Counter
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


module Universal_Binary_Counter(
    input clk,
    input reset,
    input odd,
    output reg [3:0] q
    );
    always @(posedge reset or posedge clk)begin
        if(reset)begin
            q<= 4'b0000;
        end else begin
            if(odd)begin
                if(q<4'b1010)begin
                    q<=q+2;
                end else begin
                    q<=4'b0001;
                end
            end else begin
                if(q<4'b1001) begin
                    q<=q+2;
                end else begin
                    q<= 4'b0000;
                end
            end
        end
    end
endmodule
