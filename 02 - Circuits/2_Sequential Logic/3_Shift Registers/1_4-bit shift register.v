module top_module(
    input clk,
    input areset,  // async active-high reset to zero
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q); 
    always @(posedge clk or posedge areset)
        if(areset)
            q <= 0;
    	else begin
            if(load)
                q <= data;
            else begin
                if (ena)
                q <= q>>1;
               
            end
        end
endmodule
