module UART_RX(
    input RX_IN,
    input [5:0] prescale,
    input PAR_EN,
    input PAR_TYP,
    input clk,
    input rst_n,
    output wire data_valid,
    output wire error_happened,
    output wire [7:0] P_DATA
);
    /*Internal signals ( added start frame to account for back-to-back frames ) / 
    also error happened to assert to TX if the frame needs retransmisson */

    wire enable ;
    wire [3:0] bit_cnt;
    wire [4:0] edge_cnt;
    wire dat_samp_en;
    wire sampled_bit;
    wire deser_en;
    wire stp_chk_en;
    wire stp_err;
    wire strt_chk_en;
    wire strt_glitch;
    wire par_chk_en;
    wire par_err;
    wire start_frame;

    // data sampler instantiation

    data_sampling dat_samp_dut (
        .dat_samp_en(dat_samp_en),
        .edge_cnt(edge_cnt),
        .prescale(prescale),
        .RX_IN(RX_IN),
        .clk(clk),
        .rst_n(rst_n),
        .sampled_bit(sampled_bit)
    );

    // edge_bit instantiation

    edge_bit_counter edge_dut (
        .enable(enable),
        .prescale(prescale),
        .clk(clk),
        .rst_n(rst_n),
        .start_frame(start_frame),
        .bit_cnt(bit_cnt),
        .edge_cnt(edge_cnt)
    );

    // deserializer instantiation

    deserializer deserializer_dut (
        .deser_en(deser_en),
        .sampled_bit(sampled_bit),
        .clk(clk),
        .error_happened(error_happened),
        .rst_n(rst_n),
        .P_DATA(P_DATA)
    );

    // parity check instantiation

    parity_check parity_chk_dut (
        .par_chk_en(par_chk_en),
        .clk(clk),
        .rst_n(rst_n),
        .PAR_TYP(PAR_TYP),
        .PAR_EN(PAR_EN),
        .P_DATA(P_DATA),
        .sampled_bit(sampled_bit),
        .par_err(par_err)
    );

    // start check instantiation

    start_check strt_dut (
        .strt_chk_en(strt_chk_en),
        .sampled_bit(sampled_bit),
        .clk(clk),
        .rst_n(rst_n),
        .strt_glitch(strt_glitch)
    );

    // stop check instantiation

    stop_check stop_dut (
        .stp_chk_en(stp_chk_en),
        .sampled_bit(sampled_bit),
        .clk(clk),
        .rst_n(rst_n),
        .stp_err(stp_err)
    );

    // FSM instantiation

    FSM FSM_dut (
        .RX_IN(RX_IN),
        .bit_cnt(bit_cnt),
        .edge_cnt(edge_cnt),
        .PAR_EN(PAR_EN),
        .par_err(par_err),
        .strt_glitch(strt_glitch),
        .stp_err(stp_err),
        .clk(clk),
        .rst_n(rst_n),
        .dat_samp_en(dat_samp_en),
        .prescale(prescale),
        .enable(enable),
        .deser_en(deser_en),
        .data_valid(data_valid),
        .par_chk_en(par_chk_en),
        .strt_chk_en(strt_chk_en),
        .stp_chk_en(stp_chk_en),
        .error_happened(error_happened),
        .start_frame(start_frame)
    );
endmodule