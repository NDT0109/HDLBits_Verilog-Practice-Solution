module top_module( 
    input [2:0] in,
    output [1:0] out );
    always@(*)begin
        case(in)
        	3'b000: out = 0;
            3'b001: out = 1;
            3'b010: out = 1;
            3'b011: out = 2;
            3'd100: out = 1;
            3'd101: out = 2;
            3'd110: out = 2;
            3'd111: out = 3;
            default: out = 0;
        endcase
    end
endmodule
