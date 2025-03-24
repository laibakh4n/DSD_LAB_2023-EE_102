`timescale 1ns / 1ps

module seven_seg_display_tb;

    logic clk, reset, write;
    logic [3:0] num;
    logic [2:0] sel;
    logic [6:0] seg;
    logic [7:0] an;

    // Instantiate the DUT
    seven_seg_display DUT (
        .clk(clk),
        .reset(reset),
        .write(write),
        .num(num),
        .sel(sel),
        .seg(seg),
        .an(an)
    );

    // Clock Generation (100 MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns period -> 100MHz
    end

    // Stimulus
    initial begin
        // Initialize signals
        reset = 1;
        write = 0;
        num = 4'b0000;
        sel = 3'b000;
        
        #100 reset = 0;  // Release reset after 100ns

        // Write values to registers
        @(posedge clk); write = 1; sel = 3'b000; num = 4'h1; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b001; num = 4'h3; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b010; num = 4'h5; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b011; num = 4'h7; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b100; num = 4'h8; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b101; num = 4'hE; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b110; num = 4'hA; @(posedge clk);
        @(posedge clk); write = 1; sel = 3'b111; num = 4'hF; @(posedge clk);

        write = 0;  // Stop writing

        // Read stored values immediately
        sel = 3'b000;
        repeat (8) begin
            #5; // Small delay for visibility
            $display("Time=%0t | sel=%b | seg=%b | an=%b", $time, sel, seg, an);
            sel = sel + 1;
        end

        #50;
        $stop;
    end

endmodule
