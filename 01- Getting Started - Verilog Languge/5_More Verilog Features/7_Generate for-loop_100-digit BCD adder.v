module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
   genvar i;
    wire [100:0]carry;
    assign carry[0]=cin;
    generate
        for(i=0;i<100;i++)begin: loop
            bcd_fadd adder(.a(a[i*4 +:4]),.b(b[i*4+:4]),.cin(carry[i]),.cout(carry[i+1]),.sum(sum[i*4+:4]));
        end
    endgenerate
    assign cout = carry[100];
endmodule
