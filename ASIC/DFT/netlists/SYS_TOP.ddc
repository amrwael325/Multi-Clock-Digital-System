/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Oct  1 02:00:16 2025
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_7 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0, n1, n2;
  assign N0 = SEL;

  MX2X2M U1 ( .A(n2), .B(IN_1), .S0(N0), .Y(OUT) );
  INVXLM U2 ( .A(IN_0), .Y(n1) );
  INVXLM U3 ( .A(n1), .Y(n2) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \rst_reg[0] ;

  SDFFRQX2M \rst_reg_reg[1]  ( .D(\rst_reg[0] ), .SI(\rst_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \rst_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\rst_reg[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \rst_reg[0] ;

  SDFFRQX2M \rst_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(\rst_reg[0] ) );
  SDFFRQX1M \rst_reg_reg[1]  ( .D(\rst_reg[0] ), .SI(\rst_reg[0] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( CLK, RST, unsync_bus, 
        bus_enable, sync_bus, enable_pulse_d, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse_d, test_so;
  wire   enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n23;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M enable_pulse_d_reg ( .D(n23), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse_d) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse_d), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  SDFFRQX1M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  INVX2M U4 ( .A(n1), .Y(n23) );
  NAND2BX2M U5 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U6 ( .A0(unsync_bus[0]), .A1(n23), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n23), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U8 ( .A0(unsync_bus[2]), .A1(n23), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n23), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U10 ( .A0(unsync_bus[4]), .A1(n23), .B0(sync_bus[4]), .B1(n1), .Y(
        n12) );
  AO22X1M U11 ( .A0(unsync_bus[5]), .A1(n23), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n23), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U25 ( .A0(unsync_bus[7]), .A1(n23), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_addr3_FIFO_DEPTH8_test_1 ( wdata, wclken, 
        wrst_n, waddr, wclk, raddr, rdata, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] wdata;
  input [2:0] waddr;
  input [2:0] raddr;
  output [7:0] rdata;
  input wclken, wrst_n, wclk, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   N10, N11, N12, \FIFO_REG[7][7] , \FIFO_REG[7][6] , \FIFO_REG[7][5] ,
         \FIFO_REG[7][4] , \FIFO_REG[7][3] , \FIFO_REG[7][2] ,
         \FIFO_REG[7][1] , \FIFO_REG[7][0] , \FIFO_REG[6][7] ,
         \FIFO_REG[6][6] , \FIFO_REG[6][5] , \FIFO_REG[6][4] ,
         \FIFO_REG[6][3] , \FIFO_REG[6][2] , \FIFO_REG[6][1] ,
         \FIFO_REG[6][0] , \FIFO_REG[5][7] , \FIFO_REG[5][6] ,
         \FIFO_REG[5][5] , \FIFO_REG[5][4] , \FIFO_REG[5][3] ,
         \FIFO_REG[5][2] , \FIFO_REG[5][1] , \FIFO_REG[5][0] ,
         \FIFO_REG[4][7] , \FIFO_REG[4][6] , \FIFO_REG[4][5] ,
         \FIFO_REG[4][4] , \FIFO_REG[4][3] , \FIFO_REG[4][2] ,
         \FIFO_REG[4][1] , \FIFO_REG[4][0] , \FIFO_REG[3][7] ,
         \FIFO_REG[3][6] , \FIFO_REG[3][5] , \FIFO_REG[3][4] ,
         \FIFO_REG[3][3] , \FIFO_REG[3][2] , \FIFO_REG[3][1] ,
         \FIFO_REG[3][0] , \FIFO_REG[2][7] , \FIFO_REG[2][6] ,
         \FIFO_REG[2][5] , \FIFO_REG[2][4] , \FIFO_REG[2][3] ,
         \FIFO_REG[2][2] , \FIFO_REG[2][1] , \FIFO_REG[2][0] ,
         \FIFO_REG[1][7] , \FIFO_REG[1][6] , \FIFO_REG[1][5] ,
         \FIFO_REG[1][4] , \FIFO_REG[1][3] , \FIFO_REG[1][2] ,
         \FIFO_REG[1][1] , \FIFO_REG[1][0] , \FIFO_REG[0][7] ,
         \FIFO_REG[0][6] , \FIFO_REG[0][5] , \FIFO_REG[0][4] ,
         \FIFO_REG[0][3] , \FIFO_REG[0][2] , \FIFO_REG[0][1] ,
         \FIFO_REG[0][0] , n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n178, n179, n180, n181, n182;
  assign N10 = raddr[0];
  assign N11 = raddr[1];
  assign N12 = raddr[2];
  assign test_so2 = \FIFO_REG[7][7] ;
  assign test_so1 = \FIFO_REG[2][2] ;

  SDFFRQX2M \FIFO_REG_reg[5][3]  ( .D(n128), .SI(\FIFO_REG[5][2] ), .SE(n182), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][3] ) );
  SDFFRQX2M \FIFO_REG_reg[5][2]  ( .D(n127), .SI(\FIFO_REG[5][1] ), .SE(n181), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][2] ) );
  SDFFRQX2M \FIFO_REG_reg[5][1]  ( .D(n126), .SI(\FIFO_REG[5][0] ), .SE(n180), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][1] ) );
  SDFFRQX2M \FIFO_REG_reg[1][3]  ( .D(n96), .SI(\FIFO_REG[1][2] ), .SE(n179), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][3] ) );
  SDFFRQX2M \FIFO_REG_reg[1][2]  ( .D(n95), .SI(\FIFO_REG[1][1] ), .SE(n182), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][2] ) );
  SDFFRQX2M \FIFO_REG_reg[1][1]  ( .D(n94), .SI(\FIFO_REG[1][0] ), .SE(n181), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][1] ) );
  SDFFRQX2M \FIFO_REG_reg[7][3]  ( .D(n144), .SI(\FIFO_REG[7][2] ), .SE(n180), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][3] ) );
  SDFFRQX2M \FIFO_REG_reg[7][2]  ( .D(n143), .SI(\FIFO_REG[7][1] ), .SE(n179), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][2] ) );
  SDFFRQX2M \FIFO_REG_reg[3][3]  ( .D(n112), .SI(\FIFO_REG[3][2] ), .SE(n182), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[3][3] ) );
  SDFFRQX2M \FIFO_REG_reg[3][2]  ( .D(n111), .SI(\FIFO_REG[3][1] ), .SE(n181), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[3][2] ) );
  SDFFRQX2M \FIFO_REG_reg[6][3]  ( .D(n136), .SI(\FIFO_REG[6][2] ), .SE(n180), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[6][3] ) );
  SDFFRQX2M \FIFO_REG_reg[6][2]  ( .D(n135), .SI(\FIFO_REG[6][1] ), .SE(n179), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[6][2] ) );
  SDFFRQX2M \FIFO_REG_reg[2][3]  ( .D(n104), .SI(test_si2), .SE(n182), .CK(
        wclk), .RN(n162), .Q(\FIFO_REG[2][3] ) );
  SDFFRQX2M \FIFO_REG_reg[2][2]  ( .D(n103), .SI(\FIFO_REG[2][1] ), .SE(n181), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][2] ) );
  SDFFRQX2M \FIFO_REG_reg[2][1]  ( .D(n102), .SI(\FIFO_REG[2][0] ), .SE(n180), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][1] ) );
  SDFFRQX2M \FIFO_REG_reg[4][3]  ( .D(n120), .SI(\FIFO_REG[4][2] ), .SE(n179), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][3] ) );
  SDFFRQX2M \FIFO_REG_reg[4][2]  ( .D(n119), .SI(\FIFO_REG[4][1] ), .SE(n182), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][2] ) );
  SDFFRQX2M \FIFO_REG_reg[4][1]  ( .D(n118), .SI(\FIFO_REG[4][0] ), .SE(n181), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][1] ) );
  SDFFRQX2M \FIFO_REG_reg[0][3]  ( .D(n88), .SI(\FIFO_REG[0][2] ), .SE(n180), 
        .CK(wclk), .RN(n164), .Q(\FIFO_REG[0][3] ) );
  SDFFRQX2M \FIFO_REG_reg[0][2]  ( .D(n87), .SI(\FIFO_REG[0][1] ), .SE(n179), 
        .CK(wclk), .RN(n164), .Q(\FIFO_REG[0][2] ) );
  SDFFRQX2M \FIFO_REG_reg[0][1]  ( .D(n86), .SI(\FIFO_REG[0][0] ), .SE(n182), 
        .CK(wclk), .RN(n164), .Q(\FIFO_REG[0][1] ) );
  SDFFRQX2M \FIFO_REG_reg[5][7]  ( .D(n132), .SI(\FIFO_REG[5][6] ), .SE(n181), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][7] ) );
  SDFFRQX2M \FIFO_REG_reg[5][6]  ( .D(n131), .SI(\FIFO_REG[5][5] ), .SE(n180), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][6] ) );
  SDFFRQX2M \FIFO_REG_reg[5][5]  ( .D(n130), .SI(\FIFO_REG[5][4] ), .SE(n179), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][5] ) );
  SDFFRQX2M \FIFO_REG_reg[5][4]  ( .D(n129), .SI(\FIFO_REG[5][3] ), .SE(n182), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][4] ) );
  SDFFRQX2M \FIFO_REG_reg[5][0]  ( .D(n125), .SI(\FIFO_REG[4][7] ), .SE(n181), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[5][0] ) );
  SDFFRQX2M \FIFO_REG_reg[1][7]  ( .D(n100), .SI(\FIFO_REG[1][6] ), .SE(n180), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][7] ) );
  SDFFRQX2M \FIFO_REG_reg[1][6]  ( .D(n99), .SI(\FIFO_REG[1][5] ), .SE(n179), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][6] ) );
  SDFFRQX2M \FIFO_REG_reg[1][5]  ( .D(n98), .SI(\FIFO_REG[1][4] ), .SE(n182), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][5] ) );
  SDFFRQX2M \FIFO_REG_reg[1][4]  ( .D(n97), .SI(\FIFO_REG[1][3] ), .SE(n181), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][4] ) );
  SDFFRQX2M \FIFO_REG_reg[1][0]  ( .D(n93), .SI(\FIFO_REG[0][7] ), .SE(n180), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[1][0] ) );
  SDFFRQX2M \FIFO_REG_reg[7][7]  ( .D(n148), .SI(\FIFO_REG[7][6] ), .SE(n179), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][7] ) );
  SDFFRQX2M \FIFO_REG_reg[7][6]  ( .D(n147), .SI(\FIFO_REG[7][5] ), .SE(n182), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][6] ) );
  SDFFRQX2M \FIFO_REG_reg[7][5]  ( .D(n146), .SI(\FIFO_REG[7][4] ), .SE(n181), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][5] ) );
  SDFFRQX2M \FIFO_REG_reg[7][4]  ( .D(n145), .SI(\FIFO_REG[7][3] ), .SE(n180), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][4] ) );
  SDFFRQX2M \FIFO_REG_reg[7][1]  ( .D(n142), .SI(\FIFO_REG[7][0] ), .SE(n179), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][1] ) );
  SDFFRQX2M \FIFO_REG_reg[7][0]  ( .D(n141), .SI(\FIFO_REG[6][7] ), .SE(n182), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[7][0] ) );
  SDFFRQX2M \FIFO_REG_reg[3][7]  ( .D(n116), .SI(\FIFO_REG[3][6] ), .SE(n181), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[3][7] ) );
  SDFFRQX2M \FIFO_REG_reg[3][6]  ( .D(n115), .SI(\FIFO_REG[3][5] ), .SE(n180), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[3][6] ) );
  SDFFRQX2M \FIFO_REG_reg[3][5]  ( .D(n114), .SI(\FIFO_REG[3][4] ), .SE(n179), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[3][5] ) );
  SDFFRQX2M \FIFO_REG_reg[3][4]  ( .D(n113), .SI(\FIFO_REG[3][3] ), .SE(n182), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[3][4] ) );
  SDFFRQX2M \FIFO_REG_reg[3][1]  ( .D(n110), .SI(\FIFO_REG[3][0] ), .SE(n181), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[3][1] ) );
  SDFFRQX2M \FIFO_REG_reg[3][0]  ( .D(n109), .SI(\FIFO_REG[2][7] ), .SE(n180), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[3][0] ) );
  SDFFRQX2M \FIFO_REG_reg[6][7]  ( .D(n140), .SI(\FIFO_REG[6][6] ), .SE(n179), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[6][7] ) );
  SDFFRQX2M \FIFO_REG_reg[6][6]  ( .D(n139), .SI(\FIFO_REG[6][5] ), .SE(n182), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[6][6] ) );
  SDFFRQX2M \FIFO_REG_reg[6][5]  ( .D(n138), .SI(\FIFO_REG[6][4] ), .SE(n181), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[6][5] ) );
  SDFFRQX2M \FIFO_REG_reg[6][4]  ( .D(n137), .SI(\FIFO_REG[6][3] ), .SE(n180), 
        .CK(wclk), .RN(n159), .Q(\FIFO_REG[6][4] ) );
  SDFFRQX2M \FIFO_REG_reg[6][1]  ( .D(n134), .SI(\FIFO_REG[6][0] ), .SE(n179), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[6][1] ) );
  SDFFRQX2M \FIFO_REG_reg[6][0]  ( .D(n133), .SI(\FIFO_REG[5][7] ), .SE(n182), 
        .CK(wclk), .RN(n160), .Q(\FIFO_REG[6][0] ) );
  SDFFRQX2M \FIFO_REG_reg[2][7]  ( .D(n108), .SI(\FIFO_REG[2][6] ), .SE(n181), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][7] ) );
  SDFFRQX2M \FIFO_REG_reg[2][6]  ( .D(n107), .SI(\FIFO_REG[2][5] ), .SE(n180), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][6] ) );
  SDFFRQX2M \FIFO_REG_reg[2][5]  ( .D(n106), .SI(\FIFO_REG[2][4] ), .SE(n179), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][5] ) );
  SDFFRQX2M \FIFO_REG_reg[2][4]  ( .D(n105), .SI(\FIFO_REG[2][3] ), .SE(n182), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][4] ) );
  SDFFRQX2M \FIFO_REG_reg[2][0]  ( .D(n101), .SI(\FIFO_REG[1][7] ), .SE(n181), 
        .CK(wclk), .RN(n162), .Q(\FIFO_REG[2][0] ) );
  SDFFRQX2M \FIFO_REG_reg[4][7]  ( .D(n124), .SI(\FIFO_REG[4][6] ), .SE(n180), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][7] ) );
  SDFFRQX2M \FIFO_REG_reg[4][6]  ( .D(n123), .SI(\FIFO_REG[4][5] ), .SE(n179), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][6] ) );
  SDFFRQX2M \FIFO_REG_reg[4][5]  ( .D(n122), .SI(\FIFO_REG[4][4] ), .SE(n182), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][5] ) );
  SDFFRQX2M \FIFO_REG_reg[4][4]  ( .D(n121), .SI(\FIFO_REG[4][3] ), .SE(n181), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][4] ) );
  SDFFRQX2M \FIFO_REG_reg[4][0]  ( .D(n117), .SI(\FIFO_REG[3][7] ), .SE(n180), 
        .CK(wclk), .RN(n161), .Q(\FIFO_REG[4][0] ) );
  SDFFRQX2M \FIFO_REG_reg[0][7]  ( .D(n92), .SI(\FIFO_REG[0][6] ), .SE(n179), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[0][7] ) );
  SDFFRQX2M \FIFO_REG_reg[0][6]  ( .D(n91), .SI(\FIFO_REG[0][5] ), .SE(n182), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[0][6] ) );
  SDFFRQX2M \FIFO_REG_reg[0][5]  ( .D(n90), .SI(\FIFO_REG[0][4] ), .SE(n181), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[0][5] ) );
  SDFFRQX2M \FIFO_REG_reg[0][4]  ( .D(n89), .SI(\FIFO_REG[0][3] ), .SE(n180), 
        .CK(wclk), .RN(n163), .Q(\FIFO_REG[0][4] ) );
  SDFFRQX2M \FIFO_REG_reg[0][0]  ( .D(n85), .SI(test_si1), .SE(n179), .CK(wclk), .RN(n164), .Q(\FIFO_REG[0][0] ) );
  BUFX2M U66 ( .A(n158), .Y(n163) );
  BUFX2M U67 ( .A(n158), .Y(n162) );
  BUFX2M U68 ( .A(n157), .Y(n161) );
  BUFX2M U69 ( .A(n157), .Y(n160) );
  BUFX2M U70 ( .A(n157), .Y(n159) );
  BUFX2M U71 ( .A(n158), .Y(n164) );
  BUFX2M U72 ( .A(wrst_n), .Y(n158) );
  BUFX2M U73 ( .A(wrst_n), .Y(n157) );
  NAND3X2M U74 ( .A(n174), .B(n173), .C(n81), .Y(n80) );
  NAND3X2M U75 ( .A(n174), .B(n173), .C(n76), .Y(n75) );
  NAND3X2M U76 ( .A(waddr[0]), .B(n173), .C(n81), .Y(n82) );
  NAND3X2M U77 ( .A(waddr[1]), .B(n174), .C(n81), .Y(n83) );
  NAND3X2M U78 ( .A(waddr[1]), .B(waddr[0]), .C(n81), .Y(n84) );
  NAND3X2M U79 ( .A(n76), .B(n173), .C(waddr[0]), .Y(n77) );
  NAND3X2M U80 ( .A(n76), .B(n174), .C(waddr[1]), .Y(n78) );
  NAND3X2M U81 ( .A(waddr[0]), .B(n76), .C(waddr[1]), .Y(n79) );
  NOR2BX2M U82 ( .AN(wclken), .B(waddr[2]), .Y(n76) );
  AND2X1M U83 ( .A(waddr[2]), .B(wclken), .Y(n81) );
  OAI2BB2X1M U84 ( .B0(n75), .B1(n165), .A0N(\FIFO_REG[0][0] ), .A1N(n75), .Y(
        n85) );
  OAI2BB2X1M U85 ( .B0(n75), .B1(n166), .A0N(\FIFO_REG[0][1] ), .A1N(n75), .Y(
        n86) );
  OAI2BB2X1M U86 ( .B0(n75), .B1(n167), .A0N(\FIFO_REG[0][2] ), .A1N(n75), .Y(
        n87) );
  OAI2BB2X1M U87 ( .B0(n75), .B1(n168), .A0N(\FIFO_REG[0][3] ), .A1N(n75), .Y(
        n88) );
  OAI2BB2X1M U88 ( .B0(n75), .B1(n169), .A0N(\FIFO_REG[0][4] ), .A1N(n75), .Y(
        n89) );
  OAI2BB2X1M U89 ( .B0(n75), .B1(n170), .A0N(\FIFO_REG[0][5] ), .A1N(n75), .Y(
        n90) );
  OAI2BB2X1M U90 ( .B0(n75), .B1(n171), .A0N(\FIFO_REG[0][6] ), .A1N(n75), .Y(
        n91) );
  OAI2BB2X1M U91 ( .B0(n75), .B1(n172), .A0N(\FIFO_REG[0][7] ), .A1N(n75), .Y(
        n92) );
  OAI2BB2X1M U92 ( .B0(n165), .B1(n79), .A0N(\FIFO_REG[3][0] ), .A1N(n79), .Y(
        n109) );
  OAI2BB2X1M U93 ( .B0(n166), .B1(n79), .A0N(\FIFO_REG[3][1] ), .A1N(n79), .Y(
        n110) );
  OAI2BB2X1M U94 ( .B0(n167), .B1(n79), .A0N(\FIFO_REG[3][2] ), .A1N(n79), .Y(
        n111) );
  OAI2BB2X1M U95 ( .B0(n168), .B1(n79), .A0N(\FIFO_REG[3][3] ), .A1N(n79), .Y(
        n112) );
  OAI2BB2X1M U96 ( .B0(n169), .B1(n79), .A0N(\FIFO_REG[3][4] ), .A1N(n79), .Y(
        n113) );
  OAI2BB2X1M U97 ( .B0(n170), .B1(n79), .A0N(\FIFO_REG[3][5] ), .A1N(n79), .Y(
        n114) );
  OAI2BB2X1M U98 ( .B0(n171), .B1(n79), .A0N(\FIFO_REG[3][6] ), .A1N(n79), .Y(
        n115) );
  OAI2BB2X1M U99 ( .B0(n172), .B1(n79), .A0N(\FIFO_REG[3][7] ), .A1N(n79), .Y(
        n116) );
  OAI2BB2X1M U100 ( .B0(n165), .B1(n77), .A0N(\FIFO_REG[1][0] ), .A1N(n77), 
        .Y(n93) );
  OAI2BB2X1M U101 ( .B0(n166), .B1(n77), .A0N(\FIFO_REG[1][1] ), .A1N(n77), 
        .Y(n94) );
  OAI2BB2X1M U102 ( .B0(n167), .B1(n77), .A0N(\FIFO_REG[1][2] ), .A1N(n77), 
        .Y(n95) );
  OAI2BB2X1M U103 ( .B0(n168), .B1(n77), .A0N(\FIFO_REG[1][3] ), .A1N(n77), 
        .Y(n96) );
  OAI2BB2X1M U104 ( .B0(n169), .B1(n77), .A0N(\FIFO_REG[1][4] ), .A1N(n77), 
        .Y(n97) );
  OAI2BB2X1M U105 ( .B0(n170), .B1(n77), .A0N(\FIFO_REG[1][5] ), .A1N(n77), 
        .Y(n98) );
  OAI2BB2X1M U106 ( .B0(n171), .B1(n77), .A0N(\FIFO_REG[1][6] ), .A1N(n77), 
        .Y(n99) );
  OAI2BB2X1M U107 ( .B0(n172), .B1(n77), .A0N(\FIFO_REG[1][7] ), .A1N(n77), 
        .Y(n100) );
  OAI2BB2X1M U108 ( .B0(n165), .B1(n78), .A0N(\FIFO_REG[2][0] ), .A1N(n78), 
        .Y(n101) );
  OAI2BB2X1M U109 ( .B0(n166), .B1(n78), .A0N(\FIFO_REG[2][1] ), .A1N(n78), 
        .Y(n102) );
  OAI2BB2X1M U110 ( .B0(n167), .B1(n78), .A0N(\FIFO_REG[2][2] ), .A1N(n78), 
        .Y(n103) );
  OAI2BB2X1M U111 ( .B0(n168), .B1(n78), .A0N(\FIFO_REG[2][3] ), .A1N(n78), 
        .Y(n104) );
  OAI2BB2X1M U112 ( .B0(n169), .B1(n78), .A0N(\FIFO_REG[2][4] ), .A1N(n78), 
        .Y(n105) );
  OAI2BB2X1M U113 ( .B0(n170), .B1(n78), .A0N(\FIFO_REG[2][5] ), .A1N(n78), 
        .Y(n106) );
  OAI2BB2X1M U114 ( .B0(n171), .B1(n78), .A0N(\FIFO_REG[2][6] ), .A1N(n78), 
        .Y(n107) );
  OAI2BB2X1M U115 ( .B0(n172), .B1(n78), .A0N(\FIFO_REG[2][7] ), .A1N(n78), 
        .Y(n108) );
  OAI2BB2X1M U116 ( .B0(n165), .B1(n84), .A0N(\FIFO_REG[7][0] ), .A1N(n84), 
        .Y(n141) );
  OAI2BB2X1M U117 ( .B0(n166), .B1(n84), .A0N(\FIFO_REG[7][1] ), .A1N(n84), 
        .Y(n142) );
  OAI2BB2X1M U118 ( .B0(n167), .B1(n84), .A0N(\FIFO_REG[7][2] ), .A1N(n84), 
        .Y(n143) );
  OAI2BB2X1M U119 ( .B0(n168), .B1(n84), .A0N(\FIFO_REG[7][3] ), .A1N(n84), 
        .Y(n144) );
  OAI2BB2X1M U120 ( .B0(n169), .B1(n84), .A0N(\FIFO_REG[7][4] ), .A1N(n84), 
        .Y(n145) );
  OAI2BB2X1M U121 ( .B0(n170), .B1(n84), .A0N(\FIFO_REG[7][5] ), .A1N(n84), 
        .Y(n146) );
  OAI2BB2X1M U122 ( .B0(n171), .B1(n84), .A0N(\FIFO_REG[7][6] ), .A1N(n84), 
        .Y(n147) );
  OAI2BB2X1M U123 ( .B0(n172), .B1(n84), .A0N(\FIFO_REG[7][7] ), .A1N(n84), 
        .Y(n148) );
  OAI2BB2X1M U124 ( .B0(n165), .B1(n82), .A0N(\FIFO_REG[5][0] ), .A1N(n82), 
        .Y(n125) );
  OAI2BB2X1M U125 ( .B0(n166), .B1(n82), .A0N(\FIFO_REG[5][1] ), .A1N(n82), 
        .Y(n126) );
  OAI2BB2X1M U126 ( .B0(n167), .B1(n82), .A0N(\FIFO_REG[5][2] ), .A1N(n82), 
        .Y(n127) );
  OAI2BB2X1M U127 ( .B0(n168), .B1(n82), .A0N(\FIFO_REG[5][3] ), .A1N(n82), 
        .Y(n128) );
  OAI2BB2X1M U128 ( .B0(n169), .B1(n82), .A0N(\FIFO_REG[5][4] ), .A1N(n82), 
        .Y(n129) );
  OAI2BB2X1M U129 ( .B0(n170), .B1(n82), .A0N(\FIFO_REG[5][5] ), .A1N(n82), 
        .Y(n130) );
  OAI2BB2X1M U130 ( .B0(n171), .B1(n82), .A0N(\FIFO_REG[5][6] ), .A1N(n82), 
        .Y(n131) );
  OAI2BB2X1M U131 ( .B0(n172), .B1(n82), .A0N(\FIFO_REG[5][7] ), .A1N(n82), 
        .Y(n132) );
  OAI2BB2X1M U132 ( .B0(n165), .B1(n83), .A0N(\FIFO_REG[6][0] ), .A1N(n83), 
        .Y(n133) );
  OAI2BB2X1M U133 ( .B0(n166), .B1(n83), .A0N(\FIFO_REG[6][1] ), .A1N(n83), 
        .Y(n134) );
  OAI2BB2X1M U134 ( .B0(n167), .B1(n83), .A0N(\FIFO_REG[6][2] ), .A1N(n83), 
        .Y(n135) );
  OAI2BB2X1M U135 ( .B0(n168), .B1(n83), .A0N(\FIFO_REG[6][3] ), .A1N(n83), 
        .Y(n136) );
  OAI2BB2X1M U136 ( .B0(n169), .B1(n83), .A0N(\FIFO_REG[6][4] ), .A1N(n83), 
        .Y(n137) );
  OAI2BB2X1M U137 ( .B0(n170), .B1(n83), .A0N(\FIFO_REG[6][5] ), .A1N(n83), 
        .Y(n138) );
  OAI2BB2X1M U138 ( .B0(n171), .B1(n83), .A0N(\FIFO_REG[6][6] ), .A1N(n83), 
        .Y(n139) );
  OAI2BB2X1M U139 ( .B0(n172), .B1(n83), .A0N(\FIFO_REG[6][7] ), .A1N(n83), 
        .Y(n140) );
  OAI2BB2X1M U140 ( .B0(n165), .B1(n80), .A0N(\FIFO_REG[4][0] ), .A1N(n80), 
        .Y(n117) );
  OAI2BB2X1M U141 ( .B0(n166), .B1(n80), .A0N(\FIFO_REG[4][1] ), .A1N(n80), 
        .Y(n118) );
  OAI2BB2X1M U142 ( .B0(n167), .B1(n80), .A0N(\FIFO_REG[4][2] ), .A1N(n80), 
        .Y(n119) );
  OAI2BB2X1M U143 ( .B0(n168), .B1(n80), .A0N(\FIFO_REG[4][3] ), .A1N(n80), 
        .Y(n120) );
  OAI2BB2X1M U144 ( .B0(n169), .B1(n80), .A0N(\FIFO_REG[4][4] ), .A1N(n80), 
        .Y(n121) );
  OAI2BB2X1M U145 ( .B0(n170), .B1(n80), .A0N(\FIFO_REG[4][5] ), .A1N(n80), 
        .Y(n122) );
  OAI2BB2X1M U146 ( .B0(n171), .B1(n80), .A0N(\FIFO_REG[4][6] ), .A1N(n80), 
        .Y(n123) );
  OAI2BB2X1M U147 ( .B0(n172), .B1(n80), .A0N(\FIFO_REG[4][7] ), .A1N(n80), 
        .Y(n124) );
  INVX2M U148 ( .A(wdata[0]), .Y(n165) );
  INVX2M U149 ( .A(wdata[1]), .Y(n166) );
  INVX2M U150 ( .A(wdata[2]), .Y(n167) );
  INVX2M U151 ( .A(wdata[3]), .Y(n168) );
  INVX2M U152 ( .A(wdata[4]), .Y(n169) );
  INVX2M U153 ( .A(wdata[5]), .Y(n170) );
  INVX2M U154 ( .A(wdata[6]), .Y(n171) );
  INVX2M U155 ( .A(wdata[7]), .Y(n172) );
  MX2X2M U156 ( .A(n66), .B(n65), .S0(N12), .Y(rdata[0]) );
  MX4X1M U157 ( .A(\FIFO_REG[0][0] ), .B(\FIFO_REG[1][0] ), .C(
        \FIFO_REG[2][0] ), .D(\FIFO_REG[3][0] ), .S0(n156), .S1(N11), .Y(n66)
         );
  MX4X1M U158 ( .A(\FIFO_REG[4][0] ), .B(\FIFO_REG[5][0] ), .C(
        \FIFO_REG[6][0] ), .D(\FIFO_REG[7][0] ), .S0(n155), .S1(N11), .Y(n65)
         );
  MX2X2M U159 ( .A(n152), .B(n151), .S0(N12), .Y(rdata[6]) );
  MX4X1M U160 ( .A(\FIFO_REG[0][6] ), .B(\FIFO_REG[1][6] ), .C(
        \FIFO_REG[2][6] ), .D(\FIFO_REG[3][6] ), .S0(n156), .S1(N11), .Y(n152)
         );
  MX4X1M U161 ( .A(\FIFO_REG[4][6] ), .B(\FIFO_REG[5][6] ), .C(
        \FIFO_REG[6][6] ), .D(\FIFO_REG[7][6] ), .S0(n155), .S1(N11), .Y(n151)
         );
  MX2X2M U162 ( .A(n70), .B(n69), .S0(N12), .Y(rdata[2]) );
  MX4X1M U163 ( .A(\FIFO_REG[0][2] ), .B(\FIFO_REG[1][2] ), .C(
        \FIFO_REG[2][2] ), .D(\FIFO_REG[3][2] ), .S0(n156), .S1(N11), .Y(n70)
         );
  MX4X1M U164 ( .A(\FIFO_REG[4][2] ), .B(\FIFO_REG[5][2] ), .C(
        \FIFO_REG[6][2] ), .D(\FIFO_REG[7][2] ), .S0(n155), .S1(N11), .Y(n69)
         );
  MX2X2M U165 ( .A(n154), .B(n153), .S0(N12), .Y(rdata[7]) );
  MX4X1M U166 ( .A(\FIFO_REG[0][7] ), .B(\FIFO_REG[1][7] ), .C(
        \FIFO_REG[2][7] ), .D(\FIFO_REG[3][7] ), .S0(n156), .S1(N11), .Y(n154)
         );
  MX4X1M U167 ( .A(\FIFO_REG[4][7] ), .B(\FIFO_REG[5][7] ), .C(
        \FIFO_REG[6][7] ), .D(\FIFO_REG[7][7] ), .S0(n155), .S1(N11), .Y(n153)
         );
  MX2X2M U168 ( .A(n72), .B(n71), .S0(N12), .Y(rdata[3]) );
  MX4X1M U169 ( .A(\FIFO_REG[0][3] ), .B(\FIFO_REG[1][3] ), .C(
        \FIFO_REG[2][3] ), .D(\FIFO_REG[3][3] ), .S0(n156), .S1(N11), .Y(n72)
         );
  MX4X1M U170 ( .A(\FIFO_REG[4][3] ), .B(\FIFO_REG[5][3] ), .C(
        \FIFO_REG[6][3] ), .D(\FIFO_REG[7][3] ), .S0(n155), .S1(N11), .Y(n71)
         );
  MX2X2M U171 ( .A(n74), .B(n73), .S0(N12), .Y(rdata[4]) );
  MX4X1M U172 ( .A(\FIFO_REG[4][4] ), .B(\FIFO_REG[5][4] ), .C(
        \FIFO_REG[6][4] ), .D(\FIFO_REG[7][4] ), .S0(n155), .S1(N11), .Y(n73)
         );
  MX4X1M U173 ( .A(\FIFO_REG[0][4] ), .B(\FIFO_REG[1][4] ), .C(
        \FIFO_REG[2][4] ), .D(\FIFO_REG[3][4] ), .S0(n156), .S1(N11), .Y(n74)
         );
  MX2X2M U174 ( .A(n68), .B(n67), .S0(N12), .Y(rdata[1]) );
  MX4X1M U175 ( .A(\FIFO_REG[4][1] ), .B(\FIFO_REG[5][1] ), .C(
        \FIFO_REG[6][1] ), .D(\FIFO_REG[7][1] ), .S0(n155), .S1(N11), .Y(n67)
         );
  MX4X1M U176 ( .A(\FIFO_REG[0][1] ), .B(\FIFO_REG[1][1] ), .C(
        \FIFO_REG[2][1] ), .D(\FIFO_REG[3][1] ), .S0(n156), .S1(N11), .Y(n68)
         );
  MX2X2M U177 ( .A(n150), .B(n149), .S0(N12), .Y(rdata[5]) );
  MX4X1M U178 ( .A(\FIFO_REG[4][5] ), .B(\FIFO_REG[5][5] ), .C(
        \FIFO_REG[6][5] ), .D(\FIFO_REG[7][5] ), .S0(n155), .S1(N11), .Y(n149)
         );
  MX4X1M U179 ( .A(\FIFO_REG[0][5] ), .B(\FIFO_REG[1][5] ), .C(
        \FIFO_REG[2][5] ), .D(\FIFO_REG[3][5] ), .S0(n156), .S1(N11), .Y(n150)
         );
  BUFX2M U180 ( .A(N10), .Y(n155) );
  BUFX2M U181 ( .A(N10), .Y(n156) );
  INVX2M U182 ( .A(waddr[0]), .Y(n174) );
  INVX2M U183 ( .A(waddr[1]), .Y(n173) );
  INVXLM U184 ( .A(test_se), .Y(n178) );
  INVXLM U185 ( .A(n178), .Y(n179) );
  INVXLM U186 ( .A(n178), .Y(n180) );
  INVXLM U187 ( .A(n178), .Y(n181) );
  INVXLM U188 ( .A(n178), .Y(n182) );
endmodule


module FIFO_RD_addr3_test_1 ( rinc, rrst_n, rclk, rq2_wptr, raddr, rptr, 
        rempty, test_si, test_so, test_se );
  input [3:0] rq2_wptr;
  output [2:0] raddr;
  output [3:0] rptr;
  input rinc, rrst_n, rclk, test_si, test_se;
  output rempty, test_so;
  wire   \rptr_bin[3] , n14, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n13, n15,
         n16;
  wire   [3:0] wptr_gray;
  assign test_so = wptr_gray[3];

  SDFFRQX2M \rptr_bin_reg[3]  ( .D(n34), .SI(n14), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(\rptr_bin[3] ) );
  SDFFRQX2M \wptr_gray_reg[3]  ( .D(rq2_wptr[3]), .SI(wptr_gray[2]), .SE(
        test_se), .CK(rclk), .RN(rrst_n), .Q(wptr_gray[3]) );
  SDFFRQX2M \wptr_gray_reg[2]  ( .D(rq2_wptr[2]), .SI(wptr_gray[1]), .SE(
        test_se), .CK(rclk), .RN(rrst_n), .Q(wptr_gray[2]) );
  SDFFRQX2M \wptr_gray_reg[1]  ( .D(rq2_wptr[1]), .SI(wptr_gray[0]), .SE(
        test_se), .CK(rclk), .RN(rrst_n), .Q(wptr_gray[1]) );
  SDFFRQX2M \wptr_gray_reg[0]  ( .D(rq2_wptr[0]), .SI(rptr[3]), .SE(test_se), 
        .CK(rclk), .RN(rrst_n), .Q(wptr_gray[0]) );
  SDFFRQX2M \rptr_reg[0]  ( .D(n38), .SI(\rptr_bin[3] ), .SE(test_se), .CK(
        rclk), .RN(rrst_n), .Q(rptr[0]) );
  SDFFRQX2M \rptr_reg[3]  ( .D(n31), .SI(rptr[2]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[3]) );
  SDFFRQX2M \rptr_reg[2]  ( .D(n32), .SI(rptr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[2]) );
  SDFFRQX2M \rptr_reg[1]  ( .D(n33), .SI(rptr[0]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(rptr[1]) );
  SDFFRX1M \rptr_bin_reg[2]  ( .D(n35), .SI(raddr[1]), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[2]), .QN(n14) );
  SDFFRQX2M \rptr_bin_reg[0]  ( .D(n37), .SI(test_si), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[0]) );
  SDFFRQX2M \rptr_bin_reg[1]  ( .D(n36), .SI(n15), .SE(test_se), .CK(rclk), 
        .RN(rrst_n), .Q(raddr[1]) );
  INVX2M U15 ( .A(n19), .Y(n13) );
  INVX2M U16 ( .A(n22), .Y(n16) );
  INVX2M U17 ( .A(n17), .Y(rempty) );
  XNOR2X2M U18 ( .A(raddr[1]), .B(n15), .Y(n23) );
  NAND2X2M U19 ( .A(rinc), .B(n17), .Y(n19) );
  XNOR2X2M U20 ( .A(rptr[2]), .B(wptr_gray[2]), .Y(n30) );
  OAI2BB2X1M U21 ( .B0(n20), .B1(n19), .A0N(n19), .A1N(rptr[2]), .Y(n32) );
  XNOR2X2M U22 ( .A(n18), .B(n16), .Y(n20) );
  XNOR2X2M U23 ( .A(raddr[0]), .B(n19), .Y(n37) );
  OAI22X1M U24 ( .A0(n13), .A1(n14), .B0(n16), .B1(n19), .Y(n35) );
  NAND4X2M U25 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n17) );
  XNOR2X2M U26 ( .A(rptr[1]), .B(wptr_gray[1]), .Y(n27) );
  XNOR2X2M U27 ( .A(rptr[3]), .B(wptr_gray[3]), .Y(n29) );
  XNOR2X2M U28 ( .A(rptr[0]), .B(wptr_gray[0]), .Y(n28) );
  NAND2X2M U29 ( .A(raddr[1]), .B(raddr[0]), .Y(n25) );
  OAI2BB2X1M U30 ( .B0(n19), .B1(n26), .A0N(n19), .A1N(rptr[0]), .Y(n38) );
  XNOR2X2M U31 ( .A(n15), .B(n23), .Y(n26) );
  OAI2BB2X1M U32 ( .B0(n21), .B1(n19), .A0N(n19), .A1N(rptr[1]), .Y(n33) );
  XNOR2X2M U33 ( .A(n22), .B(n23), .Y(n21) );
  OAI2BB2X1M U34 ( .B0(n18), .B1(n19), .A0N(n19), .A1N(\rptr_bin[3] ), .Y(n34)
         );
  OAI2BB2X1M U35 ( .B0(n18), .B1(n19), .A0N(n19), .A1N(rptr[3]), .Y(n31) );
  XNOR2X2M U36 ( .A(\rptr_bin[3] ), .B(n24), .Y(n18) );
  NOR2X2M U37 ( .A(n25), .B(n14), .Y(n24) );
  CLKXOR2X2M U38 ( .A(n25), .B(n14), .Y(n22) );
  INVX2M U39 ( .A(raddr[0]), .Y(n15) );
  AO22X1M U40 ( .A0(n23), .A1(n13), .B0(n19), .B1(raddr[1]), .Y(n36) );
endmodule


module FIFO_WR_addr3_test_1 ( winc, wclk, wrst_n, wq2_rptr, wptr, waddr, wfull, 
        wclken, test_si, test_se );
  input [3:0] wq2_rptr;
  output [3:0] wptr;
  output [2:0] waddr;
  input winc, wclk, wrst_n, test_si, test_se;
  output wfull, wclken;
  wire   last_pulse, N6, N7, N8, N9, N17, n2, n3, n4, n5, n7, n8, n10, n12,
         n14, n15, n16, n17, n19, n21, n23, n25, n27, n29, n31, n33, n35, n37,
         n39, \r60/carry[3] , \r60/carry[2] , n1, n6, n9, n11;
  wire   [3:0] wptr_bin;
  wire   [3:0] rptr_gray;

  SDFFRQX2M \waddr_reg[2]  ( .D(n23), .SI(waddr[1]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[2]) );
  SDFFRQX2M \wptr_bin_reg[3]  ( .D(n33), .SI(wptr_bin[2]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr_bin[3]) );
  SDFFRQX2M \wptr_bin_reg[2]  ( .D(n35), .SI(wptr_bin[1]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(wptr_bin[2]) );
  SDFFRQX2M \wptr_bin_reg[1]  ( .D(n37), .SI(N6), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr_bin[1]) );
  SDFFRQX2M \wptr_bin_reg[0]  ( .D(n39), .SI(waddr[2]), .SE(test_se), .CK(wclk), .RN(wrst_n), .Q(wptr_bin[0]) );
  SDFFRQX2M \waddr_reg[1]  ( .D(n21), .SI(waddr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(waddr[1]) );
  SDFFRQX2M \waddr_reg[0]  ( .D(n19), .SI(rptr_gray[3]), .SE(test_se), .CK(
        wclk), .RN(wrst_n), .Q(waddr[0]) );
  SDFFRQX2M last_pulse_reg ( .D(winc), .SI(test_si), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(last_pulse) );
  SDFFRQX2M \rptr_gray_reg[0]  ( .D(wq2_rptr[0]), .SI(last_pulse), .SE(test_se), .CK(wclk), .RN(wrst_n), .Q(rptr_gray[0]) );
  SDFFRQX2M \rptr_gray_reg[3]  ( .D(wq2_rptr[3]), .SI(rptr_gray[2]), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(rptr_gray[3]) );
  SDFFRQX2M \rptr_gray_reg[2]  ( .D(wq2_rptr[2]), .SI(rptr_gray[1]), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(rptr_gray[2]) );
  SDFFRQX2M \rptr_gray_reg[1]  ( .D(wq2_rptr[1]), .SI(rptr_gray[0]), .SE(
        test_se), .CK(wclk), .RN(wrst_n), .Q(rptr_gray[1]) );
  SDFFRQX2M \wptr_reg[0]  ( .D(n25), .SI(wptr_bin[3]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[0]) );
  SDFFRQX2M \wptr_reg[1]  ( .D(n27), .SI(wptr[0]), .SE(test_se), .CK(wclk), 
        .RN(wrst_n), .Q(wptr[1]) );
  SDFFRQX2M \wptr_reg[3]  ( .D(n31), .SI(n9), .SE(test_se), .CK(wclk), .RN(
        wrst_n), .Q(wptr[3]) );
  SDFFRQX2M \wptr_reg[2]  ( .D(n29), .SI(n11), .SE(test_se), .CK(wclk), .RN(
        wrst_n), .Q(wptr[2]) );
  NOR3BX2M U3 ( .AN(winc), .B(last_pulse), .C(wfull), .Y(wclken) );
  OAI222X1M U4 ( .A0(N7), .A1(n8), .B0(N8), .B1(n7), .C0(wclken), .C1(n11), 
        .Y(n27) );
  INVX2M U5 ( .A(wclken), .Y(n1) );
  NAND2X2M U6 ( .A(N7), .B(wclken), .Y(n7) );
  NAND2X2M U7 ( .A(N9), .B(wclken), .Y(n10) );
  NAND2XLM U8 ( .A(N8), .B(wclken), .Y(n8) );
  AO21XLM U9 ( .A0(n1), .A1(wptr[0]), .B0(n5), .Y(n25) );
  OAI32X1M U10 ( .A0(n1), .A1(N7), .A2(wptr_bin[0]), .B0(n7), .B1(N6), .Y(n5)
         );
  AO21XLM U11 ( .A0(n1), .A1(wptr[3]), .B0(n12), .Y(n31) );
  OAI32X1M U12 ( .A0(n1), .A1(N9), .A2(n6), .B0(n10), .B1(N17), .Y(n12) );
  INVX2M U13 ( .A(N17), .Y(n6) );
  OAI222XLM U14 ( .A0(N8), .A1(n10), .B0(N9), .B1(n8), .C0(wclken), .C1(n9), 
        .Y(n29) );
  INVX2M U15 ( .A(wptr[2]), .Y(n9) );
  AND4X2M U16 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(wfull) );
  XNOR2X2M U17 ( .A(wptr[0]), .B(rptr_gray[0]), .Y(n14) );
  CLKXOR2X2M U18 ( .A(n11), .B(rptr_gray[1]), .Y(n15) );
  CLKXOR2X2M U19 ( .A(wptr[3]), .B(rptr_gray[3]), .Y(n17) );
  OAI2BB2X1M U20 ( .B0(n1), .B1(wptr_bin[0]), .A0N(n1), .A1N(wptr_bin[0]), .Y(
        n39) );
  OAI2BB2X1M U21 ( .B0(wptr_bin[0]), .B1(n1), .A0N(waddr[0]), .A1N(n1), .Y(n19) );
  OAI2BB2X1M U22 ( .B0(n2), .B1(n1), .A0N(waddr[1]), .A1N(n1), .Y(n21) );
  XNOR2X2M U23 ( .A(wptr_bin[1]), .B(wptr_bin[0]), .Y(n2) );
  OAI2BB2X1M U24 ( .B0(n3), .B1(n1), .A0N(waddr[2]), .A1N(n1), .Y(n23) );
  CLKXOR2X2M U25 ( .A(n4), .B(wptr_bin[2]), .Y(n3) );
  NAND2X2M U26 ( .A(wptr_bin[0]), .B(wptr_bin[1]), .Y(n4) );
  OAI2BB1X2M U27 ( .A0N(n1), .A1N(wptr_bin[1]), .B0(n7), .Y(n37) );
  OAI2BB1X2M U28 ( .A0N(wptr_bin[3]), .A1N(n1), .B0(n10), .Y(n33) );
  OAI2BB1X2M U29 ( .A0N(n1), .A1N(wptr_bin[2]), .B0(n8), .Y(n35) );
  CLKXOR2X2M U30 ( .A(wptr[2]), .B(rptr_gray[2]), .Y(n16) );
  INVX2M U31 ( .A(wptr[1]), .Y(n11) );
  ADDHX1M U32 ( .A(wptr_bin[3]), .B(\r60/carry[3] ), .CO(N17), .S(N9) );
  ADDHX1M U49 ( .A(wptr_bin[1]), .B(wptr_bin[0]), .CO(\r60/carry[2] ), .S(N7)
         );
  ADDHX1M U50 ( .A(wptr_bin[2]), .B(\r60/carry[2] ), .CO(\r60/carry[3] ), .S(
        N8) );
  CLKINVX1M U51 ( .A(wptr_bin[0]), .Y(N6) );
endmodule


module DF_SYNC_NUM_STAGES2_ptr_adr4_test_0 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_so, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   \sync_reg[3][1] , \sync_reg[3][0] , \sync_reg[2][1] ,
         \sync_reg[2][0] , \sync_reg[1][1] , \sync_reg[1][0] ,
         \sync_reg[0][1] , \sync_reg[0][0] ;
  assign test_so = \sync_reg[3][1] ;

  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(\sync_reg[2][1] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[3][1] ) );
  SDFFRQX2M \SYNC_reg[3]  ( .D(\sync_reg[3][1] ), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(\sync_reg[1][1] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[2][1] ) );
  SDFFRQX2M \SYNC_reg[2]  ( .D(\sync_reg[2][1] ), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(\sync_reg[0][1] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[1][1] ) );
  SDFFRQX2M \SYNC_reg[1]  ( .D(\sync_reg[1][1] ), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(SYNC[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[0][1] ) );
  SDFFRQX2M \SYNC_reg[0]  ( .D(\sync_reg[0][1] ), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[0]) );
endmodule


module DF_SYNC_NUM_STAGES2_ptr_adr4_test_1 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_so, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   \sync_reg[3][1] , \sync_reg[3][0] , \sync_reg[2][1] ,
         \sync_reg[2][0] , \sync_reg[1][1] , \sync_reg[1][0] ,
         \sync_reg[0][1] , \sync_reg[0][0] ;
  assign test_so = \sync_reg[3][1] ;

  SDFFRQX2M \sync_reg_reg[3][0]  ( .D(ASYNC[3]), .SI(\sync_reg[2][1] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[3][0] ) );
  SDFFRQX2M \sync_reg_reg[3][1]  ( .D(\sync_reg[3][0] ), .SI(\sync_reg[3][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[3][1] ) );
  SDFFRQX2M \SYNC_reg[3]  ( .D(\sync_reg[3][1] ), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sync_reg_reg[2][0]  ( .D(ASYNC[2]), .SI(\sync_reg[1][1] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[2][0] ) );
  SDFFRQX2M \sync_reg_reg[2][1]  ( .D(\sync_reg[2][0] ), .SI(\sync_reg[2][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[2][1] ) );
  SDFFRQX2M \sync_reg_reg[0][0]  ( .D(ASYNC[0]), .SI(SYNC[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sync_reg[0][0] ) );
  SDFFRQX2M \SYNC_reg[2]  ( .D(\sync_reg[2][1] ), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \SYNC_reg[1]  ( .D(\sync_reg[1][1] ), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \SYNC_reg[0]  ( .D(\sync_reg[0][1] ), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sync_reg_reg[1][0]  ( .D(ASYNC[1]), .SI(\sync_reg[0][1] ), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[1][0] ) );
  SDFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[1][0] ), .SI(\sync_reg[1][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[1][1] ) );
  SDFFRQX2M \sync_reg_reg[0][1]  ( .D(\sync_reg[0][0] ), .SI(\sync_reg[0][0] ), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(\sync_reg[0][1] ) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_addr3_test_1 ( wclk, wrst_n, winc, rclk, rinc, 
        rrst_n, wdata, wfull, rempty, rdata, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] wdata;
  output [7:0] rdata;
  input wclk, wrst_n, winc, rclk, rinc, rrst_n, test_si2, test_si1, test_se;
  output wfull, rempty, test_so2, test_so1;
  wire   wclken, n1, n2, n3, n4, n5, n6, n8, n9;
  wire   [2:0] waddr;
  wire   [2:0] raddr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] rptr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] wptr;
  assign test_so2 = wptr[3];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(wrst_n), .Y(n2) );
  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(rrst_n), .Y(n4) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_addr3_FIFO_DEPTH8_test_1 FIFO ( .wdata(wdata), 
        .wclken(wclken), .wrst_n(n1), .waddr(waddr), .wclk(wclk), .raddr(raddr), .rdata(rdata), .test_si2(test_si2), .test_si1(n8), .test_so2(n6), .test_so1(
        test_so1), .test_se(test_se) );
  FIFO_RD_addr3_test_1 fifo_rd ( .rinc(rinc), .rrst_n(n3), .rclk(rclk), 
        .rq2_wptr(rq2_wptr), .raddr(raddr), .rptr(rptr), .rempty(rempty), 
        .test_si(n6), .test_so(n5), .test_se(test_se) );
  FIFO_WR_addr3_test_1 fifo_wr ( .winc(winc), .wclk(wclk), .wrst_n(n1), 
        .wq2_rptr(wq2_rptr), .wptr(wptr), .waddr(waddr), .wfull(wfull), 
        .wclken(wclken), .test_si(n5), .test_se(test_se) );
  DF_SYNC_NUM_STAGES2_ptr_adr4_test_0 DF1 ( .CLK(rclk), .RST(n3), .ASYNC(wptr), 
        .SYNC(rq2_wptr), .test_si(test_si1), .test_so(n9), .test_se(test_se)
         );
  DF_SYNC_NUM_STAGES2_ptr_adr4_test_1 DF2 ( .CLK(wclk), .RST(n1), .ASYNC(rptr), 
        .SYNC(wq2_rptr), .test_si(n9), .test_so(n8), .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( clk, rst, lvl_sig, pulse_sig, test_si, test_so, 
        test_se );
  input clk, rst, lvl_sig, test_si, test_se;
  output pulse_sig, test_so;
  wire   pls_flop, rcv_flop;
  assign test_so = rcv_flop;

  SDFFRQX2M rcv_flop_reg ( .D(lvl_sig), .SI(pls_flop), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(rcv_flop) );
  SDFFRQX2M pls_flop_reg ( .D(rcv_flop), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(pls_flop) );
  NOR2BX2M U5 ( .AN(rcv_flop), .B(pls_flop), .Y(pulse_sig) );
endmodule


module clkdiv_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N3, clk_reg, N19, N20, N21, N22, N23, N24, N25, N26, N41, N42, N43,
         N44, N45, N46, N47, N48, n34, n35, n2, n3, n4, n5, n6, n7, n8, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68;
  wire   [7:0] counter;
  wire   [7:0] half_togg;
  wire   [7:0] half_togg_p1;
  assign test_so = n68;

  SDFFRQX2M clk_reg_reg ( .D(n35), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(clk_reg) );
  SDFFRQX2M \counter_reg[7]  ( .D(N48), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N45), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N47), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N46), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N41), .SI(clk_reg), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N43), .SI(n64), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N44), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N42), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFSQX1M toggle_reg ( .D(n34), .SI(counter[7]), .SE(test_se), .CK(i_ref_clk), .SN(i_rst_n), .Q(n68) );
  AND3X2M U6 ( .A(n21), .B(n22), .C(n8), .Y(n25) );
  OR2X2M U7 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  MX2X2M U15 ( .A(i_ref_clk), .B(clk_reg), .S0(N3), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(half_togg[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        half_togg[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(half_togg[2])
         );
  OR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U22 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(half_togg[3])
         );
  OR2X1M U23 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U24 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(half_togg[4])
         );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(half_togg[5]) );
  NOR3X1M U26 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(
        half_togg[7]) );
  OAI21X1M U27 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U28 ( .AN(half_togg[7]), .B(n6), .Y(half_togg[6]) );
  CLKXOR2X2M U29 ( .A(clk_reg), .B(n7), .Y(n35) );
  NOR2X1M U30 ( .A(n8), .B(n19), .Y(n7) );
  NAND4X1M U31 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n34) );
  MXI2X1M U32 ( .A(n24), .B(n25), .S0(n68), .Y(n20) );
  AND2X1M U33 ( .A(N26), .B(n25), .Y(N48) );
  AND2X1M U34 ( .A(N25), .B(n25), .Y(N47) );
  AND2X1M U35 ( .A(N24), .B(n25), .Y(N46) );
  AND2X1M U36 ( .A(N23), .B(n25), .Y(N45) );
  AND2X1M U37 ( .A(N22), .B(n25), .Y(N44) );
  AND2X1M U38 ( .A(N21), .B(n25), .Y(N43) );
  AND2X1M U39 ( .A(N20), .B(n25), .Y(N42) );
  AND2X1M U40 ( .A(N19), .B(n25), .Y(N41) );
  NOR2BX1M U41 ( .AN(n23), .B(n24), .Y(n8) );
  AND2X1M U42 ( .A(n26), .B(i_div_ratio[0]), .Y(n24) );
  MXI2X1M U43 ( .A(n27), .B(n28), .S0(n68), .Y(n26) );
  CLKNAND2X2M U44 ( .A(n29), .B(n30), .Y(n27) );
  NOR4X1M U45 ( .A(n31), .B(n32), .C(n33), .D(n36), .Y(n30) );
  CLKXOR2X2M U46 ( .A(half_togg_p1[3]), .B(counter[3]), .Y(n36) );
  CLKXOR2X2M U47 ( .A(half_togg_p1[2]), .B(counter[2]), .Y(n33) );
  CLKXOR2X2M U48 ( .A(half_togg_p1[1]), .B(counter[1]), .Y(n32) );
  CLKXOR2X2M U49 ( .A(half_togg_p1[0]), .B(counter[0]), .Y(n31) );
  NOR4X1M U50 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n29) );
  CLKXOR2X2M U51 ( .A(half_togg_p1[7]), .B(counter[7]), .Y(n40) );
  CLKXOR2X2M U52 ( .A(half_togg_p1[6]), .B(counter[6]), .Y(n39) );
  CLKXOR2X2M U53 ( .A(half_togg_p1[5]), .B(counter[5]), .Y(n38) );
  CLKXOR2X2M U54 ( .A(half_togg_p1[4]), .B(counter[4]), .Y(n37) );
  OR2X1M U55 ( .A(n28), .B(i_div_ratio[0]), .Y(n23) );
  NAND4X1M U56 ( .A(n22), .B(n41), .C(n42), .D(n43), .Y(n28) );
  NOR4BX1M U57 ( .AN(n44), .B(n45), .C(n46), .D(n47), .Y(n43) );
  OAI22X1M U58 ( .A0(counter[1]), .A1(n48), .B0(counter[0]), .B1(
        i_div_ratio[1]), .Y(n45) );
  AOI2BB2XLM U59 ( .B0(half_togg[6]), .B1(n49), .A0N(n50), .A1N(counter[5]), 
        .Y(n42) );
  CLKNAND2X2M U60 ( .A(half_togg[2]), .B(n51), .Y(n41) );
  OA21X1M U61 ( .A0(half_togg[7]), .A1(n52), .B0(n53), .Y(n22) );
  OAI2B11X1M U62 ( .A1N(half_togg[6]), .A0(counter[6]), .B0(n54), .C0(n44), 
        .Y(n53) );
  CLKNAND2X2M U63 ( .A(half_togg[7]), .B(n52), .Y(n44) );
  OAI22X1M U64 ( .A0(n55), .A1(n56), .B0(half_togg[6]), .B1(n49), .Y(n54) );
  CLKINVX1M U65 ( .A(counter[6]), .Y(n49) );
  AOI221XLM U66 ( .A0(counter[5]), .A1(n50), .B0(counter[4]), .B1(n57), .C0(
        n58), .Y(n56) );
  NOR3X1M U67 ( .A(n47), .B(n59), .C(n46), .Y(n58) );
  NOR2X1M U68 ( .A(n57), .B(counter[4]), .Y(n46) );
  AOI221XLM U69 ( .A0(counter[3]), .A1(n60), .B0(counter[2]), .B1(n61), .C0(
        n62), .Y(n59) );
  AOI221XLM U70 ( .A0(half_togg[2]), .A1(n51), .B0(n63), .B1(n64), .C0(n65), 
        .Y(n62) );
  AOI2B1X1M U71 ( .A1N(n63), .A0(counter[1]), .B0(n48), .Y(n65) );
  CLKINVX1M U72 ( .A(half_togg[1]), .Y(n48) );
  CLKINVX1M U73 ( .A(counter[1]), .Y(n64) );
  CLKNAND2X2M U74 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n63) );
  CLKINVX1M U75 ( .A(counter[2]), .Y(n51) );
  CLKINVX1M U76 ( .A(half_togg[2]), .Y(n61) );
  NOR2X1M U77 ( .A(n60), .B(counter[3]), .Y(n47) );
  CLKINVX1M U78 ( .A(half_togg[3]), .Y(n60) );
  CLKINVX1M U79 ( .A(half_togg[4]), .Y(n57) );
  NOR2X1M U80 ( .A(counter[5]), .B(n50), .Y(n55) );
  CLKINVX1M U81 ( .A(half_togg[5]), .Y(n50) );
  CLKINVX1M U82 ( .A(counter[7]), .Y(n52) );
  CLKINVX1M U83 ( .A(n19), .Y(n21) );
  NOR2BX1M U84 ( .AN(i_rst_n), .B(n19), .Y(N3) );
  OAI2BB1X1M U85 ( .A0N(n66), .A1N(n67), .B0(i_clk_en), .Y(n19) );
  NOR4X1M U86 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n67) );
  NOR3X1M U87 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n66) );
  clkdiv_0_DW01_inc_0 add_41 ( .A(counter), .SUM({N26, N25, N24, N23, N22, N21, 
        N20, N19}) );
  clkdiv_0_DW01_inc_1 add_59 ( .A(half_togg), .SUM(half_togg_p1) );
endmodule


module CLKDIV_MUX ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X2M U14 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  INVX2M U15 ( .A(IN[2]), .Y(n15) );
  INVX2M U16 ( .A(IN[5]), .Y(n14) );
  NOR4X1M U17 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U18 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U19 ( .A(IN[0]), .Y(n17) );
  INVX2M U20 ( .A(IN[1]), .Y(n16) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U22 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[4]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[7]) );
endmodule


module clkdiv_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_1_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clkdiv_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N3, clk_reg, N19, N20, N21, N22, N23, N24, N25, N26, N41, N42, N43,
         N44, N45, N46, N47, N48, n2, n3, n4, n5, n6, n7, n8, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70;
  wire   [7:0] counter;
  wire   [7:0] half_togg;
  wire   [7:0] half_togg_p1;
  assign test_so = n68;

  SDFFRQX2M clk_reg_reg ( .D(n69), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(clk_reg) );
  SDFFRQX2M \counter_reg[7]  ( .D(N48), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N45), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N47), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N46), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[0]  ( .D(N41), .SI(clk_reg), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N43), .SI(n64), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N44), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N42), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFSQX1M toggle_reg ( .D(n70), .SI(counter[7]), .SE(test_se), .CK(i_ref_clk), .SN(i_rst_n), .Q(n68) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  AND3X2M U7 ( .A(n21), .B(n22), .C(n8), .Y(n25) );
  MX2X2M U15 ( .A(i_ref_clk), .B(clk_reg), .S0(N3), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(half_togg[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        half_togg[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(half_togg[2])
         );
  OR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U22 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(half_togg[3])
         );
  OR2X1M U23 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U24 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(half_togg[4])
         );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(half_togg[5]) );
  NOR3X1M U26 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(
        half_togg[7]) );
  OAI21X1M U27 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U28 ( .AN(half_togg[7]), .B(n6), .Y(half_togg[6]) );
  CLKXOR2X2M U29 ( .A(clk_reg), .B(n7), .Y(n69) );
  NOR2X1M U30 ( .A(n8), .B(n19), .Y(n7) );
  NAND4X1M U31 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n70) );
  MXI2X1M U32 ( .A(n24), .B(n25), .S0(n68), .Y(n20) );
  AND2X1M U33 ( .A(N26), .B(n25), .Y(N48) );
  AND2X1M U34 ( .A(N25), .B(n25), .Y(N47) );
  AND2X1M U35 ( .A(N24), .B(n25), .Y(N46) );
  AND2X1M U36 ( .A(N23), .B(n25), .Y(N45) );
  AND2X1M U37 ( .A(N22), .B(n25), .Y(N44) );
  AND2X1M U38 ( .A(N21), .B(n25), .Y(N43) );
  AND2X1M U39 ( .A(N20), .B(n25), .Y(N42) );
  AND2X1M U40 ( .A(N19), .B(n25), .Y(N41) );
  NOR2BX1M U41 ( .AN(n23), .B(n24), .Y(n8) );
  AND2X1M U42 ( .A(n26), .B(i_div_ratio[0]), .Y(n24) );
  MXI2X1M U43 ( .A(n27), .B(n28), .S0(n68), .Y(n26) );
  CLKNAND2X2M U44 ( .A(n29), .B(n30), .Y(n27) );
  NOR4X1M U45 ( .A(n31), .B(n32), .C(n33), .D(n36), .Y(n30) );
  CLKXOR2X2M U46 ( .A(half_togg_p1[3]), .B(counter[3]), .Y(n36) );
  CLKXOR2X2M U47 ( .A(half_togg_p1[2]), .B(counter[2]), .Y(n33) );
  CLKXOR2X2M U48 ( .A(half_togg_p1[1]), .B(counter[1]), .Y(n32) );
  CLKXOR2X2M U49 ( .A(half_togg_p1[0]), .B(counter[0]), .Y(n31) );
  NOR4X1M U50 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n29) );
  CLKXOR2X2M U51 ( .A(half_togg_p1[7]), .B(counter[7]), .Y(n40) );
  CLKXOR2X2M U52 ( .A(half_togg_p1[6]), .B(counter[6]), .Y(n39) );
  CLKXOR2X2M U53 ( .A(half_togg_p1[5]), .B(counter[5]), .Y(n38) );
  CLKXOR2X2M U54 ( .A(half_togg_p1[4]), .B(counter[4]), .Y(n37) );
  OR2X1M U55 ( .A(n28), .B(i_div_ratio[0]), .Y(n23) );
  NAND4X1M U56 ( .A(n22), .B(n41), .C(n42), .D(n43), .Y(n28) );
  NOR4BX1M U57 ( .AN(n44), .B(n45), .C(n46), .D(n47), .Y(n43) );
  OAI22X1M U58 ( .A0(counter[1]), .A1(n48), .B0(counter[0]), .B1(
        i_div_ratio[1]), .Y(n45) );
  AOI2BB2XLM U59 ( .B0(half_togg[6]), .B1(n49), .A0N(n50), .A1N(counter[5]), 
        .Y(n42) );
  CLKNAND2X2M U60 ( .A(half_togg[2]), .B(n51), .Y(n41) );
  OA21X1M U61 ( .A0(half_togg[7]), .A1(n52), .B0(n53), .Y(n22) );
  OAI2B11X1M U62 ( .A1N(half_togg[6]), .A0(counter[6]), .B0(n54), .C0(n44), 
        .Y(n53) );
  CLKNAND2X2M U63 ( .A(half_togg[7]), .B(n52), .Y(n44) );
  OAI22X1M U64 ( .A0(n55), .A1(n56), .B0(half_togg[6]), .B1(n49), .Y(n54) );
  CLKINVX1M U65 ( .A(counter[6]), .Y(n49) );
  AOI221XLM U66 ( .A0(counter[5]), .A1(n50), .B0(counter[4]), .B1(n57), .C0(
        n58), .Y(n56) );
  NOR3X1M U67 ( .A(n47), .B(n59), .C(n46), .Y(n58) );
  NOR2X1M U68 ( .A(n57), .B(counter[4]), .Y(n46) );
  AOI221XLM U69 ( .A0(counter[3]), .A1(n60), .B0(counter[2]), .B1(n61), .C0(
        n62), .Y(n59) );
  AOI221XLM U70 ( .A0(half_togg[2]), .A1(n51), .B0(n63), .B1(n64), .C0(n65), 
        .Y(n62) );
  AOI2B1X1M U71 ( .A1N(n63), .A0(counter[1]), .B0(n48), .Y(n65) );
  CLKINVX1M U72 ( .A(half_togg[1]), .Y(n48) );
  CLKINVX1M U73 ( .A(counter[1]), .Y(n64) );
  CLKNAND2X2M U74 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n63) );
  CLKINVX1M U75 ( .A(counter[2]), .Y(n51) );
  CLKINVX1M U76 ( .A(half_togg[2]), .Y(n61) );
  NOR2X1M U77 ( .A(n60), .B(counter[3]), .Y(n47) );
  CLKINVX1M U78 ( .A(half_togg[3]), .Y(n60) );
  CLKINVX1M U79 ( .A(half_togg[4]), .Y(n57) );
  NOR2X1M U80 ( .A(counter[5]), .B(n50), .Y(n55) );
  CLKINVX1M U81 ( .A(half_togg[5]), .Y(n50) );
  CLKINVX1M U82 ( .A(counter[7]), .Y(n52) );
  CLKINVX1M U83 ( .A(n19), .Y(n21) );
  NOR2BX1M U84 ( .AN(i_rst_n), .B(n19), .Y(N3) );
  OAI2BB1X1M U85 ( .A0N(n66), .A1N(n67), .B0(i_clk_en), .Y(n19) );
  NOR4X1M U86 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n67) );
  NOR3X1M U87 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n66) );
  clkdiv_1_DW01_inc_0 add_41 ( .A(counter), .SUM({N26, N25, N24, N23, N22, N21, 
        N20, N19}) );
  clkdiv_1_DW01_inc_1 add_59 ( .A(half_togg), .SUM(half_togg_p1) );
endmodule


module FSM_tx_test_1 ( Data_Valid, PAR_EN, ser_done, clk, rst_n, ser_en, 
        mux_sel, par_en, busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, clk, rst_n, test_si, test_se;
  output ser_en, par_en, busy, test_so;
  wire   n6, n7, n8, n9, n4, n5;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = n5;

  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n4), .SE(test_se), 
        .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .RN(rst_n), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  NOR2X2M U6 ( .A(n4), .B(mux_sel[0]), .Y(n7) );
  INVX2M U7 ( .A(mux_sel[0]), .Y(ser_en) );
  OAI21X2M U8 ( .A0(n4), .A1(n5), .B0(mux_sel[0]), .Y(busy) );
  NAND2X2M U9 ( .A(n6), .B(mux_sel[0]), .Y(next_state[1]) );
  NAND2X2M U10 ( .A(current_state[0]), .B(n5), .Y(mux_sel[0]) );
  NOR2X2M U11 ( .A(current_state[1]), .B(current_state[2]), .Y(par_en) );
  OAI2BB2X1M U12 ( .B0(n6), .B1(n5), .A0N(n7), .A1N(ser_done), .Y(
        next_state[2]) );
  INVX2M U13 ( .A(current_state[2]), .Y(n5) );
  NAND2X2M U14 ( .A(n8), .B(n9), .Y(next_state[0]) );
  OAI2B1X2M U15 ( .A1N(ser_done), .A0(PAR_EN), .B0(n7), .Y(n9) );
  OAI21X2M U16 ( .A0(Data_Valid), .A1(current_state[0]), .B0(par_en), .Y(n8)
         );
  NAND2X2M U17 ( .A(current_state[1]), .B(current_state[0]), .Y(n6) );
  INVX2M U18 ( .A(current_state[1]), .Y(n4) );
  INVX2M U19 ( .A(n6), .Y(mux_sel[1]) );
endmodule


module Parity_Calc_test_1 ( P_DATA, Data_Valid, PAR_TYP, par_en, clk, PAR_bit, 
        test_si, test_se );
  input [7:0] P_DATA;
  input Data_Valid, PAR_TYP, par_en, clk, test_si, test_se;
  output PAR_bit;
  wire   N3, N6, n2, n3, n4, n5;

  SEDFFX1M PAR_bit_reg ( .D(N6), .SI(test_si), .E(N3), .SE(test_se), .CK(clk), 
        .Q(PAR_bit) );
  XNOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n5) );
  AND2X2M U5 ( .A(par_en), .B(Data_Valid), .Y(N3) );
  XOR3XLM U6 ( .A(PAR_TYP), .B(n2), .C(n3), .Y(N6) );
  XOR3XLM U7 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n4), .Y(n3) );
  XOR3XLM U8 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n5), .Y(n2) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n4) );
endmodule


module MUX ( mux_sel, ser_data, PAR_bit, TX_OUT );
  input [1:0] mux_sel;
  input ser_data, PAR_bit;
  output TX_OUT;
  wire   n2, n3, n1;

  INVX2M U3 ( .A(mux_sel[0]), .Y(n1) );
  OAI21X4M U4 ( .A0(n2), .A1(n1), .B0(n3), .Y(TX_OUT) );
  NAND3X2M U5 ( .A(mux_sel[1]), .B(n1), .C(ser_data), .Y(n3) );
  NOR2BX2M U6 ( .AN(mux_sel[1]), .B(PAR_bit), .Y(n2) );
endmodule


module serializer_test_1 ( P_DATA, ser_en, clk, rst_n, ser_done, ser_data, 
        test_si, test_se );
  input [7:0] P_DATA;
  input ser_en, clk, rst_n, test_si, test_se;
  output ser_done, ser_data;
  wire   N5, N6, N7, N20, N41, n27, n28, n29, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n2, n3, n4, n18,
         n19, n20, n21, n22, n25, n26;
  wire   [7:0] Register;

  SDFFRQX2M ser_done_reg ( .D(N41), .SI(ser_data), .SE(n26), .CK(clk), .RN(
        rst_n), .Q(ser_done) );
  SDFFRQX2M \Register_reg[5]  ( .D(n38), .SI(Register[4]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[5]) );
  SDFFRQX2M \Register_reg[1]  ( .D(n42), .SI(Register[0]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[1]) );
  SDFFRQX2M \Register_reg[7]  ( .D(n36), .SI(Register[6]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[7]) );
  SDFFRQX2M \Register_reg[3]  ( .D(n40), .SI(Register[2]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[3]) );
  SDFFRQX2M \Register_reg[6]  ( .D(n37), .SI(Register[5]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[6]) );
  SDFFRQX2M \Register_reg[2]  ( .D(n41), .SI(Register[1]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[2]) );
  SDFFRQX2M \Register_reg[4]  ( .D(n39), .SI(Register[3]), .SE(n26), .CK(clk), 
        .RN(rst_n), .Q(Register[4]) );
  SDFFRQX2M \Register_reg[0]  ( .D(n43), .SI(N7), .SE(n26), .CK(clk), .RN(
        rst_n), .Q(Register[0]) );
  SDFFRQX2M \Counter_reg[1]  ( .D(n45), .SI(N5), .SE(n26), .CK(clk), .RN(rst_n), .Q(N6) );
  SDFFRQX2M \Counter_reg[2]  ( .D(n44), .SI(N6), .SE(n26), .CK(clk), .RN(rst_n), .Q(N7) );
  SDFFRQX2M \Counter_reg[0]  ( .D(n46), .SI(test_si), .SE(n26), .CK(clk), .RN(
        rst_n), .Q(N5) );
  SDFFSQX1M ser_data_reg ( .D(n35), .SI(Register[7]), .SE(n26), .CK(clk), .SN(
        rst_n), .Q(ser_data) );
  INVX2M U17 ( .A(n29), .Y(n4) );
  NAND2X2M U18 ( .A(ser_en), .B(n18), .Y(n29) );
  INVX2M U19 ( .A(n28), .Y(n18) );
  INVX2M U20 ( .A(n32), .Y(n19) );
  NOR2X2M U21 ( .A(n22), .B(n20), .Y(n31) );
  NAND3X2M U22 ( .A(n22), .B(n21), .C(n20), .Y(n28) );
  NAND2X2M U23 ( .A(n34), .B(ser_en), .Y(n32) );
  OAI2BB2X1M U24 ( .B0(n32), .B1(n21), .A0N(n31), .A1N(n19), .Y(n44) );
  NOR2BX2M U25 ( .AN(ser_en), .B(n34), .Y(N41) );
  OAI32X1M U26 ( .A0(n32), .A1(N6), .A2(n20), .B0(n33), .B1(n22), .Y(n45) );
  NAND2X2M U27 ( .A(n19), .B(n20), .Y(n33) );
  NAND2X2M U28 ( .A(n31), .B(N7), .Y(n34) );
  INVX2M U29 ( .A(N5), .Y(n20) );
  MX4X1M U30 ( .A(Register[4]), .B(Register[5]), .C(Register[6]), .D(
        Register[7]), .S0(N5), .S1(N6), .Y(n2) );
  NOR2X2M U31 ( .A(N5), .B(n32), .Y(n46) );
  INVX2M U32 ( .A(N6), .Y(n22) );
  INVX2M U33 ( .A(N7), .Y(n21) );
  NAND2X2M U34 ( .A(ser_en), .B(n27), .Y(n35) );
  MXI2X1M U35 ( .A(P_DATA[0]), .B(N20), .S0(n28), .Y(n27) );
  MX2X2M U36 ( .A(n3), .B(n2), .S0(N7), .Y(N20) );
  MX4X1M U37 ( .A(Register[0]), .B(Register[1]), .C(Register[2]), .D(
        Register[3]), .S0(N5), .S1(N6), .Y(n3) );
  AO22X1M U38 ( .A0(P_DATA[0]), .A1(n4), .B0(Register[0]), .B1(n29), .Y(n43)
         );
  AO22X1M U39 ( .A0(P_DATA[1]), .A1(n4), .B0(Register[1]), .B1(n29), .Y(n42)
         );
  AO22X1M U40 ( .A0(P_DATA[2]), .A1(n4), .B0(Register[2]), .B1(n29), .Y(n41)
         );
  AO22X1M U41 ( .A0(P_DATA[3]), .A1(n4), .B0(Register[3]), .B1(n29), .Y(n40)
         );
  AO22X1M U42 ( .A0(P_DATA[4]), .A1(n4), .B0(Register[4]), .B1(n29), .Y(n39)
         );
  AO22X1M U43 ( .A0(P_DATA[5]), .A1(n4), .B0(Register[5]), .B1(n29), .Y(n38)
         );
  AO22X1M U44 ( .A0(P_DATA[6]), .A1(n4), .B0(Register[6]), .B1(n29), .Y(n37)
         );
  AO22X1M U45 ( .A0(P_DATA[7]), .A1(n4), .B0(Register[7]), .B1(n29), .Y(n36)
         );
  INVXLM U46 ( .A(test_se), .Y(n25) );
  INVXLM U47 ( .A(n25), .Y(n26) );
endmodule


module UART_tx_test_1 ( P_DATA, Data_Valid, clk, rst_n, PAR_TYP, PAR_EN, 
        TX_OUT, busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input Data_Valid, clk, rst_n, PAR_TYP, PAR_EN, test_si, test_se;
  output TX_OUT, busy, test_so;
  wire   ser_done, ser_en, par_en, PAR_bit, ser_data, n1, n2, n3;
  wire   [1:0] mux_sel;
  assign test_so = ser_done;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
  FSM_tx_test_1 fsm_dut ( .Data_Valid(Data_Valid), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .clk(clk), .rst_n(n1), .ser_en(ser_en), .mux_sel(mux_sel), 
        .par_en(par_en), .busy(busy), .test_si(test_si), .test_so(n3), 
        .test_se(test_se) );
  Parity_Calc_test_1 parity_dut ( .P_DATA(P_DATA), .Data_Valid(Data_Valid), 
        .PAR_TYP(PAR_TYP), .par_en(par_en), .clk(clk), .PAR_bit(PAR_bit), 
        .test_si(n3), .test_se(test_se) );
  MUX mux_dut ( .mux_sel(mux_sel), .ser_data(ser_data), .PAR_bit(PAR_bit), 
        .TX_OUT(TX_OUT) );
  serializer_test_1 serializer_dut ( .P_DATA(P_DATA), .ser_en(ser_en), .clk(
        clk), .rst_n(n1), .ser_done(ser_done), .ser_data(ser_data), .test_si(
        PAR_bit), .test_se(test_se) );
endmodule


module data_sampling_test_1 ( dat_samp_en, edge_cnt, prescale, RX_IN, clk, 
        rst_n, sampled_bit, test_si, test_se );
  input [4:0] edge_cnt;
  input [5:0] prescale;
  input dat_samp_en, RX_IN, clk, rst_n, test_si, test_se;
  output sampled_bit;
  wire   N12, N13, N14, N15, N16, N18, N19, N20, N21, N22, N23, N24, N25, N26,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         \sub_20/carry[4] , \sub_20/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n49, n50, n51, n52, n53, n54, n55,
         n56;
  wire   [1:0] counter;
  wire   [1:0] data;
  assign N12 = prescale[1];

  SDFFRQX2M \data_reg[1]  ( .D(n49), .SI(n55), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(data[1]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n47), .SI(n52), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(counter[1]) );
  SDFFRQX2M \data_reg[0]  ( .D(n46), .SI(n54), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(data[0]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n48), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(counter[0]) );
  SDFFRQX2M sampled_bit_reg ( .D(n45), .SI(data[1]), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(sampled_bit) );
  NOR2X2M U6 ( .A(prescale[5]), .B(\sub_20/carry[4] ), .Y(n1) );
  NAND3X2M U7 ( .A(dat_samp_en), .B(n53), .C(n41), .Y(n43) );
  INVX2M U8 ( .A(dat_samp_en), .Y(n51) );
  NOR3X2M U9 ( .A(N26), .B(N25), .C(N18), .Y(n41) );
  OAI22X1M U10 ( .A0(n54), .A1(n43), .B0(n52), .B1(n44), .Y(n47) );
  NAND3X2M U13 ( .A(n43), .B(n54), .C(dat_samp_en), .Y(n44) );
  INVX2M U14 ( .A(n36), .Y(n53) );
  INVX2M U15 ( .A(RX_IN), .Y(n56) );
  INVX2M U16 ( .A(n39), .Y(n49) );
  AOI32X1M U17 ( .A0(dat_samp_en), .A1(n40), .A2(RX_IN), .B0(data[1]), .B1(n50), .Y(n39) );
  INVX2M U18 ( .A(n40), .Y(n50) );
  OAI31X1M U19 ( .A0(n52), .A1(counter[1]), .A2(n41), .B0(dat_samp_en), .Y(n40) );
  OAI32X1M U20 ( .A0(n51), .A1(n34), .A2(n56), .B0(n55), .B1(n42), .Y(n46) );
  INVX2M U21 ( .A(n42), .Y(n34) );
  OAI31X1M U22 ( .A0(n41), .A1(counter[1]), .A2(counter[0]), .B0(dat_samp_en), 
        .Y(n42) );
  OR2X2M U23 ( .A(prescale[2]), .B(N12), .Y(n2) );
  OAI22X1M U24 ( .A0(n52), .A1(n43), .B0(counter[0]), .B1(n44), .Y(n48) );
  NOR2X2M U25 ( .A(n35), .B(n51), .Y(n45) );
  AOI22X1M U26 ( .A0(n36), .A1(n37), .B0(sampled_bit), .B1(n53), .Y(n35) );
  OAI21X2M U27 ( .A0(n56), .A1(n55), .B0(n38), .Y(n37) );
  OAI21X2M U28 ( .A0(RX_IN), .A1(data[0]), .B0(data[1]), .Y(n38) );
  INVX2M U29 ( .A(prescale[2]), .Y(N13) );
  NOR2X2M U30 ( .A(n54), .B(counter[0]), .Y(n36) );
  INVX2M U31 ( .A(counter[1]), .Y(n54) );
  INVX2M U32 ( .A(counter[0]), .Y(n52) );
  INVX2M U33 ( .A(data[0]), .Y(n55) );
  XNOR2X1M U34 ( .A(\sub_20/carry[4] ), .B(prescale[5]), .Y(N16) );
  OR2X1M U35 ( .A(prescale[4]), .B(\sub_20/carry[3] ), .Y(\sub_20/carry[4] )
         );
  XNOR2X1M U36 ( .A(\sub_20/carry[3] ), .B(prescale[4]), .Y(N15) );
  OR2X1M U37 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_20/carry[3] ) );
  XNOR2X1M U38 ( .A(prescale[2]), .B(prescale[3]), .Y(N14) );
  CLKINVX1M U39 ( .A(N12), .Y(N19) );
  OAI2BB1X1M U40 ( .A0N(N12), .A1N(prescale[2]), .B0(n2), .Y(N20) );
  OR2X1M U41 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U42 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N21) );
  XNOR2X1M U43 ( .A(prescale[4]), .B(n3), .Y(N22) );
  NOR3X1M U44 ( .A(prescale[4]), .B(prescale[5]), .C(n3), .Y(N24) );
  OAI21X1M U45 ( .A0(prescale[4]), .A1(n3), .B0(prescale[5]), .Y(n4) );
  NAND2BX1M U46 ( .AN(N24), .B(n4), .Y(N23) );
  NOR2BX1M U47 ( .AN(N12), .B(edge_cnt[0]), .Y(n5) );
  OAI2B2X1M U48 ( .A1N(edge_cnt[1]), .A0(n5), .B0(N13), .B1(n5), .Y(n8) );
  NOR2BX1M U49 ( .AN(edge_cnt[0]), .B(N12), .Y(n6) );
  OAI2B2X1M U50 ( .A1N(N13), .A0(n6), .B0(edge_cnt[1]), .B1(n6), .Y(n7) );
  NAND3BX1M U51 ( .AN(n1), .B(n8), .C(n7), .Y(n12) );
  CLKXOR2X2M U52 ( .A(N16), .B(edge_cnt[4]), .Y(n11) );
  CLKXOR2X2M U53 ( .A(N14), .B(edge_cnt[2]), .Y(n10) );
  CLKXOR2X2M U54 ( .A(N15), .B(edge_cnt[3]), .Y(n9) );
  NOR4X1M U55 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(N18) );
  NOR2BX1M U56 ( .AN(N19), .B(edge_cnt[0]), .Y(n13) );
  OAI2B2X1M U57 ( .A1N(edge_cnt[1]), .A0(n13), .B0(N20), .B1(n13), .Y(n16) );
  NOR2BX1M U58 ( .AN(edge_cnt[0]), .B(N19), .Y(n14) );
  OAI2B2X1M U59 ( .A1N(N20), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n15) );
  NAND3BX1M U60 ( .AN(N24), .B(n16), .C(n15), .Y(n20) );
  CLKXOR2X2M U61 ( .A(N23), .B(edge_cnt[4]), .Y(n19) );
  CLKXOR2X2M U62 ( .A(N21), .B(edge_cnt[2]), .Y(n18) );
  CLKXOR2X2M U63 ( .A(N22), .B(edge_cnt[3]), .Y(n17) );
  NOR4X1M U64 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(N25) );
  CLKXOR2X2M U65 ( .A(prescale[3]), .B(edge_cnt[2]), .Y(n33) );
  NOR2BX1M U66 ( .AN(N12), .B(edge_cnt[0]), .Y(n26) );
  OAI2B2X1M U67 ( .A1N(edge_cnt[1]), .A0(n26), .B0(prescale[2]), .B1(n26), .Y(
        n29) );
  NOR2BX1M U68 ( .AN(edge_cnt[0]), .B(N12), .Y(n27) );
  OAI2B2X1M U69 ( .A1N(prescale[2]), .A0(n27), .B0(edge_cnt[1]), .B1(n27), .Y(
        n28) );
  CLKNAND2X2M U70 ( .A(n29), .B(n28), .Y(n32) );
  CLKXOR2X2M U71 ( .A(prescale[4]), .B(edge_cnt[3]), .Y(n31) );
  CLKXOR2X2M U72 ( .A(prescale[5]), .B(edge_cnt[4]), .Y(n30) );
  NOR4X1M U73 ( .A(n33), .B(n32), .C(n31), .D(n30), .Y(N26) );
endmodule


module edge_bit_counter_test_1 ( enable, prescale, clk, rst_n, start_frame, 
        bit_cnt, edge_cnt, test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [4:0] edge_cnt;
  input enable, clk, rst_n, start_frame, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N13, N14, N20, N21, N22, N23, N24, N35,
         N36, N37, N38, N39, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, \add_25/carry[4] , \add_25/carry[3] , \add_25/carry[2] , n1, n2,
         n3, n4, n14, n15, n16, n17, n18, n30, n31, n32, n33, n34, n35, n36,
         n37;

  SDFFRQX2M \bit_cnt_reg[3]  ( .D(n26), .SI(n37), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(bit_cnt[3]) );
  SDFFRQX2M \bit_cnt_reg[2]  ( .D(n27), .SI(n36), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(bit_cnt[2]) );
  SDFFRQX2M \bit_cnt_reg[1]  ( .D(n28), .SI(n35), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(bit_cnt[1]) );
  SDFFRQX2M \bit_cnt_reg[0]  ( .D(n29), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(bit_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[4]  ( .D(N39), .SI(edge_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(edge_cnt[4]) );
  SDFFRQX2M \edge_cnt_reg[0]  ( .D(N35), .SI(bit_cnt[3]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(edge_cnt[0]) );
  SDFFRQX2M \edge_cnt_reg[3]  ( .D(N38), .SI(edge_cnt[2]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(edge_cnt[3]) );
  SDFFRQX2M \edge_cnt_reg[2]  ( .D(N37), .SI(edge_cnt[1]), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(edge_cnt[2]) );
  SDFFRQX2M \edge_cnt_reg[1]  ( .D(N36), .SI(N20), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(edge_cnt[1]) );
  INVX2M U7 ( .A(n25), .Y(n33) );
  NOR2X2M U8 ( .A(n34), .B(N14), .Y(n25) );
  AOI21X2M U14 ( .A0(n35), .A1(n24), .B0(n25), .Y(n23) );
  AND2X2M U15 ( .A(N21), .B(n25), .Y(N36) );
  AND2X2M U16 ( .A(N22), .B(n25), .Y(N37) );
  AND2X2M U17 ( .A(N23), .B(n25), .Y(N38) );
  INVX2M U18 ( .A(n24), .Y(n34) );
  OAI32X1M U19 ( .A0(n34), .A1(bit_cnt[0]), .A2(n25), .B0(n35), .B1(n33), .Y(
        n29) );
  OAI32X1M U20 ( .A0(n21), .A1(bit_cnt[2]), .A2(n36), .B0(n22), .B1(n37), .Y(
        n27) );
  INVX2M U21 ( .A(bit_cnt[2]), .Y(n37) );
  OA21X2M U22 ( .A0(n34), .A1(bit_cnt[1]), .B0(n23), .Y(n22) );
  OAI22X1M U23 ( .A0(n23), .A1(n36), .B0(bit_cnt[1]), .B1(n21), .Y(n28) );
  OR2X2M U24 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  NAND3X2M U25 ( .A(bit_cnt[0]), .B(n33), .C(n24), .Y(n21) );
  NOR2X2M U26 ( .A(n19), .B(n34), .Y(n26) );
  CLKXOR2X2M U27 ( .A(n20), .B(bit_cnt[3]), .Y(n19) );
  NAND4X2M U28 ( .A(bit_cnt[2]), .B(N14), .C(bit_cnt[1]), .D(bit_cnt[0]), .Y(
        n20) );
  AND2X2M U29 ( .A(N24), .B(n25), .Y(N39) );
  AND2X2M U30 ( .A(N20), .B(n25), .Y(N35) );
  NOR2BX2M U31 ( .AN(enable), .B(start_frame), .Y(n24) );
  INVX2M U32 ( .A(bit_cnt[0]), .Y(n35) );
  INVX2M U33 ( .A(bit_cnt[1]), .Y(n36) );
  ADDHX1M U34 ( .A(edge_cnt[1]), .B(edge_cnt[0]), .CO(\add_25/carry[2] ), .S(
        N21) );
  ADDHX1M U35 ( .A(edge_cnt[2]), .B(\add_25/carry[2] ), .CO(\add_25/carry[3] ), 
        .S(N22) );
  ADDHX1M U36 ( .A(edge_cnt[3]), .B(\add_25/carry[3] ), .CO(\add_25/carry[4] ), 
        .S(N23) );
  CLKINVX1M U37 ( .A(prescale[0]), .Y(N7) );
  OAI2BB1X1M U38 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N8) );
  OR2X1M U39 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U40 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  OR2X1M U41 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U42 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N10) );
  OR2X1M U43 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U44 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N11) );
  NOR2X1M U45 ( .A(n4), .B(prescale[5]), .Y(N13) );
  AO21XLM U46 ( .A0(n4), .A1(prescale[5]), .B0(N13), .Y(N12) );
  CLKINVX1M U47 ( .A(edge_cnt[0]), .Y(N20) );
  CLKXOR2X2M U48 ( .A(\add_25/carry[4] ), .B(edge_cnt[4]), .Y(N24) );
  NOR2BX1M U49 ( .AN(edge_cnt[0]), .B(N7), .Y(n14) );
  OAI2B2X1M U50 ( .A1N(N8), .A0(n14), .B0(edge_cnt[1]), .B1(n14), .Y(n17) );
  NOR2BX1M U51 ( .AN(N7), .B(edge_cnt[0]), .Y(n15) );
  OAI2B2X1M U52 ( .A1N(edge_cnt[1]), .A0(n15), .B0(N8), .B1(n15), .Y(n16) );
  NAND4BBX1M U53 ( .AN(N13), .BN(N12), .C(n17), .D(n16), .Y(n32) );
  CLKXOR2X2M U54 ( .A(N11), .B(edge_cnt[4]), .Y(n31) );
  CLKXOR2X2M U55 ( .A(N9), .B(edge_cnt[2]), .Y(n30) );
  CLKXOR2X2M U56 ( .A(N10), .B(edge_cnt[3]), .Y(n18) );
  NOR4X1M U57 ( .A(n32), .B(n31), .C(n30), .D(n18), .Y(N14) );
endmodule


module deserializer_test_1 ( deser_en, sampled_bit, clk, rst_n, error_happened, 
        P_DATA, test_so, test_se );
  output [7:0] P_DATA;
  input deser_en, sampled_bit, clk, rst_n, error_happened, test_se;
  output test_so;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n12, n13, n14, n15, n16, n17, n47, n48;
  wire   [2:0] counter;
  assign test_so = n17;

  SDFFRQX2M \P_DATA_reg[5]  ( .D(n37), .SI(P_DATA[4]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n41), .SI(P_DATA[0]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n42), .SI(sampled_bit), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n38), .SI(P_DATA[3]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n39), .SI(P_DATA[2]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n36), .SI(P_DATA[5]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n40), .SI(P_DATA[1]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[2]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n44), .SI(n15), .SE(n48), .CK(clk), .RN(
        rst_n), .Q(counter[1]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n35), .SI(P_DATA[6]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(P_DATA[7]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n43), .SI(n16), .SE(n48), .CK(clk), .RN(
        rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n45), .SI(P_DATA[7]), .SE(n48), .CK(clk), 
        .RN(rst_n), .Q(counter[0]) );
  INVX2M U14 ( .A(n33), .Y(n12) );
  NAND2X2M U15 ( .A(n13), .B(n33), .Y(n34) );
  NAND2X2M U16 ( .A(deser_en), .B(n13), .Y(n33) );
  NOR2BX2M U17 ( .AN(n34), .B(n23), .Y(n31) );
  OAI21BX1M U18 ( .A0(n34), .A1(n15), .B0N(n23), .Y(n45) );
  OAI21X2M U19 ( .A0(n31), .A1(n16), .B0(n25), .Y(n44) );
  INVX2M U20 ( .A(error_happened), .Y(n13) );
  NOR2X2M U21 ( .A(n16), .B(n15), .Y(n21) );
  OAI2BB2X1M U22 ( .B0(n28), .B1(n18), .A0N(P_DATA[2]), .A1N(n28), .Y(n40) );
  AOI31X2M U23 ( .A0(n23), .A1(n17), .A2(counter[1]), .B0(error_happened), .Y(
        n28) );
  OAI2BB2X1M U24 ( .B0(n22), .B1(n18), .A0N(P_DATA[6]), .A1N(n22), .Y(n36) );
  AOI31X2M U25 ( .A0(n23), .A1(counter[1]), .A2(counter[2]), .B0(
        error_happened), .Y(n22) );
  OAI2BB2X1M U26 ( .B0(n26), .B1(n18), .A0N(P_DATA[4]), .A1N(n26), .Y(n38) );
  AOI31X2M U27 ( .A0(n23), .A1(n16), .A2(counter[2]), .B0(error_happened), .Y(
        n26) );
  OAI2BB2X1M U28 ( .B0(n30), .B1(n18), .A0N(P_DATA[0]), .A1N(n30), .Y(n42) );
  AOI31X2M U29 ( .A0(n23), .A1(n17), .A2(n16), .B0(error_happened), .Y(n30) );
  OAI2BB2X1M U30 ( .B0(n27), .B1(n18), .A0N(P_DATA[3]), .A1N(n27), .Y(n39) );
  AOI31X2M U31 ( .A0(n21), .A1(n17), .A2(n12), .B0(error_happened), .Y(n27) );
  OAI31X1M U32 ( .A0(n17), .A1(n14), .A2(n18), .B0(n19), .Y(n35) );
  INVX2M U33 ( .A(n21), .Y(n14) );
  NAND2X2M U34 ( .A(n20), .B(P_DATA[7]), .Y(n19) );
  AOI31X2M U35 ( .A0(n21), .A1(deser_en), .A2(counter[2]), .B0(error_happened), 
        .Y(n20) );
  OAI2BB2X1M U36 ( .B0(n29), .B1(n18), .A0N(P_DATA[1]), .A1N(n29), .Y(n41) );
  AOI2B1X1M U37 ( .A1N(n25), .A0(n17), .B0(error_happened), .Y(n29) );
  OAI2BB2X1M U38 ( .B0(n24), .B1(n18), .A0N(P_DATA[5]), .A1N(n24), .Y(n37) );
  AOI2B1X1M U39 ( .A1N(n25), .A0(counter[2]), .B0(error_happened), .Y(n24) );
  NOR2X2M U40 ( .A(n33), .B(counter[0]), .Y(n23) );
  NAND2X2M U41 ( .A(sampled_bit), .B(n12), .Y(n18) );
  NAND3X2M U42 ( .A(n12), .B(n16), .C(counter[0]), .Y(n25) );
  OAI22X1M U43 ( .A0(n31), .A1(n17), .B0(n32), .B1(n33), .Y(n43) );
  AOI22X1M U44 ( .A0(n21), .A1(n17), .B0(counter[2]), .B1(n16), .Y(n32) );
  INVX2M U45 ( .A(counter[1]), .Y(n16) );
  INVX2M U46 ( .A(counter[2]), .Y(n17) );
  INVX2M U47 ( .A(counter[0]), .Y(n15) );
  INVXLM U48 ( .A(test_se), .Y(n47) );
  INVXLM U49 ( .A(n47), .Y(n48) );
endmodule


module parity_check_test_1 ( par_chk_en, PAR_TYP, clk, rst_n, P_DATA, 
        sampled_bit, PAR_EN, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input par_chk_en, PAR_TYP, clk, rst_n, sampled_bit, PAR_EN, test_si, test_se;
  output par_err;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n2;

  SDFFRQX2M par_err_reg ( .D(n10), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(par_err) );
  XOR3XLM U4 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n8), .Y(n7) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n8) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n9), .Y(n6) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n9) );
  NOR2BX2M U8 ( .AN(PAR_EN), .B(n3), .Y(n10) );
  AOI22X1M U9 ( .A0(par_chk_en), .A1(n4), .B0(par_err), .B1(n2), .Y(n3) );
  INVX2M U10 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U11 ( .A(n5), .B(n6), .C(n7), .Y(n4) );
  CLKXOR2X2M U12 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
endmodule


module start_check_test_1 ( strt_chk_en, sampled_bit, clk, rst_n, strt_glitch, 
        test_si, test_se );
  input strt_chk_en, sampled_bit, clk, rst_n, test_si, test_se;
  output strt_glitch;
  wire   n2;

  SDFFRQX2M strt_glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst_n), .Q(strt_glitch) );
  AO2B2X2M U2 ( .B0(strt_chk_en), .B1(sampled_bit), .A0(strt_glitch), .A1N(
        strt_chk_en), .Y(n2) );
endmodule


module stop_check_test_1 ( stp_chk_en, clk, rst_n, sampled_bit, stp_err, 
        test_si, test_se );
  input stp_chk_en, clk, rst_n, sampled_bit, test_si, test_se;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module FSM_test_1 ( RX_IN, bit_cnt, edge_cnt, PAR_EN, par_err, strt_glitch, 
        stp_err, clk, rst_n, prescale, dat_samp_en, enable, deser_en, 
        data_valid, par_chk_en, strt_chk_en, stp_chk_en, error_happened, 
        start_frame, test_si, test_se );
  input [3:0] bit_cnt;
  input [4:0] edge_cnt;
  input [5:0] prescale;
  input RX_IN, PAR_EN, par_err, strt_glitch, stp_err, clk, rst_n, test_si,
         test_se;
  output dat_samp_en, enable, deser_en, data_valid, par_chk_en, strt_chk_en,
         stp_chk_en, error_happened, start_frame;
  wire   N19, N20, N21, N22, N23, N24, N25, last_edge, N27, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n1, n2, n3, n4, n9,
         n10, n11, n12, n13, n14, n29, n30, n31, n32, n33, n34, n35, n36;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFRQX2M start_frame_reg ( .D(N27), .SI(n34), .SE(test_se), .CK(clk), .RN(
        rst_n), .Q(start_frame) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst_n), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(n32), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst_n), .Q(current_state[0]) );
  NOR3BX2M U5 ( .AN(current_state[1]), .B(current_state[0]), .C(n34), .Y(
        stp_chk_en) );
  NOR3X8M U6 ( .A(current_state[0]), .B(current_state[1]), .C(n34), .Y(
        error_happened) );
  AOI221XLM U9 ( .A0(n36), .A1(par_chk_en), .B0(n35), .B1(strt_chk_en), .C0(
        n23), .Y(n20) );
  INVX2M U10 ( .A(last_edge), .Y(n36) );
  NOR3X2M U11 ( .A(n36), .B(next_state[1]), .C(n20), .Y(N27) );
  INVX2M U12 ( .A(n20), .Y(n32) );
  NAND3X2M U13 ( .A(n22), .B(n18), .C(n31), .Y(dat_samp_en) );
  INVX2M U14 ( .A(stp_chk_en), .Y(n31) );
  NOR2X2M U15 ( .A(n18), .B(n34), .Y(par_chk_en) );
  OAI2BB2X1M U16 ( .B0(n21), .B1(RX_IN), .A0N(n24), .A1N(n34), .Y(n23) );
  OAI32X1M U17 ( .A0(RX_IN), .A1(current_state[1]), .A2(current_state[0]), 
        .B0(n25), .B1(n18), .Y(n24) );
  NOR4BX1M U18 ( .AN(bit_cnt[3]), .B(n26), .C(n36), .D(PAR_EN), .Y(n25) );
  NOR3X2M U19 ( .A(n36), .B(current_state[2]), .C(n18), .Y(deser_en) );
  OR2X2M U20 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  NAND3BX2M U21 ( .AN(stp_err), .B(last_edge), .C(stp_chk_en), .Y(n21) );
  OAI21XLM U22 ( .A0(last_edge), .A1(n31), .B0(n27), .Y(next_state[1]) );
  AOI31XLM U23 ( .A0(n33), .A1(n35), .A2(last_edge), .B0(n28), .Y(n27) );
  INVX2M U24 ( .A(n22), .Y(n33) );
  AOI31XLM U25 ( .A0(last_edge), .A1(current_state[2]), .A2(par_err), .B0(n18), 
        .Y(n28) );
  NAND4BX1M U26 ( .AN(par_chk_en), .B(n15), .C(n16), .D(n17), .Y(next_state[2]) );
  AOI22X1M U27 ( .A0(stp_err), .A1(stp_chk_en), .B0(strt_glitch), .B1(
        strt_chk_en), .Y(n17) );
  NAND4BXLM U28 ( .AN(n18), .B(bit_cnt[3]), .C(last_edge), .D(n19), .Y(n15) );
  OAI21X2M U29 ( .A0(stp_chk_en), .A1(error_happened), .B0(n36), .Y(n16) );
  NOR2X2M U30 ( .A(par_err), .B(n21), .Y(data_valid) );
  NAND2X2M U31 ( .A(current_state[1]), .B(current_state[0]), .Y(n18) );
  NAND2X2M U32 ( .A(current_state[0]), .B(n34), .Y(n22) );
  INVX2M U33 ( .A(current_state[2]), .Y(n34) );
  OR2X2M U34 ( .A(error_happened), .B(dat_samp_en), .Y(enable) );
  OR3X2M U35 ( .A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), .Y(n26) );
  NOR3X2M U36 ( .A(bit_cnt[0]), .B(bit_cnt[2]), .C(bit_cnt[1]), .Y(n19) );
  NOR2X2M U37 ( .A(n22), .B(current_state[1]), .Y(strt_chk_en) );
  INVX2M U38 ( .A(strt_glitch), .Y(n35) );
  CLKINVX1M U39 ( .A(prescale[0]), .Y(N19) );
  OAI2BB1X1M U40 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N20) );
  OR2X1M U41 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OAI2BB1X1M U42 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N21) );
  OR2X1M U43 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1X1M U44 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N22) );
  OR2X1M U45 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OAI2BB1X1M U46 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N23) );
  NOR2X1M U47 ( .A(n4), .B(prescale[5]), .Y(N25) );
  AO21XLM U48 ( .A0(n4), .A1(prescale[5]), .B0(N25), .Y(N24) );
  NOR2BX1M U49 ( .AN(edge_cnt[0]), .B(N19), .Y(n9) );
  OAI2B2X1M U50 ( .A1N(N20), .A0(n9), .B0(edge_cnt[1]), .B1(n9), .Y(n12) );
  NOR2BX1M U51 ( .AN(N19), .B(edge_cnt[0]), .Y(n10) );
  OAI2B2X1M U52 ( .A1N(edge_cnt[1]), .A0(n10), .B0(N20), .B1(n10), .Y(n11) );
  NAND4BBX1M U53 ( .AN(N25), .BN(N24), .C(n12), .D(n11), .Y(n30) );
  CLKXOR2X2M U54 ( .A(N23), .B(edge_cnt[4]), .Y(n29) );
  CLKXOR2X2M U55 ( .A(N21), .B(edge_cnt[2]), .Y(n14) );
  CLKXOR2X2M U56 ( .A(N22), .B(edge_cnt[3]), .Y(n13) );
  NOR4X1M U57 ( .A(n30), .B(n29), .C(n14), .D(n13), .Y(last_edge) );
endmodule


module UART_RX_test_1 ( RX_IN, prescale, PAR_EN, PAR_TYP, clk, rst_n, 
        data_valid, error_happened, P_DATA, test_si, test_so, test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, clk, rst_n, test_si, test_se;
  output data_valid, error_happened, test_so;
  wire   dat_samp_en, sampled_bit, enable, start_frame, deser_en, par_chk_en,
         par_err, strt_chk_en, strt_glitch, stp_chk_en, stp_err, n1, n2, n3;
  wire   [4:0] edge_cnt;
  wire   [3:0] bit_cnt;
  assign test_so = strt_glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(rst_n), .Y(n2) );
  data_sampling_test_1 dat_samp_dut ( .dat_samp_en(dat_samp_en), .edge_cnt(
        edge_cnt), .prescale(prescale), .RX_IN(RX_IN), .clk(clk), .rst_n(n1), 
        .sampled_bit(sampled_bit), .test_si(start_frame), .test_se(test_se) );
  edge_bit_counter_test_1 edge_dut ( .enable(enable), .prescale(prescale), 
        .clk(clk), .rst_n(n1), .start_frame(start_frame), .bit_cnt(bit_cnt), 
        .edge_cnt(edge_cnt), .test_si(n3), .test_se(test_se) );
  deserializer_test_1 deserializer_dut ( .deser_en(deser_en), .sampled_bit(
        sampled_bit), .clk(clk), .rst_n(n1), .error_happened(error_happened), 
        .P_DATA(P_DATA), .test_so(n3), .test_se(test_se) );
  parity_check_test_1 parity_chk_dut ( .par_chk_en(par_chk_en), .PAR_TYP(
        PAR_TYP), .clk(clk), .rst_n(n1), .P_DATA(P_DATA), .sampled_bit(
        sampled_bit), .PAR_EN(PAR_EN), .par_err(par_err), .test_si(edge_cnt[4]), .test_se(test_se) );
  start_check_test_1 strt_dut ( .strt_chk_en(strt_chk_en), .sampled_bit(
        sampled_bit), .clk(clk), .rst_n(n1), .strt_glitch(strt_glitch), 
        .test_si(stp_err), .test_se(test_se) );
  stop_check_test_1 stop_dut ( .stp_chk_en(stp_chk_en), .clk(clk), .rst_n(n1), 
        .sampled_bit(sampled_bit), .stp_err(stp_err), .test_si(par_err), 
        .test_se(test_se) );
  FSM_test_1 FSM_dut ( .RX_IN(RX_IN), .bit_cnt(bit_cnt), .edge_cnt(edge_cnt), 
        .PAR_EN(PAR_EN), .par_err(par_err), .strt_glitch(strt_glitch), 
        .stp_err(stp_err), .clk(clk), .rst_n(n1), .prescale(prescale), 
        .dat_samp_en(dat_samp_en), .enable(enable), .deser_en(deser_en), 
        .data_valid(data_valid), .par_chk_en(par_chk_en), .strt_chk_en(
        strt_chk_en), .stp_chk_en(stp_chk_en), .error_happened(error_happened), 
        .start_frame(start_frame), .test_si(test_si), .test_se(test_se) );
endmodule


module UART_test_1 ( TX_CLK, TX_IN_P, TX_IN_V, RST, RX_IN_S, prescale, RX_CLK, 
        PAR_TYP, PAR_EN, TX_OUT_S, TX_OUT_V, RX_OUT_P, RX_OUT_V, RX_Error, 
        test_si, test_so, test_se );
  input [7:0] TX_IN_P;
  input [5:0] prescale;
  output [7:0] RX_OUT_P;
  input TX_CLK, TX_IN_V, RST, RX_IN_S, RX_CLK, PAR_TYP, PAR_EN, test_si,
         test_se;
  output TX_OUT_S, TX_OUT_V, RX_OUT_V, RX_Error, test_so;
  wire   n1, n2, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_tx_test_1 Uart_tx ( .P_DATA(TX_IN_P), .Data_Valid(TX_IN_V), .clk(TX_CLK), .rst_n(n1), .PAR_TYP(PAR_TYP), .PAR_EN(PAR_EN), .TX_OUT(TX_OUT_S), .busy(
        TX_OUT_V), .test_si(test_si), .test_so(n4), .test_se(test_se) );
  UART_RX_test_1 uart_rx ( .RX_IN(RX_IN_S), .prescale(prescale), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .clk(RX_CLK), .rst_n(n1), .data_valid(
        RX_OUT_V), .error_happened(RX_Error), .P_DATA(RX_OUT_P), .test_si(n4), 
        .test_so(test_so), .test_se(test_se) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, ALU_OUT, OUT_VALID, RdData, RdData_Valid, 
        RX_P_DATA, RX_D_VLD, FIFO_FULL, WR_INC, WR_DATA, ALU_FUN, EN, CLK_EN, 
        Address, WrEn, RdEn, WrData, clk_div_en, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RdData;
  input [7:0] RX_P_DATA;
  output [7:0] WR_DATA;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  input CLK, RST, OUT_VALID, RdData_Valid, RX_D_VLD, FIFO_FULL, test_si2,
         test_si1, test_se;
  output WR_INC, EN, CLK_EN, WrEn, RdEn, clk_div_en, test_so2, test_so1;
  wire   input_counter, N207, N208, N209, N210, n1, n2, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n69, n70,
         n71, n72, n75, n78, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n67, n68, n73, n74, n76, n77, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n196, n197, n198, n199, n200, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [7:0] cmd;
  wire   [1:0] output_counter;
  wire   [3:0] Address_reg;

  SDFFRX1M \Address_reg_reg[2]  ( .D(n170), .SI(n71), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(Address_reg[2]), .QN(n70) );
  SDFFRX1M \result_reg[7]  ( .D(n161), .SI(n204), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n203), .QN(n59) );
  SDFFRX1M \result_reg[6]  ( .D(n162), .SI(n205), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n204), .QN(n60) );
  SDFFRX1M \result_reg[5]  ( .D(n163), .SI(n206), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n205), .QN(n61) );
  SDFFRX1M \result_reg[4]  ( .D(n164), .SI(n207), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n206), .QN(n62) );
  SDFFRX1M \result_reg[3]  ( .D(n165), .SI(n208), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n207), .QN(n63) );
  SDFFRX1M \result_reg[2]  ( .D(n166), .SI(n209), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n208), .QN(n64) );
  SDFFRX1M \result_reg[1]  ( .D(n167), .SI(n210), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n209), .QN(n65) );
  SDFFRX1M \result_reg[0]  ( .D(n168), .SI(n184), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n210), .QN(n66) );
  SDFFRX1M \result_reg[15]  ( .D(n153), .SI(n196), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(test_so2), .QN(n51) );
  SDFFRX1M \result_reg[14]  ( .D(n154), .SI(n197), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(n196), .QN(n52) );
  SDFFRX1M \result_reg[13]  ( .D(n155), .SI(n198), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(n197), .QN(n53) );
  SDFFRX1M \result_reg[12]  ( .D(n156), .SI(n199), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(n198), .QN(n54) );
  SDFFRX1M \result_reg[11]  ( .D(n157), .SI(n200), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(n199), .QN(n55) );
  SDFFRX1M \result_reg[10]  ( .D(n158), .SI(test_si2), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(n200), .QN(n56) );
  SDFFRX1M \result_reg[8]  ( .D(n160), .SI(n203), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n202), .QN(n58) );
  SDFFRX1M \Address_reg_reg[1]  ( .D(n171), .SI(Address_reg[0]), .SE(test_se), 
        .CK(CLK), .RN(n46), .Q(Address_reg[1]), .QN(n71) );
  SDFFRX1M \Address_reg_reg[0]  ( .D(n172), .SI(test_si1), .SE(test_se), .CK(
        CLK), .RN(n46), .Q(Address_reg[0]), .QN(n72) );
  SDFFRQX2M input_counter_reg ( .D(n173), .SI(n87), .SE(test_se), .CK(CLK), 
        .RN(n46), .Q(input_counter) );
  SDFFRQX2M \output_counter_reg[1]  ( .D(n175), .SI(output_counter[0]), .SE(
        test_se), .CK(CLK), .RN(n46), .Q(output_counter[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n86), .SE(test_se), 
        .CK(CLK), .RN(n46), .Q(current_state[2]) );
  SDFFRQX2M \cmd_reg[6]  ( .D(n177), .SI(n89), .SE(test_se), .CK(CLK), .RN(n46), .Q(cmd[6]) );
  SDFFRQX2M \cmd_reg[5]  ( .D(n178), .SI(cmd[4]), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(cmd[5]) );
  SDFFRQX2M \cmd_reg[2]  ( .D(n181), .SI(n91), .SE(test_se), .CK(CLK), .RN(n46), .Q(cmd[2]) );
  SDFFRQX2M \cmd_reg[1]  ( .D(n182), .SI(n68), .SE(test_se), .CK(CLK), .RN(n46), .Q(cmd[1]) );
  SDFFRQX2M \output_counter_reg[0]  ( .D(n174), .SI(n92), .SE(test_se), .CK(
        CLK), .RN(n46), .Q(output_counter[0]) );
  SDFFRQX2M \cmd_reg[0]  ( .D(n183), .SI(n69), .SE(test_se), .CK(CLK), .RN(n46), .Q(cmd[0]) );
  SDFFRQX2M \cmd_reg[4]  ( .D(n179), .SI(n212), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(cmd[4]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(CLK), .RN(n46), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n211), .SE(test_se), .CK(CLK), .RN(n46), .Q(current_state[0]) );
  SDFFRX1M \cmd_reg[3]  ( .D(n180), .SI(cmd[2]), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(n212), .QN(n78) );
  SDFFRX1M \Address_reg_reg[3]  ( .D(n169), .SI(n70), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(Address_reg[3]), .QN(n69) );
  SDFFRX1M \cmd_reg[7]  ( .D(n176), .SI(cmd[6]), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(n211), .QN(n75) );
  NOR2X2M U7 ( .A(n190), .B(n152), .Y(ALU_FUN[3]) );
  NOR2X2M U8 ( .A(n193), .B(n152), .Y(ALU_FUN[0]) );
  NOR2X2M U9 ( .A(n191), .B(n152), .Y(ALU_FUN[2]) );
  NOR4X1M U10 ( .A(n88), .B(n90), .C(cmd[1]), .D(cmd[5]), .Y(n122) );
  NOR4X1M U45 ( .A(n75), .B(n78), .C(cmd[0]), .D(cmd[4]), .Y(n124) );
  NOR3X2M U46 ( .A(current_state[0]), .B(n42), .C(n86), .Y(n143) );
  BUFX2M U47 ( .A(n113), .Y(n43) );
  INVX2M U48 ( .A(n47), .Y(n46) );
  INVX2M U49 ( .A(WrEn), .Y(n77) );
  INVX2M U50 ( .A(n108), .Y(n79) );
  INVX2M U51 ( .A(n99), .Y(n74) );
  NOR2BX2M U52 ( .AN(n44), .B(n136), .Y(n128) );
  BUFX2M U53 ( .A(n48), .Y(n47) );
  NOR2X2M U54 ( .A(n192), .B(n152), .Y(ALU_FUN[1]) );
  NOR2X2M U55 ( .A(n99), .B(n194), .Y(n151) );
  NAND2X2M U56 ( .A(n143), .B(n93), .Y(n140) );
  NAND2X2M U57 ( .A(n122), .B(n124), .Y(n99) );
  OR2X2M U58 ( .A(n96), .B(n194), .Y(n152) );
  NAND2X2M U59 ( .A(n42), .B(n106), .Y(n96) );
  NOR2X2M U60 ( .A(FIFO_FULL), .B(n140), .Y(WR_INC) );
  INVX2M U61 ( .A(n109), .Y(n83) );
  INVX2M U62 ( .A(n42), .Y(n87) );
  OAI31X1M U63 ( .A0(n84), .A1(FIFO_FULL), .A2(n111), .B0(n85), .Y(n139) );
  OAI222X1M U64 ( .A0(n85), .A1(n117), .B0(n118), .B1(n79), .C0(n102), .C1(n85), .Y(n107) );
  NOR2X2M U65 ( .A(n194), .B(n100), .Y(n118) );
  NOR3BX2M U66 ( .AN(n119), .B(n190), .C(n185), .Y(n102) );
  NAND4X2M U67 ( .A(n115), .B(n117), .C(n116), .D(n101), .Y(n119) );
  NOR3X2M U68 ( .A(n81), .B(n42), .C(n86), .Y(n108) );
  NOR2X2M U69 ( .A(n79), .B(n194), .Y(WrEn) );
  NOR2X2M U70 ( .A(n193), .B(n77), .Y(WrData[0]) );
  NOR2X2M U71 ( .A(n191), .B(n77), .Y(WrData[2]) );
  NOR2X2M U72 ( .A(n189), .B(n77), .Y(WrData[4]) );
  NOR2X2M U73 ( .A(n186), .B(n77), .Y(WrData[6]) );
  NOR2X2M U74 ( .A(n77), .B(n192), .Y(WrData[1]) );
  NOR2X2M U75 ( .A(n77), .B(n190), .Y(WrData[3]) );
  NOR2X2M U76 ( .A(n77), .B(n188), .Y(WrData[5]) );
  NOR2X2M U77 ( .A(n77), .B(n185), .Y(WrData[7]) );
  OAI2B2X1M U78 ( .A1N(n139), .A0(n140), .B0(n139), .B1(n93), .Y(n174) );
  NAND3X2M U79 ( .A(n148), .B(n49), .C(n149), .Y(n145) );
  AOI21X2M U80 ( .A0(n184), .A1(n93), .B0(n84), .Y(n149) );
  OAI211X2M U81 ( .A0(n79), .A1(n99), .B0(n76), .C0(n112), .Y(next_state[0])
         );
  AOI211X2M U82 ( .A0(n187), .A1(n43), .B0(n95), .C0(n114), .Y(n112) );
  INVX2M U83 ( .A(n107), .Y(n76) );
  INVX2M U84 ( .A(n116), .Y(n187) );
  NOR2X2M U85 ( .A(n194), .B(n136), .Y(RdEn) );
  NAND3X2M U86 ( .A(n81), .B(n86), .C(n42), .Y(n136) );
  NAND3X2M U87 ( .A(n193), .B(n189), .C(n120), .Y(n116) );
  NAND3X2M U88 ( .A(n193), .B(n189), .C(n121), .Y(n117) );
  INVX2M U89 ( .A(n143), .Y(n84) );
  OAI21X2M U90 ( .A0(n122), .A1(n123), .B0(n124), .Y(n100) );
  OAI22X1M U91 ( .A0(n85), .A1(n192), .B0(n43), .B1(n91), .Y(n182) );
  OAI22X1M U92 ( .A0(n191), .A1(n85), .B0(n43), .B1(n90), .Y(n181) );
  OAI22X1M U93 ( .A0(n85), .A1(n188), .B0(n43), .B1(n89), .Y(n178) );
  OAI22X1M U94 ( .A0(n186), .A1(n85), .B0(n43), .B1(n88), .Y(n177) );
  OAI22X1M U95 ( .A0(n193), .A1(n85), .B0(n43), .B1(n68), .Y(n183) );
  AND2X2M U96 ( .A(n45), .B(n109), .Y(n126) );
  NOR2X2M U97 ( .A(n85), .B(n115), .Y(n95) );
  INVX2M U98 ( .A(n43), .Y(n85) );
  BUFX2M U99 ( .A(n125), .Y(n44) );
  BUFX2M U100 ( .A(n125), .Y(n45) );
  INVX2M U101 ( .A(n137), .Y(n80) );
  INVX2M U102 ( .A(FIFO_FULL), .Y(n49) );
  OA21X2M U103 ( .A0(n87), .A1(n194), .B0(n106), .Y(n114) );
  INVX2M U104 ( .A(RST), .Y(n48) );
  NOR3X2M U105 ( .A(n87), .B(current_state[0]), .C(n86), .Y(n109) );
  NOR2X2M U106 ( .A(n81), .B(current_state[1]), .Y(n106) );
  INVX2M U107 ( .A(RX_D_VLD), .Y(n194) );
  INVX2M U108 ( .A(RX_P_DATA[0]), .Y(n193) );
  INVX2M U109 ( .A(current_state[1]), .Y(n86) );
  OAI2BB2X1M U110 ( .B0(n151), .B1(n72), .A0N(input_counter), .A1N(n151), .Y(
        N207) );
  INVX2M U111 ( .A(current_state[0]), .Y(n81) );
  BUFX2M U112 ( .A(current_state[2]), .Y(n42) );
  INVX2M U113 ( .A(output_counter[0]), .Y(n93) );
  INVX2M U114 ( .A(cmd[2]), .Y(n90) );
  INVX2M U115 ( .A(cmd[6]), .Y(n88) );
  MX2X2M U116 ( .A(Address_reg[1]), .B(N208), .S0(n82), .Y(Address[1]) );
  NOR2X2M U117 ( .A(n151), .B(n71), .Y(N208) );
  MX2X2M U118 ( .A(Address_reg[0]), .B(N207), .S0(n1), .Y(Address[0]) );
  NOR3BX2M U119 ( .AN(current_state[1]), .B(n81), .C(n42), .Y(n1) );
  OAI31X1M U120 ( .A0(n147), .A1(FIFO_FULL), .A2(n67), .B0(n143), .Y(n146) );
  NOR2X2M U121 ( .A(output_counter[1]), .B(output_counter[0]), .Y(n147) );
  INVX2M U122 ( .A(n148), .Y(n67) );
  MX2X2M U123 ( .A(Address_reg[3]), .B(N210), .S0(n82), .Y(Address[3]) );
  NOR2X2M U124 ( .A(n151), .B(n69), .Y(N210) );
  AOI31X2M U125 ( .A0(n144), .A1(cmd[0]), .A2(cmd[4]), .B0(n74), .Y(n111) );
  NOR3BX2M U126 ( .AN(n122), .B(n75), .C(n78), .Y(n144) );
  NOR4X1M U127 ( .A(n186), .B(n191), .C(RX_P_DATA[1]), .D(RX_P_DATA[5]), .Y(
        n121) );
  NOR4X1M U128 ( .A(n188), .B(n192), .C(RX_P_DATA[2]), .D(RX_P_DATA[6]), .Y(
        n120) );
  NOR4X1M U129 ( .A(n89), .B(n91), .C(cmd[2]), .D(cmd[6]), .Y(n123) );
  MX2X2M U130 ( .A(Address_reg[2]), .B(N209), .S0(n82), .Y(Address[2]) );
  NOR2X2M U131 ( .A(n151), .B(n70), .Y(N209) );
  OAI211X2M U132 ( .A0(current_state[0]), .A1(n103), .B0(n104), .C0(n105), .Y(
        next_state[1]) );
  AOI31X2M U133 ( .A0(n108), .A1(n92), .A2(n74), .B0(n109), .Y(n104) );
  AOI22X1M U134 ( .A0(current_state[1]), .A1(n110), .B0(RdData_Valid), .B1(n42), .Y(n103) );
  AOI21X2M U135 ( .A0(n106), .A1(RX_D_VLD), .B0(n107), .Y(n105) );
  OAI22X1M U136 ( .A0(n58), .A1(n145), .B0(n66), .B1(n146), .Y(WR_DATA[0]) );
  OAI22X1M U137 ( .A0(n57), .A1(n145), .B0(n65), .B1(n146), .Y(WR_DATA[1]) );
  OAI22X1M U138 ( .A0(n56), .A1(n145), .B0(n64), .B1(n146), .Y(WR_DATA[2]) );
  OAI22X1M U139 ( .A0(n55), .A1(n145), .B0(n63), .B1(n146), .Y(WR_DATA[3]) );
  OAI22X1M U140 ( .A0(n54), .A1(n145), .B0(n62), .B1(n146), .Y(WR_DATA[4]) );
  OAI22X1M U141 ( .A0(n53), .A1(n145), .B0(n61), .B1(n146), .Y(WR_DATA[5]) );
  OAI22XLM U142 ( .A0(n52), .A1(n145), .B0(n60), .B1(n146), .Y(WR_DATA[6]) );
  OAI22XLM U143 ( .A0(n51), .A1(n145), .B0(n59), .B1(n146), .Y(WR_DATA[7]) );
  NAND3X2M U144 ( .A(n123), .B(cmd[4]), .C(n150), .Y(n148) );
  NOR3X2M U145 ( .A(n68), .B(n78), .C(n75), .Y(n150) );
  INVX2M U146 ( .A(RX_P_DATA[2]), .Y(n191) );
  NAND3X2M U147 ( .A(RX_P_DATA[0]), .B(n121), .C(RX_P_DATA[4]), .Y(n115) );
  INVX2M U148 ( .A(RX_P_DATA[1]), .Y(n192) );
  OAI21X2M U149 ( .A0(n141), .A1(n184), .B0(n142), .Y(n175) );
  NAND4X2M U150 ( .A(output_counter[0]), .B(n143), .C(n139), .D(n184), .Y(n142) );
  AND2X2M U151 ( .A(n140), .B(n139), .Y(n141) );
  NAND3X2M U152 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .C(n120), .Y(n101) );
  INVX2M U153 ( .A(RX_P_DATA[6]), .Y(n186) );
  INVX2M U154 ( .A(RX_P_DATA[5]), .Y(n188) );
  INVX2M U155 ( .A(RX_P_DATA[3]), .Y(n190) );
  INVX2M U156 ( .A(cmd[1]), .Y(n91) );
  INVX2M U157 ( .A(cmd[5]), .Y(n89) );
  INVX2M U158 ( .A(cmd[0]), .Y(n68) );
  INVX2M U159 ( .A(n2), .Y(n82) );
  NAND3BX2M U160 ( .AN(n42), .B(current_state[1]), .C(current_state[0]), .Y(n2) );
  OAI32X1M U161 ( .A0(n79), .A1(input_counter), .A2(n138), .B0(n92), .B1(n73), 
        .Y(n173) );
  INVX2M U162 ( .A(n138), .Y(n73) );
  AOI21X2M U163 ( .A0(n74), .A1(WrEn), .B0(n43), .Y(n138) );
  OAI2BB2X1M U164 ( .B0(n50), .B1(n136), .A0N(n109), .A1N(OUT_VALID), .Y(n125)
         );
  OAI22X1M U165 ( .A0(n85), .A1(n190), .B0(n43), .B1(n78), .Y(n180) );
  OAI22X1M U166 ( .A0(n85), .A1(n185), .B0(n43), .B1(n75), .Y(n176) );
  OAI22X1M U167 ( .A0(n193), .A1(n137), .B0(n80), .B1(n72), .Y(n172) );
  OAI22X1M U168 ( .A0(n192), .A1(n137), .B0(n80), .B1(n71), .Y(n171) );
  OAI22X1M U169 ( .A0(n191), .A1(n137), .B0(n80), .B1(n70), .Y(n170) );
  OAI22X1M U170 ( .A0(n190), .A1(n137), .B0(n80), .B1(n69), .Y(n169) );
  NAND3X2M U171 ( .A(RX_D_VLD), .B(n87), .C(n106), .Y(n137) );
  OAI21X2M U172 ( .A0(output_counter[1]), .A1(n111), .B0(n49), .Y(n110) );
  OAI2BB2X1M U173 ( .B0(n189), .B1(n85), .A0N(n85), .A1N(cmd[4]), .Y(n179) );
  OAI2BB2X1M U174 ( .B0(n44), .B1(n58), .A0N(ALU_OUT[8]), .A1N(n126), .Y(n160)
         );
  OAI2BB2X1M U175 ( .B0(n45), .B1(n57), .A0N(ALU_OUT[9]), .A1N(n126), .Y(n159)
         );
  OAI2BB2X1M U176 ( .B0(n44), .B1(n56), .A0N(ALU_OUT[10]), .A1N(n126), .Y(n158) );
  OAI2BB2X1M U177 ( .B0(n45), .B1(n55), .A0N(ALU_OUT[11]), .A1N(n126), .Y(n157) );
  OAI2BB2X1M U178 ( .B0(n44), .B1(n54), .A0N(ALU_OUT[12]), .A1N(n126), .Y(n156) );
  OAI2BB2X1M U179 ( .B0(n45), .B1(n53), .A0N(ALU_OUT[13]), .A1N(n126), .Y(n155) );
  OAI2BB2X1M U180 ( .B0(n44), .B1(n52), .A0N(ALU_OUT[14]), .A1N(n126), .Y(n154) );
  OAI2BB2X1M U181 ( .B0(n45), .B1(n51), .A0N(ALU_OUT[15]), .A1N(n126), .Y(n153) );
  NOR4X1M U182 ( .A(n194), .B(current_state[0]), .C(current_state[1]), .D(n42), 
        .Y(n113) );
  OAI21X2M U183 ( .A0(n44), .A1(n66), .B0(n135), .Y(n168) );
  AOI22X1M U184 ( .A0(RdData[0]), .A1(n128), .B0(ALU_OUT[0]), .B1(n126), .Y(
        n135) );
  OAI21X2M U185 ( .A0(n45), .A1(n65), .B0(n134), .Y(n167) );
  AOI22X1M U186 ( .A0(RdData[1]), .A1(n128), .B0(ALU_OUT[1]), .B1(n126), .Y(
        n134) );
  OAI21X2M U187 ( .A0(n44), .A1(n64), .B0(n133), .Y(n166) );
  AOI22X1M U188 ( .A0(RdData[2]), .A1(n128), .B0(ALU_OUT[2]), .B1(n126), .Y(
        n133) );
  OAI21X2M U189 ( .A0(n45), .A1(n63), .B0(n132), .Y(n165) );
  AOI22X1M U190 ( .A0(RdData[3]), .A1(n128), .B0(ALU_OUT[3]), .B1(n126), .Y(
        n132) );
  OAI21X2M U191 ( .A0(n44), .A1(n62), .B0(n131), .Y(n164) );
  AOI22X1M U192 ( .A0(RdData[4]), .A1(n128), .B0(ALU_OUT[4]), .B1(n126), .Y(
        n131) );
  OAI21X2M U193 ( .A0(n45), .A1(n61), .B0(n130), .Y(n163) );
  AOI22X1M U194 ( .A0(RdData[5]), .A1(n128), .B0(ALU_OUT[5]), .B1(n126), .Y(
        n130) );
  OAI21X2M U195 ( .A0(n44), .A1(n60), .B0(n129), .Y(n162) );
  AOI22X1M U196 ( .A0(RdData[6]), .A1(n128), .B0(ALU_OUT[6]), .B1(n126), .Y(
        n129) );
  OAI21X2M U197 ( .A0(n45), .A1(n59), .B0(n127), .Y(n161) );
  AOI22X1M U198 ( .A0(RdData[7]), .A1(n128), .B0(ALU_OUT[7]), .B1(n126), .Y(
        n127) );
  INVX2M U199 ( .A(RX_P_DATA[4]), .Y(n189) );
  NAND4BBX1M U200 ( .AN(n94), .BN(n95), .C(n96), .D(n97), .Y(next_state[2]) );
  AOI32X1M U201 ( .A0(n50), .A1(n86), .A2(n42), .B0(WrEn), .B1(n98), .Y(n97)
         );
  OAI222X1M U202 ( .A0(n83), .A1(OUT_VALID), .B0(n101), .B1(n85), .C0(n85), 
        .C1(n102), .Y(n94) );
  OAI21BX1M U203 ( .A0(n99), .A1(n92), .B0N(n100), .Y(n98) );
  INVX2M U204 ( .A(output_counter[1]), .Y(n184) );
  INVX2M U205 ( .A(RX_P_DATA[7]), .Y(n185) );
  INVX2M U206 ( .A(input_counter), .Y(n92) );
  INVX2M U207 ( .A(RdData_Valid), .Y(n50) );
  BUFX2M U208 ( .A(EN), .Y(CLK_EN) );
  NAND2X2M U209 ( .A(n96), .B(n83), .Y(EN) );
  SDFFRX2M \result_reg[9]  ( .D(n159), .SI(n202), .SE(test_se), .CK(CLK), .RN(
        n46), .Q(test_so1), .QN(n57) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module Register_file_test_1 ( WrData, Address, WrEn, RdEn, CLK, RST, RdData, 
        RdData_VLD, REG0, REG1, REG2, REG3, test_si2, test_si1, test_so2, 
        test_so1, test_se );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si2, test_si1, test_se;
  output RdData_VLD, test_so2, test_so1;
  wire   N11, N12, N13, N14, \Reg_file[15][7] , \Reg_file[15][6] ,
         \Reg_file[15][5] , \Reg_file[15][4] , \Reg_file[15][3] ,
         \Reg_file[15][2] , \Reg_file[15][1] , \Reg_file[15][0] ,
         \Reg_file[14][7] , \Reg_file[14][6] , \Reg_file[14][5] ,
         \Reg_file[14][4] , \Reg_file[14][3] , \Reg_file[14][2] ,
         \Reg_file[14][1] , \Reg_file[14][0] , \Reg_file[13][7] ,
         \Reg_file[13][6] , \Reg_file[13][5] , \Reg_file[13][4] ,
         \Reg_file[13][3] , \Reg_file[13][2] , \Reg_file[13][1] ,
         \Reg_file[13][0] , \Reg_file[12][7] , \Reg_file[12][6] ,
         \Reg_file[12][5] , \Reg_file[12][4] , \Reg_file[12][3] ,
         \Reg_file[12][2] , \Reg_file[12][1] , \Reg_file[12][0] ,
         \Reg_file[11][7] , \Reg_file[11][6] , \Reg_file[11][5] ,
         \Reg_file[11][4] , \Reg_file[11][3] , \Reg_file[11][2] ,
         \Reg_file[11][1] , \Reg_file[11][0] , \Reg_file[10][7] ,
         \Reg_file[10][6] , \Reg_file[10][5] , \Reg_file[10][4] ,
         \Reg_file[10][3] , \Reg_file[10][2] , \Reg_file[10][1] ,
         \Reg_file[10][0] , \Reg_file[9][7] , \Reg_file[9][6] ,
         \Reg_file[9][5] , \Reg_file[9][4] , \Reg_file[9][3] ,
         \Reg_file[9][2] , \Reg_file[9][1] , \Reg_file[9][0] ,
         \Reg_file[8][7] , \Reg_file[8][6] , \Reg_file[8][5] ,
         \Reg_file[8][4] , \Reg_file[8][3] , \Reg_file[8][2] ,
         \Reg_file[8][1] , \Reg_file[8][0] , \Reg_file[7][7] ,
         \Reg_file[7][6] , \Reg_file[7][5] , \Reg_file[7][4] ,
         \Reg_file[7][3] , \Reg_file[7][2] , \Reg_file[7][1] ,
         \Reg_file[7][0] , \Reg_file[6][7] , \Reg_file[6][6] ,
         \Reg_file[6][5] , \Reg_file[6][4] , \Reg_file[6][3] ,
         \Reg_file[6][2] , \Reg_file[6][1] , \Reg_file[6][0] ,
         \Reg_file[5][7] , \Reg_file[5][6] , \Reg_file[5][5] ,
         \Reg_file[5][4] , \Reg_file[5][3] , \Reg_file[5][2] ,
         \Reg_file[5][1] , \Reg_file[5][0] , \Reg_file[4][7] ,
         \Reg_file[4][6] , \Reg_file[4][5] , \Reg_file[4][4] ,
         \Reg_file[4][3] , \Reg_file[4][2] , \Reg_file[4][1] ,
         \Reg_file[4][0] , N36, N37, N38, N39, N40, N41, N42, N43, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n369, n370, n371, n372;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so2 = \Reg_file[15][7] ;
  assign test_so1 = \Reg_file[7][1] ;

  SDFFRQX2M \RdData_reg[7]  ( .D(n184), .SI(RdData[6]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n183), .SI(RdData[5]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n182), .SI(RdData[4]), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n181), .SI(RdData[3]), .SE(n372), .CK(CLK), 
        .RN(n343), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n180), .SI(RdData[2]), .SE(n371), .CK(CLK), 
        .RN(n343), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n179), .SI(RdData[1]), .SE(n370), .CK(CLK), 
        .RN(n343), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n178), .SI(RdData[0]), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n177), .SI(RdData_VLD), .SE(n372), .CK(CLK), 
        .RN(n347), .Q(RdData[0]) );
  SDFFRQX2M \Reg_file_reg[13][7]  ( .D(n297), .SI(\Reg_file[13][6] ), .SE(n371), .CK(CLK), .RN(n351), .Q(\Reg_file[13][7] ) );
  SDFFRQX2M \Reg_file_reg[13][6]  ( .D(n296), .SI(\Reg_file[13][5] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\Reg_file[13][6] ) );
  SDFFRQX2M \Reg_file_reg[13][5]  ( .D(n295), .SI(\Reg_file[13][4] ), .SE(n369), .CK(CLK), .RN(n351), .Q(\Reg_file[13][5] ) );
  SDFFRQX2M \Reg_file_reg[13][4]  ( .D(n294), .SI(\Reg_file[13][3] ), .SE(n372), .CK(CLK), .RN(n351), .Q(\Reg_file[13][4] ) );
  SDFFRQX2M \Reg_file_reg[13][3]  ( .D(n293), .SI(\Reg_file[13][2] ), .SE(n371), .CK(CLK), .RN(n351), .Q(\Reg_file[13][3] ) );
  SDFFRQX2M \Reg_file_reg[13][2]  ( .D(n292), .SI(\Reg_file[13][1] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\Reg_file[13][2] ) );
  SDFFRQX2M \Reg_file_reg[13][1]  ( .D(n291), .SI(\Reg_file[13][0] ), .SE(n369), .CK(CLK), .RN(n351), .Q(\Reg_file[13][1] ) );
  SDFFRQX2M \Reg_file_reg[13][0]  ( .D(n290), .SI(\Reg_file[12][7] ), .SE(n372), .CK(CLK), .RN(n351), .Q(\Reg_file[13][0] ) );
  SDFFRQX2M \Reg_file_reg[9][7]  ( .D(n265), .SI(\Reg_file[9][6] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][7] ) );
  SDFFRQX2M \Reg_file_reg[9][6]  ( .D(n264), .SI(\Reg_file[9][5] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][6] ) );
  SDFFRQX2M \Reg_file_reg[9][5]  ( .D(n263), .SI(\Reg_file[9][4] ), .SE(n369), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][5] ) );
  SDFFRQX2M \Reg_file_reg[9][4]  ( .D(n262), .SI(\Reg_file[9][3] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][4] ) );
  SDFFRQX2M \Reg_file_reg[9][3]  ( .D(n261), .SI(\Reg_file[9][2] ), .SE(n371), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][3] ) );
  SDFFRQX2M \Reg_file_reg[9][2]  ( .D(n260), .SI(\Reg_file[9][1] ), .SE(n370), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][2] ) );
  SDFFRQX2M \Reg_file_reg[9][1]  ( .D(n259), .SI(\Reg_file[9][0] ), .SE(n369), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[9][1] ) );
  SDFFRQX2M \Reg_file_reg[9][0]  ( .D(n258), .SI(\Reg_file[8][7] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[9][0] ) );
  SDFFRQX2M \Reg_file_reg[5][7]  ( .D(n233), .SI(\Reg_file[5][6] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[5][7] ) );
  SDFFRQX2M \Reg_file_reg[5][6]  ( .D(n232), .SI(\Reg_file[5][5] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[5][6] ) );
  SDFFRQX2M \Reg_file_reg[5][5]  ( .D(n231), .SI(\Reg_file[5][4] ), .SE(n369), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[5][5] ) );
  SDFFRQX2M \Reg_file_reg[5][4]  ( .D(n230), .SI(\Reg_file[5][3] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[5][4] ) );
  SDFFRQX2M \Reg_file_reg[5][3]  ( .D(n229), .SI(\Reg_file[5][2] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[5][3] ) );
  SDFFRQX2M \Reg_file_reg[5][2]  ( .D(n228), .SI(\Reg_file[5][1] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[5][2] ) );
  SDFFRQX2M \Reg_file_reg[5][1]  ( .D(n227), .SI(\Reg_file[5][0] ), .SE(n369), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[5][1] ) );
  SDFFRQX2M \Reg_file_reg[5][0]  ( .D(n226), .SI(\Reg_file[4][7] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[5][0] ) );
  SDFFRQX2M \Reg_file_reg[15][7]  ( .D(n313), .SI(\Reg_file[15][6] ), .SE(n371), .CK(CLK), .RN(n343), .Q(\Reg_file[15][7] ) );
  SDFFRQX2M \Reg_file_reg[15][6]  ( .D(n312), .SI(\Reg_file[15][5] ), .SE(n370), .CK(CLK), .RN(n352), .Q(\Reg_file[15][6] ) );
  SDFFRQX2M \Reg_file_reg[15][5]  ( .D(n311), .SI(\Reg_file[15][4] ), .SE(n369), .CK(CLK), .RN(n352), .Q(\Reg_file[15][5] ) );
  SDFFRQX2M \Reg_file_reg[15][4]  ( .D(n310), .SI(\Reg_file[15][3] ), .SE(n372), .CK(CLK), .RN(n352), .Q(\Reg_file[15][4] ) );
  SDFFRQX2M \Reg_file_reg[15][3]  ( .D(n309), .SI(\Reg_file[15][2] ), .SE(n371), .CK(CLK), .RN(n352), .Q(\Reg_file[15][3] ) );
  SDFFRQX2M \Reg_file_reg[15][2]  ( .D(n308), .SI(\Reg_file[15][1] ), .SE(n370), .CK(CLK), .RN(n352), .Q(\Reg_file[15][2] ) );
  SDFFRQX2M \Reg_file_reg[15][1]  ( .D(n307), .SI(\Reg_file[15][0] ), .SE(n369), .CK(CLK), .RN(n352), .Q(\Reg_file[15][1] ) );
  SDFFRQX2M \Reg_file_reg[15][0]  ( .D(n306), .SI(\Reg_file[14][7] ), .SE(n372), .CK(CLK), .RN(n352), .Q(\Reg_file[15][0] ) );
  SDFFRQX2M \Reg_file_reg[11][7]  ( .D(n281), .SI(\Reg_file[11][6] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\Reg_file[11][7] ) );
  SDFFRQX2M \Reg_file_reg[11][6]  ( .D(n280), .SI(\Reg_file[11][5] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\Reg_file[11][6] ) );
  SDFFRQX2M \Reg_file_reg[11][5]  ( .D(n279), .SI(\Reg_file[11][4] ), .SE(n369), .CK(CLK), .RN(n350), .Q(\Reg_file[11][5] ) );
  SDFFRQX2M \Reg_file_reg[11][4]  ( .D(n278), .SI(\Reg_file[11][3] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\Reg_file[11][4] ) );
  SDFFRQX2M \Reg_file_reg[11][3]  ( .D(n277), .SI(\Reg_file[11][2] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\Reg_file[11][3] ) );
  SDFFRQX2M \Reg_file_reg[11][2]  ( .D(n276), .SI(\Reg_file[11][1] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\Reg_file[11][2] ) );
  SDFFRQX2M \Reg_file_reg[11][1]  ( .D(n275), .SI(\Reg_file[11][0] ), .SE(n369), .CK(CLK), .RN(n350), .Q(\Reg_file[11][1] ) );
  SDFFRQX2M \Reg_file_reg[11][0]  ( .D(n274), .SI(\Reg_file[10][7] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\Reg_file[11][0] ) );
  SDFFRQX2M \Reg_file_reg[7][7]  ( .D(n249), .SI(\Reg_file[7][6] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[7][7] ) );
  SDFFRQX2M \Reg_file_reg[7][6]  ( .D(n248), .SI(\Reg_file[7][5] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[7][6] ) );
  SDFFRQX2M \Reg_file_reg[7][5]  ( .D(n247), .SI(\Reg_file[7][4] ), .SE(n369), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[7][5] ) );
  SDFFRQX2M \Reg_file_reg[7][4]  ( .D(n246), .SI(\Reg_file[7][3] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[7][4] ) );
  SDFFRQX2M \Reg_file_reg[7][3]  ( .D(n245), .SI(\Reg_file[7][2] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[7][3] ) );
  SDFFRQX2M \Reg_file_reg[7][2]  ( .D(n244), .SI(test_si2), .SE(n370), .CK(CLK), .RN(n347), .Q(\Reg_file[7][2] ) );
  SDFFRQX2M \Reg_file_reg[7][1]  ( .D(n243), .SI(\Reg_file[7][0] ), .SE(n369), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[7][1] ) );
  SDFFRQX2M \Reg_file_reg[7][0]  ( .D(n242), .SI(\Reg_file[6][7] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[7][0] ) );
  SDFFRQX2M \Reg_file_reg[14][7]  ( .D(n305), .SI(\Reg_file[14][6] ), .SE(n371), .CK(CLK), .RN(n352), .Q(\Reg_file[14][7] ) );
  SDFFRQX2M \Reg_file_reg[14][6]  ( .D(n304), .SI(\Reg_file[14][5] ), .SE(n370), .CK(CLK), .RN(n352), .Q(\Reg_file[14][6] ) );
  SDFFRQX2M \Reg_file_reg[14][5]  ( .D(n303), .SI(\Reg_file[14][4] ), .SE(n369), .CK(CLK), .RN(n352), .Q(\Reg_file[14][5] ) );
  SDFFRQX2M \Reg_file_reg[14][4]  ( .D(n302), .SI(\Reg_file[14][3] ), .SE(n372), .CK(CLK), .RN(n352), .Q(\Reg_file[14][4] ) );
  SDFFRQX2M \Reg_file_reg[14][3]  ( .D(n301), .SI(\Reg_file[14][2] ), .SE(n371), .CK(CLK), .RN(n352), .Q(\Reg_file[14][3] ) );
  SDFFRQX2M \Reg_file_reg[14][2]  ( .D(n300), .SI(\Reg_file[14][1] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\Reg_file[14][2] ) );
  SDFFRQX2M \Reg_file_reg[14][1]  ( .D(n299), .SI(\Reg_file[14][0] ), .SE(n369), .CK(CLK), .RN(n351), .Q(\Reg_file[14][1] ) );
  SDFFRQX2M \Reg_file_reg[14][0]  ( .D(n298), .SI(\Reg_file[13][7] ), .SE(n372), .CK(CLK), .RN(n351), .Q(\Reg_file[14][0] ) );
  SDFFRQX2M \Reg_file_reg[10][7]  ( .D(n273), .SI(\Reg_file[10][6] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\Reg_file[10][7] ) );
  SDFFRQX2M \Reg_file_reg[10][6]  ( .D(n272), .SI(\Reg_file[10][5] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\Reg_file[10][6] ) );
  SDFFRQX2M \Reg_file_reg[10][5]  ( .D(n271), .SI(\Reg_file[10][4] ), .SE(n369), .CK(CLK), .RN(n349), .Q(\Reg_file[10][5] ) );
  SDFFRQX2M \Reg_file_reg[10][4]  ( .D(n270), .SI(\Reg_file[10][3] ), .SE(n372), .CK(CLK), .RN(n349), .Q(\Reg_file[10][4] ) );
  SDFFRQX2M \Reg_file_reg[10][3]  ( .D(n269), .SI(\Reg_file[10][2] ), .SE(n371), .CK(CLK), .RN(n349), .Q(\Reg_file[10][3] ) );
  SDFFRQX2M \Reg_file_reg[10][2]  ( .D(n268), .SI(\Reg_file[10][1] ), .SE(n370), .CK(CLK), .RN(n349), .Q(\Reg_file[10][2] ) );
  SDFFRQX2M \Reg_file_reg[10][1]  ( .D(n267), .SI(\Reg_file[10][0] ), .SE(n369), .CK(CLK), .RN(n349), .Q(\Reg_file[10][1] ) );
  SDFFRQX2M \Reg_file_reg[10][0]  ( .D(n266), .SI(\Reg_file[9][7] ), .SE(n372), 
        .CK(CLK), .RN(n349), .Q(\Reg_file[10][0] ) );
  SDFFRQX2M \Reg_file_reg[6][7]  ( .D(n241), .SI(\Reg_file[6][6] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][7] ) );
  SDFFRQX2M \Reg_file_reg[6][6]  ( .D(n240), .SI(\Reg_file[6][5] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][6] ) );
  SDFFRQX2M \Reg_file_reg[6][5]  ( .D(n239), .SI(\Reg_file[6][4] ), .SE(n369), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][5] ) );
  SDFFRQX2M \Reg_file_reg[6][4]  ( .D(n238), .SI(\Reg_file[6][3] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][4] ) );
  SDFFRQX2M \Reg_file_reg[6][3]  ( .D(n237), .SI(\Reg_file[6][2] ), .SE(n371), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][3] ) );
  SDFFRQX2M \Reg_file_reg[6][2]  ( .D(n236), .SI(\Reg_file[6][1] ), .SE(n370), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][2] ) );
  SDFFRQX2M \Reg_file_reg[6][1]  ( .D(n235), .SI(\Reg_file[6][0] ), .SE(n369), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][1] ) );
  SDFFRQX2M \Reg_file_reg[6][0]  ( .D(n234), .SI(\Reg_file[5][7] ), .SE(n372), 
        .CK(CLK), .RN(n347), .Q(\Reg_file[6][0] ) );
  SDFFRQX2M \Reg_file_reg[12][7]  ( .D(n289), .SI(\Reg_file[12][6] ), .SE(n371), .CK(CLK), .RN(n351), .Q(\Reg_file[12][7] ) );
  SDFFRQX2M \Reg_file_reg[12][6]  ( .D(n288), .SI(\Reg_file[12][5] ), .SE(n370), .CK(CLK), .RN(n351), .Q(\Reg_file[12][6] ) );
  SDFFRQX2M \Reg_file_reg[12][5]  ( .D(n287), .SI(\Reg_file[12][4] ), .SE(n369), .CK(CLK), .RN(n351), .Q(\Reg_file[12][5] ) );
  SDFFRQX2M \Reg_file_reg[12][4]  ( .D(n286), .SI(\Reg_file[12][3] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\Reg_file[12][4] ) );
  SDFFRQX2M \Reg_file_reg[12][3]  ( .D(n285), .SI(\Reg_file[12][2] ), .SE(n371), .CK(CLK), .RN(n350), .Q(\Reg_file[12][3] ) );
  SDFFRQX2M \Reg_file_reg[12][2]  ( .D(n284), .SI(\Reg_file[12][1] ), .SE(n370), .CK(CLK), .RN(n350), .Q(\Reg_file[12][2] ) );
  SDFFRQX2M \Reg_file_reg[12][1]  ( .D(n283), .SI(\Reg_file[12][0] ), .SE(n369), .CK(CLK), .RN(n350), .Q(\Reg_file[12][1] ) );
  SDFFRQX2M \Reg_file_reg[12][0]  ( .D(n282), .SI(\Reg_file[11][7] ), .SE(n372), .CK(CLK), .RN(n350), .Q(\Reg_file[12][0] ) );
  SDFFRQX2M \Reg_file_reg[8][7]  ( .D(n257), .SI(\Reg_file[8][6] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][7] ) );
  SDFFRQX2M \Reg_file_reg[8][6]  ( .D(n256), .SI(\Reg_file[8][5] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][6] ) );
  SDFFRQX2M \Reg_file_reg[8][5]  ( .D(n255), .SI(\Reg_file[8][4] ), .SE(n369), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][5] ) );
  SDFFRQX2M \Reg_file_reg[8][4]  ( .D(n254), .SI(\Reg_file[8][3] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][4] ) );
  SDFFRQX2M \Reg_file_reg[8][3]  ( .D(n253), .SI(\Reg_file[8][2] ), .SE(n371), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][3] ) );
  SDFFRQX2M \Reg_file_reg[8][2]  ( .D(n252), .SI(\Reg_file[8][1] ), .SE(n370), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][2] ) );
  SDFFRQX2M \Reg_file_reg[8][1]  ( .D(n251), .SI(\Reg_file[8][0] ), .SE(n369), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][1] ) );
  SDFFRQX2M \Reg_file_reg[8][0]  ( .D(n250), .SI(\Reg_file[7][7] ), .SE(n372), 
        .CK(CLK), .RN(n348), .Q(\Reg_file[8][0] ) );
  SDFFRQX2M \Reg_file_reg[4][7]  ( .D(n225), .SI(\Reg_file[4][6] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][7] ) );
  SDFFRQX2M \Reg_file_reg[4][6]  ( .D(n224), .SI(\Reg_file[4][5] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][6] ) );
  SDFFRQX2M \Reg_file_reg[4][5]  ( .D(n223), .SI(\Reg_file[4][4] ), .SE(n369), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][5] ) );
  SDFFRQX2M \Reg_file_reg[4][4]  ( .D(n222), .SI(\Reg_file[4][3] ), .SE(n372), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][4] ) );
  SDFFRQX2M \Reg_file_reg[4][3]  ( .D(n221), .SI(\Reg_file[4][2] ), .SE(n371), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][3] ) );
  SDFFRQX2M \Reg_file_reg[4][2]  ( .D(n220), .SI(\Reg_file[4][1] ), .SE(n370), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][2] ) );
  SDFFRQX2M \Reg_file_reg[4][1]  ( .D(n219), .SI(\Reg_file[4][0] ), .SE(n369), 
        .CK(CLK), .RN(n346), .Q(\Reg_file[4][1] ) );
  SDFFRQX2M \Reg_file_reg[4][0]  ( .D(n218), .SI(REG3[7]), .SE(n372), .CK(CLK), 
        .RN(n346), .Q(\Reg_file[4][0] ) );
  SDFFRQX2M \Reg_file_reg[3][0]  ( .D(n210), .SI(REG2[7]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG3[0]) );
  SDFFSQX2M \Reg_file_reg[2][0]  ( .D(n202), .SI(REG1[7]), .SE(test_se), .CK(
        CLK), .SN(n343), .Q(REG2[0]) );
  SDFFRQX2M \Reg_file_reg[2][1]  ( .D(n203), .SI(REG2[0]), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(REG2[1]) );
  SDFFRQX2M RdData_VLD_reg ( .D(n185), .SI(test_si1), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(RdData_VLD) );
  SDFFSQX2M \Reg_file_reg[3][5]  ( .D(n215), .SI(REG3[4]), .SE(n369), .CK(CLK), 
        .SN(n343), .Q(REG3[5]) );
  SDFFRQX2M \Reg_file_reg[3][7]  ( .D(n217), .SI(REG3[6]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG3[7]) );
  SDFFRQX2M \Reg_file_reg[3][6]  ( .D(n216), .SI(REG3[5]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG3[6]) );
  SDFFRQX2M \Reg_file_reg[3][2]  ( .D(n212), .SI(REG3[1]), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(REG3[2]) );
  SDFFRQX2M \Reg_file_reg[3][3]  ( .D(n213), .SI(REG3[2]), .SE(n369), .CK(CLK), 
        .RN(n345), .Q(REG3[3]) );
  SDFFRQX2M \Reg_file_reg[3][4]  ( .D(n214), .SI(REG3[3]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG3[4]) );
  SDFFRQX2M \Reg_file_reg[3][1]  ( .D(n211), .SI(REG3[0]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG3[1]) );
  SDFFRQX2M \Reg_file_reg[2][4]  ( .D(n206), .SI(REG2[3]), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(REG2[4]) );
  SDFFSQX2M \Reg_file_reg[2][7]  ( .D(n209), .SI(REG2[6]), .SE(n372), .CK(CLK), 
        .SN(n343), .Q(REG2[7]) );
  SDFFRQX2M \Reg_file_reg[2][5]  ( .D(n207), .SI(REG2[4]), .SE(n369), .CK(CLK), 
        .RN(n345), .Q(REG2[5]) );
  SDFFRQX2M \Reg_file_reg[2][3]  ( .D(n205), .SI(REG2[2]), .SE(n372), .CK(CLK), 
        .RN(n345), .Q(REG2[3]) );
  SDFFRQX2M \Reg_file_reg[2][6]  ( .D(n208), .SI(REG2[5]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG2[6]) );
  SDFFRQX2M \Reg_file_reg[2][2]  ( .D(n204), .SI(REG2[1]), .SE(n370), .CK(CLK), 
        .RN(n345), .Q(REG2[2]) );
  SDFFRQX2M \Reg_file_reg[0][1]  ( .D(n187), .SI(REG0[0]), .SE(n369), .CK(CLK), 
        .RN(n343), .Q(REG0[1]) );
  SDFFRQX2M \Reg_file_reg[0][0]  ( .D(n186), .SI(RdData[7]), .SE(n372), .CK(
        CLK), .RN(n343), .Q(REG0[0]) );
  SDFFRQX2M \Reg_file_reg[0][2]  ( .D(n188), .SI(REG0[1]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG0[2]) );
  SDFFRQX2M \Reg_file_reg[0][3]  ( .D(n189), .SI(REG0[2]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG0[3]) );
  SDFFRQX2M \Reg_file_reg[0][4]  ( .D(n190), .SI(REG0[3]), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(REG0[4]) );
  SDFFRQX2M \Reg_file_reg[0][5]  ( .D(n191), .SI(REG0[4]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG0[5]) );
  SDFFRQX2M \Reg_file_reg[0][6]  ( .D(n192), .SI(REG0[5]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG0[6]) );
  SDFFRQX2M \Reg_file_reg[1][6]  ( .D(n200), .SI(REG1[5]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG1[6]) );
  SDFFRQX2M \Reg_file_reg[1][1]  ( .D(n195), .SI(REG1[0]), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(REG1[1]) );
  SDFFRQX2M \Reg_file_reg[0][7]  ( .D(n193), .SI(REG0[6]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG0[7]) );
  SDFFRQX2M \Reg_file_reg[1][5]  ( .D(n199), .SI(REG1[4]), .SE(n371), .CK(CLK), 
        .RN(n345), .Q(REG1[5]) );
  SDFFRQX2M \Reg_file_reg[1][4]  ( .D(n198), .SI(REG1[3]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG1[4]) );
  SDFFRQX2M \Reg_file_reg[1][7]  ( .D(n201), .SI(REG1[6]), .SE(n369), .CK(CLK), 
        .RN(n344), .Q(REG1[7]) );
  SDFFRQX2M \Reg_file_reg[1][3]  ( .D(n197), .SI(REG1[2]), .SE(n372), .CK(CLK), 
        .RN(n344), .Q(REG1[3]) );
  SDFFRQX2M \Reg_file_reg[1][2]  ( .D(n196), .SI(REG1[1]), .SE(n371), .CK(CLK), 
        .RN(n344), .Q(REG1[2]) );
  SDFFRQX2M \Reg_file_reg[1][0]  ( .D(n194), .SI(REG0[7]), .SE(n370), .CK(CLK), 
        .RN(n344), .Q(REG1[0]) );
  NOR2X2M U140 ( .A(n342), .B(N13), .Y(n157) );
  NOR2X2M U141 ( .A(N12), .B(N13), .Y(n152) );
  INVX2M U142 ( .A(n338), .Y(n339) );
  INVX2M U143 ( .A(n336), .Y(n337) );
  INVX2M U144 ( .A(n338), .Y(n340) );
  BUFX2M U145 ( .A(n341), .Y(n338) );
  BUFX2M U146 ( .A(n342), .Y(n336) );
  NOR2X2M U147 ( .A(n150), .B(n149), .Y(n148) );
  NAND2X2M U148 ( .A(n155), .B(n152), .Y(n154) );
  NAND2X2M U149 ( .A(n167), .B(n152), .Y(n166) );
  NAND2X2M U150 ( .A(n169), .B(n152), .Y(n168) );
  NAND2X2M U151 ( .A(n167), .B(n157), .Y(n170) );
  NAND2X2M U152 ( .A(n169), .B(n157), .Y(n171) );
  NAND2X2M U153 ( .A(n157), .B(n153), .Y(n156) );
  NAND2X2M U154 ( .A(n157), .B(n155), .Y(n158) );
  NAND2X2M U155 ( .A(n160), .B(n153), .Y(n159) );
  NAND2X2M U156 ( .A(n160), .B(n155), .Y(n161) );
  NAND2X2M U157 ( .A(n163), .B(n153), .Y(n162) );
  NAND2X2M U158 ( .A(n163), .B(n155), .Y(n165) );
  NAND2X2M U159 ( .A(n167), .B(n160), .Y(n172) );
  NAND2X2M U160 ( .A(n169), .B(n160), .Y(n173) );
  NAND2X2M U161 ( .A(n167), .B(n163), .Y(n174) );
  NAND2X2M U162 ( .A(n169), .B(n163), .Y(n176) );
  NAND2X2M U163 ( .A(n152), .B(n153), .Y(n151) );
  NOR2BX2M U164 ( .AN(WrEn), .B(RdEn), .Y(n150) );
  AND2X2M U165 ( .A(n164), .B(N11), .Y(n155) );
  AND2X2M U166 ( .A(n175), .B(N11), .Y(n169) );
  NOR2BX2M U167 ( .AN(RdEn), .B(WrEn), .Y(n149) );
  BUFX2M U168 ( .A(n357), .Y(n344) );
  BUFX2M U169 ( .A(n356), .Y(n345) );
  BUFX2M U170 ( .A(n356), .Y(n346) );
  BUFX2M U171 ( .A(n355), .Y(n347) );
  BUFX2M U172 ( .A(n355), .Y(n348) );
  BUFX2M U173 ( .A(n354), .Y(n349) );
  BUFX2M U174 ( .A(n354), .Y(n350) );
  BUFX2M U175 ( .A(n353), .Y(n351) );
  BUFX2M U176 ( .A(n357), .Y(n343) );
  BUFX2M U177 ( .A(n353), .Y(n352) );
  INVX2M U178 ( .A(WrData[0]), .Y(n365) );
  INVX2M U179 ( .A(WrData[2]), .Y(n363) );
  INVX2M U180 ( .A(WrData[4]), .Y(n361) );
  INVX2M U181 ( .A(WrData[6]), .Y(n359) );
  INVX2M U182 ( .A(WrData[1]), .Y(n364) );
  INVX2M U183 ( .A(WrData[3]), .Y(n362) );
  INVX2M U184 ( .A(WrData[5]), .Y(n360) );
  INVX2M U185 ( .A(WrData[7]), .Y(n358) );
  NOR2BX2M U186 ( .AN(n150), .B(N14), .Y(n164) );
  AND2X2M U187 ( .A(N13), .B(n342), .Y(n160) );
  AND2X2M U188 ( .A(N13), .B(N12), .Y(n163) );
  AND2X2M U189 ( .A(n164), .B(n341), .Y(n153) );
  AND2X2M U190 ( .A(n175), .B(n341), .Y(n167) );
  AND2X2M U191 ( .A(N14), .B(n150), .Y(n175) );
  BUFX2M U192 ( .A(RST), .Y(n356) );
  BUFX2M U193 ( .A(RST), .Y(n355) );
  BUFX2M U194 ( .A(RST), .Y(n354) );
  BUFX2M U195 ( .A(RST), .Y(n353) );
  BUFX2M U196 ( .A(RST), .Y(n357) );
  AO22X1M U197 ( .A0(RdData[0]), .A1(n148), .B0(N43), .B1(n149), .Y(n177) );
  MX4X1M U198 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U199 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(N11), 
        .S1(N12), .Y(n141) );
  MX4X1M U200 ( .A(\Reg_file[8][0] ), .B(\Reg_file[9][0] ), .C(
        \Reg_file[10][0] ), .D(\Reg_file[11][0] ), .S0(N11), .S1(N12), .Y(n139) );
  MX4X1M U201 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n339), 
        .S1(N12), .Y(n145) );
  MX4X1M U202 ( .A(\Reg_file[4][0] ), .B(\Reg_file[5][0] ), .C(
        \Reg_file[6][0] ), .D(\Reg_file[7][0] ), .S0(N11), .S1(n337), .Y(n140)
         );
  MX4X1M U203 ( .A(\Reg_file[4][1] ), .B(\Reg_file[5][1] ), .C(
        \Reg_file[6][1] ), .D(\Reg_file[7][1] ), .S0(n339), .S1(N12), .Y(n144)
         );
  MX4X1M U204 ( .A(\Reg_file[4][2] ), .B(\Reg_file[5][2] ), .C(
        \Reg_file[6][2] ), .D(\Reg_file[7][2] ), .S0(n339), .S1(n337), .Y(n314) );
  MX4X1M U205 ( .A(\Reg_file[4][3] ), .B(\Reg_file[5][3] ), .C(
        \Reg_file[6][3] ), .D(\Reg_file[7][3] ), .S0(n339), .S1(n337), .Y(n318) );
  MX4X1M U206 ( .A(\Reg_file[4][4] ), .B(\Reg_file[5][4] ), .C(
        \Reg_file[6][4] ), .D(\Reg_file[7][4] ), .S0(n339), .S1(n337), .Y(n322) );
  MX4X1M U207 ( .A(\Reg_file[4][5] ), .B(\Reg_file[5][5] ), .C(
        \Reg_file[6][5] ), .D(\Reg_file[7][5] ), .S0(n340), .S1(N12), .Y(n326)
         );
  MX4X1M U208 ( .A(\Reg_file[4][6] ), .B(\Reg_file[5][6] ), .C(
        \Reg_file[6][6] ), .D(\Reg_file[7][6] ), .S0(n340), .S1(N12), .Y(n330)
         );
  MX4X1M U209 ( .A(\Reg_file[4][7] ), .B(\Reg_file[5][7] ), .C(
        \Reg_file[6][7] ), .D(\Reg_file[7][7] ), .S0(n340), .S1(N12), .Y(n334)
         );
  MX4X1M U210 ( .A(\Reg_file[12][0] ), .B(\Reg_file[13][0] ), .C(
        \Reg_file[14][0] ), .D(\Reg_file[15][0] ), .S0(n340), .S1(N12), .Y(
        n138) );
  MX4X1M U211 ( .A(\Reg_file[12][2] ), .B(\Reg_file[13][2] ), .C(
        \Reg_file[14][2] ), .D(\Reg_file[15][2] ), .S0(n339), .S1(n337), .Y(
        n146) );
  MX4X1M U212 ( .A(\Reg_file[12][3] ), .B(\Reg_file[13][3] ), .C(
        \Reg_file[14][3] ), .D(\Reg_file[15][3] ), .S0(n339), .S1(n337), .Y(
        n316) );
  MX4X1M U213 ( .A(\Reg_file[12][4] ), .B(\Reg_file[13][4] ), .C(
        \Reg_file[14][4] ), .D(\Reg_file[15][4] ), .S0(n339), .S1(n337), .Y(
        n320) );
  MX4X1M U214 ( .A(\Reg_file[12][5] ), .B(\Reg_file[13][5] ), .C(
        \Reg_file[14][5] ), .D(\Reg_file[15][5] ), .S0(n340), .S1(N12), .Y(
        n324) );
  MX4X1M U215 ( .A(\Reg_file[12][6] ), .B(\Reg_file[13][6] ), .C(
        \Reg_file[14][6] ), .D(\Reg_file[15][6] ), .S0(n340), .S1(N12), .Y(
        n328) );
  MX4X1M U216 ( .A(\Reg_file[12][7] ), .B(\Reg_file[13][7] ), .C(
        \Reg_file[14][7] ), .D(\Reg_file[15][7] ), .S0(n340), .S1(N12), .Y(
        n332) );
  AO22X1M U217 ( .A0(RdData[1]), .A1(n148), .B0(N42), .B1(n149), .Y(n178) );
  MX4X1M U218 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U219 ( .A(\Reg_file[8][1] ), .B(\Reg_file[9][1] ), .C(
        \Reg_file[10][1] ), .D(\Reg_file[11][1] ), .S0(N11), .S1(n337), .Y(
        n143) );
  MX4X1M U220 ( .A(\Reg_file[12][1] ), .B(\Reg_file[13][1] ), .C(
        \Reg_file[14][1] ), .D(\Reg_file[15][1] ), .S0(n339), .S1(n337), .Y(
        n142) );
  AO22X1M U221 ( .A0(RdData[2]), .A1(n148), .B0(N41), .B1(n149), .Y(n179) );
  MX4X1M U222 ( .A(n315), .B(n147), .C(n314), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U223 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n339), 
        .S1(n337), .Y(n315) );
  MX4X1M U224 ( .A(\Reg_file[8][2] ), .B(\Reg_file[9][2] ), .C(
        \Reg_file[10][2] ), .D(\Reg_file[11][2] ), .S0(n339), .S1(n337), .Y(
        n147) );
  AO22X1M U225 ( .A0(RdData[3]), .A1(n148), .B0(N40), .B1(n149), .Y(n180) );
  MX4X1M U226 ( .A(n319), .B(n317), .C(n318), .D(n316), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U227 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n339), 
        .S1(n337), .Y(n319) );
  MX4X1M U228 ( .A(\Reg_file[8][3] ), .B(\Reg_file[9][3] ), .C(
        \Reg_file[10][3] ), .D(\Reg_file[11][3] ), .S0(n339), .S1(n337), .Y(
        n317) );
  AO22X1M U229 ( .A0(RdData[4]), .A1(n148), .B0(N39), .B1(n149), .Y(n181) );
  MX4X1M U230 ( .A(n323), .B(n321), .C(n322), .D(n320), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U231 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n340), 
        .S1(n337), .Y(n323) );
  MX4X1M U232 ( .A(\Reg_file[8][4] ), .B(\Reg_file[9][4] ), .C(
        \Reg_file[10][4] ), .D(\Reg_file[11][4] ), .S0(n339), .S1(n337), .Y(
        n321) );
  AO22X1M U233 ( .A0(RdData[5]), .A1(n148), .B0(N38), .B1(n149), .Y(n182) );
  MX4X1M U234 ( .A(n327), .B(n325), .C(n326), .D(n324), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U235 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n340), 
        .S1(N12), .Y(n327) );
  MX4X1M U236 ( .A(\Reg_file[8][5] ), .B(\Reg_file[9][5] ), .C(
        \Reg_file[10][5] ), .D(\Reg_file[11][5] ), .S0(n340), .S1(N12), .Y(
        n325) );
  AO22X1M U237 ( .A0(RdData[6]), .A1(n148), .B0(N37), .B1(n149), .Y(n183) );
  MX4X1M U238 ( .A(n331), .B(n329), .C(n330), .D(n328), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U239 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n340), 
        .S1(N12), .Y(n331) );
  MX4X1M U240 ( .A(\Reg_file[8][6] ), .B(\Reg_file[9][6] ), .C(
        \Reg_file[10][6] ), .D(\Reg_file[11][6] ), .S0(n340), .S1(N12), .Y(
        n329) );
  AO22X1M U241 ( .A0(RdData[7]), .A1(n148), .B0(N36), .B1(n149), .Y(n184) );
  MX4X1M U242 ( .A(n335), .B(n333), .C(n334), .D(n332), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U243 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n340), 
        .S1(N12), .Y(n335) );
  MX4X1M U244 ( .A(\Reg_file[8][7] ), .B(\Reg_file[9][7] ), .C(
        \Reg_file[10][7] ), .D(\Reg_file[11][7] ), .S0(n340), .S1(N12), .Y(
        n333) );
  INVX2M U245 ( .A(N12), .Y(n342) );
  INVX2M U246 ( .A(N11), .Y(n341) );
  OAI2BB2X1M U247 ( .B0(n151), .B1(n365), .A0N(REG0[0]), .A1N(n151), .Y(n186)
         );
  OAI2BB2X1M U248 ( .B0(n151), .B1(n364), .A0N(REG0[1]), .A1N(n151), .Y(n187)
         );
  OAI2BB2X1M U249 ( .B0(n151), .B1(n363), .A0N(REG0[2]), .A1N(n151), .Y(n188)
         );
  OAI2BB2X1M U250 ( .B0(n151), .B1(n362), .A0N(REG0[3]), .A1N(n151), .Y(n189)
         );
  OAI2BB2X1M U251 ( .B0(n151), .B1(n361), .A0N(REG0[4]), .A1N(n151), .Y(n190)
         );
  OAI2BB2X1M U252 ( .B0(n151), .B1(n360), .A0N(REG0[5]), .A1N(n151), .Y(n191)
         );
  OAI2BB2X1M U253 ( .B0(n151), .B1(n359), .A0N(REG0[6]), .A1N(n151), .Y(n192)
         );
  OAI2BB2X1M U254 ( .B0(n151), .B1(n358), .A0N(REG0[7]), .A1N(n151), .Y(n193)
         );
  OAI2BB2X1M U255 ( .B0(n364), .B1(n156), .A0N(REG2[1]), .A1N(n156), .Y(n203)
         );
  OAI2BB2X1M U256 ( .B0(n363), .B1(n156), .A0N(REG2[2]), .A1N(n156), .Y(n204)
         );
  OAI2BB2X1M U257 ( .B0(n362), .B1(n156), .A0N(REG2[3]), .A1N(n156), .Y(n205)
         );
  OAI2BB2X1M U258 ( .B0(n361), .B1(n156), .A0N(REG2[4]), .A1N(n156), .Y(n206)
         );
  OAI2BB2X1M U259 ( .B0(n360), .B1(n156), .A0N(REG2[5]), .A1N(n156), .Y(n207)
         );
  OAI2BB2X1M U260 ( .B0(n359), .B1(n156), .A0N(REG2[6]), .A1N(n156), .Y(n208)
         );
  OAI2BB2X1M U261 ( .B0(n365), .B1(n158), .A0N(REG3[0]), .A1N(n158), .Y(n210)
         );
  OAI2BB2X1M U262 ( .B0(n364), .B1(n158), .A0N(REG3[1]), .A1N(n158), .Y(n211)
         );
  OAI2BB2X1M U263 ( .B0(n363), .B1(n158), .A0N(REG3[2]), .A1N(n158), .Y(n212)
         );
  OAI2BB2X1M U264 ( .B0(n362), .B1(n158), .A0N(REG3[3]), .A1N(n158), .Y(n213)
         );
  OAI2BB2X1M U265 ( .B0(n361), .B1(n158), .A0N(REG3[4]), .A1N(n158), .Y(n214)
         );
  OAI2BB2X1M U266 ( .B0(n359), .B1(n158), .A0N(REG3[6]), .A1N(n158), .Y(n216)
         );
  OAI2BB2X1M U267 ( .B0(n358), .B1(n158), .A0N(REG3[7]), .A1N(n158), .Y(n217)
         );
  OAI2BB2X1M U268 ( .B0(n365), .B1(n154), .A0N(REG1[0]), .A1N(n154), .Y(n194)
         );
  OAI2BB2X1M U269 ( .B0(n364), .B1(n154), .A0N(REG1[1]), .A1N(n154), .Y(n195)
         );
  OAI2BB2X1M U270 ( .B0(n363), .B1(n154), .A0N(REG1[2]), .A1N(n154), .Y(n196)
         );
  OAI2BB2X1M U271 ( .B0(n362), .B1(n154), .A0N(REG1[3]), .A1N(n154), .Y(n197)
         );
  OAI2BB2X1M U272 ( .B0(n361), .B1(n154), .A0N(REG1[4]), .A1N(n154), .Y(n198)
         );
  OAI2BB2X1M U273 ( .B0(n360), .B1(n154), .A0N(REG1[5]), .A1N(n154), .Y(n199)
         );
  OAI2BB2X1M U274 ( .B0(n359), .B1(n154), .A0N(REG1[6]), .A1N(n154), .Y(n200)
         );
  OAI2BB2X1M U275 ( .B0(n358), .B1(n154), .A0N(REG1[7]), .A1N(n154), .Y(n201)
         );
  OAI2BB2X1M U276 ( .B0(n365), .B1(n166), .A0N(\Reg_file[8][0] ), .A1N(n166), 
        .Y(n250) );
  OAI2BB2X1M U277 ( .B0(n364), .B1(n166), .A0N(\Reg_file[8][1] ), .A1N(n166), 
        .Y(n251) );
  OAI2BB2X1M U278 ( .B0(n363), .B1(n166), .A0N(\Reg_file[8][2] ), .A1N(n166), 
        .Y(n252) );
  OAI2BB2X1M U279 ( .B0(n362), .B1(n166), .A0N(\Reg_file[8][3] ), .A1N(n166), 
        .Y(n253) );
  OAI2BB2X1M U280 ( .B0(n361), .B1(n166), .A0N(\Reg_file[8][4] ), .A1N(n166), 
        .Y(n254) );
  OAI2BB2X1M U281 ( .B0(n360), .B1(n166), .A0N(\Reg_file[8][5] ), .A1N(n166), 
        .Y(n255) );
  OAI2BB2X1M U282 ( .B0(n359), .B1(n166), .A0N(\Reg_file[8][6] ), .A1N(n166), 
        .Y(n256) );
  OAI2BB2X1M U283 ( .B0(n358), .B1(n166), .A0N(\Reg_file[8][7] ), .A1N(n166), 
        .Y(n257) );
  OAI2BB2X1M U284 ( .B0(n365), .B1(n168), .A0N(\Reg_file[9][0] ), .A1N(n168), 
        .Y(n258) );
  OAI2BB2X1M U285 ( .B0(n364), .B1(n168), .A0N(\Reg_file[9][1] ), .A1N(n168), 
        .Y(n259) );
  OAI2BB2X1M U286 ( .B0(n363), .B1(n168), .A0N(\Reg_file[9][2] ), .A1N(n168), 
        .Y(n260) );
  OAI2BB2X1M U287 ( .B0(n362), .B1(n168), .A0N(\Reg_file[9][3] ), .A1N(n168), 
        .Y(n261) );
  OAI2BB2X1M U288 ( .B0(n361), .B1(n168), .A0N(\Reg_file[9][4] ), .A1N(n168), 
        .Y(n262) );
  OAI2BB2X1M U289 ( .B0(n360), .B1(n168), .A0N(\Reg_file[9][5] ), .A1N(n168), 
        .Y(n263) );
  OAI2BB2X1M U290 ( .B0(n359), .B1(n168), .A0N(\Reg_file[9][6] ), .A1N(n168), 
        .Y(n264) );
  OAI2BB2X1M U291 ( .B0(n358), .B1(n168), .A0N(\Reg_file[9][7] ), .A1N(n168), 
        .Y(n265) );
  OAI2BB2X1M U292 ( .B0(n365), .B1(n170), .A0N(\Reg_file[10][0] ), .A1N(n170), 
        .Y(n266) );
  OAI2BB2X1M U293 ( .B0(n364), .B1(n170), .A0N(\Reg_file[10][1] ), .A1N(n170), 
        .Y(n267) );
  OAI2BB2X1M U294 ( .B0(n363), .B1(n170), .A0N(\Reg_file[10][2] ), .A1N(n170), 
        .Y(n268) );
  OAI2BB2X1M U295 ( .B0(n362), .B1(n170), .A0N(\Reg_file[10][3] ), .A1N(n170), 
        .Y(n269) );
  OAI2BB2X1M U296 ( .B0(n361), .B1(n170), .A0N(\Reg_file[10][4] ), .A1N(n170), 
        .Y(n270) );
  OAI2BB2X1M U297 ( .B0(n360), .B1(n170), .A0N(\Reg_file[10][5] ), .A1N(n170), 
        .Y(n271) );
  OAI2BB2X1M U298 ( .B0(n359), .B1(n170), .A0N(\Reg_file[10][6] ), .A1N(n170), 
        .Y(n272) );
  OAI2BB2X1M U299 ( .B0(n358), .B1(n170), .A0N(\Reg_file[10][7] ), .A1N(n170), 
        .Y(n273) );
  OAI2BB2X1M U300 ( .B0(n365), .B1(n171), .A0N(\Reg_file[11][0] ), .A1N(n171), 
        .Y(n274) );
  OAI2BB2X1M U301 ( .B0(n364), .B1(n171), .A0N(\Reg_file[11][1] ), .A1N(n171), 
        .Y(n275) );
  OAI2BB2X1M U302 ( .B0(n363), .B1(n171), .A0N(\Reg_file[11][2] ), .A1N(n171), 
        .Y(n276) );
  OAI2BB2X1M U303 ( .B0(n362), .B1(n171), .A0N(\Reg_file[11][3] ), .A1N(n171), 
        .Y(n277) );
  OAI2BB2X1M U304 ( .B0(n361), .B1(n171), .A0N(\Reg_file[11][4] ), .A1N(n171), 
        .Y(n278) );
  OAI2BB2X1M U305 ( .B0(n360), .B1(n171), .A0N(\Reg_file[11][5] ), .A1N(n171), 
        .Y(n279) );
  OAI2BB2X1M U306 ( .B0(n359), .B1(n171), .A0N(\Reg_file[11][6] ), .A1N(n171), 
        .Y(n280) );
  OAI2BB2X1M U307 ( .B0(n358), .B1(n171), .A0N(\Reg_file[11][7] ), .A1N(n171), 
        .Y(n281) );
  OAI2BB2X1M U308 ( .B0(n365), .B1(n156), .A0N(REG2[0]), .A1N(n156), .Y(n202)
         );
  OAI2BB2X1M U309 ( .B0(n358), .B1(n156), .A0N(REG2[7]), .A1N(n156), .Y(n209)
         );
  OAI2BB2X1M U310 ( .B0(n360), .B1(n158), .A0N(REG3[5]), .A1N(n158), .Y(n215)
         );
  OAI2BB2X1M U311 ( .B0(n365), .B1(n159), .A0N(\Reg_file[4][0] ), .A1N(n159), 
        .Y(n218) );
  OAI2BB2X1M U312 ( .B0(n364), .B1(n159), .A0N(\Reg_file[4][1] ), .A1N(n159), 
        .Y(n219) );
  OAI2BB2X1M U313 ( .B0(n363), .B1(n159), .A0N(\Reg_file[4][2] ), .A1N(n159), 
        .Y(n220) );
  OAI2BB2X1M U314 ( .B0(n362), .B1(n159), .A0N(\Reg_file[4][3] ), .A1N(n159), 
        .Y(n221) );
  OAI2BB2X1M U315 ( .B0(n361), .B1(n159), .A0N(\Reg_file[4][4] ), .A1N(n159), 
        .Y(n222) );
  OAI2BB2X1M U316 ( .B0(n360), .B1(n159), .A0N(\Reg_file[4][5] ), .A1N(n159), 
        .Y(n223) );
  OAI2BB2X1M U317 ( .B0(n359), .B1(n159), .A0N(\Reg_file[4][6] ), .A1N(n159), 
        .Y(n224) );
  OAI2BB2X1M U318 ( .B0(n358), .B1(n159), .A0N(\Reg_file[4][7] ), .A1N(n159), 
        .Y(n225) );
  OAI2BB2X1M U319 ( .B0(n365), .B1(n161), .A0N(\Reg_file[5][0] ), .A1N(n161), 
        .Y(n226) );
  OAI2BB2X1M U320 ( .B0(n364), .B1(n161), .A0N(\Reg_file[5][1] ), .A1N(n161), 
        .Y(n227) );
  OAI2BB2X1M U321 ( .B0(n363), .B1(n161), .A0N(\Reg_file[5][2] ), .A1N(n161), 
        .Y(n228) );
  OAI2BB2X1M U322 ( .B0(n362), .B1(n161), .A0N(\Reg_file[5][3] ), .A1N(n161), 
        .Y(n229) );
  OAI2BB2X1M U323 ( .B0(n361), .B1(n161), .A0N(\Reg_file[5][4] ), .A1N(n161), 
        .Y(n230) );
  OAI2BB2X1M U324 ( .B0(n360), .B1(n161), .A0N(\Reg_file[5][5] ), .A1N(n161), 
        .Y(n231) );
  OAI2BB2X1M U325 ( .B0(n359), .B1(n161), .A0N(\Reg_file[5][6] ), .A1N(n161), 
        .Y(n232) );
  OAI2BB2X1M U326 ( .B0(n358), .B1(n161), .A0N(\Reg_file[5][7] ), .A1N(n161), 
        .Y(n233) );
  OAI2BB2X1M U327 ( .B0(n365), .B1(n162), .A0N(\Reg_file[6][0] ), .A1N(n162), 
        .Y(n234) );
  OAI2BB2X1M U328 ( .B0(n364), .B1(n162), .A0N(\Reg_file[6][1] ), .A1N(n162), 
        .Y(n235) );
  OAI2BB2X1M U329 ( .B0(n363), .B1(n162), .A0N(\Reg_file[6][2] ), .A1N(n162), 
        .Y(n236) );
  OAI2BB2X1M U330 ( .B0(n362), .B1(n162), .A0N(\Reg_file[6][3] ), .A1N(n162), 
        .Y(n237) );
  OAI2BB2X1M U331 ( .B0(n361), .B1(n162), .A0N(\Reg_file[6][4] ), .A1N(n162), 
        .Y(n238) );
  OAI2BB2X1M U332 ( .B0(n360), .B1(n162), .A0N(\Reg_file[6][5] ), .A1N(n162), 
        .Y(n239) );
  OAI2BB2X1M U333 ( .B0(n359), .B1(n162), .A0N(\Reg_file[6][6] ), .A1N(n162), 
        .Y(n240) );
  OAI2BB2X1M U334 ( .B0(n358), .B1(n162), .A0N(\Reg_file[6][7] ), .A1N(n162), 
        .Y(n241) );
  OAI2BB2X1M U335 ( .B0(n365), .B1(n165), .A0N(\Reg_file[7][0] ), .A1N(n165), 
        .Y(n242) );
  OAI2BB2X1M U336 ( .B0(n364), .B1(n165), .A0N(\Reg_file[7][1] ), .A1N(n165), 
        .Y(n243) );
  OAI2BB2X1M U337 ( .B0(n363), .B1(n165), .A0N(\Reg_file[7][2] ), .A1N(n165), 
        .Y(n244) );
  OAI2BB2X1M U338 ( .B0(n362), .B1(n165), .A0N(\Reg_file[7][3] ), .A1N(n165), 
        .Y(n245) );
  OAI2BB2X1M U339 ( .B0(n361), .B1(n165), .A0N(\Reg_file[7][4] ), .A1N(n165), 
        .Y(n246) );
  OAI2BB2X1M U340 ( .B0(n360), .B1(n165), .A0N(\Reg_file[7][5] ), .A1N(n165), 
        .Y(n247) );
  OAI2BB2X1M U341 ( .B0(n359), .B1(n165), .A0N(\Reg_file[7][6] ), .A1N(n165), 
        .Y(n248) );
  OAI2BB2X1M U342 ( .B0(n358), .B1(n165), .A0N(\Reg_file[7][7] ), .A1N(n165), 
        .Y(n249) );
  OAI2BB2X1M U343 ( .B0(n365), .B1(n172), .A0N(\Reg_file[12][0] ), .A1N(n172), 
        .Y(n282) );
  OAI2BB2X1M U344 ( .B0(n364), .B1(n172), .A0N(\Reg_file[12][1] ), .A1N(n172), 
        .Y(n283) );
  OAI2BB2X1M U345 ( .B0(n363), .B1(n172), .A0N(\Reg_file[12][2] ), .A1N(n172), 
        .Y(n284) );
  OAI2BB2X1M U346 ( .B0(n362), .B1(n172), .A0N(\Reg_file[12][3] ), .A1N(n172), 
        .Y(n285) );
  OAI2BB2X1M U347 ( .B0(n361), .B1(n172), .A0N(\Reg_file[12][4] ), .A1N(n172), 
        .Y(n286) );
  OAI2BB2X1M U348 ( .B0(n360), .B1(n172), .A0N(\Reg_file[12][5] ), .A1N(n172), 
        .Y(n287) );
  OAI2BB2X1M U349 ( .B0(n359), .B1(n172), .A0N(\Reg_file[12][6] ), .A1N(n172), 
        .Y(n288) );
  OAI2BB2X1M U350 ( .B0(n358), .B1(n172), .A0N(\Reg_file[12][7] ), .A1N(n172), 
        .Y(n289) );
  OAI2BB2X1M U351 ( .B0(n365), .B1(n173), .A0N(\Reg_file[13][0] ), .A1N(n173), 
        .Y(n290) );
  OAI2BB2X1M U352 ( .B0(n364), .B1(n173), .A0N(\Reg_file[13][1] ), .A1N(n173), 
        .Y(n291) );
  OAI2BB2X1M U353 ( .B0(n363), .B1(n173), .A0N(\Reg_file[13][2] ), .A1N(n173), 
        .Y(n292) );
  OAI2BB2X1M U354 ( .B0(n362), .B1(n173), .A0N(\Reg_file[13][3] ), .A1N(n173), 
        .Y(n293) );
  OAI2BB2X1M U355 ( .B0(n361), .B1(n173), .A0N(\Reg_file[13][4] ), .A1N(n173), 
        .Y(n294) );
  OAI2BB2X1M U356 ( .B0(n360), .B1(n173), .A0N(\Reg_file[13][5] ), .A1N(n173), 
        .Y(n295) );
  OAI2BB2X1M U357 ( .B0(n359), .B1(n173), .A0N(\Reg_file[13][6] ), .A1N(n173), 
        .Y(n296) );
  OAI2BB2X1M U358 ( .B0(n358), .B1(n173), .A0N(\Reg_file[13][7] ), .A1N(n173), 
        .Y(n297) );
  OAI2BB2X1M U359 ( .B0(n365), .B1(n174), .A0N(\Reg_file[14][0] ), .A1N(n174), 
        .Y(n298) );
  OAI2BB2X1M U360 ( .B0(n364), .B1(n174), .A0N(\Reg_file[14][1] ), .A1N(n174), 
        .Y(n299) );
  OAI2BB2X1M U361 ( .B0(n363), .B1(n174), .A0N(\Reg_file[14][2] ), .A1N(n174), 
        .Y(n300) );
  OAI2BB2X1M U362 ( .B0(n362), .B1(n174), .A0N(\Reg_file[14][3] ), .A1N(n174), 
        .Y(n301) );
  OAI2BB2X1M U363 ( .B0(n361), .B1(n174), .A0N(\Reg_file[14][4] ), .A1N(n174), 
        .Y(n302) );
  OAI2BB2X1M U364 ( .B0(n360), .B1(n174), .A0N(\Reg_file[14][5] ), .A1N(n174), 
        .Y(n303) );
  OAI2BB2X1M U365 ( .B0(n359), .B1(n174), .A0N(\Reg_file[14][6] ), .A1N(n174), 
        .Y(n304) );
  OAI2BB2X1M U366 ( .B0(n358), .B1(n174), .A0N(\Reg_file[14][7] ), .A1N(n174), 
        .Y(n305) );
  OAI2BB2X1M U367 ( .B0(n365), .B1(n176), .A0N(\Reg_file[15][0] ), .A1N(n176), 
        .Y(n306) );
  OAI2BB2X1M U368 ( .B0(n364), .B1(n176), .A0N(\Reg_file[15][1] ), .A1N(n176), 
        .Y(n307) );
  OAI2BB2X1M U369 ( .B0(n363), .B1(n176), .A0N(\Reg_file[15][2] ), .A1N(n176), 
        .Y(n308) );
  OAI2BB2X1M U370 ( .B0(n362), .B1(n176), .A0N(\Reg_file[15][3] ), .A1N(n176), 
        .Y(n309) );
  OAI2BB2X1M U371 ( .B0(n361), .B1(n176), .A0N(\Reg_file[15][4] ), .A1N(n176), 
        .Y(n310) );
  OAI2BB2X1M U372 ( .B0(n360), .B1(n176), .A0N(\Reg_file[15][5] ), .A1N(n176), 
        .Y(n311) );
  OAI2BB2X1M U373 ( .B0(n359), .B1(n176), .A0N(\Reg_file[15][6] ), .A1N(n176), 
        .Y(n312) );
  OAI2BB2X1M U374 ( .B0(n358), .B1(n176), .A0N(\Reg_file[15][7] ), .A1N(n176), 
        .Y(n313) );
  AO21XLM U375 ( .A0(RdData_VLD), .A1(n150), .B0(n149), .Y(n185) );
  DLY1X1M U376 ( .A(test_se), .Y(n369) );
  DLY1X1M U377 ( .A(test_se), .Y(n370) );
  DLY1X1M U378 ( .A(test_se), .Y(n371) );
  DLY1X1M U379 ( .A(test_se), .Y(n372) );
endmodule


module ALU_16B_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U8 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  OR2X2M U9 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U10 ( .A(b[1]), .Y(n18) );
  NAND2X2M U11 ( .A(n7), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  NAND2X2M U12 ( .A(n3), .B(n4), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U13 ( .A(a[5]), .Y(n4) );
  INVX2M U14 ( .A(n19), .Y(n3) );
  NAND2X2M U15 ( .A(n5), .B(n6), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U16 ( .A(a[4]), .Y(n6) );
  INVX2M U17 ( .A(n19), .Y(n5) );
  NAND2X2M U18 ( .A(n7), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U19 ( .A(a[3]), .Y(n8) );
  INVX2M U20 ( .A(n19), .Y(n7) );
  NAND2X2M U21 ( .A(n7), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U22 ( .A(a[2]), .Y(n9) );
  NAND2X2M U23 ( .A(n7), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U24 ( .A(a[1]), .Y(n10) );
  NAND2X2M U25 ( .A(n1), .B(n2), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U26 ( .A(a[6]), .Y(n2) );
  INVX2M U27 ( .A(n19), .Y(n1) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  INVX2M U29 ( .A(a[0]), .Y(n11) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_16B_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  INVX2M U2 ( .A(B[1]), .Y(n8) );
  NAND2X2M U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U4 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U5 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U6 ( .A(B[0]), .Y(n9) );
  INVX2M U7 ( .A(B[2]), .Y(n7) );
  INVX2M U8 ( .A(B[3]), .Y(n6) );
  INVX2M U9 ( .A(B[4]), .Y(n5) );
  INVX2M U10 ( .A(B[5]), .Y(n4) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_16B_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_16B_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  INVX2M U4 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U6 ( .A(n9), .Y(SUM[6]) );
  XNOR2X2M U7 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U8 ( .A(B[7]), .Y(n8) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_16B_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n9), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n8), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n23) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U13 ( .A(\ab[0][7] ), .Y(n24) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n21) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n22) );
  INVX2M U16 ( .A(\ab[0][3] ), .Y(n20) );
  XNOR2X2M U17 ( .A(\ab[1][2] ), .B(n20), .Y(\SUMB[1][2] ) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n19) );
  AND2X2M U23 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  AND2X2M U25 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U26 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U30 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][0] ), .B(n18), .Y(PRODUCT[1]) );
  INVX2M U32 ( .A(\ab[0][1] ), .Y(n18) );
  XNOR2X2M U33 ( .A(\ab[1][6] ), .B(n24), .Y(\SUMB[1][6] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n22), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][5] ), .B(n23), .Y(\SUMB[1][5] ) );
  XNOR2X2M U36 ( .A(\ab[1][3] ), .B(n21), .Y(\SUMB[1][3] ) );
  INVX2M U37 ( .A(A[1]), .Y(n39) );
  INVX2M U38 ( .A(A[0]), .Y(n40) );
  INVX2M U39 ( .A(B[6]), .Y(n26) );
  XNOR2X2M U40 ( .A(\ab[1][1] ), .B(n19), .Y(\SUMB[1][1] ) );
  INVX2M U41 ( .A(A[2]), .Y(n38) );
  INVX2M U42 ( .A(A[3]), .Y(n37) );
  INVX2M U43 ( .A(A[4]), .Y(n36) );
  INVX2M U44 ( .A(B[1]), .Y(n31) );
  INVX2M U45 ( .A(A[6]), .Y(n34) );
  INVX2M U46 ( .A(A[7]), .Y(n33) );
  INVX2M U47 ( .A(A[5]), .Y(n35) );
  INVX2M U48 ( .A(B[3]), .Y(n29) );
  INVX2M U49 ( .A(B[7]), .Y(n25) );
  INVX2M U50 ( .A(B[5]), .Y(n27) );
  INVX2M U51 ( .A(B[4]), .Y(n28) );
  INVX2M U52 ( .A(B[0]), .Y(n32) );
  INVX2M U53 ( .A(B[2]), .Y(n30) );
  NOR2X1M U55 ( .A(n33), .B(n25), .Y(\ab[7][7] ) );
  NOR2X1M U56 ( .A(n33), .B(n26), .Y(\ab[7][6] ) );
  NOR2X1M U57 ( .A(n33), .B(n27), .Y(\ab[7][5] ) );
  NOR2X1M U58 ( .A(n33), .B(n28), .Y(\ab[7][4] ) );
  NOR2X1M U59 ( .A(n33), .B(n29), .Y(\ab[7][3] ) );
  NOR2X1M U60 ( .A(n33), .B(n30), .Y(\ab[7][2] ) );
  NOR2X1M U61 ( .A(n33), .B(n31), .Y(\ab[7][1] ) );
  NOR2X1M U62 ( .A(n33), .B(n32), .Y(\ab[7][0] ) );
  NOR2X1M U63 ( .A(n25), .B(n34), .Y(\ab[6][7] ) );
  NOR2X1M U64 ( .A(n26), .B(n34), .Y(\ab[6][6] ) );
  NOR2X1M U65 ( .A(n27), .B(n34), .Y(\ab[6][5] ) );
  NOR2X1M U66 ( .A(n28), .B(n34), .Y(\ab[6][4] ) );
  NOR2X1M U67 ( .A(n29), .B(n34), .Y(\ab[6][3] ) );
  NOR2X1M U68 ( .A(n30), .B(n34), .Y(\ab[6][2] ) );
  NOR2X1M U69 ( .A(n31), .B(n34), .Y(\ab[6][1] ) );
  NOR2X1M U70 ( .A(n32), .B(n34), .Y(\ab[6][0] ) );
  NOR2X1M U71 ( .A(n25), .B(n35), .Y(\ab[5][7] ) );
  NOR2X1M U72 ( .A(n26), .B(n35), .Y(\ab[5][6] ) );
  NOR2X1M U73 ( .A(n27), .B(n35), .Y(\ab[5][5] ) );
  NOR2X1M U74 ( .A(n28), .B(n35), .Y(\ab[5][4] ) );
  NOR2X1M U75 ( .A(n29), .B(n35), .Y(\ab[5][3] ) );
  NOR2X1M U76 ( .A(n30), .B(n35), .Y(\ab[5][2] ) );
  NOR2X1M U77 ( .A(n31), .B(n35), .Y(\ab[5][1] ) );
  NOR2X1M U78 ( .A(n32), .B(n35), .Y(\ab[5][0] ) );
  NOR2X1M U79 ( .A(n25), .B(n36), .Y(\ab[4][7] ) );
  NOR2X1M U80 ( .A(n26), .B(n36), .Y(\ab[4][6] ) );
  NOR2X1M U81 ( .A(n27), .B(n36), .Y(\ab[4][5] ) );
  NOR2X1M U82 ( .A(n28), .B(n36), .Y(\ab[4][4] ) );
  NOR2X1M U83 ( .A(n29), .B(n36), .Y(\ab[4][3] ) );
  NOR2X1M U84 ( .A(n30), .B(n36), .Y(\ab[4][2] ) );
  NOR2X1M U85 ( .A(n31), .B(n36), .Y(\ab[4][1] ) );
  NOR2X1M U86 ( .A(n32), .B(n36), .Y(\ab[4][0] ) );
  NOR2X1M U87 ( .A(n25), .B(n37), .Y(\ab[3][7] ) );
  NOR2X1M U88 ( .A(n26), .B(n37), .Y(\ab[3][6] ) );
  NOR2X1M U89 ( .A(n27), .B(n37), .Y(\ab[3][5] ) );
  NOR2X1M U90 ( .A(n28), .B(n37), .Y(\ab[3][4] ) );
  NOR2X1M U91 ( .A(n29), .B(n37), .Y(\ab[3][3] ) );
  NOR2X1M U92 ( .A(n30), .B(n37), .Y(\ab[3][2] ) );
  NOR2X1M U93 ( .A(n31), .B(n37), .Y(\ab[3][1] ) );
  NOR2X1M U94 ( .A(n32), .B(n37), .Y(\ab[3][0] ) );
  NOR2X1M U95 ( .A(n25), .B(n38), .Y(\ab[2][7] ) );
  NOR2X1M U96 ( .A(n26), .B(n38), .Y(\ab[2][6] ) );
  NOR2X1M U97 ( .A(n27), .B(n38), .Y(\ab[2][5] ) );
  NOR2X1M U98 ( .A(n28), .B(n38), .Y(\ab[2][4] ) );
  NOR2X1M U99 ( .A(n29), .B(n38), .Y(\ab[2][3] ) );
  NOR2X1M U100 ( .A(n30), .B(n38), .Y(\ab[2][2] ) );
  NOR2X1M U101 ( .A(n31), .B(n38), .Y(\ab[2][1] ) );
  NOR2X1M U102 ( .A(n32), .B(n38), .Y(\ab[2][0] ) );
  NOR2X1M U103 ( .A(n25), .B(n39), .Y(\ab[1][7] ) );
  NOR2X1M U104 ( .A(n26), .B(n39), .Y(\ab[1][6] ) );
  NOR2X1M U105 ( .A(n27), .B(n39), .Y(\ab[1][5] ) );
  NOR2X1M U106 ( .A(n28), .B(n39), .Y(\ab[1][4] ) );
  NOR2X1M U107 ( .A(n29), .B(n39), .Y(\ab[1][3] ) );
  NOR2X1M U108 ( .A(n30), .B(n39), .Y(\ab[1][2] ) );
  NOR2X1M U109 ( .A(n31), .B(n39), .Y(\ab[1][1] ) );
  NOR2X1M U110 ( .A(n32), .B(n39), .Y(\ab[1][0] ) );
  NOR2X1M U111 ( .A(n25), .B(n40), .Y(\ab[0][7] ) );
  NOR2X1M U112 ( .A(n26), .B(n40), .Y(\ab[0][6] ) );
  NOR2X1M U113 ( .A(n27), .B(n40), .Y(\ab[0][5] ) );
  NOR2X1M U114 ( .A(n28), .B(n40), .Y(\ab[0][4] ) );
  NOR2X1M U115 ( .A(n29), .B(n40), .Y(\ab[0][3] ) );
  NOR2X1M U116 ( .A(n30), .B(n40), .Y(\ab[0][2] ) );
  NOR2X1M U117 ( .A(n31), .B(n40), .Y(\ab[0][1] ) );
  NOR2X1M U118 ( .A(n32), .B(n40), .Y(PRODUCT[0]) );
  ALU_16B_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n13, n14, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_16B_test_1 ( A, B, ALU_FUN, EN, RST, CLK, ALU_OUT, OUT_VALID, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input EN, RST, CLK, test_si, test_se;
  output OUT_VALID;
  wire   N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N126,
         N127, N128, N129, N130, N131, N132, N133, N166, N167, N168, n10, n11,
         n12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n25, n26, n27,
         n30, n32, n34, n35, n36, n37, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n57, n58, n59, n60, n62, n64, n67,
         n68, n69, n70, n71, n73, n75, n76, n77, n78, n79, n81, n83, n84, n85,
         n86, n87, n89, n91, n92, n93, n94, n95, n97, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n109, n111, n112, n113, n117, n118,
         n119, n120, n121, n122, n124, n126, n128, n130, n132, n134, n136,
         n138, n140, n142, n144, n146, n148, n150, n152, n154, n156, n3, n4,
         n5, n6, n7, n8, n9, n13, n24, n28, n29, n31, n33, n38, n39, n40, n56,
         n61, n63, n65, n66, n72, n74, n80, n82, n88, n90, n96, n98, n108,
         n110, n114, n115, n116, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188;

  SDFFRQX2M \ALU_OUT_reg[8]  ( .D(n142), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[8]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(n156), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(n154), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(n152), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(n150), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(n148), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(n146), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(n144), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(n140), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(n138), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(n136), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(n134), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(n132), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(n130), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(n128), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(n126), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX2M OUT_VALID_reg ( .D(n124), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  BUFX2M U3 ( .A(A[6]), .Y(n28) );
  BUFX2M U4 ( .A(A[1]), .Y(n7) );
  INVX2M U5 ( .A(n37), .Y(n179) );
  INVX2M U8 ( .A(n36), .Y(n181) );
  INVX2M U9 ( .A(n35), .Y(n183) );
  NOR3X2M U10 ( .A(n188), .B(n184), .C(n49), .Y(n99) );
  INVX2M U11 ( .A(EN), .Y(n188) );
  NAND3X2M U12 ( .A(n186), .B(n187), .C(EN), .Y(n109) );
  NOR2BX2M U13 ( .AN(n119), .B(n184), .Y(n27) );
  NOR2X2M U14 ( .A(n188), .B(n51), .Y(n32) );
  NAND2X2M U15 ( .A(EN), .B(n54), .Y(n35) );
  NAND2X2M U16 ( .A(n99), .B(n187), .Y(n37) );
  NAND3X2M U17 ( .A(n185), .B(n186), .C(n182), .Y(n36) );
  INVX2M U18 ( .A(n25), .Y(n182) );
  NOR2X2M U19 ( .A(n184), .B(n109), .Y(n107) );
  INVX2M U20 ( .A(n55), .Y(n180) );
  NOR2X2M U21 ( .A(n25), .B(n111), .Y(n46) );
  NOR4X2M U22 ( .A(n188), .B(n111), .C(ALU_FUN[0]), .D(ALU_FUN[3]), .Y(n34) );
  NOR3X2M U23 ( .A(n184), .B(ALU_FUN[2]), .C(n187), .Y(n53) );
  NOR3BX2M U24 ( .AN(N168), .B(n25), .C(n49), .Y(n22) );
  NAND3X2M U25 ( .A(ALU_FUN[3]), .B(n184), .C(EN), .Y(n25) );
  OAI2BB2X1M U26 ( .B0(ALU_FUN[3]), .B1(n49), .A0N(n185), .A1N(n53), .Y(n54)
         );
  AOI2BB2XLM U27 ( .B0(n185), .B1(n53), .A0N(ALU_FUN[3]), .A1N(n111), .Y(n51)
         );
  INVX2M U28 ( .A(ALU_FUN[0]), .Y(n184) );
  NOR4BX1M U29 ( .AN(N166), .B(ALU_FUN[2]), .C(n185), .D(n25), .Y(n23) );
  NAND2X2M U30 ( .A(n99), .B(ALU_FUN[3]), .Y(n55) );
  NAND2X2M U31 ( .A(ALU_FUN[2]), .B(n185), .Y(n49) );
  INVX2M U32 ( .A(ALU_FUN[1]), .Y(n185) );
  INVX2M U33 ( .A(ALU_FUN[3]), .Y(n187) );
  NOR2X2M U34 ( .A(n109), .B(ALU_FUN[1]), .Y(n119) );
  INVX2M U35 ( .A(ALU_FUN[2]), .Y(n186) );
  NOR2BX2M U36 ( .AN(n119), .B(ALU_FUN[0]), .Y(n21) );
  NAND2X2M U37 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n111) );
  BUFX2M U38 ( .A(n12), .Y(n3) );
  NOR3X2M U39 ( .A(n185), .B(ALU_FUN[0]), .C(n109), .Y(n12) );
  AOI222X1M U40 ( .A0(N108), .A1(n3), .B0(n7), .B1(n180), .C0(N126), .C1(n166), 
        .Y(n18) );
  AOI222X1M U41 ( .A0(N109), .A1(n3), .B0(n8), .B1(n180), .C0(N127), .C1(n166), 
        .Y(n42) );
  AOI222X1M U42 ( .A0(n34), .A1(n176), .B0(N128), .B1(n166), .C0(N110), .C1(n3), .Y(n60) );
  AOI222X1M U43 ( .A0(n34), .A1(n175), .B0(N129), .B1(n166), .C0(N111), .C1(n3), .Y(n70) );
  AOI222X1M U44 ( .A0(n34), .A1(n174), .B0(N130), .B1(n166), .C0(N112), .C1(n3), .Y(n78) );
  AOI222X1M U45 ( .A0(n34), .A1(n173), .B0(N131), .B1(n166), .C0(N113), .C1(n3), .Y(n86) );
  AOI222X1M U46 ( .A0(n34), .A1(n172), .B0(N132), .B1(n166), .C0(N114), .C1(n3), .Y(n94) );
  AOI222X1M U47 ( .A0(n34), .A1(n171), .B0(N133), .B1(n166), .C0(N115), .C1(n3), .Y(n103) );
  AOI21X2M U48 ( .A0(N107), .A1(n27), .B0(n32), .Y(n11) );
  AOI221XLM U49 ( .A0(n181), .A1(n171), .B0(n29), .B1(n183), .C0(n179), .Y(
        n112) );
  AOI221XLM U50 ( .A0(n29), .A1(n181), .B0(n32), .B1(n171), .C0(n34), .Y(n113)
         );
  AOI221XLM U51 ( .A0(n181), .A1(n176), .B0(n8), .B1(n183), .C0(n179), .Y(n62)
         );
  AOI221XLM U52 ( .A0(n181), .A1(n175), .B0(n9), .B1(n183), .C0(n179), .Y(n71)
         );
  AOI221XLM U53 ( .A0(n181), .A1(n174), .B0(n13), .B1(n183), .C0(n179), .Y(n79) );
  AOI221XLM U54 ( .A0(n181), .A1(n173), .B0(n24), .B1(n183), .C0(n179), .Y(n87) );
  AOI221XLM U55 ( .A0(n181), .A1(n172), .B0(n28), .B1(n183), .C0(n179), .Y(n95) );
  AOI221XLM U56 ( .A0(n8), .A1(n181), .B0(n32), .B1(n176), .C0(n34), .Y(n64)
         );
  AOI221XLM U57 ( .A0(n9), .A1(n181), .B0(n32), .B1(n175), .C0(n34), .Y(n73)
         );
  AOI221XLM U58 ( .A0(n13), .A1(n181), .B0(n32), .B1(n174), .C0(n34), .Y(n81)
         );
  AOI221XLM U59 ( .A0(n24), .A1(n181), .B0(n32), .B1(n173), .C0(n34), .Y(n89)
         );
  AOI221XLM U60 ( .A0(n28), .A1(n181), .B0(n32), .B1(n172), .C0(n34), .Y(n97)
         );
  OAI31X1M U61 ( .A0(n51), .A1(n4), .A2(n7), .B0(n52), .Y(n50) );
  AOI33X2M U62 ( .A0(n53), .A1(ALU_FUN[1]), .A2(N167), .B0(n7), .B1(n54), .B2(
        n4), .Y(n52) );
  OAI221X1M U63 ( .A0(n178), .A1(n35), .B0(n6), .B1(n36), .C0(n37), .Y(n26) );
  INVX2M U64 ( .A(n31), .Y(n162) );
  OAI21BX1M U65 ( .A0(n4), .A1(n48), .B0N(n22), .Y(n47) );
  AOI21X2M U66 ( .A0(n7), .A1(n181), .B0(n34), .Y(n48) );
  INVX2M U67 ( .A(n74), .Y(n164) );
  OAI21X2M U68 ( .A0(n7), .A1(n36), .B0(n37), .Y(n45) );
  INVX2M U69 ( .A(n30), .Y(n177) );
  AOI221XLM U70 ( .A0(n178), .A1(n32), .B0(n181), .B1(n6), .C0(n34), .Y(n30)
         );
  INVX2M U71 ( .A(n7), .Y(n160) );
  INVX2M U72 ( .A(n29), .Y(n171) );
  INVX2M U73 ( .A(n28), .Y(n172) );
  INVX2M U74 ( .A(n9), .Y(n175) );
  INVX2M U75 ( .A(n13), .Y(n174) );
  INVX2M U76 ( .A(n24), .Y(n173) );
  INVX2M U77 ( .A(n5), .Y(n168) );
  INVX2M U78 ( .A(n8), .Y(n176) );
  INVX2M U79 ( .A(n6), .Y(n178) );
  NAND4X2M U80 ( .A(n17), .B(n18), .C(n19), .D(n20), .Y(n126) );
  AOI222X1M U81 ( .A0(ALU_OUT[0]), .A1(n188), .B0(n34), .B1(n178), .C0(n179), 
        .C1(n6), .Y(n17) );
  AOI222X1M U82 ( .A0(B[0]), .A1(n26), .B0(N99), .B1(n27), .C0(n177), .C1(n161), .Y(n19) );
  AOI211X2M U83 ( .A0(N90), .A1(n21), .B0(n22), .C0(n23), .Y(n20) );
  BUFX2M U84 ( .A(A[7]), .Y(n29) );
  BUFX2M U85 ( .A(B[6]), .Y(n5) );
  BUFX2M U86 ( .A(B[1]), .Y(n4) );
  NAND4X2M U87 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n128) );
  AOI222X1M U88 ( .A0(ALU_OUT[1]), .A1(n188), .B0(n34), .B1(n160), .C0(n179), 
        .C1(n7), .Y(n41) );
  AOI221XLM U89 ( .A0(n4), .A1(n45), .B0(n46), .B1(n6), .C0(n47), .Y(n44) );
  AOI222X1M U90 ( .A0(EN), .A1(n50), .B0(N91), .B1(n21), .C0(N100), .C1(n27), 
        .Y(n43) );
  BUFX2M U91 ( .A(A[5]), .Y(n24) );
  BUFX2M U92 ( .A(A[4]), .Y(n13) );
  NAND4BX1M U93 ( .AN(n57), .B(n58), .C(n59), .D(n60), .Y(n130) );
  AOI222X1M U94 ( .A0(N101), .A1(n27), .B0(n46), .B1(n7), .C0(N92), .C1(n21), 
        .Y(n58) );
  AOI22X1M U95 ( .A0(n8), .A1(n179), .B0(ALU_OUT[2]), .B1(n188), .Y(n59) );
  OAI222X1M U96 ( .A0(n62), .A1(n163), .B0(B[2]), .B1(n64), .C0(n55), .C1(n175), .Y(n57) );
  BUFX2M U97 ( .A(A[3]), .Y(n9) );
  NAND4BX1M U98 ( .AN(n67), .B(n68), .C(n69), .D(n70), .Y(n132) );
  AOI222X1M U99 ( .A0(N102), .A1(n27), .B0(n8), .B1(n46), .C0(N93), .C1(n21), 
        .Y(n68) );
  AOI22X1M U100 ( .A0(n9), .A1(n179), .B0(ALU_OUT[3]), .B1(n188), .Y(n69) );
  OAI222X1M U101 ( .A0(n71), .A1(n165), .B0(B[3]), .B1(n73), .C0(n55), .C1(
        n174), .Y(n67) );
  BUFX2M U102 ( .A(A[2]), .Y(n8) );
  NAND2X2M U103 ( .A(n15), .B(n11), .Y(n154) );
  AOI22X1M U104 ( .A0(N122), .A1(n3), .B0(ALU_OUT[14]), .B1(n188), .Y(n15) );
  NAND2X2M U105 ( .A(n16), .B(n11), .Y(n156) );
  AOI22X1M U106 ( .A0(N123), .A1(n3), .B0(ALU_OUT[15]), .B1(n188), .Y(n16) );
  NAND4BX1M U107 ( .AN(n75), .B(n76), .C(n77), .D(n78), .Y(n134) );
  AOI222X1M U108 ( .A0(N103), .A1(n27), .B0(n9), .B1(n46), .C0(N94), .C1(n21), 
        .Y(n76) );
  AOI22X1M U109 ( .A0(n13), .A1(n179), .B0(ALU_OUT[4]), .B1(n188), .Y(n77) );
  OAI222X1M U110 ( .A0(n79), .A1(n170), .B0(B[4]), .B1(n81), .C0(n55), .C1(
        n173), .Y(n75) );
  BUFX2M U111 ( .A(A[0]), .Y(n6) );
  NAND2X2M U112 ( .A(n122), .B(n11), .Y(n148) );
  AOI22X1M U113 ( .A0(N119), .A1(n3), .B0(ALU_OUT[11]), .B1(n188), .Y(n122) );
  NAND2X2M U114 ( .A(n10), .B(n11), .Y(n150) );
  AOI22X1M U115 ( .A0(N120), .A1(n3), .B0(ALU_OUT[12]), .B1(n188), .Y(n10) );
  NAND2X2M U116 ( .A(n14), .B(n11), .Y(n152) );
  AOI22X1M U117 ( .A0(N121), .A1(n3), .B0(ALU_OUT[13]), .B1(n188), .Y(n14) );
  OAI2B11X2M U118 ( .A1N(ALU_OUT[8]), .A0(EN), .B0(n11), .C0(n117), .Y(n142)
         );
  AOI221XLM U119 ( .A0(N116), .A1(n3), .B0(N98), .B1(n21), .C0(n118), .Y(n117)
         );
  NOR4X1M U120 ( .A(ALU_FUN[0]), .B(n111), .C(n188), .D(n171), .Y(n118) );
  NAND2X2M U121 ( .A(n121), .B(n11), .Y(n146) );
  AOI22X1M U122 ( .A0(N118), .A1(n3), .B0(ALU_OUT[10]), .B1(n188), .Y(n121) );
  NAND4BX1M U123 ( .AN(n83), .B(n84), .C(n85), .D(n86), .Y(n136) );
  AOI222X1M U124 ( .A0(N104), .A1(n27), .B0(n13), .B1(n46), .C0(N95), .C1(n21), 
        .Y(n84) );
  AOI22X1M U125 ( .A0(n24), .A1(n179), .B0(ALU_OUT[5]), .B1(n188), .Y(n85) );
  OAI222X1M U126 ( .A0(n87), .A1(n169), .B0(B[5]), .B1(n89), .C0(n55), .C1(
        n172), .Y(n83) );
  NAND4BX1M U127 ( .AN(n91), .B(n92), .C(n93), .D(n94), .Y(n138) );
  AOI222X1M U128 ( .A0(N105), .A1(n27), .B0(n24), .B1(n46), .C0(N96), .C1(n21), 
        .Y(n92) );
  AOI22X1M U129 ( .A0(n28), .A1(n179), .B0(ALU_OUT[6]), .B1(n188), .Y(n93) );
  OAI222X1M U130 ( .A0(n95), .A1(n168), .B0(n5), .B1(n97), .C0(n55), .C1(n171), 
        .Y(n91) );
  NAND4BX1M U131 ( .AN(n100), .B(n101), .C(n102), .D(n103), .Y(n140) );
  AOI22X1M U132 ( .A0(n29), .A1(n179), .B0(ALU_OUT[7]), .B1(n188), .Y(n102) );
  AOI222X1M U133 ( .A0(N106), .A1(n27), .B0(n28), .B1(n46), .C0(N97), .C1(n21), 
        .Y(n101) );
  OAI22X1M U134 ( .A0(n112), .A1(n167), .B0(B[7]), .B1(n113), .Y(n100) );
  NAND2X2M U135 ( .A(n120), .B(n11), .Y(n144) );
  AOI22X1M U153 ( .A0(N117), .A1(n3), .B0(ALU_OUT[9]), .B1(n188), .Y(n120) );
  INVX2M U154 ( .A(n104), .Y(n166) );
  OAI211X2M U155 ( .A0(n105), .A1(n106), .B0(ALU_FUN[1]), .C0(n107), .Y(n104)
         );
  NAND4X2M U156 ( .A(n170), .B(n169), .C(n168), .D(n167), .Y(n105) );
  OR4X1M U157 ( .A(n4), .B(B[0]), .C(B[2]), .D(B[3]), .Y(n106) );
  INVX2M U158 ( .A(B[0]), .Y(n161) );
  INVX2M U159 ( .A(B[2]), .Y(n163) );
  INVX2M U160 ( .A(B[3]), .Y(n165) );
  OR2X2M U161 ( .A(OUT_VALID), .B(EN), .Y(n124) );
  INVX2M U162 ( .A(B[7]), .Y(n167) );
  INVX2M U163 ( .A(B[4]), .Y(n170) );
  INVX2M U164 ( .A(B[5]), .Y(n169) );
  NOR2X1M U165 ( .A(n171), .B(B[7]), .Y(n116) );
  NAND2BX1M U166 ( .AN(B[4]), .B(n13), .Y(n90) );
  NAND2BX1M U167 ( .AN(n13), .B(B[4]), .Y(n40) );
  CLKNAND2X2M U168 ( .A(n90), .B(n40), .Y(n98) );
  NOR2X1M U169 ( .A(n165), .B(n9), .Y(n80) );
  NOR2X1M U170 ( .A(n163), .B(n8), .Y(n39) );
  NOR2X1M U171 ( .A(n161), .B(n6), .Y(n31) );
  CLKNAND2X2M U172 ( .A(n8), .B(n163), .Y(n88) );
  NAND2BX1M U173 ( .AN(n39), .B(n88), .Y(n66) );
  AOI21X1M U174 ( .A0(n31), .A1(n160), .B0(n4), .Y(n33) );
  AOI211X1M U175 ( .A0(n7), .A1(n162), .B0(n66), .C0(n33), .Y(n38) );
  CLKNAND2X2M U176 ( .A(n9), .B(n165), .Y(n82) );
  OAI31X1M U177 ( .A0(n80), .A1(n39), .A2(n38), .B0(n82), .Y(n56) );
  NAND2BX1M U178 ( .AN(n24), .B(B[5]), .Y(n114) );
  OAI211X1M U179 ( .A0(n98), .A1(n56), .B0(n40), .C0(n114), .Y(n61) );
  NAND2BX1M U180 ( .AN(B[5]), .B(n24), .Y(n96) );
  XNOR2X1M U181 ( .A(n28), .B(n5), .Y(n110) );
  AOI32X1M U182 ( .A0(n61), .A1(n96), .A2(n110), .B0(n5), .B1(n172), .Y(n63)
         );
  CLKNAND2X2M U183 ( .A(B[7]), .B(n171), .Y(n157) );
  OAI21X1M U184 ( .A0(n116), .A1(n63), .B0(n157), .Y(N168) );
  CLKNAND2X2M U185 ( .A(n6), .B(n161), .Y(n72) );
  OA21X1M U186 ( .A0(n72), .A1(n160), .B0(n4), .Y(n65) );
  AOI211X1M U187 ( .A0(n72), .A1(n160), .B0(n66), .C0(n65), .Y(n74) );
  AOI31X1M U188 ( .A0(n164), .A1(n88), .A2(n82), .B0(n80), .Y(n108) );
  OAI2B11X1M U189 ( .A1N(n108), .A0(n98), .B0(n96), .C0(n90), .Y(n115) );
  AOI32X1M U190 ( .A0(n115), .A1(n114), .A2(n110), .B0(n28), .B1(n168), .Y(
        n158) );
  AOI2B1X1M U191 ( .A1N(n158), .A0(n157), .B0(n116), .Y(n159) );
  CLKINVX1M U192 ( .A(n159), .Y(N167) );
  NOR2X1M U193 ( .A(N168), .B(N167), .Y(N166) );
  ALU_16B_DW_div_uns_0 div_26 ( .a({n29, n28, n24, n13, n9, n8, n7, n6}), .b({
        B[7], n5, B[5:2], n4, B[0]}), .quotient({N133, N132, N131, N130, N129, 
        N128, N127, N126}) );
  ALU_16B_DW01_sub_0 sub_24 ( .A({1'b0, n29, n28, n24, n13, n9, n8, n7, n6}), 
        .B({1'b0, B[7], n5, B[5:2], n4, B[0]}), .CI(1'b0), .DIFF({N107, N106, 
        N105, N104, N103, N102, N101, N100, N99}) );
  ALU_16B_DW01_add_0 add_23 ( .A({1'b0, n29, n28, n24, n13, n9, n8, n7, n6}), 
        .B({1'b0, B[7], n5, B[5:2], n4, B[0]}), .CI(1'b0), .SUM({N98, N97, N96, 
        N95, N94, N93, N92, N91, N90}) );
  ALU_16B_DW02_mult_0 mult_25 ( .A({n29, n28, n24, n13, n9, n8, n7, n6}), .B({
        B[7], n5, B[5:2], n4, B[0]}), .TC(1'b0), .PRODUCT({N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, 
        N108}) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP ( SI, SE, scan_clk, scan_rst, test_mode, SO, RST_N, UART_CLK, 
        REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input SE, scan_clk, scan_rst, test_mode, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   CLK_M, ALU_CLK, ALU_CLK_M, UART_RX_CLK, RX_CLK_M, UART_TX_CLK,
         TX_CLK_M, UART_CLK_M, SYNC_UART_RST, UART_RST_M, SYNC_REF_RST,
         REF_RST_M, RST_N_M, UART_RX_V_OUT, UART_RX_V_SYNC, UART_TX_VLD,
         UART_TX_Busy_PULSE, FIFO_FULL, UART_TX_V_SYNC, UART_TX_Busy,
         RF_RdData_VLD, RF_WrEn, RF_RdEn, ALU_EN, ALU_OUT_VLD, CLKG_EN, n1, n3,
         n4, n5, n6, n7, n8, n9, n11, n12, n13, n16, n17, n20, n23, n24, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] UART_TX_IN;
  wire   [7:0] UART_TX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [7:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [3:0] RF_Address;
  wire   [7:0] RF_WrData;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  INVX2M U2 ( .A(n9), .Y(n8) );
  INVX2M U3 ( .A(UART_TX_V_SYNC), .Y(n1) );
  BUFX2M U4 ( .A(RF_Address[1]), .Y(n5) );
  BUFX2M U5 ( .A(RF_Address[0]), .Y(n4) );
  INVX4M U6 ( .A(n7), .Y(n6) );
  INVX2M U7 ( .A(REF_RST_M), .Y(n7) );
  INVX2M U8 ( .A(UART_RST_M), .Y(n9) );
  BUFX2M U9 ( .A(UART_RX_IN), .Y(n3) );
  BUFX2M U10 ( .A(parity_error), .Y(framing_error) );
  DLY1X1M U17 ( .A(SYNC_REF_RST), .Y(n27) );
  DLY1X1M U18 ( .A(n29), .Y(n28) );
  INVXLM U19 ( .A(n38), .Y(n29) );
  INVXLM U20 ( .A(n35), .Y(n30) );
  INVXLM U21 ( .A(n40), .Y(n31) );
  INVXLM U22 ( .A(n31), .Y(n32) );
  INVXLM U23 ( .A(n38), .Y(n33) );
  DLY1X1M U24 ( .A(n36), .Y(n34) );
  INVXLM U25 ( .A(n39), .Y(n35) );
  INVXLM U26 ( .A(n35), .Y(n36) );
  INVXLM U27 ( .A(n35), .Y(n37) );
  INVXLM U28 ( .A(SE), .Y(n38) );
  INVXLM U29 ( .A(n38), .Y(n39) );
  INVXLM U30 ( .A(n38), .Y(n40) );
  mux2X1_1 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        CLK_M) );
  mux2X1_5 U1_mux2X1 ( .IN_0(ALU_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        ALU_CLK_M) );
  mux2X1_4 U2_mux2X1 ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(RX_CLK_M) );
  mux2X1_3 U3_mux2X1 ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(TX_CLK_M) );
  mux2X1_2 U6_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_CLK_M) );
  mux2X1_0 U4_mux2X1 ( .IN_0(SYNC_UART_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(UART_RST_M) );
  mux2X1_7 U5_mux2X1 ( .IN_0(n27), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        REF_RST_M) );
  mux2X1_6 U7_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RST_N_M) );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC ( .RST(RST_N_M), .CLK(UART_CLK_M), 
        .SYNC_RST(SYNC_UART_RST), .test_si(n23), .test_se(n30) );
  RST_SYNC_NUM_STAGES2_test_1 U1_RST_SYNC ( .RST(RST_N_M), .CLK(CLK_M), 
        .SYNC_RST(SYNC_REF_RST), .test_si(n11), .test_se(n32) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_ref_sync ( .CLK(CLK_M), .RST(n6), 
        .unsync_bus(UART_RX_OUT), .bus_enable(UART_RX_V_OUT), .sync_bus(
        UART_RX_SYNC), .enable_pulse_d(UART_RX_V_SYNC), .test_si(n13), 
        .test_so(n12), .test_se(n37) );
  ASYNC_FIFO_DATA_WIDTH8_addr3_test_1 U0_UART_FIFO ( .wclk(CLK_M), .wrst_n(n6), 
        .winc(UART_TX_VLD), .rclk(TX_CLK_M), .rinc(UART_TX_Busy_PULSE), 
        .rrst_n(n8), .wdata(UART_TX_IN), .wfull(FIFO_FULL), .rempty(
        UART_TX_V_SYNC), .rdata(UART_TX_SYNC), .test_si2(SI[0]), .test_si1(n16), .test_so2(n13), .test_so1(SO[1]), .test_se(SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .clk(TX_CLK_M), .rst(n8), .lvl_sig(
        UART_TX_Busy), .pulse_sig(UART_TX_Busy_PULSE), .test_si(n24), 
        .test_so(n23), .test_se(n37) );
  clkdiv_test_0 U0_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst_n(n8), .i_clk_en(
        1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK), .test_si(
        ALU_OUT_VLD), .test_so(n24), .test_se(n39) );
  CLKDIV_MUX U0_CLKDIV_MUX ( .IN(UART_Config[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, DIV_RATIO_RX[3:0]})
         );
  clkdiv_test_1 U1_ClkDiv ( .i_ref_clk(UART_CLK_M), .i_rst_n(n8), .i_clk_en(
        1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX[3:0]}), 
        .o_div_clk(UART_RX_CLK), .test_si(n12), .test_so(n11), .test_se(n33)
         );
  UART_test_1 U0_UART ( .TX_CLK(TX_CLK_M), .TX_IN_P(UART_TX_SYNC), .TX_IN_V(n1), .RST(n8), .RX_IN_S(n3), .prescale(UART_Config[7:2]), .RX_CLK(RX_CLK_M), 
        .PAR_TYP(UART_Config[1]), .PAR_EN(UART_Config[0]), .TX_OUT_S(UART_TX_O), .TX_OUT_V(UART_TX_Busy), .RX_OUT_P(UART_RX_OUT), .RX_OUT_V(UART_RX_V_OUT), 
        .RX_Error(parity_error), .test_si(n17), .test_so(n16), .test_se(n34)
         );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .CLK(CLK_M), .RST(n6), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_VLD), .RdData(RF_RdData), .RdData_Valid(
        RF_RdData_VLD), .RX_P_DATA(UART_RX_SYNC), .RX_D_VLD(UART_RX_V_SYNC), 
        .FIFO_FULL(FIFO_FULL), .WR_INC(UART_TX_VLD), .WR_DATA(UART_TX_IN), 
        .ALU_FUN(ALU_FUN), .EN(ALU_EN), .CLK_EN(CLKG_EN), .Address(RF_Address), 
        .WrEn(RF_WrEn), .RdEn(RF_RdEn), .WrData(RF_WrData), .test_si2(SI[1]), 
        .test_si1(n20), .test_so2(n17), .test_so1(SO[2]), .test_se(n28) );
  Register_file_test_1 U0_RegFile ( .WrData(RF_WrData), .Address({
        RF_Address[3:2], n5, n4}), .WrEn(RF_WrEn), .RdEn(RF_RdEn), .CLK(CLK_M), 
        .RST(n6), .RdData(RF_RdData), .RdData_VLD(RF_RdData_VLD), .REG0(
        Operand_A), .REG1(Operand_B), .REG2(UART_Config), .REG3(DIV_RATIO), 
        .test_si2(SI[2]), .test_si1(SYNC_UART_RST), .test_so2(n20), .test_so1(
        SO[3]), .test_se(SE) );
  ALU_16B_test_1 U0_ALU ( .A(Operand_A), .B(Operand_B), .ALU_FUN(ALU_FUN), 
        .EN(ALU_EN), .RST(n6), .CLK(ALU_CLK_M), .ALU_OUT(ALU_OUT), .OUT_VALID(
        ALU_OUT_VLD), .test_si(SI[3]), .test_se(n40) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLKG_EN), .CLK(CLK_M), .GATED_CLK(ALU_CLK) );
  BUFX2M U16 ( .A(SYNC_REF_RST), .Y(SO[0]) );
endmodule

