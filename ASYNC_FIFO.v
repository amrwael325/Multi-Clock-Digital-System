module ASYNC_FIFO #(
    parameter DATA_WIDTH = 8 ,
    parameter addr = 3,
    parameter FIFO_DEPTH = 1 << addr,
    parameter ptr_adr = addr + 1,
    parameter NUM_STAGES = 2 
)
(
    input wclk,
    input wrst_n,
    input winc,
    input rclk,
    input rinc,
    input rrst_n,
    input [DATA_WIDTH-1:0] wdata,
    output wire wfull,
    output wire rempty,
    output wire [DATA_WIDTH-1:0] rdata
);
    wire wclken;
    wire [addr:0] rq2_wptr;
    wire [addr:0] wq2_rptr;
    wire [addr-1:0] raddr;
    wire [addr-1:0] waddr;
    wire [addr:0] rptr;
    wire [addr:0] wptr;

    FIFO_MEM_CNTRL #(.DATA_WIDTH(DATA_WIDTH),.addr(addr),.FIFO_DEPTH(FIFO_DEPTH)) FIFO (
        .wdata(wdata),
        .wclken(wclken),
        .waddr(waddr),
        .wrst_n(wrst_n),
        .raddr(raddr),
        .wclk(wclk),
        .rdata(rdata)
    );

    FIFO_RD #(.addr(addr)) fifo_rd (
        .rinc(rinc),
        .rrst_n(rrst_n),
        .rclk(rclk),
        .rq2_wptr(rq2_wptr),
        .raddr(raddr),
        .rptr(rptr),
        .rempty(rempty)
    );

    FIFO_WR #(.addr(addr)) fifo_wr (
        .winc(winc),
        .wrst_n(wrst_n),
        .wclk(wclk),
        .wq2_rptr(wq2_rptr),
        .waddr(waddr),
        .wptr(wptr),
        .wfull(wfull),
        .wclken(wclken)
    );

    DF_SYNC #(.NUM_STAGES(NUM_STAGES),.ptr_adr(ptr_adr)) DF1
    (
        .CLK(rclk),
        .RST(rrst_n),
        .ASYNC(wptr),
        .SYNC(rq2_wptr)
    );

    DF_SYNC #(.NUM_STAGES(NUM_STAGES),.ptr_adr(ptr_adr)) DF2
    (
        .CLK(wclk),
        .RST(wrst_n),
        .ASYNC(rptr),
        .SYNC(wq2_rptr)
    );


endmodule