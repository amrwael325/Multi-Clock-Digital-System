module UART(
    input TX_CLK,
    input [7:0] TX_IN_P,
    input TX_IN_V,
    input RST,
    input RX_IN_S,
    input [5:0] prescale,
    input RX_CLK,
    input PAR_TYP,
    input PAR_EN,
    output wire TX_OUT_S,
    output wire TX_OUT_V,
    output wire [7:0] RX_OUT_P,
    output wire RX_OUT_V,
    output wire RX_Error
);

    UART_tx Uart_tx (
        .clk(TX_CLK),
        .Data_Valid(TX_IN_V),
        .P_DATA(TX_IN_P),
        .rst_n(RST),
        .PAR_TYP(PAR_TYP),
        .PAR_EN(PAR_EN),
        .TX_OUT(TX_OUT_S),
        .busy(TX_OUT_V)
    );

    UART_RX uart_rx (
        .clk(RX_CLK),
        .prescale(prescale),
        .PAR_TYP(PAR_TYP),
        .PAR_EN(PAR_EN),
        .rst_n(RST),
        .RX_IN(RX_IN_S),
        .data_valid(RX_OUT_V),
        .error_happened(RX_Error),
        .P_DATA(RX_OUT_P)
    );


endmodule