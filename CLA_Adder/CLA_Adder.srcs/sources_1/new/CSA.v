`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 04:07:09 PM
// Design Name: 
// Module Name: CSA
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


module CSA(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output Cout,
    output [3:0] sum
    );
    wire Cout_1, Cout_2;
    wire [3:0] sum_1, sum_2;
    wire [3:0] CSA_output;
    CLA_Adder cla_1 (.A(a), .B(B), .cin(1'b1), .Cout(Cout_1), .result(sum_1));
    CLA_Adder cla_0 (.A(a), .B(B), .cin(1'b0), .Cout(Cout_2), .result(sum_2));
    
    MUX mux_1(.select(Cin), .data_1(sum_2[0]), .data_2(sum_1[0]), .mux_output(CSA_output[0]));
    MUX mux_2(.select(Cin), .data_1(sum_2[1]), .data_2(sum_1[1]), .mux_output(CSA_output[1]));
    MUX mux_3(.select(Cin), .data_1(sum_2[2]), .data_2(sum_1[2]), .mux_output(CSA_output[2]));
    MUX mux_4(.select(Cin), .data_1(sum_2[3]), .data_2(sum_1[3]), .mux_output(CSA_output[3]));
    
    MUX mux_5(.select(Cin), .data_1(Cout_2), .data_2(Cout_1), .mux_output(Cout));
    assign sum = CSA_output;
    
endmodule
