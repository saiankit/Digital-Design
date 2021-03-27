module parity (A,B,C,I,P);

    //Inputs
    input A;
    input B;
    input C;
    input I;

    //Outputs
    output P;

    //Components
    wire w1;
    wire w2;
    xor g1(w1,A,B);
    xor g2(w2,w1,C);
    xor g3(P,I,w2);

endmodule