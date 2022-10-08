`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2022 22:16:26
// Design Name: 
// Module Name: decoder
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


module decoder(
    input            clk,
    input            inputData,
    output reg       outputData
    );
    
    logic firstPart, secPart;
    
    always @(negedge clk) begin
        #2;
        firstPart = inputData;
        #5;
        secPart   = inputData;
        
        if( firstPart == secPart ) outputData = 1'b0;
        else                       outputData = 1'b1;
    end
    
endmodule
