module top_module(
    input clk,
    input reset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=0, ON=1; 
    reg state, next_state;

    always @(*) begin
        // State transition logic
        case (state)
            1'b0:
                case(j)
                    1'b0: next_state <= OFF;
                    1'b1: next_state <= ON;
                endcase
            1'b1:
                case(k)
                    1'b0: next_state <= ON;
                    1'b1: next_state <= OFF;
                endcase
        endcase
    end

    always @(posedge clk) begin
        // State flip-flops with asynchronous reset
        if(reset)
            state <= 0;
        else 
            state <= next_state;
    end

    // Output logic
    assign out = (state == 1);

endmodule
