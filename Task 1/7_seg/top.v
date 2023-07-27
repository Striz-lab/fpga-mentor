module top(
    input CLK,

    output DS_EN1, DS_EN2, DS_EN3, DS_EN4, DS_EN5, DS_EN6, DS_EN7, DS_EN8,
    output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);

wire [15:0]data = 16'h1234; /* Data to display */
wire [3:0]anodes;
assign {DS_EN4, DS_EN3, DS_EN2, DS_EN1} = ~anodes;
assign {DS_EN5, DS_EN6, DS_N7, DS_N8} = 4'b1111;


wire [6:0]segments;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = ~segments;

/*
*   Make an instance of clock divider here.
*   Connect CLK to the input.
*/


/*
*   Make an instance of hex display driver (hex_display) here.
*   Connect 'anodes', 'segments', 'data' to corresponding wires in current
*   module.
*/

endmodule
