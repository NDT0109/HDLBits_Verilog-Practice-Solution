module top_module (input x, input y, output z);
    wire zia1,zib1,zia2,zib2;
    A IA1(.x(x),.y(y),.z(zia1));
    B IB1(.x(x),.y(y),.z(zib1));
    A IA2(.x(x),.y(y),.z(zia2));
    B IB2(.x(x),.y(y),.z(zib2)); 
    assign z = (zia1|zib1)^(zia2&zib2);
endmodule
module A(input x,y,output z);
    assign z = (x==1&&y==0)? 1: 0;
endmodule
module B(input x,y,output z);
    assign z = !(x^y);
endmodule