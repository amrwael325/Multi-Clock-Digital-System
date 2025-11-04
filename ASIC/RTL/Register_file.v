module Register_file #(
    parameter Width =8 , Depth = 16 ,Addr = 4) 
    (
    input  [Width-1:0] WrData,
    input  [Addr-1:0]Address,
    input  WrEn,
    input  RdEn,
    input  CLK,
    input  RST,
    output reg [Width-1:0] RdData,
    output reg RdData_VLD,
    output wire [Width-1:0] REG0,
    output wire [Width-1:0] REG1,
    output wire [Width-1:0] REG2,
    output wire [Width-1:0] REG3
    );
    
    integer i;
    reg [Width-1:0] Reg_file [Depth-1:0];

    always @(posedge CLK or negedge RST) begin
            if (!RST) begin
                RdData_VLD <= 1'b0;
                RdData <= 'b0;
                for (i = 0 ; i < Depth; i=i+1 ) begin
                    if (i==2) begin
                        Reg_file[i] <= 'b100000_01;
                    end
                    else if (i==3) begin
                        Reg_file[i] <= 'b0010_0000;
                    end
                    else begin
                        Reg_file[i] <= 'b0;
                    end
                end
            end
            else begin
                if (WrEn && !RdEn) begin  // Write only when enable is high
                    Reg_file[Address] <= WrData;
                    RdData <= 'b0;
                end
                else if (RdEn && !WrEn) begin  // Read only when enable is high
                    RdData <= Reg_file[Address];
                    RdData_VLD <= 1'b1;
                end
                else begin
                    RdData_VLD <= 1'b0;
                end
            end  // else do Nothing 
    end
    assign REG0 = Reg_file[0];
    assign REG1 = Reg_file[1];
    assign REG2 = Reg_file[2];
    assign REG3 = Reg_file[3];
endmodule