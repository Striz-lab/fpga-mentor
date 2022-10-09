module top(
    input CLK,

    output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
    output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);

wire [3:0]anodes;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~anodes;
assign {DS_EN5, DS_EN6, DS_N7, DS_N8} = 4'b1111;

wire [6:0]segments;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = ~segments;

wire [15:0]data; /* Data bus */
wire clk1, clk2; /* Clocks */

/*
*   Instantiate hex display driver, 16-bit counter and two clock dividers here
*/

endmodule
