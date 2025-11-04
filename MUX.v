module MUX (
    input[1:0] mux_sel,
    input ser_data ,
    input PAR_bit,
    output reg TX_OUT
);

    // add as local params
    
    localparam start_bit = 1'b0 ;
    localparam stop_bit = 1'b1 ; 

    always @(*) begin
            case (mux_sel)
                2'b00 : TX_OUT = start_bit ;
                2'b01 : TX_OUT = stop_bit ;
                2'b10 : TX_OUT = ser_data ;
                2'b11 : TX_OUT = PAR_bit ;
            endcase
    end


endmodule