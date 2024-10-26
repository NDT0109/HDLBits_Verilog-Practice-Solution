module top_module (
    input [2:0] a,
    output [15:0] q ); 
    always @(*)
        case (a)
        	3'b000: q = 16'h1232;
            3'b001: q = 16'haee0;
            3'b010: q = 16'h27d4;
            3'b011: q = 16'h5a0e;
            3'b100: q = 16'h2066;module top_module (
    input clk,
    input a,
    output q );
    always @(posedge clk)
        q <= !a;
endmodule

            3'b101: q = 16'h64ce;
            3'b110: q = 16'hc526;
            3'b111: q = 16'h2f19;
        endcase
endmodule
