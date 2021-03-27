`include "flipflop.v"

module binarycounter (clk,reset,qa,qb);

input in, clk, reset;
output qa, qb;

wire w1, w2, w3, w4, w5, w6;

flipflop da(w1, clk, reset, w3, w4);
flipflop db(w2, clk, reset, w5, w6);

assign w1 = w4;
assign w2 = w3 ^ w5;

assign qa = w3;
assign qb = w5;

endmodule