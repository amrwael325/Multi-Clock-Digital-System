module parity_check(
    input par_chk_en,
    input PAR_TYP,
    input clk,
    input rst_n,
    input [7:0] P_DATA,
    input sampled_bit,
    input PAR_EN,
    output reg par_err
);  
    reg PAR_bit;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n ) begin // added to account for parity errors and after in case of no parities
            par_err <=0;
        end
        else if (!PAR_EN) begin
            par_err <= 0;
        end
        else if (par_chk_en) begin
            if (PAR_TYP) begin
                PAR_bit = ~(^P_DATA); // odd Parity
            end
            else begin
                PAR_bit = (^P_DATA); // even Parity
            end
            par_err <= (sampled_bit != PAR_bit);
        end
    end
endmodule