module top_module (input a, input b, input c, output out);//
    wire outand;
    andgate inst1 (outand, a, b, c,1'b1,1'b1);
    assign out = !outand;
endmodule
