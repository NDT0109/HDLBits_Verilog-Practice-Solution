module top_module( 
    input [99:0] in,
    output [99:0] out
);
	integer count;
    always @(*) begin
        for(count = 0; count<100; count++)
            out[count] = in[99-count];
    end
endmodule
