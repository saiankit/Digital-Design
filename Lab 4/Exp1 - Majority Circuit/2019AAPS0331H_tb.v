`timescale 1ns / 1ns
//Import the main code into the testbench
`include "2019AAPS0331H.v"

module majority_tb;

//Inputs as registers
reg A;
reg B;
reg C;


//Ouputs as wires
wire F;

//Initialiastion
majority uut(A,B,C,F);

initial begin
    $dumpfile("2019AAPS0331H_tb.vcd");
    $dumpvars(0,majority_tb);
    // Uncomment a paritcular sequence of Test Bench Inputs for the required result
    // Even Parity
    A = 0;
    B = 0; 
    C = 0;
    #10;
    
    A = 0;
    B = 0; 
    C = 1;
    #10;

    A = 0;
    B = 1; 
    C = 0;
    #10;

    A = 0;
    B = 1; 
    C = 1;
    #10;

    A = 1;
    B = 0; 
    C = 0;
    #10;

    A = 1;
    B = 0; 
    C = 1;
    #10;

    A = 1;
    B = 1; 
    C = 0;
    #10;

    A = 1;
    B = 1; 
    C = 1;
    #10;

    $display("Test complete");
end

endmodule