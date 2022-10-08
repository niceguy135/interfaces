`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2022 20:21:34
// Design Name: 
// Module Name: coder
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


module coder(
    input            clk,
    input            inputData,
    output reg       outputData
    );
    
    logic  [0:4]  number;
    logic         isFirst;
    
    initial  number     <= 0;
    initial  isFirst    <= 0;
    initial  outputData <= 1;
    
    always @(negedge clk) begin
            case( inputData )
            
                1'b1 : begin
                           #5; //период у меня будет 10 наносек. Поэтому через костыль я сделал половину
                           outputData <= !outputData;
                           isFirst <= 1;
                       end
                       
                1'b0 : begin
                
                           if(isFirst == 1) begin
                               outputData <= outputData;
                               isFirst <= 0;
                           end
                           
                           else outputData <= !outputData;
                       end
            endcase
    end
    
endmodule
