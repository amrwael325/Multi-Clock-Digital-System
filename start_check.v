module start_check(
    input strt_chk_en,
    input sampled_bit,
    input clk,
    input rst_n,
    output reg strt_glitch
);  

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            strt_glitch <= 0;
        end
        else if (strt_chk_en) begin
            strt_glitch <= (sampled_bit != 0);
        end
    end
endmodule