`timescale 1ns / 1ns
`include "binarycounter.v"

module binarycounter_tb;
reg reset = 0;
reg clk = 0;
wire qa;
wire qb;

binarycounter dut (.clk(clk), .reset(reset), .qa(qa), .qb(qb));

initial begin
    clk = 0;
    repeat(12)

    #100 clk = ~clk;
end

initial begin
    $dumpfile("binarycounter.vcd");
    $dumpvars(0,binarycounter_tb);
    reset = 1;
    repeat(1)

    #200 reset = ~reset;

end
endmodule