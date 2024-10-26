module top_module ();
reg clk,reset,t,q;
    tff ff(.clk(clk),.reset(reset),.t(t),.q(q));
    always begin: clkgen;
    #5;
    clk=!clk;
    end
    initial begin
    clk = 0;
    t = 0;
    reset =1;
    #10;
    reset =0;
    t = 1;
    
    end
endmodule
