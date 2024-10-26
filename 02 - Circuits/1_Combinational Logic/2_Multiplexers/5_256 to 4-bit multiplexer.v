module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    //start bit = sel*4, +: length of bit will taken(4) => start bit placed at the right side 
    //ex: sel = 0, sel*4 = 0, bit taken = 4 so => in[3:0]
    assign out = in[sel*4+: 4];
endmodule
