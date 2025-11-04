module Parity_Calc(
    input  [7:0] P_DATA,
    input Data_Valid,
    input PAR_TYP,
    input par_en,
    input clk,
    output reg PAR_bit
);
    
    

    always @(posedge clk) begin
        if(Data_Valid && par_en) begin
            if (PAR_TYP) begin
                PAR_bit = ~(^P_DATA); // odd Parity
            end
            else begin
                PAR_bit = (^P_DATA); // even Parity
            end
        end
    end
endmodule