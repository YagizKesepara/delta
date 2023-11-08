`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 06:20:12 PM
// Design Name: 
// Module Name: frequency_divider
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


module frequency_divider(
    input clk,
    output reg [3:0] q
    );
    reg [3:0]counter;
    always@(posedge clk)begin
        if(counter == 4'b0001)begin
            q<=~q;
            counter <=4'b0000;
        end else begin
            counter <= counter+1;//frekasni ikiye bolduk mesela esit esit 2 deseydik 3 e bolmus olurduk
        end
    end
endmodule
