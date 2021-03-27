`timescale 1ns / 1ns
//Import the main code into the testbench
`include "full_adder.v"
module full_adder_verilog_tb;

reg a;
reg b;
reg cin;
wire sum;
wire cout;


full_adder uut(a,b,cin,sum,cout);
initial begin

    $dumpfile("full_adder_graph.vcd");
    $dumpvars(0,full_adder_verilog_tb);

a = 0;
b = 0;
cin = 0;
#10;

a = 0;
b = 0;
cin = 1;
#10;

a = 0;
b = 1;
cin = 0;
#10;

a = 0;
b = 1;
cin = 1;
#10;

a = 1;
b = 0;
cin = 0;
#10;

a = 1;
b = 0;
cin = 1;
#10;

a = 1;
b = 1;
cin = 0;
#10;

a = 1;
b = 1;
cin = 1;
#10;

a = 1;
b = 0;
cin = 0;


end

endmodule