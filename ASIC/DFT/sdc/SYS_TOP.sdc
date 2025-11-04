###################################################################

# Created by write_sdc on Wed Oct 1 02:00:16 2025

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c [get_ports UART_RX_IN]
set_load -pin_load 0.1 [get_ports {SO[3]}]
set_load -pin_load 0.1 [get_ports {SO[2]}]
set_load -pin_load 0.1 [get_ports {SO[1]}]
set_load -pin_load 0.1 [get_ports {SO[0]}]
set_load -pin_load 0.1 [get_ports UART_TX_O]
set_load -pin_load 0.1 [get_ports parity_error]
set_load -pin_load 0.1 [get_ports framing_error]
set_case_analysis 1 [get_ports test_mode]
create_clock [get_ports REF_CLK]  -name CLK_REF  -period 20  -waveform {0 10}
set_clock_latency 0  [get_clocks CLK_REF]
set_clock_uncertainty -setup 0.2  [get_clocks CLK_REF]
set_clock_uncertainty -hold 0.1  [get_clocks CLK_REF]
set_clock_transition -min -fall 0.05 [get_clocks CLK_REF]
set_clock_transition -min -rise 0.05 [get_clocks CLK_REF]
set_clock_transition -max -fall 0.05 [get_clocks CLK_REF]
set_clock_transition -max -rise 0.05 [get_clocks CLK_REF]
create_clock [get_ports UART_CLK]  -name CLK_UART  -period 271.2  -waveform {0 135.6}
set_clock_latency 0  [get_clocks CLK_UART]
set_clock_uncertainty -setup 0.2  [get_clocks CLK_UART]
set_clock_uncertainty -hold 0.1  [get_clocks CLK_UART]
set_clock_transition -min -fall 0.05 [get_clocks CLK_UART]
set_clock_transition -min -rise 0.05 [get_clocks CLK_UART]
set_clock_transition -max -fall 0.05 [get_clocks CLK_UART]
set_clock_transition -max -rise 0.05 [get_clocks CLK_UART]
create_clock [get_ports scan_clk]  -name scan_m  -period 500  -waveform {0 250}
create_generated_clock [get_pins U0_ClkDiv/o_div_clk]  -name TX_CLK  -source [get_ports UART_CLK]  -master_clock CLK_UART  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks TX_CLK]
create_generated_clock [get_pins U1_ClkDiv/o_div_clk]  -name RX_CLK  -source [get_ports UART_CLK]  -master_clock CLK_UART  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks RX_CLK]
create_generated_clock [get_pins U0_CLK_GATE/GATED_CLK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock CLK_REF  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
set_input_delay -clock RX_CLK  54.24  [get_ports UART_RX_IN]
set_input_delay -clock scan_m  100  [get_ports {SI[3]}]
set_input_delay -clock scan_m  100  [get_ports {SI[2]}]
set_input_delay -clock scan_m  100  [get_ports {SI[1]}]
set_input_delay -clock scan_m  100  [get_ports {SI[0]}]
set_input_delay -clock scan_m  100  [get_ports SE]
set_output_delay -clock RX_CLK  54.24  [get_ports parity_error]
set_output_delay -clock RX_CLK  54.24  [get_ports framing_error]
set_output_delay -clock TX_CLK  1735.68  [get_ports UART_TX_O]
set_output_delay -clock scan_m  100  [get_ports {SO[3]}]
set_output_delay -clock scan_m  100  [get_ports {SO[2]}]
set_output_delay -clock scan_m  100  [get_ports {SO[1]}]
set_output_delay -clock scan_m  100  [get_ports {SO[0]}]
set_clock_groups -asynchronous -name CLK_REF_1 -group [list [get_clocks CLK_REF] [get_clocks ALU_CLK]] -group [list [get_clocks CLK_UART] [get_clocks TX_CLK] [get_clocks RX_CLK]] -group [get_clocks scan_m]
