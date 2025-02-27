module top_module(
    input clk,
    input reset,    // Asynchronous reset to state B
    input in,
    output out);//  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        // State transition logic
                case (state)
                    A: if(in)
                        next_state = A;
                    else 
                        next_state = B;
                    B: if(in)
                        next_state = B;
                    else 
                        next_state = A;
                    default: ;
                endcase
    end

    always @(posedge clk) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if(reset)
            state <= B;
        else
            state <= next_state;
    end

    // Output logic
    assign out = (state)? B : A;

endmodule
