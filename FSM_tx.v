module FSM_tx (
    input Data_Valid,
    input PAR_EN,
    input ser_done,
    input clk,
    input rst_n,
    output reg ser_en,
    output reg [1:0] mux_sel,
    output reg par_en,
    output reg busy
);
    localparam [2:0] IDLE = 3'b000,
                    Start= 3'b001,
                    Transmisson = 3'b011,
                    Parity = 3'b111,
                    Stop = 3'b110;
    
    reg [2:0] current_state,
            next_state;
    
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

    // next states logic 
    always @(*) begin
        case (current_state)
            IDLE : begin
                if(Data_Valid && !busy) 
                    next_state = Start;
                else 
                    next_state = IDLE;
            end
            Start : begin
                next_state = Transmisson;
            end
            Transmisson : begin
                if (ser_done && PAR_EN) 
                    next_state = Parity;
                else if (ser_done) 
                    next_state = Stop;
                else
                    next_state = Transmisson;
            end
            Parity : begin
                next_state = Stop ;
            end
            Stop : begin
                next_state = IDLE ;
            end
            default : next_state = IDLE;
        endcase
    end

    //output logic

    always @(*) begin
        case (current_state)
            IDLE : begin
                mux_sel = 2'b01;
                busy = 0;
                ser_en = 0;
                par_en = 1;
            end
            Start : begin
                mux_sel = 2'b00;
                busy = 1;
                ser_en = 1;
                par_en = 1;
            end
            Transmisson : begin
                mux_sel = 2'b10;
                busy = 1;
                ser_en = 1;
                par_en = 0;
            end
            Parity : begin
                mux_sel = 2'b11;
                busy = 1;
                ser_en = 0;
                par_en = 0;
            end
            Stop : begin
                mux_sel = 2'b01;
                busy = 1;
                ser_en = 0;
                par_en = 0;
            end
            default : begin
                mux_sel = 2'b01;
                busy = 0;
                ser_en = 0;  
                par_en = 0; 
            end
        endcase
    end

endmodule