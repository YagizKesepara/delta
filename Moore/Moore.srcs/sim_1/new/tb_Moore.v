`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:33:21 PM
// Design Name: 
// Module Name: tb_Moore
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


module tb_Moore;
    reg input_bit;
    reg clk = 0;
    reg reset = 0;
    wire detected;
    always #5 clk=~clk;
    
    Moore uut (.input_bit(input_bit), .clk(clk), .reset(reset), .detected(detected));
initial begin
    #10 input_bit<=1;
    #10 input_bit<=0;
    #10 input_bit<=1;
    #10 input_bit<=0;
    #10 input_bit<=1;
    #10 input_bit<=1;
    
end
endmodule
