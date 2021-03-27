module majority (A,B,C,F);

    //Inputs
    input A;
    input B;
    input C;
    
    //Outputs
    output F;

    //Components
    wire w1;
    wire w2;
    wire w3;
    wire w4;
    and g1(w1,A,B);
    and g2(w2,B,C);
    and g3(w3,A,C);
    or g4(w4,w1,w2);
    or g5(F,w3,w4);

endmodule