module clkdiv(
    input i_ref_clk,
    input i_rst_n,
    input i_clk_en,
    input [7:0] i_div_ratio,
    output  o_div_clk
);

    reg [7:0] counter;
    reg toggle;
    reg clk_reg; // take values during posedge clocks , other than that follow main clock 
    wire odd ; 
    wire [7:0] half_togg;
    wire [7:0 ]half_togg_p1;
    wire CLK_DIV_EN;
    


    always @(posedge i_ref_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            counter <= 8'd0;
            toggle <= 1'd1;
            clk_reg <= 1'b0; 
        end
        else if(CLK_DIV_EN) begin
            if (!odd && (counter == half_togg)) begin
                clk_reg <= !clk_reg;
                counter <= 8'd0;
                toggle <= 1'd1;
            end
            else if (odd && ((toggle && counter == half_togg ) || (!toggle && counter == half_togg_p1))) begin
                clk_reg <= !clk_reg;
                counter <= 8'd0;
                toggle <= !toggle;
            end
            else if (counter > half_togg) begin
                counter <= 8'd0;
                toggle <= 1'd1;
            end
            else begin
                counter <= counter + 1;
            end
        end
        else begin
            counter <= 8'd0;
            toggle <= 1'd1;
        end
    end


    // to follow the clk at all times if enable = 0 or reset asserted

    assign o_div_clk = (CLK_DIV_EN && i_rst_n) ? clk_reg : i_ref_clk; 

    assign odd = i_div_ratio[0];  

    assign half_togg = (i_div_ratio >> 1)- 1; // -1 to follow the needed waveform 

    assign half_togg_p1 = half_togg + 1;  

    assign CLK_DIV_EN = i_clk_en && (|i_div_ratio[7:1]);  

    // check if ratio not equal 1 or 0 without comparators for low power 



endmodule