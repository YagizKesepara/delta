`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2023 12:15:49 PM
// Design Name: 
// Module Name: CLA_Adder
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

// Yanlis Isimlendirdim 
module CLA_Adder(
    input [3:0]A,
    input [3:0]B,
    input cin,
  	output [3:0]result,
    output Cout
    );
    
    wire [3:0] G,P ;
  	wire [3:0] c;
    assign P[0]=(A[0]^B[0]),
           P[1]=(A[1]^B[2]),
           P[2]=(A[2]^B[2]),
           P[3]=(A[3]^B[3]);
  
    assign G[0]=(A[0]&B[0]),
           G[1]=(A[1]&B[1]),
           G[2]=(A[2]&B[2]),
           G[3]=(A[3]&B[3]);
  
  
  	assign c[0]=cin ;
    assign c[1]=G[0]|(P[0]&cin);
    assign c[2]=G[1]|(P[1]&G[0])|(P[1]&P[0]&cin);
    assign c[3]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[1]&P[1]&P[0]&cin);
   	assign Cout=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&cin);
  
  
  	assign result[0]=P[0]^c[0];
  	assign result[1]=P[1]^c[1];
    assign result[2]=P[2]^c[2];
    assign result[3]=P[3]^c[3];
  	 
endmodule