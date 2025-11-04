module edge_bit_counter(
    input enable,
    input [5:0] prescale,
    input clk,
    input rst_n,
    input start_frame ,
    output reg [3:0] bit_cnt,
    output reg [4:0] edge_cnt
);  
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            bit_cnt <= 4'd0;
            edge_cnt <= 5'd0;
        end
        else if (start_frame) begin // this was made to account for back to back data without going to idle state in fsm
            bit_cnt <= 4'd0;
            edge_cnt <= 5'd0;
        end
        else if (enable) begin
            if (edge_cnt == prescale - 1) begin 
                bit_cnt <= bit_cnt + 1;
                edge_cnt <= 5'd0;
            end
            else begin
                edge_cnt <= edge_cnt + 1;
            end
        end
        else begin
            bit_cnt <= 4'd0;
            edge_cnt <= 5'd0;
        end
    end
endmodule