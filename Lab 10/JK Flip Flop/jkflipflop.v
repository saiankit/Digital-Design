`include "flipflop.v"

module jkflipflop (clk,reset,j,k,q,qbar);
input clk, reset, j, k;
output q, qbar;

wire w1, w2, w3, w4;

assign w4 = ~k;
assign w1 = w2 | w3;
assign w2 = qbar & j;
assign w3 = w4 & q;

flipflop da(w1, clk, reset, q, qbar);

endmodule