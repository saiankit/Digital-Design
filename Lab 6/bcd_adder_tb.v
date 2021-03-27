`timescale 1ns / 1ns
`include "bcd_adder.v"
module bcd_adder_tb;

reg [3:0] a;
reg [3:0] b;
wire [3:0] s;
wire c;

bcd_adder dut (.a(a), .b(b), .s(s), .c(c));

initial begin

    $dumpfile("bcd_adder_graph.vcd");
    $dumpvars(0,bcd_adder_tb);


a = 4'b0000;
b = 4'b0000;
#10;

a = 4'b0001;
b = 4'b0001;
#10;

a = 4'b0010;
b = 4'b0010;
#10;

a = 4'b0011;
b = 4'b0011;
#10;

a = 4'b0100;
b = 4'b0100;
#10;

a = 4'b0101;
b = 4'b0101;
#10;

a = 4'b0110;
b = 4'b0110;
#10;

a = 4'b0111;
b = 4'b0111;
#10;


a = 4'b1000;
b = 4'b1000;
#10;

end

endmodule