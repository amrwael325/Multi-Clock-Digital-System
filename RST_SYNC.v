module RST_SYNC #(parameter NUM_STAGES = 2)
(
    input RST,
    input CLK,
    output reg SYNC_RST
);
    integer i ;
    reg [NUM_STAGES-1:0] rst_reg;

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            rst_reg <= 'd0;
        end
        else begin
            rst_reg <= {rst_reg[NUM_STAGES-2:0],1'b1};
        end
    end

    always @(*) begin
        SYNC_RST = rst_reg[NUM_STAGES-1];
    end

endmodule