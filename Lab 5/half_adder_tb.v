`timescale 1ns / 1ns
//Import the main code into the testbench
`include "half_adder.v"
module half_adder_verilog_tb;

reg a;
reg b;
wire s;
wire c;

half_adder dut (.a(a), .b(b), .s(s), .c(c));

initial begin

    $dumpfile("half_adder_graph.vcd");
    $dumpvars(0,half_adder_verilog_tb);

a = 0;
b = 0;
#10;

a = 0;
b = 1;
#10;

a = 1;
b = 0;
#10;

a = 1;
b = 1;
#10

a = 1;
b = 0;


end

endmodule