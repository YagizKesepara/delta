`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:15:14 PM
// Design Name: 
// Module Name: Greatest_Common_Divisor_via_FSM
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


module Greatest_Common_Divisor_via_FSM(
    input clk,
    input reset,
    input wire [7:0] a,
    input wire [7:0] b,
    output wire [7:0] out
);
    parameter START = 2'b00;
    parameter COMPARE = 2'b01;
    parameter UPDATE = 2'b10;
    reg [1:0] State ;
    reg [7:0] a_reg;
    reg [7:0] b_reg; 
    reg [7:0] out_reg; 
    always @(posedge clk or posedge reset)begin
        if( State==START )begin
            a_reg<= a;
            b_reg<=b;
            State <= COMPARE ;    
        end
    end
    always @(State) begin
        case(State)
        COMPARE: begin
            if(a_reg>b_reg)begin
                a_reg<=a_reg-b_reg;
            end else if(b_reg>a_reg) begin
            b_reg <= b_reg - a_reg;
            end else begin 
                State <= UPDATE;
        end
        end
        UPDATE : begin
            out_reg <= a_reg;
        end
        endcase
    end
    assign out = out_reg;
endmodule
