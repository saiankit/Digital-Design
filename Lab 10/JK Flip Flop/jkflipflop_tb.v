`timescale 1ns / 1ns
`include "jkflipflop.v"
module jkflipflop_tb;
reg reset = 0;
reg clk = 0;
reg j = 0;
reg k = 0;
wire q;
wire qbar;

jkflipflop dut (.clk(clk), .reset(reset), .j(j), .k(k), .q(q), .qbar(qbar));

initial begin
    j = 0;
    repeat(4)

    #200 j = ~j;
end

initial begin
    k = 0;
    repeat(8)

    #100 k = ~k;
end

initial begin
    clk = 0;
    repeat(9)

    #115 clk = ~clk;
end

initial begin
    $dumpfile("jkflipflop.vcd");
    $dumpvars(0,jkflipflop_tb);
    reset = 0;

    #100 reset = ~reset;
    #100 reset = ~reset;
end
endmodule