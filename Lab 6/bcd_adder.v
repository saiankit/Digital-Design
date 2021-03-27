`include "four_bit_adder.v"

module bcd_adder (a,b,s,c);
input [3:0] a;
input [3:0] b;
output [3:0] s;
output c;

wire [3:0] sum1; // Sum from first 4 bit adder --> First Input into second 4 bit adder
wire carry; // w3 from first 4 bit adder

wire w2;
assign w2 = (sum1[3] & sum1[2]) | (sum1[3] & sum1[1]);

wire w3;
assign w3  = carry | w2;

wire [3:0] ip2;
assign ip2 = {1'b0,w3, w3, 1'b0}; // Second Input into the second 4 bit adder



four_bit_adder adder1(a,b,sum1,carry);
four_bit_adder adder2(sum1,ip2,s,c);

endmodule 
