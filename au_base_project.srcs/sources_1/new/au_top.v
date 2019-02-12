module au_top(
    input clk,
    input rst_n,
    output[7:0] led
    );
    
    wire rst;
    
    reset_conditioner reset_conditioner(.clk(clk), .in(!rst_n), .out(rst));
    
    assign led = rst ? 8'hAA : 8'h55;
    
endmodule
