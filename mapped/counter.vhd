
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_counter is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_counter;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_counter.all;

entity counter is

   port( clk, nReset, cnt_up : in std_logic;  count_out : out std_logic_vector 
         (15 downto 0));

end counter;

architecture SYN_cob of counter is

   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFPOSX1
      port( D, CLK : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal count_out_15_port, count_out_14_port, count_out_13_port, 
      count_out_12_port, count_out_11_port, count_out_10_port, count_out_9_port
      , count_out_8_port, count_out_7_port, count_out_6_port, count_out_5_port,
      count_out_4_port, count_out_3_port, count_out_2_port, count_out_1_port, 
      count_out_0_port, currentCount_15_port, currentCount_14_port, 
      currentCount_13_port, currentCount_12_port, currentCount_11_port, 
      currentCount_10_port, currentCount_9_port, currentCount_8_port, 
      currentCount_7_port, currentCount_6_port, currentCount_5_port, 
      currentCount_4_port, currentCount_3_port, currentCount_2_port, 
      currentCount_1_port, nextCount_15_port, nextCount_14_port, 
      nextCount_13_port, nextCount_12_port, nextCount_11_port, 
      nextCount_10_port, nextCount_9_port, nextCount_8_port, nextCount_7_port, 
      nextCount_6_port, nextCount_5_port, nextCount_4_port, nextCount_3_port, 
      nextCount_2_port, nextCount_1_port, nextCount_0_port, N4, N5, N6, N7, N8,
      N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, n5_port, n7_port, 
      n10_port, n11_port, n13_port, n15_port, n16_port, n18_port, n20, n21, n23
      , n25, n26, n28, n30, n31, n33, n35, n36, n38, n40, n41, n43, n45, n46, 
      n48, n50, n51, n53, n55, n56, n58, n60, n61, n63, n65, n66, n68, n70, n71
      , n73, n75, n76, n78, n80, n81, n83, n84, n85, n86, n87, n88, n89, n90, 
      n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104
      , n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
      n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, 
      add_35_carry_3_port, add_35_carry_4_port, add_35_carry_5_port, 
      add_35_carry_6_port, add_35_carry_7_port, add_35_carry_8_port, 
      add_35_carry_9_port, add_35_carry_10_port, add_35_carry_11_port, 
      add_35_carry_12_port, add_35_carry_13_port, add_35_carry_14_port, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, 
      n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200 : 
      std_logic;

begin
   count_out <= ( count_out_15_port, count_out_14_port, count_out_13_port, 
      count_out_12_port, count_out_11_port, count_out_10_port, count_out_9_port
      , count_out_8_port, count_out_7_port, count_out_6_port, count_out_5_port,
      count_out_4_port, count_out_3_port, count_out_2_port, count_out_1_port, 
      count_out_0_port );
   
   nextCount_reg_0_inst : DFFSR port map( D => n164, CLK => clk, R => n163, S 
                           => nReset, Q => nextCount_0_port);
   currentCount_reg_0_inst : DFFSR port map( D => n162, CLK => clk, R => nReset
                           , S => n161, Q => N4);
   nextCount_reg_1_inst : DFFSR port map( D => n160, CLK => clk, R => nReset, S
                           => n159, Q => nextCount_1_port);
   currentCount_reg_1_inst : DFFSR port map( D => n158, CLK => clk, R => nReset
                           , S => n157, Q => currentCount_1_port);
   count_out_reg_1_inst : DFFPOSX1 port map( D => n156, CLK => clk, Q => 
                           count_out_1_port);
   nextCount_reg_2_inst : DFFSR port map( D => n155, CLK => clk, R => nReset, S
                           => n154, Q => nextCount_2_port);
   currentCount_reg_2_inst : DFFSR port map( D => n153, CLK => clk, R => nReset
                           , S => n152, Q => currentCount_2_port);
   count_out_reg_2_inst : DFFPOSX1 port map( D => n151, CLK => clk, Q => 
                           count_out_2_port);
   nextCount_reg_3_inst : DFFSR port map( D => n150, CLK => clk, R => nReset, S
                           => n149, Q => nextCount_3_port);
   currentCount_reg_3_inst : DFFSR port map( D => n148, CLK => clk, R => nReset
                           , S => n147, Q => currentCount_3_port);
   count_out_reg_3_inst : DFFPOSX1 port map( D => n146, CLK => clk, Q => 
                           count_out_3_port);
   nextCount_reg_4_inst : DFFSR port map( D => n145, CLK => clk, R => nReset, S
                           => n144, Q => nextCount_4_port);
   currentCount_reg_4_inst : DFFSR port map( D => n143, CLK => clk, R => nReset
                           , S => n142, Q => currentCount_4_port);
   count_out_reg_4_inst : DFFPOSX1 port map( D => n141, CLK => clk, Q => 
                           count_out_4_port);
   nextCount_reg_5_inst : DFFSR port map( D => n140, CLK => clk, R => nReset, S
                           => n139, Q => nextCount_5_port);
   currentCount_reg_5_inst : DFFSR port map( D => n138, CLK => clk, R => nReset
                           , S => n137, Q => currentCount_5_port);
   count_out_reg_5_inst : DFFPOSX1 port map( D => n136, CLK => clk, Q => 
                           count_out_5_port);
   nextCount_reg_6_inst : DFFSR port map( D => n135, CLK => clk, R => nReset, S
                           => n134, Q => nextCount_6_port);
   currentCount_reg_6_inst : DFFSR port map( D => n133, CLK => clk, R => nReset
                           , S => n132, Q => currentCount_6_port);
   count_out_reg_6_inst : DFFPOSX1 port map( D => n131, CLK => clk, Q => 
                           count_out_6_port);
   nextCount_reg_7_inst : DFFSR port map( D => n130, CLK => clk, R => nReset, S
                           => n129, Q => nextCount_7_port);
   currentCount_reg_7_inst : DFFSR port map( D => n128, CLK => clk, R => nReset
                           , S => n127, Q => currentCount_7_port);
   count_out_reg_7_inst : DFFPOSX1 port map( D => n126, CLK => clk, Q => 
                           count_out_7_port);
   nextCount_reg_8_inst : DFFSR port map( D => n125, CLK => clk, R => nReset, S
                           => n124, Q => nextCount_8_port);
   currentCount_reg_8_inst : DFFSR port map( D => n123, CLK => clk, R => nReset
                           , S => n122, Q => currentCount_8_port);
   count_out_reg_8_inst : DFFPOSX1 port map( D => n121, CLK => clk, Q => 
                           count_out_8_port);
   nextCount_reg_9_inst : DFFSR port map( D => n120, CLK => clk, R => nReset, S
                           => n119, Q => nextCount_9_port);
   currentCount_reg_9_inst : DFFSR port map( D => n118, CLK => clk, R => nReset
                           , S => n117, Q => currentCount_9_port);
   count_out_reg_9_inst : DFFPOSX1 port map( D => n116, CLK => clk, Q => 
                           count_out_9_port);
   nextCount_reg_10_inst : DFFSR port map( D => n115, CLK => clk, R => nReset, 
                           S => n114, Q => nextCount_10_port);
   currentCount_reg_10_inst : DFFSR port map( D => n113, CLK => clk, R => 
                           nReset, S => n112, Q => currentCount_10_port);
   count_out_reg_10_inst : DFFPOSX1 port map( D => n111, CLK => clk, Q => 
                           count_out_10_port);
   nextCount_reg_11_inst : DFFSR port map( D => n110, CLK => clk, R => nReset, 
                           S => n109, Q => nextCount_11_port);
   currentCount_reg_11_inst : DFFSR port map( D => n108, CLK => clk, R => 
                           nReset, S => n107, Q => currentCount_11_port);
   count_out_reg_11_inst : DFFPOSX1 port map( D => n106, CLK => clk, Q => 
                           count_out_11_port);
   nextCount_reg_12_inst : DFFSR port map( D => n105, CLK => clk, R => nReset, 
                           S => n104, Q => nextCount_12_port);
   currentCount_reg_12_inst : DFFSR port map( D => n103, CLK => clk, R => 
                           nReset, S => n102, Q => currentCount_12_port);
   count_out_reg_12_inst : DFFPOSX1 port map( D => n101, CLK => clk, Q => 
                           count_out_12_port);
   nextCount_reg_13_inst : DFFSR port map( D => n100, CLK => clk, R => nReset, 
                           S => n99, Q => nextCount_13_port);
   currentCount_reg_13_inst : DFFSR port map( D => n98, CLK => clk, R => nReset
                           , S => n97, Q => currentCount_13_port);
   count_out_reg_13_inst : DFFPOSX1 port map( D => n96, CLK => clk, Q => 
                           count_out_13_port);
   nextCount_reg_14_inst : DFFSR port map( D => n95, CLK => clk, R => nReset, S
                           => n94, Q => nextCount_14_port);
   currentCount_reg_14_inst : DFFSR port map( D => n93, CLK => clk, R => nReset
                           , S => n92, Q => currentCount_14_port);
   count_out_reg_14_inst : DFFPOSX1 port map( D => n91, CLK => clk, Q => 
                           count_out_14_port);
   nextCount_reg_15_inst : DFFSR port map( D => n90, CLK => clk, R => nReset, S
                           => n89, Q => nextCount_15_port);
   currentCount_reg_15_inst : DFFSR port map( D => n88, CLK => clk, R => nReset
                           , S => n87, Q => currentCount_15_port);
   count_out_reg_15_inst : DFFPOSX1 port map( D => n86, CLK => clk, Q => 
                           count_out_15_port);
   count_out_reg_0_inst : DFFPOSX1 port map( D => n85, CLK => clk, Q => 
                           count_out_0_port);
   U3 : OAI21X1 port map( A => n184, B => n167, C => n5_port, Y => n85);
   U5 : NAND2X1 port map( A => count_out_0_port, B => n168, Y => n5_port);
   U7 : OAI21X1 port map( A => n169, B => n167, C => n7_port, Y => n86);
   U8 : NAND2X1 port map( A => count_out_15_port, B => n168, Y => n7_port);
   U10 : OAI21X1 port map( A => n166, B => n200, C => n10_port, Y => n88);
   U11 : NAND2X1 port map( A => currentCount_15_port, B => n166, Y => n10_port)
                           ;
   U12 : OAI21X1 port map( A => cnt_up, B => n200, C => n11_port, Y => n90);
   U13 : NAND2X1 port map( A => N19, B => cnt_up, Y => n11_port);
   U15 : OAI21X1 port map( A => n170, B => n167, C => n13_port, Y => n91);
   U16 : NAND2X1 port map( A => count_out_14_port, B => n168, Y => n13_port);
   U18 : OAI21X1 port map( A => n166, B => n199, C => n15_port, Y => n93);
   U19 : NAND2X1 port map( A => currentCount_14_port, B => n166, Y => n15_port)
                           ;
   U20 : OAI21X1 port map( A => cnt_up, B => n199, C => n16_port, Y => n95);
   U21 : NAND2X1 port map( A => N18, B => cnt_up, Y => n16_port);
   U23 : OAI21X1 port map( A => n171, B => n167, C => n18_port, Y => n96);
   U24 : NAND2X1 port map( A => count_out_13_port, B => n168, Y => n18_port);
   U26 : OAI21X1 port map( A => n166, B => n198, C => n20, Y => n98);
   U27 : NAND2X1 port map( A => currentCount_13_port, B => n166, Y => n20);
   U28 : OAI21X1 port map( A => cnt_up, B => n198, C => n21, Y => n100);
   U29 : NAND2X1 port map( A => N17, B => cnt_up, Y => n21);
   U31 : OAI21X1 port map( A => n172, B => n167, C => n23, Y => n101);
   U32 : NAND2X1 port map( A => count_out_12_port, B => n168, Y => n23);
   U34 : OAI21X1 port map( A => n166, B => n197, C => n25, Y => n103);
   U35 : NAND2X1 port map( A => currentCount_12_port, B => n166, Y => n25);
   U36 : OAI21X1 port map( A => cnt_up, B => n197, C => n26, Y => n105);
   U37 : NAND2X1 port map( A => N16, B => cnt_up, Y => n26);
   U39 : OAI21X1 port map( A => n173, B => n167, C => n28, Y => n106);
   U40 : NAND2X1 port map( A => count_out_11_port, B => n168, Y => n28);
   U42 : OAI21X1 port map( A => n166, B => n196, C => n30, Y => n108);
   U43 : NAND2X1 port map( A => currentCount_11_port, B => n166, Y => n30);
   U44 : OAI21X1 port map( A => cnt_up, B => n196, C => n31, Y => n110);
   U45 : NAND2X1 port map( A => N15, B => cnt_up, Y => n31);
   U47 : OAI21X1 port map( A => n174, B => n167, C => n33, Y => n111);
   U48 : NAND2X1 port map( A => count_out_10_port, B => n168, Y => n33);
   U50 : OAI21X1 port map( A => n166, B => n195, C => n35, Y => n113);
   U51 : NAND2X1 port map( A => currentCount_10_port, B => n166, Y => n35);
   U52 : OAI21X1 port map( A => cnt_up, B => n195, C => n36, Y => n115);
   U53 : NAND2X1 port map( A => N14, B => cnt_up, Y => n36);
   U55 : OAI21X1 port map( A => n175, B => n167, C => n38, Y => n116);
   U56 : NAND2X1 port map( A => count_out_9_port, B => n168, Y => n38);
   U58 : OAI21X1 port map( A => n166, B => n194, C => n40, Y => n118);
   U59 : NAND2X1 port map( A => currentCount_9_port, B => n166, Y => n40);
   U60 : OAI21X1 port map( A => cnt_up, B => n194, C => n41, Y => n120);
   U61 : NAND2X1 port map( A => N13, B => cnt_up, Y => n41);
   U63 : OAI21X1 port map( A => n176, B => n167, C => n43, Y => n121);
   U64 : NAND2X1 port map( A => count_out_8_port, B => n168, Y => n43);
   U66 : OAI21X1 port map( A => n166, B => n193, C => n45, Y => n123);
   U67 : NAND2X1 port map( A => currentCount_8_port, B => n166, Y => n45);
   U68 : OAI21X1 port map( A => cnt_up, B => n193, C => n46, Y => n125);
   U69 : NAND2X1 port map( A => N12, B => cnt_up, Y => n46);
   U71 : OAI21X1 port map( A => n177, B => n167, C => n48, Y => n126);
   U72 : NAND2X1 port map( A => count_out_7_port, B => n168, Y => n48);
   U74 : OAI21X1 port map( A => n166, B => n192, C => n50, Y => n128);
   U75 : NAND2X1 port map( A => currentCount_7_port, B => n166, Y => n50);
   U76 : OAI21X1 port map( A => cnt_up, B => n192, C => n51, Y => n130);
   U77 : NAND2X1 port map( A => N11, B => cnt_up, Y => n51);
   U79 : OAI21X1 port map( A => n178, B => n167, C => n53, Y => n131);
   U80 : NAND2X1 port map( A => count_out_6_port, B => n168, Y => n53);
   U82 : OAI21X1 port map( A => n166, B => n191, C => n55, Y => n133);
   U83 : NAND2X1 port map( A => currentCount_6_port, B => n166, Y => n55);
   U84 : OAI21X1 port map( A => cnt_up, B => n191, C => n56, Y => n135);
   U85 : NAND2X1 port map( A => N10, B => cnt_up, Y => n56);
   U87 : OAI21X1 port map( A => n179, B => n167, C => n58, Y => n136);
   U88 : NAND2X1 port map( A => count_out_5_port, B => n168, Y => n58);
   U90 : OAI21X1 port map( A => n166, B => n190, C => n60, Y => n138);
   U91 : NAND2X1 port map( A => currentCount_5_port, B => n166, Y => n60);
   U92 : OAI21X1 port map( A => cnt_up, B => n190, C => n61, Y => n140);
   U93 : NAND2X1 port map( A => N9, B => cnt_up, Y => n61);
   U95 : OAI21X1 port map( A => n180, B => n167, C => n63, Y => n141);
   U96 : NAND2X1 port map( A => count_out_4_port, B => n168, Y => n63);
   U98 : OAI21X1 port map( A => n166, B => n189, C => n65, Y => n143);
   U99 : NAND2X1 port map( A => currentCount_4_port, B => n166, Y => n65);
   U100 : OAI21X1 port map( A => cnt_up, B => n189, C => n66, Y => n145);
   U101 : NAND2X1 port map( A => N8, B => cnt_up, Y => n66);
   U103 : OAI21X1 port map( A => n181, B => n167, C => n68, Y => n146);
   U104 : NAND2X1 port map( A => count_out_3_port, B => n168, Y => n68);
   U106 : OAI21X1 port map( A => n166, B => n188, C => n70, Y => n148);
   U107 : NAND2X1 port map( A => currentCount_3_port, B => n166, Y => n70);
   U108 : OAI21X1 port map( A => cnt_up, B => n188, C => n71, Y => n150);
   U109 : NAND2X1 port map( A => N7, B => cnt_up, Y => n71);
   U111 : OAI21X1 port map( A => n182, B => n168, C => n73, Y => n151);
   U112 : NAND2X1 port map( A => count_out_2_port, B => n168, Y => n73);
   U114 : OAI21X1 port map( A => n166, B => n187, C => n75, Y => n153);
   U115 : NAND2X1 port map( A => currentCount_2_port, B => n166, Y => n75);
   U116 : OAI21X1 port map( A => cnt_up, B => n187, C => n76, Y => n155);
   U117 : NAND2X1 port map( A => N6, B => cnt_up, Y => n76);
   U119 : OAI21X1 port map( A => n183, B => n168, C => n78, Y => n156);
   U120 : NAND2X1 port map( A => count_out_1_port, B => n168, Y => n78);
   U123 : OAI21X1 port map( A => n166, B => n186, C => n80, Y => n158);
   U124 : NAND2X1 port map( A => currentCount_1_port, B => n166, Y => n80);
   U125 : OAI21X1 port map( A => cnt_up, B => n186, C => n81, Y => n160);
   U126 : NAND2X1 port map( A => N5, B => cnt_up, Y => n81);
   U128 : OAI21X1 port map( A => n166, B => n185, C => n83, Y => n162);
   U129 : NAND2X1 port map( A => N4, B => n166, Y => n83);
   U131 : OAI21X1 port map( A => cnt_up, B => n185, C => n84, Y => n164);
   U132 : NAND2X1 port map( A => N4, B => cnt_up, Y => n84);
   n87 <= '1';
   n89 <= '1';
   n92 <= '1';
   n94 <= '1';
   n97 <= '1';
   n99 <= '1';
   n102 <= '1';
   n104 <= '1';
   n107 <= '1';
   n109 <= '1';
   n112 <= '1';
   n114 <= '1';
   n117 <= '1';
   n119 <= '1';
   n122 <= '1';
   n124 <= '1';
   n127 <= '1';
   n129 <= '1';
   n132 <= '1';
   n134 <= '1';
   n137 <= '1';
   n139 <= '1';
   n142 <= '1';
   n144 <= '1';
   n147 <= '1';
   n149 <= '1';
   n152 <= '1';
   n154 <= '1';
   n157 <= '1';
   n159 <= '1';
   n161 <= '1';
   n163 <= '1';
   U166 : XNOR2X1 port map( A => currentCount_15_port, B => n165, Y => N19);
   U167 : NAND2X1 port map( A => currentCount_14_port, B => 
                           add_35_carry_14_port, Y => n165);
   U168 : INVX2 port map( A => nReset, Y => n167);
   U169 : INVX2 port map( A => cnt_up, Y => n166);
   U170 : INVX2 port map( A => nReset, Y => n168);
   U171 : AND2X2 port map( A => currentCount_8_port, B => add_35_carry_8_port, 
                           Y => add_35_carry_9_port);
   U172 : AND2X2 port map( A => currentCount_11_port, B => add_35_carry_11_port
                           , Y => add_35_carry_12_port);
   U173 : AND2X2 port map( A => currentCount_4_port, B => add_35_carry_4_port, 
                           Y => add_35_carry_5_port);
   U174 : AND2X2 port map( A => currentCount_13_port, B => add_35_carry_13_port
                           , Y => add_35_carry_14_port);
   U175 : AND2X2 port map( A => currentCount_12_port, B => add_35_carry_12_port
                           , Y => add_35_carry_13_port);
   U176 : INVX1 port map( A => currentCount_1_port, Y => N5);
   U177 : AND2X2 port map( A => currentCount_10_port, B => add_35_carry_10_port
                           , Y => add_35_carry_11_port);
   U178 : AND2X2 port map( A => currentCount_9_port, B => add_35_carry_9_port, 
                           Y => add_35_carry_10_port);
   U179 : AND2X2 port map( A => currentCount_3_port, B => add_35_carry_3_port, 
                           Y => add_35_carry_4_port);
   U180 : AND2X2 port map( A => currentCount_2_port, B => currentCount_1_port, 
                           Y => add_35_carry_3_port);
   U181 : XOR2X1 port map( A => add_35_carry_14_port, B => currentCount_14_port
                           , Y => N18);
   U182 : XOR2X1 port map( A => add_35_carry_13_port, B => currentCount_13_port
                           , Y => N17);
   U183 : XOR2X1 port map( A => add_35_carry_12_port, B => currentCount_12_port
                           , Y => N16);
   U184 : XOR2X1 port map( A => add_35_carry_11_port, B => currentCount_11_port
                           , Y => N15);
   U185 : XOR2X1 port map( A => add_35_carry_10_port, B => currentCount_10_port
                           , Y => N14);
   U186 : XOR2X1 port map( A => add_35_carry_9_port, B => currentCount_9_port, 
                           Y => N13);
   U187 : XOR2X1 port map( A => add_35_carry_8_port, B => currentCount_8_port, 
                           Y => N12);
   U188 : AND2X1 port map( A => currentCount_7_port, B => add_35_carry_7_port, 
                           Y => add_35_carry_8_port);
   U189 : XOR2X1 port map( A => add_35_carry_7_port, B => currentCount_7_port, 
                           Y => N11);
   U190 : AND2X1 port map( A => currentCount_6_port, B => add_35_carry_6_port, 
                           Y => add_35_carry_7_port);
   U191 : XOR2X1 port map( A => add_35_carry_6_port, B => currentCount_6_port, 
                           Y => N10);
   U192 : AND2X1 port map( A => currentCount_5_port, B => add_35_carry_5_port, 
                           Y => add_35_carry_6_port);
   U193 : XOR2X1 port map( A => add_35_carry_5_port, B => currentCount_5_port, 
                           Y => N9);
   U194 : XOR2X1 port map( A => add_35_carry_4_port, B => currentCount_4_port, 
                           Y => N8);
   U195 : XOR2X1 port map( A => add_35_carry_3_port, B => currentCount_3_port, 
                           Y => N7);
   U196 : XOR2X1 port map( A => currentCount_1_port, B => currentCount_2_port, 
                           Y => N6);
   U197 : INVX2 port map( A => n88, Y => n169);
   U198 : INVX2 port map( A => n93, Y => n170);
   U199 : INVX2 port map( A => n98, Y => n171);
   U200 : INVX2 port map( A => n103, Y => n172);
   U201 : INVX2 port map( A => n108, Y => n173);
   U202 : INVX2 port map( A => n113, Y => n174);
   U203 : INVX2 port map( A => n118, Y => n175);
   U204 : INVX2 port map( A => n123, Y => n176);
   U205 : INVX2 port map( A => n128, Y => n177);
   U206 : INVX2 port map( A => n133, Y => n178);
   U207 : INVX2 port map( A => n138, Y => n179);
   U208 : INVX2 port map( A => n143, Y => n180);
   U209 : INVX2 port map( A => n148, Y => n181);
   U210 : INVX2 port map( A => n153, Y => n182);
   U211 : INVX2 port map( A => n158, Y => n183);
   U212 : INVX2 port map( A => n162, Y => n184);
   U213 : INVX2 port map( A => nextCount_0_port, Y => n185);
   U214 : INVX2 port map( A => nextCount_1_port, Y => n186);
   U215 : INVX2 port map( A => nextCount_2_port, Y => n187);
   U216 : INVX2 port map( A => nextCount_3_port, Y => n188);
   U217 : INVX2 port map( A => nextCount_4_port, Y => n189);
   U218 : INVX2 port map( A => nextCount_5_port, Y => n190);
   U219 : INVX2 port map( A => nextCount_6_port, Y => n191);
   U220 : INVX2 port map( A => nextCount_7_port, Y => n192);
   U221 : INVX2 port map( A => nextCount_8_port, Y => n193);
   U222 : INVX2 port map( A => nextCount_9_port, Y => n194);
   U223 : INVX2 port map( A => nextCount_10_port, Y => n195);
   U224 : INVX2 port map( A => nextCount_11_port, Y => n196);
   U225 : INVX2 port map( A => nextCount_12_port, Y => n197);
   U226 : INVX2 port map( A => nextCount_13_port, Y => n198);
   U227 : INVX2 port map( A => nextCount_14_port, Y => n199);
   U228 : INVX2 port map( A => nextCount_15_port, Y => n200);

end SYN_cob;
