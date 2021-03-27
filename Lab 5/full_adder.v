`include "half_adder.v"

module full_adder (a,b,cin,sum,cout);

input a, b, cin;
output cout, sum;


wire s1, c1, c2;

half_adder ha1(a,b,s1,c1);
half_adder ha2(s1,cin,sum,c2);

or o1(cout,c1,c2);

endmodule