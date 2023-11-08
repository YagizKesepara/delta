// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 02:32:29 PM
// Design Name: CLA_Adder
// Module Name: tb_CLA_Adder
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


module tb_CLA_Adder();
reg [3:0] a,b;
reg cin;
wire [3:0] result;
wire cout;


  CSA dut (.A(a), .B(b), .Cin(cin), .Cout(cout), .sum(result)) ;


initial begin 
  //$dumpfile("tb_CLA_Adder.vcd");
  //$dumpvars(0, tb_CLA_Adder);
    a = 1;
    b = 3;
    cin = 1;
  	#10
  	a = 4;
    b= 6;
    cin = 0;
    #10
    $finish ;
end
endmodule