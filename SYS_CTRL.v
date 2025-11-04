module SYS_CTRL(
    input CLK,
    input RST,
    input [15:0] ALU_OUT,
    input OUT_VALID,
    input [7:0] RdData,
    input RdData_Valid,
    input [7:0] RX_P_DATA,
    input RX_D_VLD,
    input FIFO_FULL,
    output reg WR_INC,
    output reg [7:0] WR_DATA,
    output reg [3:0] ALU_FUN,
    output reg EN,
    output reg CLK_EN,
    output reg [3:0] Address,
    output reg WrEn,
    output reg RdEn,
    output reg [7:0] WrData,
    output reg clk_div_en
);
    localparam [2:0]    IDLE = 3'b000,
                        wr_addr= 3'b001,
                        wr_data = 3'b011,
                        rd_addr = 3'b100,
                        alu_wait = 3'b110,
                        func_out = 3'b101,
                        wr_fifo = 3'b010,
                        ERROR = 3'b111;
    reg [2:0] current_state,
            next_state;
    
    reg [7:0] cmd ;
    reg input_counter;
    reg [1:0] output_counter; // 2 bits cuz i have pulse gen in wr inc , need to deassert for one cycle 
    reg [15:0] result;
    reg [3:0] Address_reg;

    // State transition

    always @(posedge CLK or negedge RST)
    begin 
        if(!RST)
            begin
                current_state <= IDLE ;
            end
        else
            begin
                current_state <= next_state ;
        end
    end

    // Next state logic

    always @(*) begin
        case (current_state)
            IDLE : begin
                if (RX_D_VLD) begin
                    case (RX_P_DATA)
                        8'hAA : begin
                            next_state = wr_addr;
                        end
                        8'hBB : begin
                            next_state = rd_addr;
                        end
                        8'hCC : begin
                            next_state = wr_data;
                        end
                        8'hDD : begin
                            next_state = func_out;
                        end
                        default : next_state = ERROR;
                    endcase
                end
                else begin
                    next_state = IDLE;
                end
            end
            wr_addr : begin
                if (RX_D_VLD) begin
                    next_state = wr_data;
                end
                else begin
                    next_state = wr_addr;
                end
            end
            wr_data : begin
                if (RX_D_VLD) begin
                    case (cmd)
                        8'hAA : begin
                            next_state = IDLE;
                        end
                        8'hCC : begin
                            next_state = (input_counter) ? func_out : wr_data;
                        end
                        default : next_state = ERROR;
                    endcase
                end
                else begin
                    next_state = wr_data;
                end
            end
            rd_addr : begin
                if (RdData_Valid) begin
                    next_state = wr_fifo;
                end
                else begin
                    next_state = rd_addr;
                end
            end
            func_out : begin
                if (RX_D_VLD) begin
                    next_state = alu_wait;
                end
                else begin
                    next_state = func_out;  
                end
            end
            alu_wait : begin
                if (OUT_VALID) begin
                    next_state = wr_fifo;
                end
                else begin
                    next_state = alu_wait;
                end
            end
            wr_fifo : begin
                if (!FIFO_FULL) begin
                    if ((cmd == 8'hCC || cmd == 8'hDD ) && (output_counter < 2)) begin
                        next_state = wr_fifo;
                    end
                    else begin
                        next_state = IDLE;
                    end
                end
                else begin
                    next_state = wr_fifo;
                end
            end
            ERROR : begin
                next_state = IDLE;
            end
        endcase
    end

    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            cmd <= 'd0 ;
            input_counter <= 0;
            output_counter <= 'd0;
            result <= 'd0;
            Address_reg <= 'd0;
        end
        else begin
            case (current_state)
                IDLE : begin
                    if (RX_D_VLD) begin
                        cmd <= RX_P_DATA ;
                        input_counter <= 0;
                        output_counter <= 0;
                    end
                end
                wr_addr : begin
                    if (RX_D_VLD) begin
                        Address_reg <= RX_P_DATA[3:0];
                    end    
                end
                wr_data : begin
                    if (RX_D_VLD && cmd == 8'hCC ) begin
                        input_counter <= !input_counter;
                    end
                end
                rd_addr : begin
                    if (RdData_Valid) begin
                        result <= {8'd0,RdData};
                    end
                end
                wr_fifo : begin
                    if (!FIFO_FULL && (cmd == 8'hCC || cmd == 8'hDD)) begin
                        output_counter <= output_counter + 1;
                    end
                end
                alu_wait : begin
                    if (OUT_VALID) begin
                        result <= ALU_OUT; 
                    end
                end
            endcase
        end
    end
    always @(*) begin

        WrEn      = 0;
        RdEn      = 0;
        WrData    = 'd0;
        Address   = Address_reg;
        ALU_FUN   = 'd0;
        EN        = 0;
        WR_INC    = 0;
        WR_DATA   = 'd0;
        CLK_EN    = 0;   
        clk_div_en= 1;   

        case (current_state)
            wr_data : begin
                if (RX_D_VLD) begin
                    WrEn = 1;
                    WrData = RX_P_DATA ;

                    if (cmd == 8'hCC) begin
                        Address = (input_counter) ? 4'h1 : 4'h0;
                    end
                    else begin
                        Address = Address_reg;
                    end
                end
                else begin
                    WrEn = 0;
                    WrData = 'd0;
                    Address = Address_reg;
                end
            end
            rd_addr : begin
                if (RX_D_VLD) begin
                    RdEn = 1;
                end 
                else begin
                    RdEn = 0;
                end
            end
            func_out : begin
                if (RX_D_VLD) begin
                    ALU_FUN = RX_P_DATA[3:0];
                    CLK_EN = 1;
                    EN = 1;
                end
                else begin
                    ALU_FUN = 'd0;
                    CLK_EN = 1;
                    EN = 1;
                end
            end
            alu_wait : begin
                CLK_EN = 1;
                EN = 1;
            end
            wr_fifo : begin
                if (!FIFO_FULL) begin
                    WR_INC = (output_counter[0] == 0);
                    if (cmd == 8'hBB) begin
                        WR_DATA =  result[7:0] ;
                    end
                    else begin
                        WR_DATA = (output_counter == 0) ? result[7:0] : result[15:8];
                    end
                end
                else begin
                    WR_INC = 0;
                    WR_DATA = result[7:0];
                end
            end
        endcase
    end
endmodule