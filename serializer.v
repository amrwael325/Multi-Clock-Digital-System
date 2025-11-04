module serializer (
    input [7:0] P_DATA,
    input ser_en,
    input clk,
    input rst_n,
    output reg ser_done,
    output reg ser_data
);
    reg [7:0] Register ;
    reg [3:0] Counter ;

    

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Register <= 'd0;
            Counter <= 'd0;
            ser_done <= 0;
            ser_data <= 1'b1; // idle state 
        end
        else if (!ser_en) begin
            Counter <= 'd0;
            ser_done <= 0;
            ser_data <= 'd1; // idle state
        end
        else begin
            ser_done <= 0; 
            if (Counter == 0) begin
                Register <= P_DATA;   // Load into register on first count , in case data changes still save same input
                ser_data <= P_DATA[0]; // output first bit and increment counter on the same clock cycle
                Counter <= Counter + 1;
            end
            else if (Counter <= 7) begin
                ser_data <= Register[Counter]; 
                Counter <= (Counter == 7) ? 0 : Counter + 1; // if equal 7 then reset counter
                ser_done <= (Counter == 7); // if equal 7 then assert done 
            end
        end
    end
endmodule