module top_module();
reg tb_clk,in,out;
    reg [2:0] s;
    q7 a(.clk(tb_clk),.in(in),.s(s),.out(out));
	always 
    begin: clk_gen
        #5;
        tb_clk = !tb_clk;
    end
        
    initial begin
    	tb_clk = 0;
        in = 0;
        s = 2'd2;
		#10;
        s = 3'd6;
        #10;
        in = 1;
        s = 2'd2;
        #10;
        in = 0;
        s = 3'd7;
        #10;
        in =1;
        s = 0;
        #30;
        in = 0;
    end
    
endmodule
