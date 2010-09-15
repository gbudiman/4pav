
module counter ( clk, nReset, cnt_up, count_out );
  output [15:0] count_out;
  input clk, nReset, cnt_up;
  wire   N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, n5, n7, n10, n11, n13, n15, n16, n18, n20, n21, n23, n25, n26,
         n28, n30, n31, n33, n35, n36, n38, n40, n41, n43, n45, n46, n48, n50,
         n51, n53, n55, n56, n58, n60, n61, n63, n65, n66, n68, n70, n71, n73,
         n75, n76, n78, n80, n81, n83, n84, n85, n86, n88, n90, n91, n93, n95,
         n96, n98, n100, n101, n103, n105, n106, n108, n110, n111, n113, n115,
         n116, n118, n120, n121, n123, n125, n126, n128, n130, n131, n133,
         n135, n136, n138, n140, n141, n143, n145, n146, n148, n150, n151,
         n153, n155, n156, n158, n160, n162, n164, \add_35/carry[14] ,
         \add_35/carry[13] , \add_35/carry[12] , \add_35/carry[11] ,
         \add_35/carry[10] , \add_35/carry[9] , \add_35/carry[8] ,
         \add_35/carry[7] , \add_35/carry[6] , \add_35/carry[5] ,
         \add_35/carry[4] , \add_35/carry[3] , n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200;
  wire   [15:0] currentCount;
  wire   [15:0] nextCount;

  DFFSR \nextCount_reg[0]  ( .D(n164), .CLK(clk), .R(1'b1), .S(nReset), .Q(
        nextCount[0]) );
  DFFSR \currentCount_reg[0]  ( .D(n162), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        N4) );
  DFFSR \nextCount_reg[1]  ( .D(n160), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[1]) );
  DFFSR \currentCount_reg[1]  ( .D(n158), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[1]) );
  DFFPOSX1 \count_out_reg[1]  ( .D(n156), .CLK(clk), .Q(count_out[1]) );
  DFFSR \nextCount_reg[2]  ( .D(n155), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[2]) );
  DFFSR \currentCount_reg[2]  ( .D(n153), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[2]) );
  DFFPOSX1 \count_out_reg[2]  ( .D(n151), .CLK(clk), .Q(count_out[2]) );
  DFFSR \nextCount_reg[3]  ( .D(n150), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[3]) );
  DFFSR \currentCount_reg[3]  ( .D(n148), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[3]) );
  DFFPOSX1 \count_out_reg[3]  ( .D(n146), .CLK(clk), .Q(count_out[3]) );
  DFFSR \nextCount_reg[4]  ( .D(n145), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[4]) );
  DFFSR \currentCount_reg[4]  ( .D(n143), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[4]) );
  DFFPOSX1 \count_out_reg[4]  ( .D(n141), .CLK(clk), .Q(count_out[4]) );
  DFFSR \nextCount_reg[5]  ( .D(n140), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[5]) );
  DFFSR \currentCount_reg[5]  ( .D(n138), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[5]) );
  DFFPOSX1 \count_out_reg[5]  ( .D(n136), .CLK(clk), .Q(count_out[5]) );
  DFFSR \nextCount_reg[6]  ( .D(n135), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[6]) );
  DFFSR \currentCount_reg[6]  ( .D(n133), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[6]) );
  DFFPOSX1 \count_out_reg[6]  ( .D(n131), .CLK(clk), .Q(count_out[6]) );
  DFFSR \nextCount_reg[7]  ( .D(n130), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[7]) );
  DFFSR \currentCount_reg[7]  ( .D(n128), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[7]) );
  DFFPOSX1 \count_out_reg[7]  ( .D(n126), .CLK(clk), .Q(count_out[7]) );
  DFFSR \nextCount_reg[8]  ( .D(n125), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[8]) );
  DFFSR \currentCount_reg[8]  ( .D(n123), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[8]) );
  DFFPOSX1 \count_out_reg[8]  ( .D(n121), .CLK(clk), .Q(count_out[8]) );
  DFFSR \nextCount_reg[9]  ( .D(n120), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[9]) );
  DFFSR \currentCount_reg[9]  ( .D(n118), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[9]) );
  DFFPOSX1 \count_out_reg[9]  ( .D(n116), .CLK(clk), .Q(count_out[9]) );
  DFFSR \nextCount_reg[10]  ( .D(n115), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[10]) );
  DFFSR \currentCount_reg[10]  ( .D(n113), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(currentCount[10]) );
  DFFPOSX1 \count_out_reg[10]  ( .D(n111), .CLK(clk), .Q(count_out[10]) );
  DFFSR \nextCount_reg[11]  ( .D(n110), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[11]) );
  DFFSR \currentCount_reg[11]  ( .D(n108), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(currentCount[11]) );
  DFFPOSX1 \count_out_reg[11]  ( .D(n106), .CLK(clk), .Q(count_out[11]) );
  DFFSR \nextCount_reg[12]  ( .D(n105), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[12]) );
  DFFSR \currentCount_reg[12]  ( .D(n103), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(currentCount[12]) );
  DFFPOSX1 \count_out_reg[12]  ( .D(n101), .CLK(clk), .Q(count_out[12]) );
  DFFSR \nextCount_reg[13]  ( .D(n100), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[13]) );
  DFFSR \currentCount_reg[13]  ( .D(n98), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[13]) );
  DFFPOSX1 \count_out_reg[13]  ( .D(n96), .CLK(clk), .Q(count_out[13]) );
  DFFSR \nextCount_reg[14]  ( .D(n95), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[14]) );
  DFFSR \currentCount_reg[14]  ( .D(n93), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[14]) );
  DFFPOSX1 \count_out_reg[14]  ( .D(n91), .CLK(clk), .Q(count_out[14]) );
  DFFSR \nextCount_reg[15]  ( .D(n90), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        nextCount[15]) );
  DFFSR \currentCount_reg[15]  ( .D(n88), .CLK(clk), .R(nReset), .S(1'b1), .Q(
        currentCount[15]) );
  DFFPOSX1 \count_out_reg[15]  ( .D(n86), .CLK(clk), .Q(count_out[15]) );
  DFFPOSX1 \count_out_reg[0]  ( .D(n85), .CLK(clk), .Q(count_out[0]) );
  OAI21X1 U3 ( .A(n184), .B(n167), .C(n5), .Y(n85) );
  NAND2X1 U5 ( .A(count_out[0]), .B(n168), .Y(n5) );
  OAI21X1 U7 ( .A(n169), .B(n167), .C(n7), .Y(n86) );
  NAND2X1 U8 ( .A(count_out[15]), .B(n168), .Y(n7) );
  OAI21X1 U10 ( .A(n166), .B(n200), .C(n10), .Y(n88) );
  NAND2X1 U11 ( .A(currentCount[15]), .B(n166), .Y(n10) );
  OAI21X1 U12 ( .A(cnt_up), .B(n200), .C(n11), .Y(n90) );
  NAND2X1 U13 ( .A(N19), .B(cnt_up), .Y(n11) );
  OAI21X1 U15 ( .A(n170), .B(n167), .C(n13), .Y(n91) );
  NAND2X1 U16 ( .A(count_out[14]), .B(n168), .Y(n13) );
  OAI21X1 U18 ( .A(n166), .B(n199), .C(n15), .Y(n93) );
  NAND2X1 U19 ( .A(currentCount[14]), .B(n166), .Y(n15) );
  OAI21X1 U20 ( .A(cnt_up), .B(n199), .C(n16), .Y(n95) );
  NAND2X1 U21 ( .A(N18), .B(cnt_up), .Y(n16) );
  OAI21X1 U23 ( .A(n171), .B(n167), .C(n18), .Y(n96) );
  NAND2X1 U24 ( .A(count_out[13]), .B(n168), .Y(n18) );
  OAI21X1 U26 ( .A(n166), .B(n198), .C(n20), .Y(n98) );
  NAND2X1 U27 ( .A(currentCount[13]), .B(n166), .Y(n20) );
  OAI21X1 U28 ( .A(cnt_up), .B(n198), .C(n21), .Y(n100) );
  NAND2X1 U29 ( .A(N17), .B(cnt_up), .Y(n21) );
  OAI21X1 U31 ( .A(n172), .B(n167), .C(n23), .Y(n101) );
  NAND2X1 U32 ( .A(count_out[12]), .B(n168), .Y(n23) );
  OAI21X1 U34 ( .A(n166), .B(n197), .C(n25), .Y(n103) );
  NAND2X1 U35 ( .A(currentCount[12]), .B(n166), .Y(n25) );
  OAI21X1 U36 ( .A(cnt_up), .B(n197), .C(n26), .Y(n105) );
  NAND2X1 U37 ( .A(N16), .B(cnt_up), .Y(n26) );
  OAI21X1 U39 ( .A(n173), .B(n167), .C(n28), .Y(n106) );
  NAND2X1 U40 ( .A(count_out[11]), .B(n168), .Y(n28) );
  OAI21X1 U42 ( .A(n166), .B(n196), .C(n30), .Y(n108) );
  NAND2X1 U43 ( .A(currentCount[11]), .B(n166), .Y(n30) );
  OAI21X1 U44 ( .A(cnt_up), .B(n196), .C(n31), .Y(n110) );
  NAND2X1 U45 ( .A(N15), .B(cnt_up), .Y(n31) );
  OAI21X1 U47 ( .A(n174), .B(n167), .C(n33), .Y(n111) );
  NAND2X1 U48 ( .A(count_out[10]), .B(n168), .Y(n33) );
  OAI21X1 U50 ( .A(n166), .B(n195), .C(n35), .Y(n113) );
  NAND2X1 U51 ( .A(currentCount[10]), .B(n166), .Y(n35) );
  OAI21X1 U52 ( .A(cnt_up), .B(n195), .C(n36), .Y(n115) );
  NAND2X1 U53 ( .A(N14), .B(cnt_up), .Y(n36) );
  OAI21X1 U55 ( .A(n175), .B(n167), .C(n38), .Y(n116) );
  NAND2X1 U56 ( .A(count_out[9]), .B(n168), .Y(n38) );
  OAI21X1 U58 ( .A(n166), .B(n194), .C(n40), .Y(n118) );
  NAND2X1 U59 ( .A(currentCount[9]), .B(n166), .Y(n40) );
  OAI21X1 U60 ( .A(cnt_up), .B(n194), .C(n41), .Y(n120) );
  NAND2X1 U61 ( .A(N13), .B(cnt_up), .Y(n41) );
  OAI21X1 U63 ( .A(n176), .B(n167), .C(n43), .Y(n121) );
  NAND2X1 U64 ( .A(count_out[8]), .B(n168), .Y(n43) );
  OAI21X1 U66 ( .A(n166), .B(n193), .C(n45), .Y(n123) );
  NAND2X1 U67 ( .A(currentCount[8]), .B(n166), .Y(n45) );
  OAI21X1 U68 ( .A(cnt_up), .B(n193), .C(n46), .Y(n125) );
  NAND2X1 U69 ( .A(N12), .B(cnt_up), .Y(n46) );
  OAI21X1 U71 ( .A(n177), .B(n167), .C(n48), .Y(n126) );
  NAND2X1 U72 ( .A(count_out[7]), .B(n168), .Y(n48) );
  OAI21X1 U74 ( .A(n166), .B(n192), .C(n50), .Y(n128) );
  NAND2X1 U75 ( .A(currentCount[7]), .B(n166), .Y(n50) );
  OAI21X1 U76 ( .A(cnt_up), .B(n192), .C(n51), .Y(n130) );
  NAND2X1 U77 ( .A(N11), .B(cnt_up), .Y(n51) );
  OAI21X1 U79 ( .A(n178), .B(n167), .C(n53), .Y(n131) );
  NAND2X1 U80 ( .A(count_out[6]), .B(n168), .Y(n53) );
  OAI21X1 U82 ( .A(n166), .B(n191), .C(n55), .Y(n133) );
  NAND2X1 U83 ( .A(currentCount[6]), .B(n166), .Y(n55) );
  OAI21X1 U84 ( .A(cnt_up), .B(n191), .C(n56), .Y(n135) );
  NAND2X1 U85 ( .A(N10), .B(cnt_up), .Y(n56) );
  OAI21X1 U87 ( .A(n179), .B(n167), .C(n58), .Y(n136) );
  NAND2X1 U88 ( .A(count_out[5]), .B(n168), .Y(n58) );
  OAI21X1 U90 ( .A(n166), .B(n190), .C(n60), .Y(n138) );
  NAND2X1 U91 ( .A(currentCount[5]), .B(n166), .Y(n60) );
  OAI21X1 U92 ( .A(cnt_up), .B(n190), .C(n61), .Y(n140) );
  NAND2X1 U93 ( .A(N9), .B(cnt_up), .Y(n61) );
  OAI21X1 U95 ( .A(n180), .B(n167), .C(n63), .Y(n141) );
  NAND2X1 U96 ( .A(count_out[4]), .B(n168), .Y(n63) );
  OAI21X1 U98 ( .A(n166), .B(n189), .C(n65), .Y(n143) );
  NAND2X1 U99 ( .A(currentCount[4]), .B(n166), .Y(n65) );
  OAI21X1 U100 ( .A(cnt_up), .B(n189), .C(n66), .Y(n145) );
  NAND2X1 U101 ( .A(N8), .B(cnt_up), .Y(n66) );
  OAI21X1 U103 ( .A(n181), .B(n167), .C(n68), .Y(n146) );
  NAND2X1 U104 ( .A(count_out[3]), .B(n168), .Y(n68) );
  OAI21X1 U106 ( .A(n166), .B(n188), .C(n70), .Y(n148) );
  NAND2X1 U107 ( .A(currentCount[3]), .B(n166), .Y(n70) );
  OAI21X1 U108 ( .A(cnt_up), .B(n188), .C(n71), .Y(n150) );
  NAND2X1 U109 ( .A(N7), .B(cnt_up), .Y(n71) );
  OAI21X1 U111 ( .A(n182), .B(n168), .C(n73), .Y(n151) );
  NAND2X1 U112 ( .A(count_out[2]), .B(n168), .Y(n73) );
  OAI21X1 U114 ( .A(n166), .B(n187), .C(n75), .Y(n153) );
  NAND2X1 U115 ( .A(currentCount[2]), .B(n166), .Y(n75) );
  OAI21X1 U116 ( .A(cnt_up), .B(n187), .C(n76), .Y(n155) );
  NAND2X1 U117 ( .A(N6), .B(cnt_up), .Y(n76) );
  OAI21X1 U119 ( .A(n183), .B(n168), .C(n78), .Y(n156) );
  NAND2X1 U120 ( .A(count_out[1]), .B(n168), .Y(n78) );
  OAI21X1 U123 ( .A(n166), .B(n186), .C(n80), .Y(n158) );
  NAND2X1 U124 ( .A(currentCount[1]), .B(n166), .Y(n80) );
  OAI21X1 U125 ( .A(cnt_up), .B(n186), .C(n81), .Y(n160) );
  NAND2X1 U126 ( .A(N5), .B(cnt_up), .Y(n81) );
  OAI21X1 U128 ( .A(n166), .B(n185), .C(n83), .Y(n162) );
  NAND2X1 U129 ( .A(N4), .B(n166), .Y(n83) );
  OAI21X1 U131 ( .A(cnt_up), .B(n185), .C(n84), .Y(n164) );
  NAND2X1 U132 ( .A(N4), .B(cnt_up), .Y(n84) );
  XNOR2X1 U166 ( .A(currentCount[15]), .B(n165), .Y(N19) );
  NAND2X1 U167 ( .A(currentCount[14]), .B(\add_35/carry[14] ), .Y(n165) );
  INVX2 U168 ( .A(nReset), .Y(n167) );
  INVX2 U169 ( .A(cnt_up), .Y(n166) );
  INVX2 U170 ( .A(nReset), .Y(n168) );
  AND2X2 U171 ( .A(currentCount[8]), .B(\add_35/carry[8] ), .Y(
        \add_35/carry[9] ) );
  AND2X2 U172 ( .A(currentCount[11]), .B(\add_35/carry[11] ), .Y(
        \add_35/carry[12] ) );
  AND2X2 U173 ( .A(currentCount[4]), .B(\add_35/carry[4] ), .Y(
        \add_35/carry[5] ) );
  AND2X2 U174 ( .A(currentCount[13]), .B(\add_35/carry[13] ), .Y(
        \add_35/carry[14] ) );
  AND2X2 U175 ( .A(currentCount[12]), .B(\add_35/carry[12] ), .Y(
        \add_35/carry[13] ) );
  INVX1 U176 ( .A(currentCount[1]), .Y(N5) );
  AND2X2 U177 ( .A(currentCount[10]), .B(\add_35/carry[10] ), .Y(
        \add_35/carry[11] ) );
  AND2X2 U178 ( .A(currentCount[9]), .B(\add_35/carry[9] ), .Y(
        \add_35/carry[10] ) );
  AND2X2 U179 ( .A(currentCount[3]), .B(\add_35/carry[3] ), .Y(
        \add_35/carry[4] ) );
  AND2X2 U180 ( .A(currentCount[2]), .B(currentCount[1]), .Y(\add_35/carry[3] ) );
  XOR2X1 U181 ( .A(\add_35/carry[14] ), .B(currentCount[14]), .Y(N18) );
  XOR2X1 U182 ( .A(\add_35/carry[13] ), .B(currentCount[13]), .Y(N17) );
  XOR2X1 U183 ( .A(\add_35/carry[12] ), .B(currentCount[12]), .Y(N16) );
  XOR2X1 U184 ( .A(\add_35/carry[11] ), .B(currentCount[11]), .Y(N15) );
  XOR2X1 U185 ( .A(\add_35/carry[10] ), .B(currentCount[10]), .Y(N14) );
  XOR2X1 U186 ( .A(\add_35/carry[9] ), .B(currentCount[9]), .Y(N13) );
  XOR2X1 U187 ( .A(\add_35/carry[8] ), .B(currentCount[8]), .Y(N12) );
  AND2X1 U188 ( .A(currentCount[7]), .B(\add_35/carry[7] ), .Y(
        \add_35/carry[8] ) );
  XOR2X1 U189 ( .A(\add_35/carry[7] ), .B(currentCount[7]), .Y(N11) );
  AND2X1 U190 ( .A(currentCount[6]), .B(\add_35/carry[6] ), .Y(
        \add_35/carry[7] ) );
  XOR2X1 U191 ( .A(\add_35/carry[6] ), .B(currentCount[6]), .Y(N10) );
  AND2X1 U192 ( .A(currentCount[5]), .B(\add_35/carry[5] ), .Y(
        \add_35/carry[6] ) );
  XOR2X1 U193 ( .A(\add_35/carry[5] ), .B(currentCount[5]), .Y(N9) );
  XOR2X1 U194 ( .A(\add_35/carry[4] ), .B(currentCount[4]), .Y(N8) );
  XOR2X1 U195 ( .A(\add_35/carry[3] ), .B(currentCount[3]), .Y(N7) );
  XOR2X1 U196 ( .A(currentCount[1]), .B(currentCount[2]), .Y(N6) );
  INVX2 U197 ( .A(n88), .Y(n169) );
  INVX2 U198 ( .A(n93), .Y(n170) );
  INVX2 U199 ( .A(n98), .Y(n171) );
  INVX2 U200 ( .A(n103), .Y(n172) );
  INVX2 U201 ( .A(n108), .Y(n173) );
  INVX2 U202 ( .A(n113), .Y(n174) );
  INVX2 U203 ( .A(n118), .Y(n175) );
  INVX2 U204 ( .A(n123), .Y(n176) );
  INVX2 U205 ( .A(n128), .Y(n177) );
  INVX2 U206 ( .A(n133), .Y(n178) );
  INVX2 U207 ( .A(n138), .Y(n179) );
  INVX2 U208 ( .A(n143), .Y(n180) );
  INVX2 U209 ( .A(n148), .Y(n181) );
  INVX2 U210 ( .A(n153), .Y(n182) );
  INVX2 U211 ( .A(n158), .Y(n183) );
  INVX2 U212 ( .A(n162), .Y(n184) );
  INVX2 U213 ( .A(nextCount[0]), .Y(n185) );
  INVX2 U214 ( .A(nextCount[1]), .Y(n186) );
  INVX2 U215 ( .A(nextCount[2]), .Y(n187) );
  INVX2 U216 ( .A(nextCount[3]), .Y(n188) );
  INVX2 U217 ( .A(nextCount[4]), .Y(n189) );
  INVX2 U218 ( .A(nextCount[5]), .Y(n190) );
  INVX2 U219 ( .A(nextCount[6]), .Y(n191) );
  INVX2 U220 ( .A(nextCount[7]), .Y(n192) );
  INVX2 U221 ( .A(nextCount[8]), .Y(n193) );
  INVX2 U222 ( .A(nextCount[9]), .Y(n194) );
  INVX2 U223 ( .A(nextCount[10]), .Y(n195) );
  INVX2 U224 ( .A(nextCount[11]), .Y(n196) );
  INVX2 U225 ( .A(nextCount[12]), .Y(n197) );
  INVX2 U226 ( .A(nextCount[13]), .Y(n198) );
  INVX2 U227 ( .A(nextCount[14]), .Y(n199) );
  INVX2 U228 ( .A(nextCount[15]), .Y(n200) );
endmodule

