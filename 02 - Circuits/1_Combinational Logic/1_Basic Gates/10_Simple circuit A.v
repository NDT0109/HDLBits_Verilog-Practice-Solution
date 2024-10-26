module top_module (input x, input y, output z);
    assign z = (x==1&&y==0)? 1: 0; 
endmodule
