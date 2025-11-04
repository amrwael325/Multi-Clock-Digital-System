module  deserializer (
    input deser_en,
    input sampled_bit,
    input clk,
    input rst_n,
    input error_happened,
    output reg [7:0] P_DATA
);
    reg [2:0] counter;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin // this is my idea of what should happen , if error has happened , clear the data bus
            P_DATA <= 8'd0;
            counter <= 3'd0;
        end
        else if (error_happened) begin
            P_DATA <= 8'd0;
            counter <= 3'd0;
        end
        else if (deser_en) begin // if enabled input the data
            P_DATA[counter] <= sampled_bit;
            counter <= (counter == 3'd7) ? 0 : counter + 1; // check if counter == 7 , if so reset it.
        end
    end
endmodule