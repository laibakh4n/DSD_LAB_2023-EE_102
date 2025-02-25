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
        
        // Test all possible num values with different sel values
        for (int i = 0; i < 16; i++) begin
            for (int j = 0; j < 8; j++) begin
                driver(i, j); monitor();
            end
        end
        
        $stop; // End simulation
    end
    
endmodule
