`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2022 20:48:35
// Design Name: 
// Module Name: tb_coder
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


module tb_coder;

    logic         clk;
    logic         dataIn;
    logic         analogOut;
    
    parameter PERIOD = 10;
    parameter DATA = 23'd8200390;
    logic [0:4] number;
    
    initial number = 22;
    initial dataIn = DATA[22];

    initial forever begin
        #(PERIOD/2) clk = 1'b1;
        #(PERIOD/2) clk = 1'b0;
    end
    
    
    coder cd(
        .clk,
        .inputData(dataIn),
        .outputData(analogOut)
    );
    
    always @(negedge clk) begin
        if( number >= 0 ) begin
            dataIn = DATA[number];
            #5;
            number = number - 1;
        end
    end
    
endmodule
