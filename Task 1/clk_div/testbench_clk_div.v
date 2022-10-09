`timescale 1 ns / 100 ps

module testbench();

reg clk = 1'b0;

always begin
    #1 clk = ~clk;
end

/*
*   Make an instance of your new module clk_div.
*   Create approprite wires to test it.
*/

initial begin
    /*
    *   Stop simulation after several cycles of your (divided) clock.
    */
end

endmodule