`include "multiplexer.v"
module full_adder(a,b,cin,sum,cout);
input a;
input b;
input cin;
output sum;
output cout;

wire [7:0] R1;
wire [7:0] R2;

assign R1 = 8'b1001_0110;
multiplexer m1(R1,{a,b,cin}, sum);
assign R2 = 8'b1110_1000;
multiplexer m2(R2,{a,b,cin}, cout);

endmodule