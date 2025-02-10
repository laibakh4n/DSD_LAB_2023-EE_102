`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 12:10:39 PM
// Design Name: 
// Module Name: laibalab2_tb
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


module logic_circuit_tb;
    reg a, b, c;   
    wire x, y;     

    logic_circuit vt (
        .a(a),
        .b(b),
        .c(c),
        .x(x),
        .y(y)
    );
    initial begin
        $display("Time\tc\ta\tb\tx\ty");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, c, a, b, x, y);
        c = 0; a = 0; b = 0; #10;
        c = 0; a = 0; b = 1; #10;
        c = 0; a = 1; b = 0; #10;
        c = 0; a = 1; b = 1; #10;
        c = 1; a = 0; b = 0; #10;
        c = 1; a = 0; b = 1; #10;
        c = 1; a = 1; b = 0; #10;
        c = 1; a = 1; b = 1; #10;
        $stop;
    end
endmodule
