`timescale 1ns / 1ns
//Import the main code into the testbench
`include "2019AAPS0331H.v"

module parity_tb;

//Inputs as registers
reg A;
reg B;
reg C;
reg I;

//Ouputs as wires
wire P;

//Initialiastion
parity uut(A,B,C,I,P);

initial begin
    $dumpfile("2019AAPS0331H_tb.vcd");
    $dumpvars(0,parity_tb);
    // Uncomment a paritcular sequence of Test Bench Inputs for the required result
    // Even Parity
    A = 0;
    B = 0; 
    C = 0;
    I = 0;
    #10;
    
    A = 0;
    B = 0; 
    C = 1;
    I = 0;
    #10;

    A = 0;
    B = 1; 
    C = 0;
    I = 0;
    #10;

    A = 0;
    B = 1; 
    C = 1;
    I = 0;
    #10;

    A = 1;
    B = 0; 
    C = 0;
    I = 0;
    #10;

    A = 1;
    B = 0; 
    C = 1;
    I = 0;
    #10;

    A = 1;
    B = 1; 
    C = 0;
    I = 0;
    #10;

    A = 1;
    B = 1; 
    C = 1;
    I = 0;
    #10;
    

    // Odd Parity
    A = 0;
    B = 0; 
    C = 0;
    I = 1;
    #10;
    
    A = 0;
    B = 0; 
    C = 1;
    I = 1;
    #10;

    A = 0;
    B = 1; 
    C = 0;
    I = 1;
    #10;

    A = 0;
    B = 1; 
    C = 1;
    I = 1;
    #10;

    A = 1;
    B = 0; 
    C = 0;
    I = 1;
    #10;

    A = 1;
    B = 0; 
    C = 1;
    I = 1;
    #10;

    A = 1;
    B = 1; 
    C = 0;
    I = 1;
    #10;

    A = 1;
    B = 1; 
    C = 1;
    I = 1;
    #10;

    
    $display("Test complete");
end

endmodule