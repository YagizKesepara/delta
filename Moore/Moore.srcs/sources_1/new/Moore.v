`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:32:42 PM
// Design Name: 
// Module Name: Moore
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


module Moore(
    input wire clk,
    input wire input_bit,
    input wire reset,
    output reg detected
    );
    reg [1:0] state;
    parameter S0 = 2'b00 ; 
    parameter S1 = 2'b01 ;
    parameter S2 = 2'b10 ;
    parameter S3 = 2'b11 ;
    
    
    always @(posedge clk or posedge reset)begin
        detected<=0;
        if(reset)begin
            state <= S0;
        end else begin
            case(state)
                S0 : if(input_bit) state<=S1;
                S1 : if(!input_bit) state<=S2;
                S2 : if(input_bit) state<=S3;
                S3 : if(!input_bit)begin
                    detected <=1;
                    state<=S0;
                    end else begin
                        state<=S1;
                    end
            endcase
        end
    end
endmodule
