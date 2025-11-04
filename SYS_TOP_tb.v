`timescale 1ns/1ps

module SYS_TOP_tb;

    // parameter declarations

    parameter DATA_WIDTH = 8 ;
    parameter RF_ADDR = 4 ;
    parameter ref_p = 20;
    parameter uart_p = 271.2;

    // signals declaration

    reg RST_N_tb;
    reg UART_CLK_tb;
    reg REF_CLK_tb;
    reg UART_RX_IN_tb;
    wire UART_TX_O_tb;
    wire parity_error_tb;
    wire framing_error_tb;

    // module instantiation

    SYS_TOP #(
        .DATA_WIDTH(DATA_WIDTH),
        .RF_ADDR(RF_ADDR)
    ) DUT (
        .RST_N(RST_N_tb),
        .UART_CLK(UART_CLK_tb),
        .REF_CLK(REF_CLK_tb),
        .UART_RX_IN(UART_RX_IN_tb),
        .UART_TX_O(UART_TX_O_tb),
        .parity_error(parity_error_tb),
        .framing_error(framing_error_tb)
    );

    // clock generation

    always #(ref_p/2) REF_CLK_tb = ~REF_CLK_tb;
    always #(uart_p/2.0) UART_CLK_tb = ~UART_CLK_tb;

    // initial block
    
    initial begin
        REF_CLK_tb = 0;
        UART_CLK_tb = 0;
        UART_RX_IN_tb = 1;
        RST_N_tb = 0;
        #(ref_p*20);
        RST_N_tb = 1;
        
        // First Command : Write into memory
        send_uart_frame(8'hAA);

        #(uart_p*32);  

        send_uart_frame(8'h04);

        #(uart_p*32); 

        send_uart_frame(8'h55);


        #50000;

        // Second Command : Read from Memory

        send_uart_frame(8'hBB);

        #(uart_p*32);  

        send_uart_frame(8'h04); 

        #50000;
        #50000;
        
        // Third Command : ALU Write + Operation + Read

        send_uart_frame(8'hCC);

        #(uart_p*32);  

        send_uart_frame(8'hAA); 

        #(uart_p*32);  

        send_uart_frame(8'hBB); 

        #(uart_p*32);  

        send_uart_frame(8'h00); 


        #50000;
        #50000;
        #50000;
        #50000;

        // Fourth Command : ALU NOP

        send_uart_frame(8'hDD);

        #(uart_p*32);  

        send_uart_frame(8'h02); 

        #50000;
        #50000;
        #50000;
        #50000;
        #50000; // delays to observe the full waveform and sending of all bytes
        
        $stop;
    end


    task send_uart_frame;
        input [7:0] data;
        integer i;
        reg parity;
        begin
        
        parity = ^data;  

        
        UART_RX_IN_tb = 0;
        #(uart_p*32);  

        
        for (i = 0; i < 8; i=i+1) begin
            UART_RX_IN_tb = data[i];
            #(uart_p*32);  
        end

        
        UART_RX_IN_tb = parity;
        #(uart_p*32);  

        
        UART_RX_IN_tb = 1;
        #(uart_p*32);  

        end
    endtask
endmodule