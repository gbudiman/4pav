
module sync ( clk, nReset, A, A_sync );
  input clk, nReset, A;
  output A_sync;
  wire   reg1;

  DFFSR reg1_reg ( .D(A), .CLK(clk), .R(nReset), .S(1'b1), .Q(reg1) );
  DFFSR A_sync_reg ( .D(reg1), .CLK(clk), .R(nReset), .S(1'b1), .Q(A_sync) );
endmodule

