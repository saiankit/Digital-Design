`timescale 1ns / 1ns
`include "odd_parity_generator.v"
module parity_tb;
reg [2:0] in;
wire out;
parity dut (.in(in),.out(out));
initial begin
    $dumpfile("parity_graph.vcd");
    $dumpvars(0,parity_tb);
in = 3'b000;
#10;
in = 3'b001;
#10;
in = 3'b010;
#10;
in = 3'b011;
#10;
in = 3'b100;
#10;
in = 3'b101;
#10;
in = 3'b110;
#10;
in = 3'b111;
#10;
in = 3'b000;
#10;
end
endmodule