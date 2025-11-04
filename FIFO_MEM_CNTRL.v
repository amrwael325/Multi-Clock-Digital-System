module FIFO_MEM_CNTRL# (
    parameter DATA_WIDTH = 8 ,
    parameter addr = 3,
    parameter FIFO_DEPTH = 1<< addr
    
)(
    input [DATA_WIDTH-1:0] wdata,
    input wclken,
    input wrst_n,
    input [addr-1:0] waddr,
    input  wclk,
    input [addr-1:0] raddr,
    output wire [DATA_WIDTH-1:0] rdata
);  
    reg [DATA_WIDTH-1:0] FIFO_REG [FIFO_DEPTH-1:0];
    integer i;

    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            for (i=0; i<FIFO_DEPTH; i=i+1) begin
                FIFO_REG[i] <= 'd0 ;
            end
        end
        else if (wclken) begin
            FIFO_REG[waddr] <= wdata;
        end
    end

    assign rdata = FIFO_REG[raddr];
endmodule