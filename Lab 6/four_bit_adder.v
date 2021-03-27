module four_bit_adder (a,b,s,c);
input [3:0] a;
input [3:0] b;
output [3:0] s;
output c;
assign {c,s} = a + b;
endmodule 