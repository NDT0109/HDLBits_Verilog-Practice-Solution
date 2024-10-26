module top_module ();
	reg tb_clk;
    dut a(.clk(tb_clk));
    initial
        begin: clkgen
        tb_clk = 0;
        forever
            #5 tb_clk = ~tb_clk;
        end
endmodule
