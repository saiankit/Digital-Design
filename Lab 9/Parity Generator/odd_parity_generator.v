`include "decoder.v"

module parity (in,out);
input [2:0] in;
output out;
wire [7:0] temp;
decoder a(in,temp);
assign out = ((temp[0] | temp[3]) | (temp[5] | temp[6]));

endmodule 
