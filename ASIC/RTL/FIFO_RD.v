module FIFO_RD #(
    parameter addr = 3
) (
    input rinc,
    input rrst_n,
    input rclk,
    input [addr:0] rq2_wptr,
    output wire [addr-1:0] raddr,
    output reg [addr:0] rptr,
    output wire rempty
);
    reg [addr:0] rptr_bin;
    reg [addr:0] wptr_gray;

    wire [addr:0] rptr_bin_next = rptr_bin + 1'd1; // Match the FIFO_WR

    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            rptr_bin <= 'd0;
            wptr_gray <= 'd0;
            rptr <= 'd0;
        end
        else begin
            if (rinc && !rempty) begin
                rptr_bin <= rptr_bin_next;
                rptr <= (rptr_bin_next) ^ ((rptr_bin_next) >> 1);
            end
            wptr_gray <= rq2_wptr;
        end 
    end

    assign rempty = (wptr_gray == rptr);
    assign raddr = rptr_bin[addr-1:0];
endmodule