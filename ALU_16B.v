module ALU_16B #( parameter OPER_WIDTH = 8,
                    OUT_WIDTH = 2*OPER_WIDTH )
    (
    input [OPER_WIDTH-1:0] A,
    input [OPER_WIDTH-1:0] B,
    input [3:0] ALU_FUN,
    input EN,
    input RST, 
    input CLK,
    output reg [OUT_WIDTH-1:0] ALU_OUT,
    output reg OUT_VALID
    );


    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            ALU_OUT <= 'd0;
            OUT_VALID <= 0;
        end
        else if (EN) begin
            OUT_VALID <= 1;
            case (ALU_FUN)
                4'b0000 : ALU_OUT <= A + B ; // Addition
                4'b0001 : ALU_OUT <= A - B ; // Subtraction
                4'b0010 : ALU_OUT <= A * B ; // Multiplication
                4'b0011 : ALU_OUT <=  (B != 0) ? A / B : 'b0 ; // Division
                4'b0100 : ALU_OUT <= A & B ; // And
                4'b0101 : ALU_OUT <= A | B ; // Or
                4'b0110 : ALU_OUT <= ~(A & B) ; // NAND
                4'b0111 : ALU_OUT <= ~(A | B) ; // NOR
                4'b1000 : ALU_OUT <= A ^ B ; // XOR
                4'b1001 : ALU_OUT <= ~(A ^ B) ; // XNOR
                4'b1010 : begin                 // A = b case
                if (A == B) 
                    ALU_OUT <= 'd1;
                else
                    ALU_OUT <= 'd0;
                end
                4'b1011 : begin                 // A > b case
                if (A > B) 
                    ALU_OUT <= 'd2;
                else
                    ALU_OUT <= 'd0;
                end
                4'b1100 : begin                 // A < b case
                if (A < B) 
                    ALU_OUT <= 'd3;
                else
                    ALU_OUT <= 'd0;
                end
                4'b1101 : ALU_OUT <= A >> 1 ; // shift right
                4'b1110 : ALU_OUT <= A << 1 ; // shift left
                4'b1111 : ALU_OUT <= 'b0;
                default : ALU_OUT <= 'b0;  // default case
            endcase
        end
    end


endmodule