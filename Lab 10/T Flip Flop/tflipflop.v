`include "flipflop.v"

module tflipflop (clk,reset,t,q,qbar);
input clk, reset, t;
output q, qbar;

wire w1;

flipflop da(w1, clk, reset, q, qbar);
assign w1 = t ^ q;

endmodule