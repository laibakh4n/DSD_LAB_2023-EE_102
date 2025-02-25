module RGB_test;
  logic [1:0] a, b;
  logic r, g, b_out;
  RGB vt (.a(a), .b(b), .r(r), .g(g), .b_out(b_out));

  initial begin
    // Loop through all possible values of a and b
    for (int i = 0; i < 4; i++) begin
      for (int j = 0; j < 4; j++) 
      begin
        a = i;
        b = j;
        #10; 
        $display("a=%b, b=%b | r=%b, g=%b, b_out=%b", a, b, r, g, b_out);
      end
    end

    $display("Self-test completed.");
    $stop;
  end
endmodule
