`timescale 1ns / 1ps
module RGB_tb;
    logic [1:0] A_in, B_in;
    logic R_out, G_out, B_out;
    RGB uut (
        .a(A_in),
        .b(B_in),
        .r(R_out),
        .g(G_out),
        .b_out(B_out)
    );
   
    task drive_input(input logic [1:0] A_val, B_val);
        begin
            A_in = A_val;
            B_in = B_val;
            #10; // Wait for outputs to settle
        end
    endtask
    task check_output();
        logic expected_R, expected_G, expected_B;
        
        begin
            // Compute expected outputs based on equations
            expected_R = (~B_in[1] & ~B_in[0]) | (~B_in[1] & A_in[0]) | (~B_in[1] & A_in[1]) | (~B_in[0] & A_in[1]) | (A_in[1] & A_in[0]);
            expected_G = (~A_in[1] & ~A_in[0]) | (~A_in[1] & B_in[0]) | (~A_in[1] & B_in[1]) | (B_in[1] & ~A_in[0]) | (B_in[1] & B_in[0]);
            expected_B = (~B_in[1] & A_in[1]) | (B_in[1] & ~A_in[1]) | (~B_in[0] & A_in[0]) | (B_in[0] & ~A_in[0]);

            // Compare actual vs expected results
            if ((R_out !== expected_R) || (G_out !== expected_G) || (B_out !== expected_B)) begin
                $display("ERROR: A=%b, B=%b | Expected RGB=%b%b%b, Got RGB=%b%b%b", 
                         A_in, B_in, expected_R, expected_G, expected_B, R_out, G_out, B_out);
            end else begin
                $display("PASS: A=%b, B=%b -> RGB = %b%b%b", A_in, B_in, R_out, G_out, B_out);
            end
        end
    endtask
    initial begin
        A_in = 2'b00;
        B_in = 2'b00;
        #5; 

        $display("Starting test...");
        for (int i = 0; i < 4; i++) begin
            for (int j = 0; j < 4; j++) begin
                drive_input(i, j);
                check_output();
            end
        end
        $display("Test completed.");
        $stop;
    end
endmodule


