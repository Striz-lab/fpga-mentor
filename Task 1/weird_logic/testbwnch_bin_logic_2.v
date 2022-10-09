`timescale 1 ns / 100 ps


module testbench(); /* No inputs, no outputs */

reg clk = 1'b0; /* Represents clock, initial value is 0 */

always begin
    #1 clk = ~clk; /* Toggle clock every 1ns */
end

wire a = 16'b0000000011111111;
wire b = 16'b0000111100001111;
wire c = 16'b0011001100110011;
wire d = 16'b0101010101010101;
wire x;

/*
*
*add instance module here 
*
*/

initial begin
    $display("Test started...");   /* Write to console */
    #100 $finish;    /* Stop simulation after 100ns */
end

endmodule