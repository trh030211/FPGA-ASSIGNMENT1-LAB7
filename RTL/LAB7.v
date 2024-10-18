module LAB7 (
    input A,  // input A
    input B,  // input B
    output LT,  // A<B
    output EQ,  // A=B
    output GT   // A>B
);
    assign LT = (A < B) ? 1 : 0;
    assign EQ = (A == B) ? 1 : 0;
    assign GT = (A > B) ? 1 : 0;
endmodule
