`timescale 1ns / 1ns
`include "tflipflop.v"
module tflipflop_tb;
reg reset = 0;
reg clk = 0;
reg t = 0;
wire q;
wire qbar;

tflipflop dut (.clk(clk), .reset(reset), .t(t), .q(q), .qbar(qbar));

initial begin
    t = 0;
    repeat(12)

    #215 t = ~t;
end

initial begin
    clk = 0;
    repeat(12)

    #100 clk = ~clk;
end

initial begin
    $dumpfile("tflipflop.vcd");
    $dumpvars(0,tflipflop_tb);
    reset = 0;

    #100 reset = ~reset;
    #100 reset = ~reset;
end
endmodule