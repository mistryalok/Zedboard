`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2013 04:33:17 PM
// Design Name: 
// Module Name: grey_to_binary
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


module binary_to_grey(
    input [1:0] binary,
    output reg [5:0] grey
    );
    
    always @ (binary)
    begin
    grey = 6'd0;
    case (binary) // Binary to Grey 
    0: grey = 6'd1;
    1: grey = 6'd3;
    2: grey = 6'd2;
    endcase
    end
    
endmodule
