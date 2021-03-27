`timescale 1ns / 1ns
`include "full_adder.v"
module full_adder_tb;
reg a;
reg b;
reg cin;
wire sum;
wire cout;
full_adder dut (.a(a),.b(b), .cin(cin), .sum(sum), .cout(cout));
initial begin
    $dumpfile("full.vcd");
    $dumpvars(0,full_adder_tb);
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