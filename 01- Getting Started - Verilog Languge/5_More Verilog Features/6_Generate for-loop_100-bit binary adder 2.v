module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    wire [99:0]carry;
    fa fa0(.a(a[0]),.b(b[0]),.cin(cin),.cout(carry[0]),.sum(sum[0]));
    genvar i;
    generate 
        for(i=1;i<100;i++)begin: loop
            fa fa0(.a(a[i]),.b(b[i]),.cin(carry[i-1]),.sum(sum[i]),.cout(carry[i]));
        end
    endgenerate     
    assign cout = carry;
endmodule
        module fa(input a,b,cin,output cout,sum);
            assign {cout,sum}=a+b+cin;
        endmodule
        
