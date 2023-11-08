`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 06:28:51 PM
// Design Name: 
// Module Name: BCD_Time_Count
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


module BCD_Time_Count(
    input clk,
    input reset,
    output reg [3:0] sec_output_1,
    output reg [3:0] sec_output_2,
    output reg [3:0] min_output_1,
    output reg [3:0] min_output_2,
    output reg [3:0] hour_output_1,
    output reg [3:0] hour_output_2
    );
    reg[3:0] sec_count_1;
    reg[3:0] sec_count_2;
    reg[3:0] min_count_1;
    reg [3:0] min_count_2;
    reg[3:0] hour_count_1;
    reg[3:0] hour_count_2;
    
    always @(posedge clk or posedge reset)begin
        if(reset)begin
            sec_count_1 <=0;
            sec_count_2 <=0;
            min_count_1 <=0;
            min_count_2 <=0;
            hour_count_1 <=0;
            hour_count_2 <=0;
        end else begin
            if(sec_count_1 == 4'b1001)begin
                sec_count_1<=4'b0000;
                sec_count_2 = sec_count_2 +1;
            end else begin
                sec_count_1 <= sec_count_1 +1;
            end
            if (sec_count_1== 4'b1001 && sec_count_2 == 4'b0101)begin
                min_count_1 <= min_count_1 +1;
            end
            if(min_count_1==4'b1001)begin
                min_count_2 <= min_count_2 +1;
                min_count_1 <= 4'b0000;
            end
            if (sec_count_1== 4'b1001 && sec_count_2 == 4'b0101 && min_count_2==4'b0101 && min_count_1 == 4'b1001)begin
                hour_count_1 <= hour_count_1 +1;
                sec_count_1 <=4'b0000;
                sec_count_2 <=4'b0000;
                min_count_1 <=4'b0000;
                min_count_2 <=4'b0000;
            end
            if(hour_count_1==4'b1001)begin
                hour_count_1 <=0;
                hour_count_2 = hour_count_2 +1;
            end
            if(hour_count_2 > 4'b1001)begin
                sec_count_1 <=4'b0000;
                sec_count_2 <=4'b0000;
                min_count_1 <=4'b0000;
                min_count_2 <=4'b0000;
                hour_count_1 <= 4'b0000;
                hour_count_2 <= 4'b0000;
            end 
        end
    end
endmodule
