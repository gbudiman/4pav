
module controller ( clk, nReset, dr, V, cnt_up, modwait, op, A, B, C, err );
  output [1:0] op;
  output [3:0] A;
  output [3:0] B;
  output [3:0] C;
  input clk, nReset, dr, V;
  output cnt_up, modwait, err;
  wire   N53, n6, cnt_up, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] state;
  wire   [3:0] nextState;
  assign C[3] = 1'b0;
  assign B[3] = 1'b0;
  assign A[2] = 1'b0;
  assign A[3] = 1'b0;
  assign C[2] = cnt_up;

  DFFSR \state_reg[0]  ( .D(nextState[0]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[0]) );
  DFFSR \state_reg[2]  ( .D(nextState[2]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[2]) );
  DFFSR \state_reg[3]  ( .D(nextState[3]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[3]) );
  DFFSR \state_reg[1]  ( .D(nextState[1]), .CLK(clk), .R(nReset), .S(1'b1), 
        .Q(state[1]) );
  LATCH modwait_reg ( .CLK(N53), .D(cnt_up), .Q(modwait) );
  AND2X2 U7 ( .A(op[1]), .B(n27), .Y(B[0]) );
  OR2X2 U8 ( .A(n22), .B(state[3]), .Y(n19) );
  INVX2 U9 ( .A(n17), .Y(err) );
  INVX2 U10 ( .A(A[1]), .Y(n6) );
  INVX2 U11 ( .A(n29), .Y(cnt_up) );
  INVX2 U12 ( .A(n32), .Y(C[1]) );
  INVX2 U13 ( .A(state[3]), .Y(n9) );
  INVX2 U14 ( .A(op[1]), .Y(n10) );
  INVX2 U15 ( .A(state[2]), .Y(n11) );
  INVX2 U16 ( .A(n23), .Y(n12) );
  INVX2 U17 ( .A(state[1]), .Y(n13) );
  INVX2 U18 ( .A(state[0]), .Y(n14) );
  INVX2 U19 ( .A(dr), .Y(n15) );
  INVX2 U20 ( .A(V), .Y(n16) );
  OAI21X1 U21 ( .A(dr), .B(n17), .C(n18), .Y(nextState[3]) );
  NAND3X1 U22 ( .A(state[2]), .B(op[0]), .C(V), .Y(n18) );
  NAND2X1 U23 ( .A(n19), .B(n20), .Y(op[0]) );
  OAI22X1 U24 ( .A(state[2]), .B(n20), .C(n10), .D(n21), .Y(nextState[2]) );
  OAI21X1 U25 ( .A(n22), .B(n16), .C(n12), .Y(n21) );
  NAND2X1 U26 ( .A(n23), .B(n9), .Y(n20) );
  OAI21X1 U27 ( .A(V), .B(n19), .C(n6), .Y(nextState[1]) );
  OAI21X1 U28 ( .A(n24), .B(n15), .C(n25), .Y(nextState[0]) );
  AOI21X1 U29 ( .A(n26), .B(n27), .C(C[0]), .Y(n25) );
  NOR2X1 U30 ( .A(state[3]), .B(V), .Y(n26) );
  NAND3X1 U31 ( .A(state[3]), .B(n22), .C(n28), .Y(n17) );
  NOR2X1 U32 ( .A(state[2]), .B(n23), .Y(n28) );
  NOR2X1 U33 ( .A(n12), .B(n10), .Y(B[2]) );
  NOR2X1 U34 ( .A(n13), .B(n14), .Y(n23) );
  NAND2X1 U35 ( .A(n29), .B(n24), .Y(N53) );
  NAND3X1 U36 ( .A(n13), .B(n11), .C(n14), .Y(n24) );
  NOR2X1 U37 ( .A(n30), .B(state[0]), .Y(C[0]) );
  NOR2X1 U38 ( .A(n22), .B(n10), .Y(B[1]) );
  NOR2X1 U39 ( .A(n19), .B(state[2]), .Y(A[1]) );
  AOI21X1 U40 ( .A(n13), .B(state[0]), .C(n27), .Y(n22) );
  NOR2X1 U41 ( .A(n13), .B(state[0]), .Y(n27) );
  OAI21X1 U42 ( .A(n30), .B(n14), .C(n29), .Y(A[0]) );
  NAND3X1 U43 ( .A(state[0]), .B(n13), .C(n31), .Y(n29) );
  NOR2X1 U44 ( .A(state[3]), .B(state[2]), .Y(n31) );
  AOI21X1 U45 ( .A(n13), .B(op[1]), .C(C[1]), .Y(n30) );
  NAND3X1 U46 ( .A(n11), .B(n9), .C(state[1]), .Y(n32) );
  NOR2X1 U47 ( .A(n11), .B(state[3]), .Y(op[1]) );
endmodule

