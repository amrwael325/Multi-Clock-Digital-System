module FIFO_WR #(
    parameter addr = 3
)(
    input winc,
    input wclk,
    input wrst_n,
    input [addr:0] wq2_rptr,
    output reg [addr:0] wptr,
    output reg [addr-1:0] waddr,
    output wire wfull,
    output wire wclken
);
    reg [addr:0] wptr_bin;
    reg [addr:0] rptr_gray;
    reg last_pulse;

    wire pulse_gen;

    
    assign pulse_gen =  winc && !last_pulse; /* To make sure winc is up for only a pulse  
    as per specs for the final system Intergration  */
    
    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            wptr_bin <= 'd0;
            last_pulse <= 'd0;
            rptr_gray <= 'd0;
            waddr <= 'd0;
            wptr <= 'd0;
        end
        else begin
            if (pulse_gen && !wfull) begin
                waddr <= wptr_bin[addr-1:0] + 1;
                wptr_bin <= wptr_bin+1;
                wptr <= (wptr_bin+1) ^ ((wptr_bin+1) >> 1);   
            end
            last_pulse <= winc;
            rptr_gray <= wq2_rptr;
        end 
    end


    assign wfull = (wptr[addr] != rptr_gray[addr]) && (wptr[addr-1] != rptr_gray[addr-1]) && (wptr[addr-2:0] == rptr_gray[addr-2:0]);
    assign wclken = !wfull && pulse_gen;
endmodule