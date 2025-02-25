`timescale 1ns / 1ps

module seven_segment_display_tb;

    logic [3:0] num;
    logic [2:0] sel;
    logic A, B, C, D, E, F, G;
    logic [7:0] anode;
    
    // Instantiate the DUT (Device Under Test)
    seven_segment_display uut (
        .num(num),
        .sel(sel),
        .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G),
        .anode(anode)
    );
    
    // Task to drive inputs
    task driver(input logic [3:0] NUM, input logic [2:0] SEL);
        num = NUM;
        sel = SEL;
        #10;
    endtask
    
    // Task to check outputs
    task monitor();
        $display("Time=%0t | num=%b | sel=%b | A=%b B=%b C=%b D=%b E=%b F=%b G=%b | anode=%b", 
                  $time, num, sel, A, B, C, D, E, F, G, anode);
    endtask
    
    // Initial test sequence
    initial begin
        $monitor("Time=%0t | num=%b | sel=%b | A=%b B=%b C=%b D=%b E=%b F=%b G=%b | anode=%b", 
                  $time, num, sel, A, B, C, D, E, F, G, anode);
        driver(4'b0000, 3'b000); monitor();
        driver(4'b0001, 3'b001); monitor();
        driver(4'b0010, 3'b010); monitor();
        driver(4'b0011, 3'b011); monitor();
        driver(4'b0100, 3'b100); monitor();
        driver(4'b0101, 3'b101); monitor();
        driver(4'b0110, 3'b110); monitor();
        driver(4'b0111, 3'b111); monitor();

        
        $stop; // End simulation
    end
    
endmodule
