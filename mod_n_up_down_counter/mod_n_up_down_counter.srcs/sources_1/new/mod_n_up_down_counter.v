`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 05:41:17 PM
// Design Name: 
// Module Name: mod_n_up_down_counter
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


module mod_n_up_down_counter(
    input clk,
    input reset,
    input up_down,
    output reg q
    );  
    always @(posedge clk, posedge reset)begin
        if(reset)begin
        q <=4'b0000;
        end else begin
            if(up_down)begin
                if(q<4'b1001)begin
                    q = q+1;
                end else begin 
                q<=4'b0000;
                end
            end else begin
                if(q>4'b0000)begin
                    q<= q-1;
                end else begin
                    q<= 4'b1001;
                end
            end
        end
    end
endmodule
