module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire cout0,cout1,cout2,cout3;
    wire cin1,cin2,cin3;
    fa fa0(.a(x[0]),.b(y[0]),.cin(),.cout(cout0),.sum(sum[0]));
    fa fa1(.a(x[1]),.b(y[1]),.cin(cout0),.cout(cout1),.sum(sum[1]));
    fa fa2(.a(x[2]),.b(y[2]),.cin(cout1),.cout(cout2),.sum(sum[2]));
    fa fa3(.a(x[3]),.b(y[3]),.cin(cout2),.cout(cout3),.sum(sum[3]));
    fa fa4(.a(),.b(),.cin(cout3),.cout(),.sum(sum[4]));
endmodule
           module fa(input a,b,cin, output cout,sum);
               assign {cout,sum}=a+b+cin;
endmodule
