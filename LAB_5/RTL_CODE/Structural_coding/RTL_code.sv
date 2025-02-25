`timescale 1ns / 1ps

module seven_segment_display(
    input wire A, B, C, D,   
    input wire  X, Y, Z,   
    output wire [6:0] segment,    
    output wire [7:0] anode       
);

    assign segment[0] = (~A & ~B & ~C & D )| (~A & B & ~C & ~D)|(A & ~B & C & D ) | (A & B & ~C & D);
    assign segment[1] = (~A & B & ~C & D) | (A & C & D) | (B & C &~D) | (A & B & ~D);
    assign segment[2] = (A & B & C) | (A & B & ~C & ~D) | (~A & ~B & C & ~D);
    assign segment[3] = (~A & ~C & (B ^ D)) | (B & C & D) | (A & ~B & C & ~D);
    assign segment[4] = (~A & D) | (~A & B & ~C) | ( ~B & ~C & D);
    assign segment[5] = (~A & ~B & D) | (~A & ~B & C) | ( ~A & C & D) | (A & B & ~C & D);
    assign segment[6] = (~A & ~B & ~C) | (A & B & ~C & ~D) | ( ~A & B & C & D);
    
    assign anode[0] = ( X | Y | Z );
    assign anode[1] = ( X | Y | ~Z );
    assign anode[2] = ( X | ~Y | Z );
    assign anode[3] = ( X | ~Y | ~Z );
    assign anode[4] = ( ~X | Y | Z );
    assign anode[5] = ( ~X | Y | ~Z );
    assign anode[6] = ( ~X | ~Y | Z );
    assign anode[7] = ( ~X | ~Y | ~Z );
endmodule
