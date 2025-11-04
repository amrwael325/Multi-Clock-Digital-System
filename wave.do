onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/DATA_WIDTH
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/REF_CLK_tb
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/ref_p
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/RF_ADDR
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/RST_N_tb
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/RX_Error_tb
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/UART_CLK_tb
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/uart_p
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/UART_RX_IN_tb
add wave -noupdate -expand -group {TB Signals} -color Green /SYS_TOP_tb/UART_TX_O_tb
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/Addr
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/Address
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/CLK
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/Depth
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/i
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/RdData
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/RdData_VLD
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/RdEn
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/REG0
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/REG1
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/REG2
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/REG3
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} -expand -subitemconfig {{/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[15]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[14]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[13]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[12]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[11]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[10]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[9]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[8]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[7]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[6]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[5]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[4]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[3]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[2]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[1]} {-color {Midnight Blue} -height 15} {/SYS_TOP_tb/DUT/U0_RegFile/Reg_file[0]} {-color {Midnight Blue} -height 15}} /SYS_TOP_tb/DUT/U0_RegFile/Reg_file
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/RST
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/Width
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/WrData
add wave -noupdate -expand -group {Reg File} -color {Midnight Blue} /SYS_TOP_tb/DUT/U0_RegFile/WrEn
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/Address
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/Address_reg
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_FUN
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_OUT
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/alu_wait
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/CLK
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/clk_div_en
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/CLK_EN
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/cmd
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/current_state
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/EN
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/ERROR
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/FIFO_FULL
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/func_out
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/IDLE
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/input_counter
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/next_state
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/OUT_VALID
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/output_counter
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/rd_addr
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/RdData
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/RdData_Valid
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/RdEn
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/result
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/RST
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/RX_D_VLD
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/RX_P_DATA
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/wr_addr
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/WR_DATA
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/wr_data
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/wr_fifo
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/WR_INC
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/WrData
add wave -noupdate -expand -group SYS_CTRL /SYS_TOP_tb/DUT/U0_SYS_CTRL/WrEn
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/A
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/ALU_FUN
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/ALU_OUT
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/B
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/CLK
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/EN
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/OPER_WIDTH
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/OUT_VALID
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/OUT_WIDTH
add wave -noupdate -group ALU /SYS_TOP_tb/DUT/U0_ALU/RST
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/addr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/FIFO_DEPTH
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/NUM_STAGES
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/ptr_adr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/raddr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rclk
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rdata
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rempty
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rinc
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/DATA_WIDTH
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rptr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rq2_wptr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/rrst_n
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/waddr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wclk
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wclken
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wdata
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wfull
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/winc
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wptr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wq2_rptr
add wave -noupdate -expand -group FIFO -color Gold /SYS_TOP_tb/DUT/U0_UART_FIFO/wrst_n
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/P_DATA
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/Data_Valid
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/clk
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/rst_n
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/PAR_TYP
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/PAR_EN
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/TX_OUT
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/busy
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/ser_en
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/par_en
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/ser_done
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/ser_data
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/PAR_bit
add wave -noupdate -group UART_tx /SYS_TOP_tb/DUT/U0_UART/Uart_tx/mux_sel
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/RX_IN
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/prescale
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/PAR_EN
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/PAR_TYP
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/clk
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/rst_n
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/data_valid
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/error_happened
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/P_DATA
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/enable
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/bit_cnt
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/edge_cnt
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/dat_samp_en
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/sampled_bit
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/deser_en
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/stp_chk_en
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/stp_err
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/strt_chk_en
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/strt_glitch
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/par_chk_en
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/par_err
add wave -noupdate -group UART_RX /SYS_TOP_tb/DUT/U0_UART/uart_rx/start_frame
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {354430061 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1373499069 ps} {1571116049 ps}
