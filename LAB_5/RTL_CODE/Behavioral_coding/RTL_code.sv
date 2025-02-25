`timescale 1ns / 1ps
module seven_segment_display( 
             input logic [3:0] num, 
             input logic [2:0] sel,  
             output logic A,B,C,D,E,F,G,
             output logic [7:0] anode);

always @(*) begin

    case (num)
                4'b0000 : {A,B,C,D,E,F,G} = 7'b0000001;
                4'b0001 : {A,B,C,D,E,F,G} = 7'b1001111;
                4'b0010 : {A,B,C,D,E,F,G} = 7'b0010010;
                4'b0011 : {A,B,C,D,E,F,G} = 7'b0000110;
                4'b0100 : {A,B,C,D,E,F,G} = 7'b1001100;
                4'b0101 : {A,B,C,D,E,F,G} = 7'b0100100;
                4'b0110 : {A,B,C,D,E,F,G} = 7'b0100000;
                4'b0111 : {A,B,C,D,E,F,G} = 7'b0001111;
                4'b1000 : {A,B,C,D,E,F,G} = 7'b0000000;
                4'b1001 : {A,B,C,D,E,F,G} = 7'b0000100;
                4'b1010 : {A,B,C,D,E,F,G} = 7'b0001000;
                4'b1011 : {A,B,C,D,E,F,G} = 7'b1100000;
                4'b1100 : {A,B,C,D,E,F,G} = 7'b0110001;
                4'b1101 : {A,B,C,D,E,F,G} = 7'b1000010;
                4'b1110 : {A,B,C,D,E,F,G} = 7'b0110000;
                4'b1111 : {A,B,C,D,E,F,G} = 7'b0111000;
    endcase
end

// Behavioral coding for anode outputs
always @(*) begin
    case (sel)
        3'b000: anode = 8'b11111110;
        3'b001: anode = 8'b11111101;
        3'b010: anode = 8'b11111011;
        3'b011: anode = 8'b11110111;
        3'b100: anode = 8'b11101111;
        3'b101: anode = 8'b11011111;
        3'b110: anode = 8'b10111111;
        3'b111: anode = 8'b01111111;
        default: anode = 8'b11111111; 
    endcase
end

endmodule


