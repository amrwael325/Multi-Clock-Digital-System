module FSM(
    input RX_IN,
    input [3:0] bit_cnt,
    input [4:0] edge_cnt,
    input PAR_EN,
    input par_err,
    input strt_glitch,
    input stp_err,
    input clk,
    input rst_n,
    input [5:0] prescale,
    output reg dat_samp_en,
    output reg enable,
    output reg deser_en,
    output reg data_valid,
    output reg par_chk_en,
    output reg strt_chk_en,
    output reg stp_chk_en,
    output reg error_happened,
    output reg start_frame
);


localparam [2:0]    IDLE = 3'b000,
                    Start= 3'b001,
                    Transmisson = 3'b011,
                    Parity = 3'b111,
                    Stop = 3'b110,
                    Error = 3'b100;
    
    reg [2:0] current_state,
            next_state;
    
    wire last_edge = (edge_cnt == prescale - 1); 
    
    // State transition

    always @(posedge clk or negedge rst_n)
    begin 
        if(!rst_n)
            begin
                current_state <= IDLE ;
            end
        else
            begin
                current_state <= next_state ;
        end
    end
    
    always @(posedge clk or negedge rst_n) // to account for back to back frames happening 
    begin
        if(!rst_n)
            begin
                start_frame <= 0 ;
            end
        else if (next_state == Start && current_state != Start && last_edge)
            begin
                start_frame <= 1 ;
        end
        else begin
            start_frame <= 0 ;
        end
    end
    // states logic 

    always @(*) begin
        case (current_state)
            IDLE : begin
                if(!RX_IN) begin
                    next_state = Start;
                end
                else begin
                    next_state = IDLE;
                end
            end
            Start : begin
                if (strt_glitch) begin
                    next_state = Error;
                end
                else if (last_edge) begin
                    next_state = Transmisson;
                end
                else begin
                    next_state = Start;
                end
            end
            Transmisson : begin
                if(last_edge && bit_cnt == 8)
                    if (PAR_EN) begin
                        next_state = Parity ;
                    end
                    else begin
                        next_state = Stop;
                    end
                else begin
                    next_state = Transmisson;
                end
            end
            Parity : begin
                if(last_edge) begin
                    if(par_err) begin
                        next_state = Error;
                    end
                    else begin
                        next_state = Stop;
                    end
                end
                else begin
                    next_state = Parity;
                end
            end
            Stop : begin
                if (last_edge) begin
                    if(stp_err) begin
                        next_state = Error;
                    end
                    else if (!RX_IN) begin
                        next_state = Start;
                    end
                    else begin
                        next_state = IDLE;
                    end
                end
                else begin
                    next_state = Stop;
                end
            end
            Error : begin
                if (last_edge) begin
                    next_state = IDLE;
                end
                else begin
                    next_state = Error;
                end
            end
            default : next_state = IDLE;
        endcase
    end

     //output logic
    always @(*) begin
        case (current_state)
            IDLE : begin
                dat_samp_en = 0 ;
                enable = 0 ;
                deser_en = 0;
                data_valid = 0 ;
                par_chk_en = 0 ;
                strt_chk_en = 0 ;
                stp_chk_en = 0;
                error_happened = 0;
            end
            Start : begin
                dat_samp_en = 1;
                enable = 1 ;
                deser_en = 0;
                data_valid = 0 ;
                par_chk_en = 0 ;
                strt_chk_en = 1 ;
                stp_chk_en = 0;
                error_happened = 0;
            end
            Transmisson : begin
                dat_samp_en = 1;
                enable = 1 ;
                if (last_edge) begin
                    deser_en = 1;
                end
                else begin
                    deser_en = 0;
                end
                data_valid = 0 ;
                par_chk_en = 0 ;
                strt_chk_en = 0 ;
                stp_chk_en = 0;
                error_happened = 0;
            end
            Parity : begin
                dat_samp_en = 1;
                enable = 1 ;
                deser_en = 0;
                data_valid = 0 ;
                par_chk_en = 1 ;
                strt_chk_en = 0 ;
                stp_chk_en = 0;
                error_happened = 0;
            end
            Stop : begin
                dat_samp_en = 1;
                enable = 1 ;
                deser_en = 0;
                par_chk_en = 0 ;
                strt_chk_en = 0 ;
                stp_chk_en = 1;
                error_happened = 0;

                if(last_edge && !stp_err && !par_err) begin
                    data_valid = 1;
                end
                else begin
                    data_valid = 0;
                end
            end
            Error : begin
                dat_samp_en = 0 ;
                enable = 1 ;
                deser_en = 0;
                data_valid = 0 ;
                par_chk_en = 0 ;
                strt_chk_en = 0 ;
                stp_chk_en = 0;
                error_happened = 1; 
            end
            default : begin
                dat_samp_en = 0 ;
                enable = 0 ;
                deser_en = 0;
                data_valid = 0 ;
                par_chk_en = 0 ;
                strt_chk_en = 0 ;
                stp_chk_en = 0; 
                error_happened = 0;
            end
        endcase
    end
endmodule