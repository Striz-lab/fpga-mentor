`timescale 1 ns / 100 ps


module testbench(); /* No inputs, no outputs */

reg clk = 1'b0; /* Represents clock, initial value is 0 */

always begin
    #1 clk = ~clk; /* Toggle clock every 1ns */
end

wire clk1; /* For output of tested module */

test test(.in(clk), .out(clk1)); /* Tested module instance */

/*
*   Problem 1/5:
*   add wire for invertor output
*/

/*
*   Problem 1/5:
*   add instance of invertor here
*/

initial begin
    $display("Test started...");   /* Write to console */
    #10 $finish;    /* Stop simulation after 10ns */
end

endmodule