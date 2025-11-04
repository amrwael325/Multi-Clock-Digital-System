module stop_check(
    input stp_chk_en,
    input clk,
    input rst_n,
    input sampled_bit,
    output reg stp_err
);  

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            stp_err <= 0;
        end
        else if (stp_chk_en) begin
            stp_err <= (sampled_bit != 1);
        end
    end
endmodule