module data_sampling(
    input dat_samp_en,
    input [4:0] edge_cnt,
    input [5:0] prescale,
    input RX_IN,
    input clk,
    input rst_n,
    output reg sampled_bit
);
    reg [2:0] data;
    reg [1:0] counter;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data <= 3'd0;
            counter <= 2'd0;
            sampled_bit <= 0;
        end
        else if (dat_samp_en)  begin // check for 3 edges as specified in specs 
            if ((edge_cnt == ((prescale/2)-2)) || (edge_cnt == ((prescale/2)-1)) || (edge_cnt == ((prescale/2)))) begin
                data[counter] <= RX_IN;
                counter <= counter +1;
            end
            if (counter == 2) begin  // when counter = 2 , input rx_in to stop the delay of a cycle 
                sampled_bit <= (data[0] + data[1] + RX_IN >= 2);
                counter <= 0; 
            end
        end
        else begin
            counter <= 2'd0;
            data <= 3'd0;
            sampled_bit <= 0;
        end
    end

endmodule