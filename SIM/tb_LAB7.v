  module tb_LAB7;
    reg A, B;
    wire LT, EQ, GT;

    LAB7 uut (
        .A(A),
        .B(B),
        .LT(LT),
        .EQ(EQ),
        .GT(GT)
    );

    initial begin
        $dumpfile("tb_LAB7.vcd");
        $dumpvars(0, tb_LAB7);

        A = 0; B = 0;
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;
        #10 $finish;
    end
endmodule
