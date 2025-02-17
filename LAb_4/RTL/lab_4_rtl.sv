`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 09:30:32 PM
// Design Name: 
// Module Name: lab_4_rtl
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

`timescale 1ns / 1ps

module RGB(
    input logic [1:0]a,b,
    output logic r,g,b_out
    );
    assign R = (~b[1]&~b[0])|(~b[1]&a[0])| (~b[1]&a[1])|(~b[0]&a[1])|(a[1]&a[0]);
    assign G =(~a[1]&~a[0])|(~a[1]&b[0])|(~a[1]&b[1])|(b[1]&~a[0])|(b[1]&b[0]);
    assign B =(~b[1]&a[1])|(b[1]&~a[1])| (~b[0]&a[0])|(b[0]&~a[0]);
endmodule
