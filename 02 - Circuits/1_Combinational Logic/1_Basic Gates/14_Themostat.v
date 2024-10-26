module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    assign heater = (mode==1&&too_cold==1)?1'b1:1'b0;
    assign aircon = (mode==0&&too_hot==1)?1'b1:1'b0;
    assign fan = (heater==0&&aircon==0&&fan_on==0)?1'b0:1'b1;
endmodule
