    module DF_SYNC #(
        parameter NUM_STAGES = 2 ,
        parameter ptr_adr = 4
    )(
    input    wire                      CLK,
    input    wire                      RST,
    input    wire    [ptr_adr-1:0]   ASYNC,
    output   reg     [ptr_adr-1:0]   SYNC
    );

    reg   [NUM_STAGES-1:0] sync_reg [ptr_adr-1:0] ;

    integer i;

    always @(posedge CLK or negedge RST) 
        begin
            if(!RST)      // active low
            begin
                for (i=0; i<ptr_adr; i=i+1) begin
                    sync_reg[i] <= 'd0 ;
                end
                SYNC <= 'd0;
            end
            else
            begin
                for (i=0; i<ptr_adr; i=i+1) begin
                    sync_reg[i] <= {sync_reg[i][NUM_STAGES-2:0],ASYNC[i]}; 
                    SYNC[i] <= sync_reg[i][NUM_STAGES-1] ;
                end
            end
        end
    endmodule