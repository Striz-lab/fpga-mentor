module display(
    input clk,
    input [15:0]data,

    output [3:0]anodes,
    output [6:0]segments
);

/*
*   Write logic for dynamic indication here.
*/

hex_to_seg hex_to_seg(.data(b), .segments(segments));

endmodule

module hex_to_seg(
    input [3:0]data,

    output reg [6:0]segments
);

always @(*) begin
    case (data)      /*ABCDEF or abcdef*/    
        4'h0: segments = 7'b1111110; 
        4'h1: segments = 7'b0110000;
        /*

        *   Write logic for missing digits (2--F) here.
        */
    endcase
end

endmodule
