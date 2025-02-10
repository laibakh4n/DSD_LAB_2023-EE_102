`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2025 11:54:57 AM
// Design Name: 
// Module Name: laibalab3
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
module logic_circuit (
    input  a, b, c,  
    output  x, y     
);
    wire  o1, n1, x2;
    assign o1 = a | b;           
    assign n1 = ~(a & b);        
    assign x  = ~c ^ o1;      
    assign x2 = n1 ^ o1;         
    assign y = x2 & o1;         
endmodule 


