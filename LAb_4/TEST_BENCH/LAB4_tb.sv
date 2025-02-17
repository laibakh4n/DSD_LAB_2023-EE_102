`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 11:58:51 PM
// Design Name: 
// Module Name: LAB4_tb
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
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module RGB_test;
  logic [1:0] a, b;
  logic r, g, b_out;

  RGB vt (.a(a), .b(b), .r(r), .g(g), .b_out(b_out));

  initial begin
    a = 2'b00; b = 2'b00; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b00; b = 2'b01; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b00; b = 2'b10; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b00; b = 2'b11; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b01; b = 2'b00; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b01; b = 2'b01; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b01; b = 2'b10; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b01; b = 2'b11; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b10; b = 2'b00; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b10; b = 2'b01; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b10; b = 2'b10; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b10; b = 2'b11; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b11; b = 2'b00; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b11; b = 2'b01; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b11; b = 2'b10; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    a = 2'b11; b = 2'b11; #10; $display("%b %b | %b %b %b", a, b, r, g, b_out);
    $stop;
  end
endmodule

