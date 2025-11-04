module UART_tx (
    input  [7:0] P_DATA,
    input Data_Valid,
    input clk,
    input rst_n,
    input PAR_TYP,
    input PAR_EN,
    output wire TX_OUT,
    output wire busy 
);
    // all internal signals declaration

    wire         ser_en;
    wire         par_en;
    wire         ser_done;
    wire         ser_data;
    wire         PAR_bit;
    wire  [1:0]  mux_sel;

    // Fsm instantiation

    FSM_tx fsm_dut (
        .Data_Valid(Data_Valid),
        .PAR_EN(PAR_EN),
        .ser_done(ser_done),
        .clk(clk),
        .rst_n(rst_n),
        .ser_en(ser_en),
        .par_en(par_en),
        .mux_sel(mux_sel),
        .busy(busy)
    );

    // Pairty Calculator instantiation

    Parity_Calc parity_dut (
        .P_DATA(P_DATA),
        .clk(clk),
        .Data_Valid(Data_Valid),
        .par_en(par_en),
        .PAR_TYP(PAR_TYP),
        .PAR_bit(PAR_bit)
    );

    // MUX Calculator instantiation

    MUX mux_dut (
        .mux_sel(mux_sel),
        .ser_data(ser_data),
        .PAR_bit(PAR_bit),
        .TX_OUT(TX_OUT)
    );

    // Serializer instantiation

    serializer serializer_dut (
        .P_DATA(P_DATA),
        .clk(clk),
        .rst_n(rst_n),
        .ser_en(ser_en),
        .ser_done(ser_done),
        .ser_data(ser_data)
    );

endmodule