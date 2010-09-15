
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_avg_four is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_avg_four;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity alu_DW01_add_1 is

   port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (16 downto 0);  CO : out std_logic);

end alu_DW01_add_1;

architecture SYN_cla of alu_DW01_add_1 is

   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component XNOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component XOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n58, n59, n60, 
      n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75
      , n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, 
      n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
      n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, 
      n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, 
      n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, 
      n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, 
      n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
      n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, 
      n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, 
      n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, 
      n200, n201, n202 : std_logic;

begin
   
   U2 : BUFX2 port map( A => A(1), Y => n1);
   U3 : INVX2 port map( A => n104, Y => n189);
   U4 : AND2X2 port map( A => n32, B => n127, Y => n2);
   U5 : AND2X2 port map( A => n55, B => n96, Y => n3);
   U6 : INVX2 port map( A => n98, Y => n96);
   U7 : AND2X2 port map( A => n155, B => n118, Y => n4);
   U8 : INVX1 port map( A => n188, Y => n5);
   U9 : INVX2 port map( A => n191, Y => n200);
   U10 : BUFX2 port map( A => B(1), Y => n6);
   U11 : OR2X2 port map( A => A(6), B => B(6), Y => n7);
   U12 : INVX2 port map( A => n185, Y => n8);
   U13 : AND2X1 port map( A => n101, B => n104, Y => n198);
   U14 : INVX2 port map( A => n78, Y => n9);
   U15 : INVX1 port map( A => n131, Y => n10);
   U16 : INVX2 port map( A => n10, Y => n11);
   U17 : BUFX2 port map( A => n42, Y => n12);
   U18 : OAI21X1 port map( A => n188, B => n189, C => n190, Y => n13);
   U19 : AND2X2 port map( A => n35, B => n36, Y => n14);
   U20 : AND2X1 port map( A => n35, B => n36, Y => n121);
   U21 : AND2X2 port map( A => n71, B => n79, Y => n36);
   U22 : NOR2X1 port map( A => n150, B => n151, Y => n44);
   U23 : OAI21X1 port map( A => n147, B => n148, C => n44, Y => n48);
   U24 : AOI22X1 port map( A => n15, B => n16, C => n17, D => n18, Y => n35);
   U25 : INVX1 port map( A => A(5), Y => n15);
   U26 : INVX1 port map( A => B(5), Y => n16);
   U27 : INVX1 port map( A => A(4), Y => n17);
   U28 : INVX1 port map( A => B(4), Y => n18);
   U29 : BUFX2 port map( A => n71, Y => n19);
   U30 : NAND2X1 port map( A => n12, B => n20, Y => n73);
   U31 : AND2X1 port map( A => n124, B => n93, Y => n20);
   U32 : OR2X1 port map( A => B(10), B => A(10), Y => n25);
   U33 : INVX1 port map( A => n155, Y => n21);
   U34 : INVX2 port map( A => n21, Y => n22);
   U35 : INVX2 port map( A => n65, Y => n23);
   U36 : INVX2 port map( A => n66, Y => n65);
   U37 : OR2X2 port map( A => B(8), B => A(8), Y => n24);
   U38 : OR2X2 port map( A => n187, B => n125, Y => n26);
   U39 : INVX4 port map( A => n61, Y => n194);
   U40 : AND2X2 port map( A => n24, B => n61, Y => n53);
   U41 : XNOR2X1 port map( A => n27, B => n28, Y => SUM(4));
   U42 : INVX1 port map( A => n26, Y => n27);
   U43 : AND2X2 port map( A => n41, B => n82, Y => n28);
   U44 : OR2X1 port map( A => A(3), B => B(3), Y => n57);
   U45 : BUFX2 port map( A => n24, Y => n29);
   U46 : BUFX2 port map( A => n7, Y => n30);
   U47 : AND2X1 port map( A => n33, B => n82, Y => n89);
   U48 : INVX1 port map( A => n101, Y => n188);
   U49 : BUFX2 port map( A => n156, Y => n31);
   U50 : BUFX2 port map( A => n118, Y => n32);
   U51 : INVX1 port map( A => n81, Y => n78);
   U52 : BUFX2 port map( A => n84, Y => n33);
   U53 : INVX1 port map( A => n194, Y => n34);
   U54 : XNOR2X1 port map( A => n193, B => n37, Y => SUM(10));
   U55 : AND2X2 port map( A => n39, B => n172, Y => n37);
   U56 : XNOR2X1 port map( A => n168, B => n2, Y => SUM(12));
   U57 : XNOR2X1 port map( A => n60, B => n38, Y => SUM(9));
   U58 : AND2X2 port map( A => n34, B => n62, Y => n38);
   U59 : BUFX2 port map( A => n25, Y => n39);
   U60 : BUFX2 port map( A => n180, Y => n40);
   U61 : INVX2 port map( A => n88, Y => n41);
   U62 : NAND2X1 port map( A => n156, B => n4, Y => n152);
   U63 : OR2X2 port map( A => A(3), B => B(3), Y => n55);
   U64 : INVX1 port map( A => n14, Y => n147);
   U65 : AND2X1 port map( A => n14, B => n182, Y => n177);
   U66 : INVX1 port map( A => n76, Y => n88);
   U67 : NAND2X1 port map( A => n55, B => n96, Y => n42);
   U68 : NOR2X1 port map( A => n150, B => n151, Y => n43);
   U69 : NOR2X1 port map( A => n166, B => n52, Y => n45);
   U70 : XNOR2X1 port map( A => n144, B => n46, Y => SUM(14));
   U71 : AND2X2 port map( A => n119, B => n135, Y => n46);
   U72 : INVX1 port map( A => n93, Y => n125);
   U73 : OAI21X1 port map( A => n147, B => n148, C => n149, Y => n47);
   U74 : XOR2X1 port map( A => n91, B => n92, Y => SUM(3));
   U75 : XNOR2X1 port map( A => n85, B => n49, Y => SUM(6));
   U76 : NAND2X1 port map( A => n30, B => n86, Y => n49);
   U77 : XOR2X1 port map( A => n90, B => n50, Y => SUM(5));
   U78 : NAND2X1 port map( A => n33, B => n81, Y => n50);
   U79 : XOR2X1 port map( A => n68, B => n69, Y => SUM(7));
   U80 : XOR2X1 port map( A => n175, B => n176, Y => SUM(11));
   U81 : NOR2X1 port map( A => n51, B => n52, Y => n122);
   U82 : NAND2X1 port map( A => n24, B => n34, Y => n51);
   U83 : NAND2X1 port map( A => n167, B => n155, Y => n52);
   U84 : AND2X2 port map( A => n123, B => n13, Y => n54);
   U85 : AND2X2 port map( A => n105, B => n100, Y => SUM(0));
   U86 : NOR2X1 port map( A => n54, B => n120, Y => n113);
   U87 : NAND2X1 port map( A => n93, B => n160, Y => n159);
   U88 : NOR2X1 port map( A => n198, B => n199, Y => n197);
   U89 : BUFX2 port map( A => n3, Y => n58);
   U90 : BUFX2 port map( A => n95, Y => n59);
   U91 : INVX1 port map( A => n167, Y => n184);
   U92 : AOI21X1 port map( A => n64, B => n29, C => n65, Y => n60);
   U93 : XNOR2X1 port map( A => n64, B => n67, Y => SUM(8));
   U94 : NAND2X1 port map( A => n29, B => n23, Y => n67);
   U95 : NAND2X1 port map( A => n70, B => n19, Y => n69);
   U96 : AOI21X1 port map( A => n72, B => n26, C => n74, Y => n68);
   U97 : OAI21X1 port map( A => n76, B => n75, C => n77, Y => n74);
   U98 : AOI21X1 port map( A => n78, B => n30, C => n80, Y => n77);
   U99 : AND2X2 port map( A => n82, B => n83, Y => n72);
   U100 : INVX2 port map( A => n75, Y => n83);
   U101 : NAND2X1 port map( A => n30, B => n84, Y => n75);
   U102 : NAND2X1 port map( A => n9, B => n87, Y => n85);
   U103 : OAI21X1 port map( A => n88, B => n73, C => n89, Y => n87);
   U104 : AOI21X1 port map( A => n73, B => n82, C => n88, Y => n90);
   U105 : NAND2X1 port map( A => n93, B => n55, Y => n92);
   U106 : AOI21X1 port map( A => n94, B => n59, C => n96, Y => n91);
   U107 : XNOR2X1 port map( A => n94, B => n97, Y => SUM(2));
   U108 : NAND2X1 port map( A => n95, B => n98, Y => n97);
   U109 : OAI21X1 port map( A => n99, B => n100, C => n101, Y => n94);
   U110 : INVX2 port map( A => n189, Y => n100);
   U111 : INVX2 port map( A => n102, Y => n99);
   U112 : XNOR2X1 port map( A => n103, B => n189, Y => SUM(1));
   U113 : NAND2X1 port map( A => n102, B => n5, Y => n103);
   U114 : NAND2X1 port map( A => n106, B => n107, Y => SUM(16));
   U115 : NAND2X1 port map( A => n108, B => n109, Y => n107);
   U116 : NAND2X1 port map( A => n110, B => n111, Y => n108);
   U117 : OAI21X1 port map( A => n112, B => n113, C => n114, Y => n111);
   U118 : NOR2X1 port map( A => n115, B => n116, Y => n114);
   U119 : NAND2X1 port map( A => n117, B => n32, Y => n116);
   U120 : INVX2 port map( A => n119, Y => n115);
   U121 : NAND2X1 port map( A => n14, B => n122, Y => n120);
   U122 : NOR2X1 port map( A => n125, B => n58, Y => n123);
   U123 : NAND3X1 port map( A => n126, B => n127, C => n128, Y => n112);
   U124 : NAND3X1 port map( A => n122, B => n19, C => n129, Y => n128);
   U125 : NAND2X1 port map( A => n130, B => n11, Y => n129);
   U126 : NOR2X1 port map( A => n80, B => n132, Y => n130);
   U127 : INVX2 port map( A => n86, Y => n80);
   U128 : AOI21X1 port map( A => n133, B => n119, C => n134, Y => n110);
   U129 : INVX2 port map( A => n135, Y => n134);
   U130 : XNOR2X1 port map( A => n136, B => n137, Y => SUM(15));
   U131 : NOR2X1 port map( A => n138, B => n139, Y => n137);
   U132 : INVX2 port map( A => n109, Y => n139);
   U133 : OR2X2 port map( A => A(15), B => B(15), Y => n109);
   U134 : INVX2 port map( A => n106, Y => n138);
   U135 : NAND2X1 port map( A => B(15), B => A(15), Y => n106);
   U136 : AOI21X1 port map( A => n140, B => n47, C => n142, Y => n136);
   U137 : NAND2X1 port map( A => n143, B => n135, Y => n142);
   U138 : NAND2X1 port map( A => n133, B => n119, Y => n143);
   U139 : AND2X2 port map( A => n117, B => n119, Y => n140);
   U140 : NAND2X1 port map( A => B(14), B => A(14), Y => n135);
   U141 : OR2X2 port map( A => A(14), B => B(14), Y => n119);
   U142 : AOI21X1 port map( A => n117, B => n141, C => n133, Y => n144);
   U143 : INVX2 port map( A => n145, Y => n133);
   U144 : XNOR2X1 port map( A => n48, B => n146, Y => SUM(13));
   U145 : NAND2X1 port map( A => n117, B => n145, Y => n146);
   U146 : NAND2X1 port map( A => B(13), B => A(13), Y => n145);
   U147 : OR2X2 port map( A => A(13), B => B(13), Y => n117);
   U148 : OAI21X1 port map( A => n147, B => n148, C => n43, Y => n141);
   U149 : NOR2X1 port map( A => n150, B => n151, Y => n149);
   U150 : NAND3X1 port map( A => n127, B => n152, C => n153, Y => n151);
   U151 : NAND2X1 port map( A => n132, B => n154, Y => n153);
   U152 : INVX2 port map( A => n157, Y => n150);
   U153 : NAND3X1 port map( A => n71, B => n158, C => n45, Y => n157);
   U154 : NAND2X1 port map( A => n131, B => n86, Y => n158);
   U155 : NAND2X1 port map( A => n154, B => n159, Y => n148);
   U156 : AOI21X1 port map( A => n162, B => n161, C => n3, Y => n160);
   U157 : NAND2X1 port map( A => n104, B => n101, Y => n162);
   U158 : NOR2X1 port map( A => n163, B => n164, Y => n161);
   U159 : NAND2X1 port map( A => n95, B => n57, Y => n164);
   U160 : NOR2X1 port map( A => n165, B => n166, Y => n154);
   U161 : NAND3X1 port map( A => n63, B => n61, C => n118, Y => n166);
   U162 : NAND2X1 port map( A => n155, B => n25, Y => n165);
   U163 : NAND2X1 port map( A => B(12), B => A(12), Y => n127);
   U164 : OR2X2 port map( A => A(12), B => B(12), Y => n118);
   U165 : AOI21X1 port map( A => n64, B => n122, C => n169, Y => n168);
   U166 : INVX2 port map( A => n126, Y => n169);
   U167 : NAND2X1 port map( A => n31, B => n22, Y => n126);
   U168 : OAI21X1 port map( A => n194, B => n170, C => n171, Y => n156);
   U169 : AND2X2 port map( A => n172, B => n173, Y => n171);
   U170 : NAND2X1 port map( A => n167, B => n174, Y => n170);
   U171 : NAND2X1 port map( A => n62, B => n66, Y => n174);
   U172 : NAND2X1 port map( A => n173, B => n22, Y => n176);
   U173 : OR2X2 port map( A => A(11), B => B(11), Y => n155);
   U174 : NAND2X1 port map( A => B(11), B => A(11), Y => n173);
   U175 : AOI21X1 port map( A => n177, B => n26, C => n178, Y => n175);
   U176 : OAI21X1 port map( A => n179, B => n40, C => n181, Y => n178);
   U177 : AOI21X1 port map( A => n182, B => n132, C => n183, Y => n181);
   U178 : OAI21X1 port map( A => n184, B => n185, C => n172, Y => n183);
   U179 : INVX2 port map( A => n186, Y => n185);
   U180 : INVX2 port map( A => n70, Y => n132);
   U181 : NAND2X1 port map( A => n12, B => n13, Y => n187);
   U182 : OAI21X1 port map( A => n188, B => n189, C => n190, Y => n124);
   U183 : NOR2X1 port map( A => n191, B => n163, Y => n190);
   U184 : INVX2 port map( A => n192, Y => n163);
   U185 : OR2X2 port map( A => n1, B => n6, Y => n102);
   U186 : OR2X2 port map( A => A(2), B => B(2), Y => n95);
   U187 : INVX2 port map( A => n179, Y => n182);
   U188 : NAND2X1 port map( A => n53, B => n39, Y => n179);
   U189 : NAND2X1 port map( A => A(10), B => B(10), Y => n172);
   U190 : OR2X2 port map( A => A(10), B => B(10), Y => n167);
   U191 : AOI21X1 port map( A => n64, B => n53, C => n8, Y => n193);
   U192 : OAI21X1 port map( A => n194, B => n23, C => n62, Y => n186);
   U193 : NAND2X1 port map( A => B(9), B => A(9), Y => n62);
   U194 : NAND2X1 port map( A => A(8), B => B(8), Y => n66);
   U195 : NAND3X1 port map( A => n70, B => n180, C => n195, Y => n64);
   U196 : OAI21X1 port map( A => n197, B => n196, C => n121, Y => n195);
   U197 : OR2X2 port map( A => A(4), B => B(4), Y => n82);
   U198 : NAND2X1 port map( A => n200, B => n192, Y => n199);
   U199 : OR2X2 port map( A => A(1), B => B(1), Y => n192);
   U200 : OAI22X1 port map( A => A(2), B => B(2), C => B(3), D => A(3), Y => 
                           n191);
   U201 : NAND2X1 port map( A => B(1), B => A(1), Y => n101);
   U202 : NAND2X1 port map( A => n93, B => n42, Y => n196);
   U203 : NAND2X1 port map( A => B(3), B => A(3), Y => n93);
   U204 : NAND2X1 port map( A => B(2), B => A(2), Y => n98);
   U205 : NAND2X1 port map( A => B(7), B => A(7), Y => n70);
   U206 : NAND2X1 port map( A => n201, B => n19, Y => n180);
   U207 : OR2X2 port map( A => A(7), B => B(7), Y => n71);
   U208 : NAND2X1 port map( A => n86, B => n131, Y => n201);
   U209 : NAND3X1 port map( A => n84, B => n7, C => n202, Y => n131);
   U210 : NAND2X1 port map( A => n81, B => n76, Y => n202);
   U211 : NAND2X1 port map( A => B(5), B => A(5), Y => n81);
   U212 : NAND2X1 port map( A => B(4), B => A(4), Y => n76);
   U213 : OR2X2 port map( A => A(6), B => B(6), Y => n79);
   U214 : OR2X2 port map( A => A(5), B => B(5), Y => n84);
   U215 : NAND2X1 port map( A => B(6), B => A(6), Y => n86);
   U216 : OR2X2 port map( A => A(8), B => B(8), Y => n63);
   U217 : OR2X2 port map( A => A(9), B => B(9), Y => n61);
   U218 : NAND2X1 port map( A => A(0), B => B(0), Y => n104);
   U219 : OR2X2 port map( A => A(0), B => B(0), Y => n105);

end SYN_cla;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity alu is

   port( A, B : in std_logic_vector (15 downto 0);  add : in std_logic;  res : 
         out std_logic_vector (15 downto 0);  V : out std_logic);

end alu;

architecture SYN_dataflow of alu is

   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component alu_DW01_add_1
      port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (16 downto 0);  CO : out std_logic);
   end component;
   
   signal N9, N8, N7, N6, N5, N4, N3, N2, N17, N16, N15, N14, N13, N12, N11, 
      N10, n1, n2_port, n_1004 : std_logic;

begin
   
   add_20_aco : alu_DW01_add_1 port map( A(16) => n1, A(15) => A(15), A(14) => 
                           A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(16) => n1, B(15) => N17, B(14) => N16, 
                           B(13) => N15, B(12) => N14, B(11) => N13, B(10) => 
                           N12, B(9) => N11, B(8) => N10, B(7) => N9, B(6) => 
                           N8, B(5) => N7, B(4) => N6, B(3) => N5, B(2) => N4, 
                           B(1) => N3, B(0) => N2, CI => n2_port, SUM(16) => V,
                           SUM(15) => res(15), SUM(14) => res(14), SUM(13) => 
                           res(13), SUM(12) => res(12), SUM(11) => res(11), 
                           SUM(10) => res(10), SUM(9) => res(9), SUM(8) => 
                           res(8), SUM(7) => res(7), SUM(6) => res(6), SUM(5) 
                           => res(5), SUM(4) => res(4), SUM(3) => res(3), 
                           SUM(2) => res(2), SUM(1) => res(1), SUM(0) => res(0)
                           , CO => n_1004);
   U1 : AND2X2 port map( A => B(15), B => add, Y => N17);
   U2 : AND2X2 port map( A => B(14), B => add, Y => N16);
   U3 : AND2X2 port map( A => B(13), B => add, Y => N15);
   U4 : AND2X2 port map( A => B(12), B => add, Y => N14);
   U5 : AND2X2 port map( A => B(11), B => add, Y => N13);
   U6 : AND2X2 port map( A => add, B => B(10), Y => N12);
   U7 : AND2X2 port map( A => B(9), B => add, Y => N11);
   U8 : AND2X2 port map( A => add, B => B(8), Y => N10);
   U9 : AND2X2 port map( A => add, B => B(7), Y => N9);
   U10 : AND2X2 port map( A => B(6), B => add, Y => N8);
   U11 : AND2X2 port map( A => add, B => B(5), Y => N7);
   U12 : AND2X2 port map( A => B(4), B => add, Y => N6);
   U13 : AND2X2 port map( A => B(3), B => add, Y => N5);
   U14 : AND2X2 port map( A => B(2), B => add, Y => N4);
   U15 : AND2X2 port map( A => B(1), B => add, Y => N3);
   U16 : AND2X2 port map( A => B(0), B => add, Y => N2);
   n1 <= '0';
   n2_port <= '0';

end SYN_dataflow;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity regfile is

   port( clk, nReset : in std_logic;  wsel, rsel1, rsel2 : in std_logic_vector 
         (3 downto 0);  wdata : in std_logic_vector (15 downto 0);  wen : in 
         std_logic;  rdata1, rdata2, reg0 : out std_logic_vector (15 downto 0)
         );

end regfile;

architecture SYN_behav of regfile is

   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX8
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal reg0_15_port, reg0_14_port, reg0_13_port, reg0_12_port, reg0_11_port,
      reg0_10_port, reg0_9_port, reg0_8_port, reg0_7_port, reg0_6_port, 
      reg0_5_port, reg0_4_port, reg0_3_port, reg0_2_port, reg0_1_port, 
      reg0_0_port, reg_15_15_port, reg_15_14_port, reg_15_13_port, 
      reg_15_12_port, reg_15_11_port, reg_15_10_port, reg_15_9_port, 
      reg_15_8_port, reg_15_7_port, reg_15_6_port, reg_15_5_port, reg_15_4_port
      , reg_15_3_port, reg_15_2_port, reg_15_1_port, reg_15_0_port, 
      reg_14_15_port, reg_14_14_port, reg_14_13_port, reg_14_12_port, 
      reg_14_11_port, reg_14_10_port, reg_14_9_port, reg_14_8_port, 
      reg_14_7_port, reg_14_6_port, reg_14_5_port, reg_14_4_port, reg_14_3_port
      , reg_14_2_port, reg_14_1_port, reg_14_0_port, reg_13_15_port, 
      reg_13_14_port, reg_13_13_port, reg_13_12_port, reg_13_11_port, 
      reg_13_10_port, reg_13_9_port, reg_13_8_port, reg_13_7_port, 
      reg_13_6_port, reg_13_5_port, reg_13_4_port, reg_13_3_port, reg_13_2_port
      , reg_13_1_port, reg_13_0_port, reg_12_15_port, reg_12_14_port, 
      reg_12_13_port, reg_12_12_port, reg_12_11_port, reg_12_10_port, 
      reg_12_9_port, reg_12_8_port, reg_12_7_port, reg_12_6_port, reg_12_5_port
      , reg_12_4_port, reg_12_3_port, reg_12_2_port, reg_12_1_port, 
      reg_12_0_port, reg_11_15_port, reg_11_14_port, reg_11_13_port, 
      reg_11_12_port, reg_11_11_port, reg_11_10_port, reg_11_9_port, 
      reg_11_8_port, reg_11_7_port, reg_11_6_port, reg_11_5_port, reg_11_4_port
      , reg_11_3_port, reg_11_2_port, reg_11_1_port, reg_11_0_port, 
      reg_10_15_port, reg_10_14_port, reg_10_13_port, reg_10_12_port, 
      reg_10_11_port, reg_10_10_port, reg_10_9_port, reg_10_8_port, 
      reg_10_7_port, reg_10_6_port, reg_10_5_port, reg_10_4_port, reg_10_3_port
      , reg_10_2_port, reg_10_1_port, reg_10_0_port, reg_9_15_port, 
      reg_9_14_port, reg_9_13_port, reg_9_12_port, reg_9_11_port, reg_9_10_port
      , reg_9_9_port, reg_9_8_port, reg_9_7_port, reg_9_6_port, reg_9_5_port, 
      reg_9_4_port, reg_9_3_port, reg_9_2_port, reg_9_1_port, reg_9_0_port, 
      reg_8_15_port, reg_8_14_port, reg_8_13_port, reg_8_12_port, reg_8_11_port
      , reg_8_10_port, reg_8_9_port, reg_8_8_port, reg_8_7_port, reg_8_6_port, 
      reg_8_5_port, reg_8_4_port, reg_8_3_port, reg_8_2_port, reg_8_1_port, 
      reg_8_0_port, reg_7_15_port, reg_7_14_port, reg_7_13_port, reg_7_12_port,
      reg_7_11_port, reg_7_10_port, reg_7_9_port, reg_7_8_port, reg_7_7_port, 
      reg_7_6_port, reg_7_5_port, reg_7_4_port, reg_7_3_port, reg_7_2_port, 
      reg_7_1_port, reg_7_0_port, reg_6_15_port, reg_6_14_port, reg_6_13_port, 
      reg_6_12_port, reg_6_11_port, reg_6_10_port, reg_6_9_port, reg_6_8_port, 
      reg_6_7_port, reg_6_6_port, reg_6_5_port, reg_6_4_port, reg_6_3_port, 
      reg_6_2_port, reg_6_1_port, reg_6_0_port, reg_5_15_port, reg_5_14_port, 
      reg_5_13_port, reg_5_12_port, reg_5_11_port, reg_5_10_port, reg_5_9_port,
      reg_5_8_port, reg_5_7_port, reg_5_6_port, reg_5_5_port, reg_5_4_port, 
      reg_5_3_port, reg_5_2_port, reg_5_1_port, reg_5_0_port, reg_4_15_port, 
      reg_4_14_port, reg_4_13_port, reg_4_12_port, reg_4_11_port, reg_4_10_port
      , reg_4_9_port, reg_4_8_port, reg_4_7_port, reg_4_6_port, reg_4_5_port, 
      reg_4_4_port, reg_4_3_port, reg_4_2_port, reg_4_1_port, reg_4_0_port, 
      reg_3_15_port, reg_3_14_port, reg_3_13_port, reg_3_12_port, reg_3_11_port
      , reg_3_10_port, reg_3_9_port, reg_3_8_port, reg_3_7_port, reg_3_6_port, 
      reg_3_5_port, reg_3_4_port, reg_3_3_port, reg_3_2_port, reg_3_1_port, 
      reg_3_0_port, reg_2_15_port, reg_2_14_port, reg_2_13_port, reg_2_12_port,
      reg_2_11_port, reg_2_10_port, reg_2_9_port, reg_2_8_port, reg_2_7_port, 
      reg_2_6_port, reg_2_5_port, reg_2_4_port, reg_2_3_port, reg_2_2_port, 
      reg_2_1_port, reg_2_0_port, reg_1_15_port, reg_1_14_port, reg_1_13_port, 
      reg_1_12_port, reg_1_11_port, reg_1_10_port, reg_1_9_port, reg_1_8_port, 
      reg_1_7_port, reg_1_6_port, reg_1_5_port, reg_1_4_port, reg_1_3_port, 
      reg_1_2_port, reg_1_1_port, reg_1_0_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67
      , n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, 
      n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96
      , n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, 
      n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, 
      n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, 
      n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, 
      n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, 
      n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, 
      n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, 
      n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, 
      n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, 
      n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, 
      n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, 
      n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, 
      n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, 
      n253, n254, n255, n256, n678, n679, n690, n691, n894, n895, n906, n907, 
      n994, n995, n996, n997, n1012, n1013, n1014, n1015, n1029, n1030, n1031, 
      n1032, n1047, n1048, n1049, n1050, n1051, n1065, n1066, n1067, n1068, 
      n1083, n1084, n1085, n1086, n1101, n1102, n1103, n1104, n1118, n1119, 
      n1120, n1121, n1138, n1140, n1141, n1142, n1143, n1144, n1145, n1146, 
      n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, 
      n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, 
      n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, 
      n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, 
      n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, 
      n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, 
      n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, 
      n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, 
      n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, 
      n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, 
      n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, 
      n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, 
      n1267, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, 
      n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, 
      n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, 
      n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, 
      n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, 
      n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, 
      n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, 
      n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, 
      n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, 
      n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, 
      n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, 
      n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, 
      n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, 
      n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, 
      n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, 
      n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, 
      n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, 
      n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, 
      n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, 
      n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, 
      n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, 
      n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, 
      n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, 
      n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, 
      n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, 
      n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, 
      n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, 
      n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, 
      n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, 
      n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, 
      n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, 
      n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, 
      n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, 
      n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, 
      n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, 
      n676, n677, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, 
      n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, 
      n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, 
      n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, 
      n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, 
      n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, 
      n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, 
      n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, 
      n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, 
      n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, 
      n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, 
      n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, 
      n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, 
      n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, 
      n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, 
      n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, 
      n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, 
      n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n896, n897, 
      n898, n899, n900, n901, n902, n903, n904, n905, n908, n909, n910, n911, 
      n912, n913, n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, 
      n924, n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, 
      n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, 
      n948, n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, 
      n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, 
      n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, 
      n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n998, n999, 
      n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, 
      n1010, n1011, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, 
      n1024, n1025, n1026, n1027, n1028, n1033, n1034, n1035, n1036, n1037, 
      n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1052, 
      n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, 
      n1063, n1064, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, 
      n1077, n1078, n1079, n1080, n1081, n1082, n1087, n1088, n1089, n1090, 
      n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, 
      n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, 
      n1115, n1116, n1117, n1122, n1123, n1124, n1125, n1126, n1127, n1128, 
      n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1139, 
      n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, 
      n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, 
      n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, 
      n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, 
      n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, 
      n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, 
      n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, 
      n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, 
      n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, 
      n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, 
      n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, 
      n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, 
      n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, 
      n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, 
      n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, 
      n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, 
      n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, 
      n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, 
      n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, 
      n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, 
      n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, 
      n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, 
      n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, 
      n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, 
      n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, 
      n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, 
      n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, 
      n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546, n1547, 
      n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556, n1557, 
      n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566, n1567, 
      n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576, n1577, 
      n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586, n1587, 
      n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596, n1597, 
      n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606, n1607, 
      n1608, n1609, n1610, n1611, n1612, n1613 : std_logic;

begin
   reg0 <= ( reg0_15_port, reg0_14_port, reg0_13_port, reg0_12_port, 
      reg0_11_port, reg0_10_port, reg0_9_port, reg0_8_port, reg0_7_port, 
      reg0_6_port, reg0_5_port, reg0_4_port, reg0_3_port, reg0_2_port, 
      reg0_1_port, reg0_0_port );
   
   reg_reg_15_15_inst : DFFSR port map( D => n1267, CLK => clk, R => n457, S =>
                           n256, Q => reg_15_15_port);
   reg_reg_15_14_inst : DFFSR port map( D => n1266, CLK => clk, R => n457, S =>
                           n255, Q => reg_15_14_port);
   reg_reg_15_13_inst : DFFSR port map( D => n1265, CLK => clk, R => n457, S =>
                           n254, Q => reg_15_13_port);
   reg_reg_15_12_inst : DFFSR port map( D => n1264, CLK => clk, R => n457, S =>
                           n253, Q => reg_15_12_port);
   reg_reg_15_11_inst : DFFSR port map( D => n1263, CLK => clk, R => n456, S =>
                           n252, Q => reg_15_11_port);
   reg_reg_15_10_inst : DFFSR port map( D => n1262, CLK => clk, R => n456, S =>
                           n251, Q => reg_15_10_port);
   reg_reg_15_9_inst : DFFSR port map( D => n1261, CLK => clk, R => n456, S => 
                           n250, Q => reg_15_9_port);
   reg_reg_15_8_inst : DFFSR port map( D => n1260, CLK => clk, R => n456, S => 
                           n249, Q => reg_15_8_port);
   reg_reg_15_7_inst : DFFSR port map( D => n1259, CLK => clk, R => n456, S => 
                           n248, Q => reg_15_7_port);
   reg_reg_15_6_inst : DFFSR port map( D => n1258, CLK => clk, R => n456, S => 
                           n247, Q => reg_15_6_port);
   reg_reg_15_5_inst : DFFSR port map( D => n1257, CLK => clk, R => n456, S => 
                           n246, Q => reg_15_5_port);
   reg_reg_15_4_inst : DFFSR port map( D => n1256, CLK => clk, R => n456, S => 
                           n245, Q => reg_15_4_port);
   reg_reg_15_3_inst : DFFSR port map( D => n1255, CLK => clk, R => n456, S => 
                           n244, Q => reg_15_3_port);
   reg_reg_15_2_inst : DFFSR port map( D => n1254, CLK => clk, R => n456, S => 
                           n243, Q => reg_15_2_port);
   reg_reg_15_1_inst : DFFSR port map( D => n1253, CLK => clk, R => n456, S => 
                           n242, Q => reg_15_1_port);
   reg_reg_15_0_inst : DFFSR port map( D => n1252, CLK => clk, R => n456, S => 
                           n241, Q => reg_15_0_port);
   reg_reg_14_15_inst : DFFSR port map( D => n1251, CLK => clk, R => n455, S =>
                           n240, Q => reg_14_15_port);
   reg_reg_14_14_inst : DFFSR port map( D => n1250, CLK => clk, R => n455, S =>
                           n239, Q => reg_14_14_port);
   reg_reg_14_13_inst : DFFSR port map( D => n1249, CLK => clk, R => n455, S =>
                           n238, Q => reg_14_13_port);
   reg_reg_14_12_inst : DFFSR port map( D => n1248, CLK => clk, R => n455, S =>
                           n237, Q => reg_14_12_port);
   reg_reg_14_11_inst : DFFSR port map( D => n1247, CLK => clk, R => n455, S =>
                           n236, Q => reg_14_11_port);
   reg_reg_14_10_inst : DFFSR port map( D => n1246, CLK => clk, R => n455, S =>
                           n235, Q => reg_14_10_port);
   reg_reg_14_9_inst : DFFSR port map( D => n1245, CLK => clk, R => n455, S => 
                           n234, Q => reg_14_9_port);
   reg_reg_14_8_inst : DFFSR port map( D => n1244, CLK => clk, R => n455, S => 
                           n233, Q => reg_14_8_port);
   reg_reg_14_7_inst : DFFSR port map( D => n1243, CLK => clk, R => n455, S => 
                           n232, Q => reg_14_7_port);
   reg_reg_14_6_inst : DFFSR port map( D => n1242, CLK => clk, R => n455, S => 
                           n231, Q => reg_14_6_port);
   reg_reg_14_5_inst : DFFSR port map( D => n1241, CLK => clk, R => n455, S => 
                           n230, Q => reg_14_5_port);
   reg_reg_14_4_inst : DFFSR port map( D => n1240, CLK => clk, R => n455, S => 
                           n229, Q => reg_14_4_port);
   reg_reg_14_3_inst : DFFSR port map( D => n1239, CLK => clk, R => n454, S => 
                           n228, Q => reg_14_3_port);
   reg_reg_14_2_inst : DFFSR port map( D => n1238, CLK => clk, R => n454, S => 
                           n227, Q => reg_14_2_port);
   reg_reg_14_1_inst : DFFSR port map( D => n1237, CLK => clk, R => n454, S => 
                           n226, Q => reg_14_1_port);
   reg_reg_14_0_inst : DFFSR port map( D => n1236, CLK => clk, R => n454, S => 
                           n225, Q => reg_14_0_port);
   reg_reg_13_15_inst : DFFSR port map( D => n1235, CLK => clk, R => n454, S =>
                           n224, Q => reg_13_15_port);
   reg_reg_13_14_inst : DFFSR port map( D => n1234, CLK => clk, R => n454, S =>
                           n223, Q => reg_13_14_port);
   reg_reg_13_13_inst : DFFSR port map( D => n1233, CLK => clk, R => n454, S =>
                           n222, Q => reg_13_13_port);
   reg_reg_13_12_inst : DFFSR port map( D => n1232, CLK => clk, R => n454, S =>
                           n221, Q => reg_13_12_port);
   reg_reg_13_11_inst : DFFSR port map( D => n1231, CLK => clk, R => n454, S =>
                           n220, Q => reg_13_11_port);
   reg_reg_13_10_inst : DFFSR port map( D => n1230, CLK => clk, R => n454, S =>
                           n219, Q => reg_13_10_port);
   reg_reg_13_9_inst : DFFSR port map( D => n1229, CLK => clk, R => n454, S => 
                           n218, Q => reg_13_9_port);
   reg_reg_13_8_inst : DFFSR port map( D => n1228, CLK => clk, R => n454, S => 
                           n217, Q => reg_13_8_port);
   reg_reg_13_7_inst : DFFSR port map( D => n1227, CLK => clk, R => n453, S => 
                           n216, Q => reg_13_7_port);
   reg_reg_13_6_inst : DFFSR port map( D => n1226, CLK => clk, R => n453, S => 
                           n215, Q => reg_13_6_port);
   reg_reg_13_5_inst : DFFSR port map( D => n1225, CLK => clk, R => n453, S => 
                           n214, Q => reg_13_5_port);
   reg_reg_13_4_inst : DFFSR port map( D => n1224, CLK => clk, R => n453, S => 
                           n213, Q => reg_13_4_port);
   reg_reg_13_3_inst : DFFSR port map( D => n1223, CLK => clk, R => n453, S => 
                           n212, Q => reg_13_3_port);
   reg_reg_13_2_inst : DFFSR port map( D => n1222, CLK => clk, R => n453, S => 
                           n211, Q => reg_13_2_port);
   reg_reg_13_1_inst : DFFSR port map( D => n1221, CLK => clk, R => n453, S => 
                           n210, Q => reg_13_1_port);
   reg_reg_13_0_inst : DFFSR port map( D => n1220, CLK => clk, R => n453, S => 
                           n209, Q => reg_13_0_port);
   reg_reg_12_15_inst : DFFSR port map( D => n1219, CLK => clk, R => n453, S =>
                           n208, Q => reg_12_15_port);
   reg_reg_12_14_inst : DFFSR port map( D => n1218, CLK => clk, R => n453, S =>
                           n207, Q => reg_12_14_port);
   reg_reg_12_13_inst : DFFSR port map( D => n1217, CLK => clk, R => n453, S =>
                           n206, Q => reg_12_13_port);
   reg_reg_12_12_inst : DFFSR port map( D => n1216, CLK => clk, R => n453, S =>
                           n205, Q => reg_12_12_port);
   reg_reg_12_11_inst : DFFSR port map( D => n1215, CLK => clk, R => n452, S =>
                           n204, Q => reg_12_11_port);
   reg_reg_12_10_inst : DFFSR port map( D => n1214, CLK => clk, R => n452, S =>
                           n203, Q => reg_12_10_port);
   reg_reg_12_9_inst : DFFSR port map( D => n1213, CLK => clk, R => n452, S => 
                           n202, Q => reg_12_9_port);
   reg_reg_12_8_inst : DFFSR port map( D => n1212, CLK => clk, R => n452, S => 
                           n201, Q => reg_12_8_port);
   reg_reg_12_7_inst : DFFSR port map( D => n1211, CLK => clk, R => n452, S => 
                           n200, Q => reg_12_7_port);
   reg_reg_12_6_inst : DFFSR port map( D => n1210, CLK => clk, R => n452, S => 
                           n199, Q => reg_12_6_port);
   reg_reg_12_5_inst : DFFSR port map( D => n1209, CLK => clk, R => n452, S => 
                           n198, Q => reg_12_5_port);
   reg_reg_12_4_inst : DFFSR port map( D => n1208, CLK => clk, R => n452, S => 
                           n197, Q => reg_12_4_port);
   reg_reg_12_3_inst : DFFSR port map( D => n1207, CLK => clk, R => n452, S => 
                           n196, Q => reg_12_3_port);
   reg_reg_12_2_inst : DFFSR port map( D => n1206, CLK => clk, R => n452, S => 
                           n195, Q => reg_12_2_port);
   reg_reg_12_1_inst : DFFSR port map( D => n1205, CLK => clk, R => n452, S => 
                           n194, Q => reg_12_1_port);
   reg_reg_12_0_inst : DFFSR port map( D => n1204, CLK => clk, R => n452, S => 
                           n193, Q => reg_12_0_port);
   reg_reg_11_15_inst : DFFSR port map( D => n1490, CLK => clk, R => n451, S =>
                           n192, Q => reg_11_15_port);
   reg_reg_11_14_inst : DFFSR port map( D => n1498, CLK => clk, R => n451, S =>
                           n191, Q => reg_11_14_port);
   reg_reg_11_13_inst : DFFSR port map( D => n1506, CLK => clk, R => n451, S =>
                           n190, Q => reg_11_13_port);
   reg_reg_11_12_inst : DFFSR port map( D => n1514, CLK => clk, R => n451, S =>
                           n189, Q => reg_11_12_port);
   reg_reg_11_11_inst : DFFSR port map( D => n1522, CLK => clk, R => n451, S =>
                           n188, Q => reg_11_11_port);
   reg_reg_11_10_inst : DFFSR port map( D => n1530, CLK => clk, R => n451, S =>
                           n187, Q => reg_11_10_port);
   reg_reg_11_9_inst : DFFSR port map( D => n1538, CLK => clk, R => n451, S => 
                           n186, Q => reg_11_9_port);
   reg_reg_11_8_inst : DFFSR port map( D => n1546, CLK => clk, R => n451, S => 
                           n185, Q => reg_11_8_port);
   reg_reg_11_7_inst : DFFSR port map( D => n1554, CLK => clk, R => n451, S => 
                           n184, Q => reg_11_7_port);
   reg_reg_11_6_inst : DFFSR port map( D => n1562, CLK => clk, R => n451, S => 
                           n183, Q => reg_11_6_port);
   reg_reg_11_5_inst : DFFSR port map( D => n1570, CLK => clk, R => n451, S => 
                           n182, Q => reg_11_5_port);
   reg_reg_11_4_inst : DFFSR port map( D => n1578, CLK => clk, R => n451, S => 
                           n181, Q => reg_11_4_port);
   reg_reg_11_3_inst : DFFSR port map( D => n1586, CLK => clk, R => n450, S => 
                           n180, Q => reg_11_3_port);
   reg_reg_11_2_inst : DFFSR port map( D => n1594, CLK => clk, R => n450, S => 
                           n179, Q => reg_11_2_port);
   reg_reg_11_1_inst : DFFSR port map( D => n1603, CLK => clk, R => n450, S => 
                           n178, Q => reg_11_1_port);
   reg_reg_11_0_inst : DFFSR port map( D => n1612, CLK => clk, R => n450, S => 
                           n177, Q => reg_11_0_port);
   reg_reg_10_15_inst : DFFSR port map( D => n1489, CLK => clk, R => n450, S =>
                           n176, Q => reg_10_15_port);
   reg_reg_10_14_inst : DFFSR port map( D => n1497, CLK => clk, R => n450, S =>
                           n175, Q => reg_10_14_port);
   reg_reg_10_13_inst : DFFSR port map( D => n1505, CLK => clk, R => n450, S =>
                           n174, Q => reg_10_13_port);
   reg_reg_10_12_inst : DFFSR port map( D => n1513, CLK => clk, R => n450, S =>
                           n173, Q => reg_10_12_port);
   reg_reg_10_11_inst : DFFSR port map( D => n1521, CLK => clk, R => n450, S =>
                           n172, Q => reg_10_11_port);
   reg_reg_10_10_inst : DFFSR port map( D => n1529, CLK => clk, R => n450, S =>
                           n171, Q => reg_10_10_port);
   reg_reg_10_9_inst : DFFSR port map( D => n1537, CLK => clk, R => n450, S => 
                           n170, Q => reg_10_9_port);
   reg_reg_10_8_inst : DFFSR port map( D => n1545, CLK => clk, R => n450, S => 
                           n169, Q => reg_10_8_port);
   reg_reg_10_7_inst : DFFSR port map( D => n1553, CLK => clk, R => n449, S => 
                           n168, Q => reg_10_7_port);
   reg_reg_10_6_inst : DFFSR port map( D => n1561, CLK => clk, R => n449, S => 
                           n167, Q => reg_10_6_port);
   reg_reg_10_5_inst : DFFSR port map( D => n1569, CLK => clk, R => n449, S => 
                           n166, Q => reg_10_5_port);
   reg_reg_10_4_inst : DFFSR port map( D => n1577, CLK => clk, R => n449, S => 
                           n165, Q => reg_10_4_port);
   reg_reg_10_3_inst : DFFSR port map( D => n1585, CLK => clk, R => n449, S => 
                           n164, Q => reg_10_3_port);
   reg_reg_10_2_inst : DFFSR port map( D => n1593, CLK => clk, R => n449, S => 
                           n163, Q => reg_10_2_port);
   reg_reg_10_1_inst : DFFSR port map( D => n1602, CLK => clk, R => n449, S => 
                           n162, Q => reg_10_1_port);
   reg_reg_10_0_inst : DFFSR port map( D => n1611, CLK => clk, R => n449, S => 
                           n161, Q => reg_10_0_port);
   reg_reg_9_15_inst : DFFSR port map( D => n1488, CLK => clk, R => n449, S => 
                           n160, Q => reg_9_15_port);
   reg_reg_9_14_inst : DFFSR port map( D => n1496, CLK => clk, R => n449, S => 
                           n159, Q => reg_9_14_port);
   reg_reg_9_13_inst : DFFSR port map( D => n1504, CLK => clk, R => n449, S => 
                           n158, Q => reg_9_13_port);
   reg_reg_9_12_inst : DFFSR port map( D => n1512, CLK => clk, R => n449, S => 
                           n157, Q => reg_9_12_port);
   reg_reg_9_11_inst : DFFSR port map( D => n1520, CLK => clk, R => n448, S => 
                           n156, Q => reg_9_11_port);
   reg_reg_9_10_inst : DFFSR port map( D => n1528, CLK => clk, R => n448, S => 
                           n155, Q => reg_9_10_port);
   reg_reg_9_9_inst : DFFSR port map( D => n1536, CLK => clk, R => n448, S => 
                           n154, Q => reg_9_9_port);
   reg_reg_9_8_inst : DFFSR port map( D => n1544, CLK => clk, R => n448, S => 
                           n153, Q => reg_9_8_port);
   reg_reg_9_7_inst : DFFSR port map( D => n1552, CLK => clk, R => n448, S => 
                           n152, Q => reg_9_7_port);
   reg_reg_9_6_inst : DFFSR port map( D => n1560, CLK => clk, R => n448, S => 
                           n151, Q => reg_9_6_port);
   reg_reg_9_5_inst : DFFSR port map( D => n1568, CLK => clk, R => n448, S => 
                           n150, Q => reg_9_5_port);
   reg_reg_9_4_inst : DFFSR port map( D => n1576, CLK => clk, R => n448, S => 
                           n149, Q => reg_9_4_port);
   reg_reg_9_3_inst : DFFSR port map( D => n1584, CLK => clk, R => n448, S => 
                           n148, Q => reg_9_3_port);
   reg_reg_9_2_inst : DFFSR port map( D => n1592, CLK => clk, R => n448, S => 
                           n147, Q => reg_9_2_port);
   reg_reg_9_1_inst : DFFSR port map( D => n1601, CLK => clk, R => n448, S => 
                           n146, Q => reg_9_1_port);
   reg_reg_9_0_inst : DFFSR port map( D => n1610, CLK => clk, R => n448, S => 
                           n145, Q => reg_9_0_port);
   reg_reg_8_15_inst : DFFSR port map( D => n1487, CLK => clk, R => n447, S => 
                           n144, Q => reg_8_15_port);
   reg_reg_8_14_inst : DFFSR port map( D => n1495, CLK => clk, R => n447, S => 
                           n143, Q => reg_8_14_port);
   reg_reg_8_13_inst : DFFSR port map( D => n1503, CLK => clk, R => n447, S => 
                           n142, Q => reg_8_13_port);
   reg_reg_8_12_inst : DFFSR port map( D => n1511, CLK => clk, R => n447, S => 
                           n141, Q => reg_8_12_port);
   reg_reg_8_11_inst : DFFSR port map( D => n1519, CLK => clk, R => n447, S => 
                           n140, Q => reg_8_11_port);
   reg_reg_8_10_inst : DFFSR port map( D => n1527, CLK => clk, R => n447, S => 
                           n139, Q => reg_8_10_port);
   reg_reg_8_9_inst : DFFSR port map( D => n1535, CLK => clk, R => n447, S => 
                           n138, Q => reg_8_9_port);
   reg_reg_8_8_inst : DFFSR port map( D => n1543, CLK => clk, R => n447, S => 
                           n137, Q => reg_8_8_port);
   reg_reg_8_7_inst : DFFSR port map( D => n1551, CLK => clk, R => n447, S => 
                           n136, Q => reg_8_7_port);
   reg_reg_8_6_inst : DFFSR port map( D => n1559, CLK => clk, R => n447, S => 
                           n135, Q => reg_8_6_port);
   reg_reg_8_5_inst : DFFSR port map( D => n1567, CLK => clk, R => n447, S => 
                           n134, Q => reg_8_5_port);
   reg_reg_8_4_inst : DFFSR port map( D => n1575, CLK => clk, R => n447, S => 
                           n133, Q => reg_8_4_port);
   reg_reg_8_3_inst : DFFSR port map( D => n1583, CLK => clk, R => n446, S => 
                           n132, Q => reg_8_3_port);
   reg_reg_8_2_inst : DFFSR port map( D => n1591, CLK => clk, R => n446, S => 
                           n131, Q => reg_8_2_port);
   reg_reg_8_1_inst : DFFSR port map( D => n1600, CLK => clk, R => n446, S => 
                           n130, Q => reg_8_1_port);
   reg_reg_8_0_inst : DFFSR port map( D => n1609, CLK => clk, R => n446, S => 
                           n129, Q => reg_8_0_port);
   reg_reg_7_15_inst : DFFSR port map( D => n1486, CLK => clk, R => n446, S => 
                           n128, Q => reg_7_15_port);
   reg_reg_7_14_inst : DFFSR port map( D => n1494, CLK => clk, R => n446, S => 
                           n127, Q => reg_7_14_port);
   reg_reg_7_13_inst : DFFSR port map( D => n1502, CLK => clk, R => n446, S => 
                           n126, Q => reg_7_13_port);
   reg_reg_7_12_inst : DFFSR port map( D => n1510, CLK => clk, R => n446, S => 
                           n125, Q => reg_7_12_port);
   reg_reg_7_11_inst : DFFSR port map( D => n1518, CLK => clk, R => n446, S => 
                           n124, Q => reg_7_11_port);
   reg_reg_7_10_inst : DFFSR port map( D => n1526, CLK => clk, R => n446, S => 
                           n123, Q => reg_7_10_port);
   reg_reg_7_9_inst : DFFSR port map( D => n1534, CLK => clk, R => n446, S => 
                           n122, Q => reg_7_9_port);
   reg_reg_7_8_inst : DFFSR port map( D => n1542, CLK => clk, R => n446, S => 
                           n121, Q => reg_7_8_port);
   reg_reg_7_7_inst : DFFSR port map( D => n1550, CLK => clk, R => n445, S => 
                           n120, Q => reg_7_7_port);
   reg_reg_7_6_inst : DFFSR port map( D => n1558, CLK => clk, R => n445, S => 
                           n119, Q => reg_7_6_port);
   reg_reg_7_5_inst : DFFSR port map( D => n1566, CLK => clk, R => n445, S => 
                           n118, Q => reg_7_5_port);
   reg_reg_7_4_inst : DFFSR port map( D => n1574, CLK => clk, R => n445, S => 
                           n117, Q => reg_7_4_port);
   reg_reg_7_3_inst : DFFSR port map( D => n1582, CLK => clk, R => n445, S => 
                           n116, Q => reg_7_3_port);
   reg_reg_7_2_inst : DFFSR port map( D => n1590, CLK => clk, R => n445, S => 
                           n115, Q => reg_7_2_port);
   reg_reg_7_1_inst : DFFSR port map( D => n1599, CLK => clk, R => n445, S => 
                           n114, Q => reg_7_1_port);
   reg_reg_7_0_inst : DFFSR port map( D => n1608, CLK => clk, R => n445, S => 
                           n113, Q => reg_7_0_port);
   reg_reg_6_15_inst : DFFSR port map( D => n1485, CLK => clk, R => n445, S => 
                           n112, Q => reg_6_15_port);
   reg_reg_6_14_inst : DFFSR port map( D => n1493, CLK => clk, R => n445, S => 
                           n111, Q => reg_6_14_port);
   reg_reg_6_13_inst : DFFSR port map( D => n1501, CLK => clk, R => n445, S => 
                           n110, Q => reg_6_13_port);
   reg_reg_6_12_inst : DFFSR port map( D => n1509, CLK => clk, R => n445, S => 
                           n109, Q => reg_6_12_port);
   reg_reg_6_11_inst : DFFSR port map( D => n1517, CLK => clk, R => n444, S => 
                           n108, Q => reg_6_11_port);
   reg_reg_6_10_inst : DFFSR port map( D => n1525, CLK => clk, R => n444, S => 
                           n107, Q => reg_6_10_port);
   reg_reg_6_9_inst : DFFSR port map( D => n1533, CLK => clk, R => n444, S => 
                           n106, Q => reg_6_9_port);
   reg_reg_6_8_inst : DFFSR port map( D => n1541, CLK => clk, R => n444, S => 
                           n105, Q => reg_6_8_port);
   reg_reg_6_7_inst : DFFSR port map( D => n1549, CLK => clk, R => n444, S => 
                           n104, Q => reg_6_7_port);
   reg_reg_6_6_inst : DFFSR port map( D => n1557, CLK => clk, R => n444, S => 
                           n103, Q => reg_6_6_port);
   reg_reg_6_5_inst : DFFSR port map( D => n1565, CLK => clk, R => n444, S => 
                           n102, Q => reg_6_5_port);
   reg_reg_6_4_inst : DFFSR port map( D => n1573, CLK => clk, R => n444, S => 
                           n101, Q => reg_6_4_port);
   reg_reg_6_3_inst : DFFSR port map( D => n1581, CLK => clk, R => n444, S => 
                           n100, Q => reg_6_3_port);
   reg_reg_6_2_inst : DFFSR port map( D => n1589, CLK => clk, R => n444, S => 
                           n99, Q => reg_6_2_port);
   reg_reg_6_1_inst : DFFSR port map( D => n1598, CLK => clk, R => n444, S => 
                           n98, Q => reg_6_1_port);
   reg_reg_6_0_inst : DFFSR port map( D => n1607, CLK => clk, R => n444, S => 
                           n97, Q => reg_6_0_port);
   reg_reg_5_15_inst : DFFSR port map( D => n1484, CLK => clk, R => n443, S => 
                           n96, Q => reg_5_15_port);
   reg_reg_5_14_inst : DFFSR port map( D => n1492, CLK => clk, R => n443, S => 
                           n95, Q => reg_5_14_port);
   reg_reg_5_13_inst : DFFSR port map( D => n1500, CLK => clk, R => n443, S => 
                           n94, Q => reg_5_13_port);
   reg_reg_5_12_inst : DFFSR port map( D => n1508, CLK => clk, R => n443, S => 
                           n93, Q => reg_5_12_port);
   reg_reg_5_11_inst : DFFSR port map( D => n1516, CLK => clk, R => n443, S => 
                           n92, Q => reg_5_11_port);
   reg_reg_5_10_inst : DFFSR port map( D => n1524, CLK => clk, R => n443, S => 
                           n91, Q => reg_5_10_port);
   reg_reg_5_9_inst : DFFSR port map( D => n1532, CLK => clk, R => n443, S => 
                           n90, Q => reg_5_9_port);
   reg_reg_5_8_inst : DFFSR port map( D => n1540, CLK => clk, R => n443, S => 
                           n89, Q => reg_5_8_port);
   reg_reg_5_7_inst : DFFSR port map( D => n1548, CLK => clk, R => n443, S => 
                           n88, Q => reg_5_7_port);
   reg_reg_5_6_inst : DFFSR port map( D => n1556, CLK => clk, R => n443, S => 
                           n87, Q => reg_5_6_port);
   reg_reg_5_5_inst : DFFSR port map( D => n1564, CLK => clk, R => n443, S => 
                           n86, Q => reg_5_5_port);
   reg_reg_5_4_inst : DFFSR port map( D => n1572, CLK => clk, R => n443, S => 
                           n85, Q => reg_5_4_port);
   reg_reg_5_3_inst : DFFSR port map( D => n1580, CLK => clk, R => n442, S => 
                           n84, Q => reg_5_3_port);
   reg_reg_5_2_inst : DFFSR port map( D => n1588, CLK => clk, R => n442, S => 
                           n83, Q => reg_5_2_port);
   reg_reg_5_1_inst : DFFSR port map( D => n1597, CLK => clk, R => n442, S => 
                           n82, Q => reg_5_1_port);
   reg_reg_5_0_inst : DFFSR port map( D => n1606, CLK => clk, R => n442, S => 
                           n81, Q => reg_5_0_port);
   reg_reg_4_15_inst : DFFSR port map( D => n1483, CLK => clk, R => n442, S => 
                           n80, Q => reg_4_15_port);
   reg_reg_4_14_inst : DFFSR port map( D => n1491, CLK => clk, R => n442, S => 
                           n79, Q => reg_4_14_port);
   reg_reg_4_13_inst : DFFSR port map( D => n1499, CLK => clk, R => n442, S => 
                           n78, Q => reg_4_13_port);
   reg_reg_4_12_inst : DFFSR port map( D => n1507, CLK => clk, R => n442, S => 
                           n77, Q => reg_4_12_port);
   reg_reg_4_11_inst : DFFSR port map( D => n1515, CLK => clk, R => n442, S => 
                           n76, Q => reg_4_11_port);
   reg_reg_4_10_inst : DFFSR port map( D => n1523, CLK => clk, R => n442, S => 
                           n75, Q => reg_4_10_port);
   reg_reg_4_9_inst : DFFSR port map( D => n1531, CLK => clk, R => n442, S => 
                           n74, Q => reg_4_9_port);
   reg_reg_4_8_inst : DFFSR port map( D => n1539, CLK => clk, R => n442, S => 
                           n73, Q => reg_4_8_port);
   reg_reg_4_7_inst : DFFSR port map( D => n1547, CLK => clk, R => n441, S => 
                           n72, Q => reg_4_7_port);
   reg_reg_4_6_inst : DFFSR port map( D => n1555, CLK => clk, R => n441, S => 
                           n71, Q => reg_4_6_port);
   reg_reg_4_5_inst : DFFSR port map( D => n1563, CLK => clk, R => n441, S => 
                           n70, Q => reg_4_5_port);
   reg_reg_4_4_inst : DFFSR port map( D => n1571, CLK => clk, R => n441, S => 
                           n69, Q => reg_4_4_port);
   reg_reg_4_3_inst : DFFSR port map( D => n1579, CLK => clk, R => n441, S => 
                           n68, Q => reg_4_3_port);
   reg_reg_4_2_inst : DFFSR port map( D => n1587, CLK => clk, R => n441, S => 
                           n67, Q => reg_4_2_port);
   reg_reg_4_1_inst : DFFSR port map( D => n1596, CLK => clk, R => n441, S => 
                           n66, Q => reg_4_1_port);
   reg_reg_4_0_inst : DFFSR port map( D => n1605, CLK => clk, R => n441, S => 
                           n65, Q => reg_4_0_port);
   reg_reg_3_15_inst : DFFSR port map( D => n1203, CLK => clk, R => n441, S => 
                           n64, Q => reg_3_15_port);
   reg_reg_3_14_inst : DFFSR port map( D => n1202, CLK => clk, R => n441, S => 
                           n63, Q => reg_3_14_port);
   reg_reg_3_13_inst : DFFSR port map( D => n1201, CLK => clk, R => n441, S => 
                           n62, Q => reg_3_13_port);
   reg_reg_3_12_inst : DFFSR port map( D => n1200, CLK => clk, R => n441, S => 
                           n61, Q => reg_3_12_port);
   reg_reg_3_11_inst : DFFSR port map( D => n1199, CLK => clk, R => n440, S => 
                           n60, Q => reg_3_11_port);
   reg_reg_3_10_inst : DFFSR port map( D => n1198, CLK => clk, R => n440, S => 
                           n59, Q => reg_3_10_port);
   reg_reg_3_9_inst : DFFSR port map( D => n1197, CLK => clk, R => n440, S => 
                           n58, Q => reg_3_9_port);
   reg_reg_3_8_inst : DFFSR port map( D => n1196, CLK => clk, R => n440, S => 
                           n57, Q => reg_3_8_port);
   reg_reg_3_7_inst : DFFSR port map( D => n1195, CLK => clk, R => n440, S => 
                           n56, Q => reg_3_7_port);
   reg_reg_3_6_inst : DFFSR port map( D => n1194, CLK => clk, R => n440, S => 
                           n55, Q => reg_3_6_port);
   reg_reg_3_5_inst : DFFSR port map( D => n1193, CLK => clk, R => n440, S => 
                           n54, Q => reg_3_5_port);
   reg_reg_3_4_inst : DFFSR port map( D => n1192, CLK => clk, R => n440, S => 
                           n53, Q => reg_3_4_port);
   reg_reg_3_3_inst : DFFSR port map( D => n1191, CLK => clk, R => n440, S => 
                           n52, Q => reg_3_3_port);
   reg_reg_3_2_inst : DFFSR port map( D => n1190, CLK => clk, R => n440, S => 
                           n51, Q => reg_3_2_port);
   reg_reg_3_1_inst : DFFSR port map( D => n1189, CLK => clk, R => n440, S => 
                           n50, Q => reg_3_1_port);
   reg_reg_3_0_inst : DFFSR port map( D => n1188, CLK => clk, R => n440, S => 
                           n49, Q => reg_3_0_port);
   reg_reg_2_15_inst : DFFSR port map( D => n1187, CLK => clk, R => n439, S => 
                           n48, Q => reg_2_15_port);
   reg_reg_2_14_inst : DFFSR port map( D => n1186, CLK => clk, R => n439, S => 
                           n47, Q => reg_2_14_port);
   reg_reg_2_13_inst : DFFSR port map( D => n1185, CLK => clk, R => n439, S => 
                           n46, Q => reg_2_13_port);
   reg_reg_2_12_inst : DFFSR port map( D => n1184, CLK => clk, R => n439, S => 
                           n45, Q => reg_2_12_port);
   reg_reg_2_11_inst : DFFSR port map( D => n1183, CLK => clk, R => n439, S => 
                           n44, Q => reg_2_11_port);
   reg_reg_2_10_inst : DFFSR port map( D => n1182, CLK => clk, R => n439, S => 
                           n43, Q => reg_2_10_port);
   reg_reg_2_9_inst : DFFSR port map( D => n1181, CLK => clk, R => n439, S => 
                           n42, Q => reg_2_9_port);
   reg_reg_2_8_inst : DFFSR port map( D => n1180, CLK => clk, R => n439, S => 
                           n41, Q => reg_2_8_port);
   reg_reg_2_7_inst : DFFSR port map( D => n1179, CLK => clk, R => n439, S => 
                           n40, Q => reg_2_7_port);
   reg_reg_2_6_inst : DFFSR port map( D => n1178, CLK => clk, R => n439, S => 
                           n39, Q => reg_2_6_port);
   reg_reg_2_5_inst : DFFSR port map( D => n1177, CLK => clk, R => n439, S => 
                           n38, Q => reg_2_5_port);
   reg_reg_2_4_inst : DFFSR port map( D => n1176, CLK => clk, R => n439, S => 
                           n37, Q => reg_2_4_port);
   reg_reg_2_3_inst : DFFSR port map( D => n1175, CLK => clk, R => n438, S => 
                           n36, Q => reg_2_3_port);
   reg_reg_2_2_inst : DFFSR port map( D => n1174, CLK => clk, R => n438, S => 
                           n35, Q => reg_2_2_port);
   reg_reg_2_1_inst : DFFSR port map( D => n1173, CLK => clk, R => n438, S => 
                           n34, Q => reg_2_1_port);
   reg_reg_2_0_inst : DFFSR port map( D => n1172, CLK => clk, R => n438, S => 
                           n33, Q => reg_2_0_port);
   reg_reg_1_15_inst : DFFSR port map( D => n1171, CLK => clk, R => n438, S => 
                           n32, Q => reg_1_15_port);
   reg_reg_1_14_inst : DFFSR port map( D => n1170, CLK => clk, R => n438, S => 
                           n31, Q => reg_1_14_port);
   reg_reg_1_13_inst : DFFSR port map( D => n1169, CLK => clk, R => n438, S => 
                           n30, Q => reg_1_13_port);
   reg_reg_1_12_inst : DFFSR port map( D => n1168, CLK => clk, R => n438, S => 
                           n29, Q => reg_1_12_port);
   reg_reg_1_11_inst : DFFSR port map( D => n1167, CLK => clk, R => n438, S => 
                           n28, Q => reg_1_11_port);
   reg_reg_1_10_inst : DFFSR port map( D => n1166, CLK => clk, R => n438, S => 
                           n27, Q => reg_1_10_port);
   reg_reg_1_9_inst : DFFSR port map( D => n1165, CLK => clk, R => n438, S => 
                           n26, Q => reg_1_9_port);
   reg_reg_1_8_inst : DFFSR port map( D => n1164, CLK => clk, R => n438, S => 
                           n25, Q => reg_1_8_port);
   reg_reg_1_7_inst : DFFSR port map( D => n1163, CLK => clk, R => n437, S => 
                           n24, Q => reg_1_7_port);
   reg_reg_1_6_inst : DFFSR port map( D => n1162, CLK => clk, R => n437, S => 
                           n23, Q => reg_1_6_port);
   reg_reg_1_5_inst : DFFSR port map( D => n1161, CLK => clk, R => n437, S => 
                           n22, Q => reg_1_5_port);
   reg_reg_1_4_inst : DFFSR port map( D => n1160, CLK => clk, R => n437, S => 
                           n21, Q => reg_1_4_port);
   reg_reg_1_3_inst : DFFSR port map( D => n1159, CLK => clk, R => n437, S => 
                           n20, Q => reg_1_3_port);
   reg_reg_1_2_inst : DFFSR port map( D => n1158, CLK => clk, R => n437, S => 
                           n19, Q => reg_1_2_port);
   reg_reg_1_1_inst : DFFSR port map( D => n1157, CLK => clk, R => n437, S => 
                           n18, Q => reg_1_1_port);
   reg_reg_1_0_inst : DFFSR port map( D => n1156, CLK => clk, R => n437, S => 
                           n17, Q => reg_1_0_port);
   reg_reg_0_15_inst : DFFSR port map( D => n1155, CLK => clk, R => n437, S => 
                           n16, Q => reg0_15_port);
   reg_reg_0_14_inst : DFFSR port map( D => n1154, CLK => clk, R => n437, S => 
                           n15, Q => reg0_14_port);
   reg_reg_0_13_inst : DFFSR port map( D => n1153, CLK => clk, R => n437, S => 
                           n14, Q => reg0_13_port);
   reg_reg_0_12_inst : DFFSR port map( D => n1152, CLK => clk, R => n437, S => 
                           n13, Q => reg0_12_port);
   reg_reg_0_11_inst : DFFSR port map( D => n1151, CLK => clk, R => n436, S => 
                           n12, Q => reg0_11_port);
   reg_reg_0_10_inst : DFFSR port map( D => n1150, CLK => clk, R => n436, S => 
                           n11, Q => reg0_10_port);
   reg_reg_0_9_inst : DFFSR port map( D => n1149, CLK => clk, R => n436, S => 
                           n10, Q => reg0_9_port);
   reg_reg_0_8_inst : DFFSR port map( D => n1148, CLK => clk, R => n436, S => 
                           n9, Q => reg0_8_port);
   reg_reg_0_7_inst : DFFSR port map( D => n1147, CLK => clk, R => n436, S => 
                           n8, Q => reg0_7_port);
   reg_reg_0_6_inst : DFFSR port map( D => n1146, CLK => clk, R => n436, S => 
                           n7, Q => reg0_6_port);
   reg_reg_0_5_inst : DFFSR port map( D => n1145, CLK => clk, R => n436, S => 
                           n6, Q => reg0_5_port);
   reg_reg_0_4_inst : DFFSR port map( D => n1144, CLK => clk, R => n436, S => 
                           n5, Q => reg0_4_port);
   reg_reg_0_3_inst : DFFSR port map( D => n1143, CLK => clk, R => n436, S => 
                           n4, Q => reg0_3_port);
   reg_reg_0_2_inst : DFFSR port map( D => n1142, CLK => clk, R => n436, S => 
                           n3, Q => reg0_2_port);
   reg_reg_0_1_inst : DFFSR port map( D => n1141, CLK => clk, R => n436, S => 
                           n2, Q => reg0_1_port);
   reg_reg_0_0_inst : DFFSR port map( D => n1140, CLK => clk, R => n436, S => 
                           n1, Q => reg0_0_port);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   n5 <= '1';
   n6 <= '1';
   n7 <= '1';
   n8 <= '1';
   n9 <= '1';
   n10 <= '1';
   n11 <= '1';
   n12 <= '1';
   n13 <= '1';
   n14 <= '1';
   n15 <= '1';
   n16 <= '1';
   n17 <= '1';
   n18 <= '1';
   n19 <= '1';
   n20 <= '1';
   n21 <= '1';
   n22 <= '1';
   n23 <= '1';
   n24 <= '1';
   n25 <= '1';
   n26 <= '1';
   n27 <= '1';
   n28 <= '1';
   n29 <= '1';
   n30 <= '1';
   n31 <= '1';
   n32 <= '1';
   n33 <= '1';
   n34 <= '1';
   n35 <= '1';
   n36 <= '1';
   n37 <= '1';
   n38 <= '1';
   n39 <= '1';
   n40 <= '1';
   n41 <= '1';
   n42 <= '1';
   n43 <= '1';
   n44 <= '1';
   n45 <= '1';
   n46 <= '1';
   n47 <= '1';
   n48 <= '1';
   n49 <= '1';
   n50 <= '1';
   n51 <= '1';
   n52 <= '1';
   n53 <= '1';
   n54 <= '1';
   n55 <= '1';
   n56 <= '1';
   n57 <= '1';
   n58 <= '1';
   n59 <= '1';
   n60 <= '1';
   n61 <= '1';
   n62 <= '1';
   n63 <= '1';
   n64 <= '1';
   n65 <= '1';
   n66 <= '1';
   n67 <= '1';
   n68 <= '1';
   n69 <= '1';
   n70 <= '1';
   n71 <= '1';
   n72 <= '1';
   n73 <= '1';
   n74 <= '1';
   n75 <= '1';
   n76 <= '1';
   n77 <= '1';
   n78 <= '1';
   n79 <= '1';
   n80 <= '1';
   n81 <= '1';
   n82 <= '1';
   n83 <= '1';
   n84 <= '1';
   n85 <= '1';
   n86 <= '1';
   n87 <= '1';
   n88 <= '1';
   n89 <= '1';
   n90 <= '1';
   n91 <= '1';
   n92 <= '1';
   n93 <= '1';
   n94 <= '1';
   n95 <= '1';
   n96 <= '1';
   n97 <= '1';
   n98 <= '1';
   n99 <= '1';
   n100 <= '1';
   n101 <= '1';
   n102 <= '1';
   n103 <= '1';
   n104 <= '1';
   n105 <= '1';
   n106 <= '1';
   n107 <= '1';
   n108 <= '1';
   n109 <= '1';
   n110 <= '1';
   n111 <= '1';
   n112 <= '1';
   n113 <= '1';
   n114 <= '1';
   n115 <= '1';
   n116 <= '1';
   n117 <= '1';
   n118 <= '1';
   n119 <= '1';
   n120 <= '1';
   n121 <= '1';
   n122 <= '1';
   n123 <= '1';
   n124 <= '1';
   n125 <= '1';
   n126 <= '1';
   n127 <= '1';
   n128 <= '1';
   n129 <= '1';
   n130 <= '1';
   n131 <= '1';
   n132 <= '1';
   n133 <= '1';
   n134 <= '1';
   n135 <= '1';
   n136 <= '1';
   n137 <= '1';
   n138 <= '1';
   n139 <= '1';
   n140 <= '1';
   n141 <= '1';
   n142 <= '1';
   n143 <= '1';
   n144 <= '1';
   n145 <= '1';
   n146 <= '1';
   n147 <= '1';
   n148 <= '1';
   n149 <= '1';
   n150 <= '1';
   n151 <= '1';
   n152 <= '1';
   n153 <= '1';
   n154 <= '1';
   n155 <= '1';
   n156 <= '1';
   n157 <= '1';
   n158 <= '1';
   n159 <= '1';
   n160 <= '1';
   n161 <= '1';
   n162 <= '1';
   n163 <= '1';
   n164 <= '1';
   n165 <= '1';
   n166 <= '1';
   n167 <= '1';
   n168 <= '1';
   n169 <= '1';
   n170 <= '1';
   n171 <= '1';
   n172 <= '1';
   n173 <= '1';
   n174 <= '1';
   n175 <= '1';
   n176 <= '1';
   n177 <= '1';
   n178 <= '1';
   n179 <= '1';
   n180 <= '1';
   n181 <= '1';
   n182 <= '1';
   n183 <= '1';
   n184 <= '1';
   n185 <= '1';
   n186 <= '1';
   n187 <= '1';
   n188 <= '1';
   n189 <= '1';
   n190 <= '1';
   n191 <= '1';
   n192 <= '1';
   n193 <= '1';
   n194 <= '1';
   n195 <= '1';
   n196 <= '1';
   n197 <= '1';
   n198 <= '1';
   n199 <= '1';
   n200 <= '1';
   n201 <= '1';
   n202 <= '1';
   n203 <= '1';
   n204 <= '1';
   n205 <= '1';
   n206 <= '1';
   n207 <= '1';
   n208 <= '1';
   n209 <= '1';
   n210 <= '1';
   n211 <= '1';
   n212 <= '1';
   n213 <= '1';
   n214 <= '1';
   n215 <= '1';
   n216 <= '1';
   n217 <= '1';
   n218 <= '1';
   n219 <= '1';
   n220 <= '1';
   n221 <= '1';
   n222 <= '1';
   n223 <= '1';
   n224 <= '1';
   n225 <= '1';
   n226 <= '1';
   n227 <= '1';
   n228 <= '1';
   n229 <= '1';
   n230 <= '1';
   n231 <= '1';
   n232 <= '1';
   n233 <= '1';
   n234 <= '1';
   n235 <= '1';
   n236 <= '1';
   n237 <= '1';
   n238 <= '1';
   n239 <= '1';
   n240 <= '1';
   n241 <= '1';
   n242 <= '1';
   n243 <= '1';
   n244 <= '1';
   n245 <= '1';
   n246 <= '1';
   n247 <= '1';
   n248 <= '1';
   n249 <= '1';
   n250 <= '1';
   n251 <= '1';
   n252 <= '1';
   n253 <= '1';
   n254 <= '1';
   n255 <= '1';
   n256 <= '1';
   U267 : OR2X2 port map( A => n678, B => n679, Y => rdata2(15));
   U268 : OR2X2 port map( A => n690, B => n691, Y => rdata2(14));
   U293 : OR2X2 port map( A => n894, B => n895, Y => rdata1(15));
   U294 : OR2X2 port map( A => n906, B => n907, Y => rdata1(14));
   U316 : AND2X2 port map( A => wsel(3), B => wen, Y => n1138);
   U1094 : AOI22X1 port map( A => wdata(0), B => n1475, C => n995, D => 
                           reg_4_0_port, Y => n994);
   U1095 : AOI22X1 port map( A => wdata(1), B => n1475, C => n995, D => 
                           reg_4_1_port, Y => n996);
   U1096 : AOI22X1 port map( A => n396, B => n1475, C => n995, D => 
                           reg_4_2_port, Y => n997);
   U1111 : AOI22X1 port map( A => wdata(0), B => n1476, C => n1013, D => 
                           reg_5_0_port, Y => n1012);
   U1112 : AOI22X1 port map( A => wdata(1), B => n1476, C => n1013, D => 
                           reg_5_1_port, Y => n1014);
   U1113 : AOI22X1 port map( A => n397, B => n1476, C => n1013, D => 
                           reg_5_2_port, Y => n1015);
   U1128 : AOI22X1 port map( A => wdata(0), B => n1477, C => n1030, D => 
                           reg_6_0_port, Y => n1029);
   U1129 : AOI22X1 port map( A => wdata(1), B => n1477, C => n1030, D => 
                           reg_6_1_port, Y => n1031);
   U1130 : AOI22X1 port map( A => n396, B => n1477, C => n1030, D => 
                           reg_6_2_port, Y => n1032);
   U1145 : AOI22X1 port map( A => wdata(0), B => n1478, C => n1049, D => 
                           reg_7_0_port, Y => n1048);
   U1146 : AOI22X1 port map( A => wdata(1), B => n1478, C => n1049, D => 
                           reg_7_1_port, Y => n1050);
   U1147 : AOI22X1 port map( A => n397, B => n1478, C => n1049, D => 
                           reg_7_2_port, Y => n1051);
   U1162 : NOR2X1 port map( A => n1613, B => wsel(3), Y => n1047);
   U1163 : AOI22X1 port map( A => wdata(0), B => n1479, C => n1066, D => 
                           reg_8_0_port, Y => n1065);
   U1164 : AOI22X1 port map( A => wdata(1), B => n1479, C => n1066, D => 
                           reg_8_1_port, Y => n1067);
   U1165 : AOI22X1 port map( A => n396, B => n1479, C => n1066, D => 
                           reg_8_2_port, Y => n1068);
   U1180 : AOI22X1 port map( A => wdata(0), B => n1480, C => n1084, D => 
                           reg_9_0_port, Y => n1083);
   U1181 : AOI22X1 port map( A => wdata(1), B => n1480, C => n1084, D => 
                           reg_9_1_port, Y => n1085);
   U1182 : AOI22X1 port map( A => n397, B => n1480, C => n1084, D => 
                           reg_9_2_port, Y => n1086);
   U1198 : AOI22X1 port map( A => wdata(0), B => n1481, C => n1102, D => 
                           reg_10_0_port, Y => n1101);
   U1199 : AOI22X1 port map( A => wdata(1), B => n1481, C => n1102, D => 
                           reg_10_1_port, Y => n1103);
   U1200 : AOI22X1 port map( A => n396, B => n1481, C => n1102, D => 
                           reg_10_2_port, Y => n1104);
   U1215 : AOI22X1 port map( A => wdata(0), B => n1482, C => n1119, D => 
                           reg_11_0_port, Y => n1118);
   U1216 : AOI22X1 port map( A => wdata(1), B => n1482, C => n1119, D => 
                           reg_11_1_port, Y => n1120);
   U1217 : AOI22X1 port map( A => n397, B => n1482, C => n1119, D => 
                           reg_11_2_port, Y => n1121);
   U258 : INVX2 port map( A => n289, Y => n588);
   U259 : INVX4 port map( A => n336, Y => n301);
   U260 : INVX4 port map( A => n354, Y => n311);
   U261 : INVX4 port map( A => n354, Y => n391);
   U262 : INVX4 port map( A => n1020, Y => n388);
   U263 : INVX4 port map( A => wdata(11), Y => n419);
   U264 : INVX2 port map( A => n1070, Y => n385);
   U265 : INVX2 port map( A => n1005, Y => n392);
   U266 : INVX2 port map( A => wdata(7), Y => n409);
   U269 : INVX2 port map( A => n323, Y => n644);
   U270 : AND2X1 port map( A => n385, B => reg_14_9_port, Y => n628);
   U271 : BUFX4 port map( A => n290, Y => n257);
   U272 : BUFX4 port map( A => n290, Y => n258);
   U273 : AND2X2 port map( A => n1047, B => n427, Y => n259);
   U274 : AND2X2 port map( A => n1047, B => wsel(2), Y => n260);
   U275 : AND2X2 port map( A => n1138, B => wsel(2), Y => n261);
   U276 : AND2X2 port map( A => n1138, B => n427, Y => n262);
   U277 : AND2X2 port map( A => n611, B => n612, Y => n263);
   U278 : INVX2 port map( A => rsel1(1), Y => n731);
   U279 : AND2X2 port map( A => wsel(0), B => wsel(1), Y => n264);
   U280 : AND2X2 port map( A => wsel(0), B => n988, Y => n265);
   U281 : NOR2X1 port map( A => wsel(0), B => n988, Y => n266);
   U282 : NOR2X1 port map( A => wsel(0), B => wsel(1), Y => n267);
   U283 : BUFX4 port map( A => rsel2(2), Y => n303);
   U284 : NAND2X1 port map( A => n286, B => reg_2_9_port, Y => n623);
   U285 : INVX1 port map( A => n1286, Y => n1183);
   U286 : INVX2 port map( A => n1078, Y => n697);
   U287 : INVX1 port map( A => n1354, Y => n1518);
   U288 : INVX1 port map( A => n1406, Y => n1522);
   U289 : INVX1 port map( A => n1393, Y => n1521);
   U290 : INVX1 port map( A => n1341, Y => n1517);
   U291 : INVX1 port map( A => n1422, Y => n1215);
   U292 : INVX1 port map( A => n1380, Y => n1520);
   U295 : INVX1 port map( A => n1367, Y => n1519);
   U296 : INVX1 port map( A => n1315, Y => n1515);
   U297 : INVX1 port map( A => n1438, Y => n1231);
   U298 : INVX1 port map( A => n1270, Y => n1167);
   U299 : AND2X2 port map( A => reg_14_3_port, B => n385, Y => n528);
   U300 : INVX1 port map( A => n1328, Y => n1516);
   U301 : INVX1 port map( A => n1472, Y => n1265);
   U302 : INVX1 port map( A => n1456, Y => n1249);
   U303 : INVX1 port map( A => n1440, Y => n1233);
   U304 : INVX1 port map( A => n1424, Y => n1217);
   U305 : INVX1 port map( A => n1408, Y => n1506);
   U306 : INVX1 port map( A => n1395, Y => n1505);
   U307 : INVX1 port map( A => n1382, Y => n1504);
   U308 : INVX1 port map( A => n1369, Y => n1503);
   U309 : INVX1 port map( A => n1356, Y => n1502);
   U310 : INVX1 port map( A => n1343, Y => n1501);
   U311 : INVX1 port map( A => n1330, Y => n1500);
   U312 : INVX1 port map( A => n1317, Y => n1499);
   U313 : INVX1 port map( A => n1304, Y => n1201);
   U314 : INVX1 port map( A => n1288, Y => n1185);
   U315 : INVX1 port map( A => n1272, Y => n1169);
   U317 : INVX1 port map( A => n1127, Y => n1153);
   U318 : INVX4 port map( A => n401, Y => n402);
   U319 : INVX4 port map( A => n401, Y => n403);
   U320 : INVX4 port map( A => n409, Y => n410);
   U321 : INVX4 port map( A => n409, Y => n411);
   U322 : INVX2 port map( A => n379, Y => n687);
   U323 : INVX1 port map( A => n1466, Y => n1259);
   U324 : INVX1 port map( A => n1450, Y => n1243);
   U325 : INVX1 port map( A => n1434, Y => n1227);
   U326 : INVX1 port map( A => n1418, Y => n1211);
   U327 : INVX1 port map( A => n1402, Y => n1554);
   U328 : INVX1 port map( A => n1389, Y => n1553);
   U329 : INVX1 port map( A => n1376, Y => n1552);
   U330 : INVX1 port map( A => n1363, Y => n1551);
   U331 : INVX1 port map( A => n1350, Y => n1550);
   U332 : INVX1 port map( A => n1337, Y => n1549);
   U333 : INVX1 port map( A => n1324, Y => n1548);
   U334 : INVX1 port map( A => n1311, Y => n1547);
   U335 : INVX1 port map( A => n1298, Y => n1195);
   U336 : INVX1 port map( A => n1282, Y => n1179);
   U337 : INVX1 port map( A => n1137, Y => n1163);
   U338 : INVX1 port map( A => n1117, Y => n1147);
   U339 : INVX2 port map( A => n323, Y => n613);
   U340 : NAND3X1 port map( A => n263, B => n268, C => n618, Y => rdata2(8));
   U341 : INVX1 port map( A => n617, Y => n268);
   U342 : AOI22X1 port map( A => n701, B => reg_15_1_port, C => n613, D => 
                           reg_14_1_port, Y => n494);
   U343 : INVX2 port map( A => n1069, Y => n1072);
   U344 : AOI22X1 port map( A => n277, B => reg0_10_port, C => n1090, D => 
                           reg_1_10_port, Y => n639);
   U345 : NAND3X1 port map( A => n537, B => n538, C => n539, Y => n540);
   U346 : NOR2X1 port map( A => n548, B => n547, Y => n549);
   U347 : NAND3X1 port map( A => n553, B => n554, C => n555, Y => n556);
   U348 : BUFX2 port map( A => n311, Y => n269);
   U349 : INVX2 port map( A => n419, Y => n270);
   U350 : INVX2 port map( A => n419, Y => n271);
   U351 : BUFX4 port map( A => n353, Y => n272);
   U352 : INVX2 port map( A => n353, Y => n377);
   U353 : INVX2 port map( A => n1096, Y => n273);
   U354 : INVX1 port map( A => n1063, Y => n274);
   U355 : AND2X2 port map( A => n730, B => n325, Y => n275);
   U356 : BUFX2 port map( A => n352, Y => n375);
   U357 : BUFX4 port map( A => n352, Y => n373);
   U358 : INVX2 port map( A => n377, Y => n276);
   U359 : INVX1 port map( A => n464, Y => n277);
   U360 : INVX1 port map( A => n464, Y => n316);
   U361 : BUFX4 port map( A => n344, Y => n278);
   U362 : BUFX2 port map( A => n697, Y => n370);
   U363 : INVX1 port map( A => n1021, Y => n279);
   U364 : INVX2 port map( A => n279, Y => n280);
   U365 : INVX1 port map( A => n367, Y => n281);
   U366 : INVX2 port map( A => n281, Y => n282);
   U367 : INVX4 port map( A => n1064, Y => n283);
   U368 : INVX4 port map( A => n1064, Y => n284);
   U369 : INVX2 port map( A => n1064, Y => n702);
   U370 : INVX1 port map( A => n464, Y => n315);
   U371 : INVX2 port map( A => n464, Y => n294);
   U372 : AND2X2 port map( A => n730, B => n325, Y => n285);
   U373 : INVX1 port map( A => n1092, Y => n286);
   U374 : OR2X2 port map( A => rsel1(1), B => n720, Y => n287);
   U375 : INVX1 port map( A => n348, Y => n288);
   U376 : INVX1 port map( A => n309, Y => n348);
   U377 : INVX4 port map( A => n384, Y => n289);
   U378 : INVX2 port map( A => n1092, Y => n384);
   U379 : INVX2 port map( A => n1076, Y => n290);
   U380 : INVX2 port map( A => n1076, Y => n334);
   U381 : INVX4 port map( A => n392, Y => n393);
   U382 : INVX4 port map( A => n392, Y => n394);
   U383 : INVX4 port map( A => n1063, Y => n1036);
   U384 : INVX2 port map( A => n1080, Y => n291);
   U385 : INVX2 port map( A => n1080, Y => n292);
   U386 : INVX2 port map( A => n1080, Y => n381);
   U387 : BUFX2 port map( A => n1036, Y => n293);
   U388 : AND2X2 port map( A => n730, B => n325, Y => n295);
   U389 : INVX1 port map( A => n588, Y => n296);
   U390 : INVX4 port map( A => n388, Y => n389);
   U391 : INVX4 port map( A => n388, Y => n390);
   U392 : BUFX2 port map( A => n355, Y => n297);
   U393 : INVX1 port map( A => n301, Y => n298);
   U394 : INVX2 port map( A => n967, Y => n299);
   U395 : INVX2 port map( A => n977, Y => n300);
   U396 : NAND2X1 port map( A => n470, B => n303, Y => n302);
   U397 : BUFX2 port map( A => rsel2(2), Y => n376);
   U398 : INVX4 port map( A => n377, Y => n327);
   U399 : INVX4 port map( A => n1007, Y => n977);
   U400 : INVX2 port map( A => n1069, Y => n701);
   U401 : BUFX4 port map( A => rsel1(0), Y => n308);
   U402 : INVX1 port map( A => n276, Y => n328);
   U403 : AND2X2 port map( A => n470, B => n303, Y => n304);
   U404 : INVX8 port map( A => rsel2(0), Y => n331);
   U405 : INVX4 port map( A => n342, Y => n367);
   U406 : INVX2 port map( A => rsel1(1), Y => n305);
   U407 : INVX4 port map( A => n305, Y => n306);
   U408 : INVX2 port map( A => n382, Y => n307);
   U409 : INVX2 port map( A => n1098, Y => n309);
   U410 : INVX2 port map( A => n1098, Y => n686);
   U411 : INVX1 port map( A => n463, Y => n310);
   U412 : INVX1 port map( A => n1463, Y => n1256);
   U413 : INVX1 port map( A => n1447, Y => n1240);
   U414 : INVX1 port map( A => n1431, Y => n1224);
   U415 : INVX1 port map( A => n1415, Y => n1208);
   U416 : INVX1 port map( A => n1399, Y => n1578);
   U417 : INVX4 port map( A => n314, Y => n317);
   U418 : INVX4 port map( A => n379, Y => n312);
   U419 : INVX4 port map( A => n379, Y => n313);
   U420 : AND2X2 port map( A => n383, B => n719, Y => n314);
   U421 : BUFX4 port map( A => rsel2(1), Y => n380);
   U422 : INVX1 port map( A => n1386, Y => n1577);
   U423 : INVX1 port map( A => n1373, Y => n1576);
   U424 : INVX1 port map( A => n1360, Y => n1575);
   U425 : INVX1 port map( A => n1347, Y => n1574);
   U426 : INVX1 port map( A => n1334, Y => n1573);
   U427 : INVX1 port map( A => n1321, Y => n1572);
   U428 : INVX1 port map( A => n1308, Y => n1571);
   U429 : INVX1 port map( A => n1295, Y => n1192);
   U430 : INVX1 port map( A => n1279, Y => n1176);
   U431 : INVX1 port map( A => n1134, Y => n1160);
   U432 : INVX1 port map( A => n1114, Y => n1144);
   U433 : INVX4 port map( A => n317, Y => n318);
   U434 : INVX8 port map( A => n317, Y => n319);
   U435 : INVX4 port map( A => n337, Y => n340);
   U436 : INVX1 port map( A => n343, Y => n320);
   U437 : INVX1 port map( A => n315, Y => n321);
   U438 : INVX2 port map( A => n321, Y => n322);
   U439 : INVX4 port map( A => n385, Y => n323);
   U440 : INVX4 port map( A => n356, Y => n386);
   U441 : INVX4 port map( A => n287, Y => n387);
   U442 : BUFX2 port map( A => n1090, Y => n324);
   U443 : INVX4 port map( A => n463, Y => n1090);
   U444 : INVX1 port map( A => n292, Y => n382);
   U445 : INVX4 port map( A => n308, Y => n325);
   U446 : INVX1 port map( A => n1098, Y => n326);
   U447 : INVX1 port map( A => n258, Y => n335);
   U448 : INVX2 port map( A => n1074, Y => n698);
   U449 : BUFX2 port map( A => n276, Y => n329);
   U450 : INVX4 port map( A => n341, Y => n346);
   U451 : INVX1 port map( A => n313, Y => n330);
   U452 : INVX1 port map( A => n1125, Y => n1151);
   U453 : INVX2 port map( A => n331, Y => n332);
   U454 : INVX1 port map( A => n295, Y => n333);
   U455 : INVX1 port map( A => n289, Y => n570);
   U456 : INVX1 port map( A => n289, Y => n605);
   U457 : NAND2X1 port map( A => n712, B => n325, Y => n336);
   U458 : NAND2X1 port map( A => n713, B => n383, Y => n337);
   U459 : INVX1 port map( A => n644, Y => n338);
   U460 : NAND2X1 port map( A => rsel2(3), B => n303, Y => n339);
   U461 : INVX8 port map( A => n407, Y => n408);
   U462 : INVX1 port map( A => n340, Y => n1026);
   U463 : NAND2X1 port map( A => n732, B => n383, Y => n341);
   U464 : NAND2X1 port map( A => n358, B => n369, Y => n342);
   U465 : INVX2 port map( A => n1074, Y => n343);
   U466 : INVX1 port map( A => n1078, Y => n344);
   U467 : INVX1 port map( A => n371, Y => n345);
   U468 : INVX1 port map( A => n346, Y => n1010);
   U469 : NOR2X1 port map( A => n303, B => n470, Y => n347);
   U470 : AND2X2 port map( A => n475, B => n331, Y => n349);
   U471 : INVX4 port map( A => n349, Y => n1064);
   U472 : BUFX2 port map( A => n355, Y => n350);
   U473 : BUFX4 port map( A => n355, Y => n351);
   U474 : AND2X2 port map( A => n460, B => n473, Y => n352);
   U475 : INVX1 port map( A => n375, Y => n1096);
   U476 : INVX2 port map( A => wdata(5), Y => n404);
   U477 : INVX2 port map( A => wdata(8), Y => n412);
   U478 : INVX2 port map( A => wdata(4), Y => n401);
   U479 : INVX2 port map( A => wdata(3), Y => n398);
   U480 : INVX2 port map( A => wdata(2), Y => n395);
   U481 : INVX2 port map( A => wdata(13), Y => n424);
   U482 : AND2X2 port map( A => n358, B => n304, Y => n353);
   U483 : INVX2 port map( A => n995, Y => n1475);
   U484 : INVX2 port map( A => n1013, Y => n1476);
   U485 : INVX2 port map( A => n1030, Y => n1477);
   U486 : INVX2 port map( A => n1049, Y => n1478);
   U487 : INVX2 port map( A => n1066, Y => n1479);
   U488 : INVX2 port map( A => n1084, Y => n1480);
   U489 : INVX2 port map( A => n1102, Y => n1481);
   U490 : INVX2 port map( A => n1119, Y => n1482);
   U491 : INVX2 port map( A => wsel(2), Y => n427);
   U492 : OR2X2 port map( A => n738, B => rsel1(1), Y => n354);
   U493 : AND2X2 port map( A => n383, B => n737, Y => n355);
   U494 : OR2X2 port map( A => rsel1(1), B => n720, Y => n356);
   U495 : AND2X2 port map( A => n458, B => n331, Y => n357);
   U496 : AND2X2 port map( A => rsel2(0), B => rsel2(1), Y => n358);
   U497 : AND2X2 port map( A => n259, B => n267, Y => n359);
   U498 : AND2X2 port map( A => n259, B => n265, Y => n360);
   U499 : AND2X2 port map( A => n259, B => n266, Y => n361);
   U500 : AND2X2 port map( A => n259, B => n264, Y => n362);
   U501 : AND2X2 port map( A => n261, B => n264, Y => n363);
   U502 : AND2X2 port map( A => n265, B => n261, Y => n364);
   U503 : AND2X2 port map( A => n266, B => n261, Y => n365);
   U504 : AND2X2 port map( A => n267, B => n261, Y => n366);
   U505 : NOR2X1 port map( A => n303, B => n470, Y => n368);
   U506 : INVX2 port map( A => n395, Y => n396);
   U507 : INVX2 port map( A => n395, Y => n397);
   U508 : INVX2 port map( A => n419, Y => n420);
   U509 : INVX2 port map( A => n419, Y => n421);
   U510 : INVX2 port map( A => n404, Y => n405);
   U511 : INVX2 port map( A => n404, Y => n406);
   U512 : INVX2 port map( A => n424, Y => n425);
   U513 : INVX2 port map( A => n424, Y => n426);
   U514 : INVX2 port map( A => n412, Y => n413);
   U515 : INVX2 port map( A => n412, Y => n414);
   U516 : INVX2 port map( A => n398, Y => n399);
   U517 : INVX2 port map( A => n398, Y => n400);
   U518 : BUFX2 port map( A => n428, Y => n436);
   U519 : BUFX2 port map( A => n428, Y => n437);
   U520 : BUFX2 port map( A => n428, Y => n438);
   U521 : BUFX2 port map( A => n429, Y => n439);
   U522 : BUFX2 port map( A => n429, Y => n440);
   U523 : BUFX2 port map( A => n429, Y => n441);
   U524 : BUFX2 port map( A => n430, Y => n442);
   U525 : BUFX2 port map( A => n430, Y => n443);
   U526 : BUFX2 port map( A => n430, Y => n444);
   U527 : BUFX2 port map( A => n431, Y => n445);
   U528 : BUFX2 port map( A => n431, Y => n446);
   U529 : BUFX2 port map( A => n431, Y => n447);
   U530 : BUFX2 port map( A => n432, Y => n448);
   U531 : BUFX2 port map( A => n432, Y => n449);
   U532 : BUFX2 port map( A => n432, Y => n450);
   U533 : BUFX2 port map( A => n433, Y => n451);
   U534 : BUFX2 port map( A => n433, Y => n452);
   U535 : BUFX2 port map( A => n433, Y => n453);
   U536 : BUFX2 port map( A => n434, Y => n454);
   U537 : BUFX2 port map( A => n434, Y => n455);
   U538 : BUFX2 port map( A => n434, Y => n456);
   U539 : NOR2X1 port map( A => rsel2(3), B => n376, Y => n369);
   U540 : BUFX2 port map( A => n435, Y => n457);
   U541 : BUFX2 port map( A => nReset, Y => n435);
   U542 : BUFX2 port map( A => nReset, Y => n428);
   U543 : BUFX2 port map( A => nReset, Y => n429);
   U544 : BUFX2 port map( A => nReset, Y => n430);
   U545 : BUFX2 port map( A => nReset, Y => n431);
   U546 : BUFX2 port map( A => nReset, Y => n432);
   U547 : BUFX2 port map( A => nReset, Y => n433);
   U548 : BUFX2 port map( A => nReset, Y => n434);
   U549 : INVX1 port map( A => reg_2_15_port, Y => n1091);
   U550 : BUFX4 port map( A => n697, Y => n371);
   U551 : BUFX4 port map( A => n697, Y => n372);
   U552 : BUFX4 port map( A => n352, Y => n374);
   U553 : BUFX4 port map( A => rsel1(0), Y => n378);
   U554 : INVX4 port map( A => n357, Y => n379);
   U555 : INVX1 port map( A => n1300, Y => n1197);
   U556 : INVX1 port map( A => n1469, Y => n1262);
   U557 : INVX1 port map( A => n1453, Y => n1246);
   U558 : INVX1 port map( A => n1301, Y => n1198);
   U559 : INVX1 port map( A => n1471, Y => n1264);
   U560 : INVX1 port map( A => n1455, Y => n1248);
   U561 : INVX1 port map( A => n1303, Y => n1200);
   U562 : INVX1 port map( A => n1285, Y => n1182);
   U563 : INVX1 port map( A => n1287, Y => n1184);
   U564 : INVX1 port map( A => n1391, Y => n1537);
   U565 : INVX1 port map( A => n1339, Y => n1533);
   U566 : INVX1 port map( A => n1468, Y => n1261);
   U567 : INVX1 port map( A => n1405, Y => n1530);
   U568 : INVX1 port map( A => n1353, Y => n1526);
   U569 : INVX1 port map( A => n1407, Y => n1514);
   U570 : INVX1 port map( A => n1355, Y => n1510);
   U571 : INVX1 port map( A => n1404, Y => n1538);
   U572 : INVX1 port map( A => n1352, Y => n1534);
   U573 : INVX1 port map( A => n1392, Y => n1529);
   U574 : INVX1 port map( A => n1340, Y => n1525);
   U575 : INVX1 port map( A => n1394, Y => n1513);
   U576 : INVX1 port map( A => n1342, Y => n1509);
   U577 : INVX1 port map( A => n1452, Y => n1245);
   U578 : INVX1 port map( A => n1284, Y => n1181);
   U579 : INVX1 port map( A => n1436, Y => n1229);
   U580 : INVX1 port map( A => n1365, Y => n1535);
   U581 : INVX1 port map( A => n1313, Y => n1531);
   U582 : INVX1 port map( A => n1268, Y => n1165);
   U583 : INVX1 port map( A => n1437, Y => n1230);
   U584 : INVX1 port map( A => n1421, Y => n1214);
   U585 : INVX1 port map( A => n1379, Y => n1528);
   U586 : INVX1 port map( A => n1366, Y => n1527);
   U587 : INVX1 port map( A => n1327, Y => n1524);
   U588 : INVX1 port map( A => n1314, Y => n1523);
   U589 : INVX1 port map( A => n1269, Y => n1166);
   U590 : INVX1 port map( A => n1439, Y => n1232);
   U591 : INVX1 port map( A => n1423, Y => n1216);
   U592 : INVX1 port map( A => n1381, Y => n1512);
   U593 : INVX1 port map( A => n1368, Y => n1511);
   U594 : INVX1 port map( A => n1329, Y => n1508);
   U595 : INVX1 port map( A => n1316, Y => n1507);
   U596 : INVX1 port map( A => n1420, Y => n1213);
   U597 : INVX1 port map( A => n1378, Y => n1536);
   U598 : INVX1 port map( A => n338, Y => n1071);
   U599 : INVX1 port map( A => n323, Y => n578);
   U600 : INVX1 port map( A => n323, Y => n560);
   U601 : INVX4 port map( A => wdata(10), Y => n417);
   U602 : INVX1 port map( A => n1124, Y => n1150);
   U603 : INVX1 port map( A => n1271, Y => n1168);
   U604 : INVX4 port map( A => wdata(12), Y => n422);
   U605 : INVX1 port map( A => n1126, Y => n1152);
   U606 : INVX1 port map( A => n1326, Y => n1532);
   U607 : INVX4 port map( A => wdata(9), Y => n415);
   U608 : INVX1 port map( A => n1123, Y => n1149);
   U609 : INVX1 port map( A => n1465, Y => n1258);
   U610 : INVX1 port map( A => n1449, Y => n1242);
   U611 : INVX1 port map( A => n1297, Y => n1194);
   U612 : INVX1 port map( A => n1281, Y => n1178);
   U613 : INVX1 port map( A => n1401, Y => n1562);
   U614 : INVX1 port map( A => n1349, Y => n1558);
   U615 : INVX1 port map( A => n1388, Y => n1561);
   U616 : INVX1 port map( A => n1336, Y => n1557);
   U617 : INVX1 port map( A => n1433, Y => n1226);
   U618 : INVX1 port map( A => n1417, Y => n1210);
   U619 : INVX1 port map( A => n1375, Y => n1560);
   U620 : INVX1 port map( A => n1362, Y => n1559);
   U621 : INVX1 port map( A => n1323, Y => n1556);
   U622 : INVX1 port map( A => n1409, Y => n1498);
   U623 : INVX1 port map( A => n1383, Y => n1496);
   U624 : INVX1 port map( A => n1370, Y => n1495);
   U625 : INVX1 port map( A => n1357, Y => n1494);
   U626 : INVX1 port map( A => n1331, Y => n1492);
   U627 : INVX1 port map( A => n1318, Y => n1491);
   U628 : INVX1 port map( A => n1410, Y => n1490);
   U629 : INVX1 port map( A => n1384, Y => n1488);
   U630 : INVX1 port map( A => n1371, Y => n1487);
   U631 : INVX1 port map( A => n1358, Y => n1486);
   U632 : INVX1 port map( A => n1332, Y => n1484);
   U633 : INVX1 port map( A => n1319, Y => n1483);
   U634 : INVX1 port map( A => n1396, Y => n1497);
   U635 : INVX1 port map( A => n1344, Y => n1493);
   U636 : INVX1 port map( A => n1397, Y => n1489);
   U637 : INVX1 port map( A => n1345, Y => n1485);
   U638 : INVX1 port map( A => n1473, Y => n1266);
   U639 : INVX1 port map( A => n1441, Y => n1234);
   U640 : INVX1 port map( A => n1273, Y => n1170);
   U641 : INVX1 port map( A => n1305, Y => n1202);
   U642 : INVX1 port map( A => n1425, Y => n1218);
   U643 : INVX1 port map( A => n1128, Y => n1154);
   U644 : INVX1 port map( A => n1457, Y => n1250);
   U645 : AND2X2 port map( A => rsel1(1), B => n308, Y => n383);
   U646 : INVX1 port map( A => n1474, Y => n1267);
   U647 : INVX1 port map( A => n1442, Y => n1235);
   U648 : INVX1 port map( A => n1274, Y => n1171);
   U649 : INVX1 port map( A => n1306, Y => n1203);
   U650 : INVX1 port map( A => n1426, Y => n1219);
   U651 : INVX1 port map( A => n1129, Y => n1155);
   U652 : INVX1 port map( A => n1458, Y => n1251);
   U653 : INVX1 port map( A => n1310, Y => n1555);
   U654 : INVX1 port map( A => n1136, Y => n1162);
   U655 : INVX4 port map( A => wdata(6), Y => n407);
   U656 : INVX1 port map( A => n1289, Y => n1186);
   U657 : INVX1 port map( A => n1116, Y => n1146);
   U658 : INVX1 port map( A => n1290, Y => n1187);
   U659 : INVX4 port map( A => n710, Y => n1024);
   U660 : INVX4 port map( A => n1022, Y => n968);
   U661 : INVX4 port map( A => n1023, Y => n967);
   U662 : INVX4 port map( A => n718, Y => n1021);
   U663 : INVX4 port map( A => n728, Y => n1008);
   U664 : INVX4 port map( A => n736, Y => n1006);
   U665 : INVX8 port map( A => n415, Y => n416);
   U666 : INVX8 port map( A => n417, Y => n418);
   U667 : INVX8 port map( A => n422, Y => n423);
   U668 : INVX2 port map( A => rsel2(3), Y => n470);
   U669 : NAND2X1 port map( A => n470, B => n303, Y => n459);
   U670 : NAND3X1 port map( A => n331, B => n380, C => n304, Y => n1098);
   U671 : AOI22X1 port map( A => reg_6_0_port, B => n309, C => reg_7_0_port, D 
                           => n276, Y => n462);
   U672 : NOR2X1 port map( A => rsel2(1), B => n459, Y => n458);
   U673 : NOR2X1 port map( A => n331, B => n302, Y => n460);
   U674 : INVX2 port map( A => rsel2(1), Y => n473);
   U675 : AOI22X1 port map( A => reg_4_0_port, B => n312, C => reg_5_0_port, D 
                           => n374, Y => n461);
   U676 : NAND2X1 port map( A => n462, B => n461, Y => n469);
   U677 : NAND3X1 port map( A => n331, B => n369, C => n380, Y => n1092);
   U678 : INVX2 port map( A => reg_2_0_port, Y => n1275);
   U679 : OR2X2 port map( A => n289, B => n1275, Y => n467);
   U680 : NAND2X1 port map( A => reg_3_0_port, B => n367, Y => n466);
   U681 : NAND3X1 port map( A => n473, B => n369, C => n332, Y => n463);
   U682 : NAND3X1 port map( A => n473, B => n369, C => n331, Y => n464);
   U683 : AOI22X1 port map( A => reg_1_0_port, B => n1090, C => reg0_0_port, D 
                           => n316, Y => n465);
   U684 : NAND3X1 port map( A => n467, B => n466, C => n465, Y => n468);
   U685 : NOR2X1 port map( A => n469, B => n468, Y => n484);
   U686 : NAND3X1 port map( A => n368, B => n380, C => n331, Y => n1078);
   U687 : NAND2X1 port map( A => n358, B => n347, Y => n1080);
   U688 : AOI22X1 port map( A => reg_10_0_port, B => n372, C => reg_11_0_port, 
                           D => n292, Y => n472);
   U689 : NAND3X1 port map( A => n368, B => n473, C => n331, Y => n1074);
   U690 : NAND3X1 port map( A => n347, B => n473, C => n332, Y => n1076);
   U691 : AOI22X1 port map( A => reg_8_0_port, B => n343, C => reg_9_0_port, D 
                           => n258, Y => n471);
   U692 : NAND2X1 port map( A => n472, B => n471, Y => n482);
   U693 : NAND2X1 port map( A => rsel2(3), B => n376, Y => n476);
   U694 : NOR2X1 port map( A => n331, B => n476, Y => n474);
   U695 : NAND2X1 port map( A => n473, B => n474, Y => n1063);
   U696 : NOR2X1 port map( A => rsel2(1), B => n339, Y => n475);
   U697 : AOI22X1 port map( A => reg_13_0_port, B => n1036, C => reg_12_0_port,
                           D => n284, Y => n480);
   U698 : INVX2 port map( A => n476, Y => n477);
   U699 : NAND2X1 port map( A => n477, B => n358, Y => n1069);
   U700 : NAND3X1 port map( A => n331, B => n380, C => n477, Y => n1070);
   U701 : INVX2 port map( A => reg_14_0_port, Y => n1443);
   U702 : NOR2X1 port map( A => n323, B => n1443, Y => n478);
   U703 : AOI21X1 port map( A => reg_15_0_port, B => n1072, C => n478, Y => 
                           n479);
   U704 : NAND2X1 port map( A => n480, B => n479, Y => n481);
   U705 : NOR2X1 port map( A => n482, B => n481, Y => n483);
   U706 : NAND2X1 port map( A => n484, B => n483, Y => rdata2(0));
   U707 : AOI22X1 port map( A => reg_6_1_port, B => n326, C => reg_7_1_port, D 
                           => n327, Y => n486);
   U708 : AOI22X1 port map( A => reg_4_1_port, B => n687, C => reg_5_1_port, D 
                           => n374, Y => n485);
   U709 : NAND2X1 port map( A => n486, B => n485, Y => n491);
   U710 : INVX2 port map( A => reg_2_1_port, Y => n1276);
   U711 : OR2X2 port map( A => n289, B => n1276, Y => n489);
   U712 : NAND2X1 port map( A => reg_3_1_port, B => n367, Y => n488);
   U713 : AOI22X1 port map( A => reg_1_1_port, B => n1090, C => reg0_1_port, D 
                           => n277, Y => n487);
   U714 : NAND3X1 port map( A => n489, B => n488, C => n487, Y => n490);
   U715 : NOR2X1 port map( A => n491, B => n490, Y => n499);
   U716 : AOI22X1 port map( A => reg_10_1_port, B => n278, C => reg_11_1_port, 
                           D => n291, Y => n493);
   U717 : AOI22X1 port map( A => n698, B => reg_8_1_port, C => reg_9_1_port, D 
                           => n334, Y => n492);
   U718 : NAND2X1 port map( A => n492, B => n493, Y => n497);
   U719 : AOI22X1 port map( A => n1036, B => reg_13_1_port, C => reg_12_1_port,
                           D => n284, Y => n495);
   U720 : INVX2 port map( A => reg_14_1_port, Y => n1444);
   U721 : NAND2X1 port map( A => n495, B => n494, Y => n496);
   U722 : NOR2X1 port map( A => n497, B => n496, Y => n498);
   U723 : NAND2X1 port map( A => n499, B => n498, Y => rdata2(1));
   U724 : AOI22X1 port map( A => reg_6_2_port, B => n686, C => reg_7_2_port, D 
                           => n276, Y => n501);
   U725 : AOI22X1 port map( A => reg_4_2_port, B => n312, C => reg_5_2_port, D 
                           => n374, Y => n500);
   U726 : NAND2X1 port map( A => n501, B => n500, Y => n507);
   U727 : INVX2 port map( A => reg_2_2_port, Y => n502);
   U728 : OR2X2 port map( A => n289, B => n502, Y => n505);
   U729 : NAND2X1 port map( A => reg_3_2_port, B => n367, Y => n504);
   U730 : AOI22X1 port map( A => reg_1_2_port, B => n310, C => reg0_2_port, D 
                           => n316, Y => n503);
   U731 : NAND3X1 port map( A => n505, B => n504, C => n503, Y => n506);
   U732 : NOR2X1 port map( A => n507, B => n506, Y => n517);
   U733 : AOI22X1 port map( A => reg_10_2_port, B => n278, C => reg_11_2_port, 
                           D => n292, Y => n509);
   U734 : AOI22X1 port map( A => reg_8_2_port, B => n343, C => reg_9_2_port, D 
                           => n258, Y => n508);
   U735 : NAND2X1 port map( A => n509, B => n508, Y => n515);
   U736 : AOI22X1 port map( A => reg_13_2_port, B => n1036, C => reg_12_2_port,
                           D => n283, Y => n513);
   U737 : INVX2 port map( A => reg_14_2_port, Y => n510);
   U738 : NOR2X1 port map( A => n323, B => n510, Y => n511);
   U739 : AOI21X1 port map( A => reg_15_2_port, B => n1072, C => n511, Y => 
                           n512);
   U740 : NAND2X1 port map( A => n512, B => n513, Y => n514);
   U741 : NOR2X1 port map( A => n515, B => n514, Y => n516);
   U742 : NAND2X1 port map( A => n517, B => n516, Y => rdata2(2));
   U743 : AOI22X1 port map( A => reg_6_3_port, B => n686, C => reg_7_3_port, D 
                           => n276, Y => n519);
   U744 : AOI22X1 port map( A => reg_4_3_port, B => n313, C => reg_5_3_port, D 
                           => n375, Y => n518);
   U745 : NAND2X1 port map( A => n519, B => n518, Y => n525);
   U746 : INVX2 port map( A => reg_2_3_port, Y => n520);
   U747 : OR2X2 port map( A => n289, B => n520, Y => n523);
   U748 : NAND2X1 port map( A => reg_3_3_port, B => n367, Y => n522);
   U749 : AOI22X1 port map( A => reg_1_3_port, B => n1090, C => reg0_3_port, D 
                           => n316, Y => n521);
   U750 : NAND3X1 port map( A => n523, B => n522, C => n521, Y => n524);
   U751 : NOR2X1 port map( A => n525, B => n524, Y => n534);
   U752 : AOI22X1 port map( A => reg_10_3_port, B => n278, C => reg_11_3_port, 
                           D => n292, Y => n527);
   U753 : AOI22X1 port map( A => n698, B => reg_8_3_port, C => reg_9_3_port, D 
                           => n257, Y => n526);
   U754 : NAND2X1 port map( A => n526, B => n527, Y => n532);
   U755 : AOI22X1 port map( A => n1036, B => reg_13_3_port, C => reg_12_3_port,
                           D => n284, Y => n530);
   U756 : AOI21X1 port map( A => reg_15_3_port, B => n701, C => n528, Y => n529
                           );
   U757 : NAND2X1 port map( A => n530, B => n529, Y => n531);
   U758 : NOR2X1 port map( A => n532, B => n531, Y => n533);
   U759 : NAND2X1 port map( A => n533, B => n534, Y => rdata2(3));
   U760 : AOI22X1 port map( A => reg_7_4_port, B => n327, C => reg_6_4_port, D 
                           => n309, Y => n536);
   U761 : AOI22X1 port map( A => reg_5_4_port, B => n375, C => reg_4_4_port, D 
                           => n312, Y => n535);
   U762 : NAND2X1 port map( A => n536, B => n535, Y => n541);
   U763 : AOI22X1 port map( A => n277, B => reg0_4_port, C => reg_1_4_port, D 
                           => n1090, Y => n539);
   U764 : NAND2X1 port map( A => reg_3_4_port, B => n367, Y => n538);
   U765 : NAND2X1 port map( A => n588, B => reg_2_4_port, Y => n537);
   U766 : NOR2X1 port map( A => n541, B => n540, Y => n550);
   U767 : AOI22X1 port map( A => reg_11_4_port, B => n292, C => reg_10_4_port, 
                           D => n372, Y => n543);
   U768 : AOI22X1 port map( A => reg_9_4_port, B => n258, C => reg_8_4_port, D 
                           => n343, Y => n542);
   U769 : NAND2X1 port map( A => n543, B => n542, Y => n548);
   U770 : NAND2X1 port map( A => reg_15_4_port, B => n1072, Y => n546);
   U771 : NAND2X1 port map( A => reg_14_4_port, B => n613, Y => n545);
   U772 : AOI22X1 port map( A => reg_12_4_port, B => n283, C => n1036, D => 
                           reg_13_4_port, Y => n544);
   U773 : NAND3X1 port map( A => n544, B => n545, C => n546, Y => n547);
   U774 : NAND2X1 port map( A => n550, B => n549, Y => rdata2(4));
   U775 : AOI22X1 port map( A => reg_7_5_port, B => n327, C => reg_6_5_port, D 
                           => n686, Y => n552);
   U776 : AOI22X1 port map( A => reg_5_5_port, B => n374, C => reg_4_5_port, D 
                           => n313, Y => n551);
   U777 : NAND2X1 port map( A => n552, B => n551, Y => n557);
   U778 : AOI22X1 port map( A => n315, B => reg0_5_port, C => reg_1_5_port, D 
                           => n1090, Y => n555);
   U779 : NAND2X1 port map( A => reg_3_5_port, B => n367, Y => n554);
   U780 : NAND2X1 port map( A => n588, B => reg_2_5_port, Y => n553);
   U781 : NOR2X1 port map( A => n557, B => n556, Y => n567);
   U782 : AOI22X1 port map( A => reg_11_5_port, B => n292, C => reg_10_5_port, 
                           D => n372, Y => n559);
   U783 : AOI22X1 port map( A => reg_9_5_port, B => n257, C => reg_8_5_port, D 
                           => n343, Y => n558);
   U784 : NAND2X1 port map( A => n559, B => n558, Y => n565);
   U785 : NAND2X1 port map( A => reg_15_5_port, B => n1072, Y => n563);
   U786 : NAND2X1 port map( A => reg_14_5_port, B => n560, Y => n562);
   U787 : AOI22X1 port map( A => reg_12_5_port, B => n284, C => reg_13_5_port, 
                           D => n1036, Y => n561);
   U788 : NAND3X1 port map( A => n563, B => n562, C => n561, Y => n564);
   U789 : NOR2X1 port map( A => n565, B => n564, Y => n566);
   U790 : NAND2X1 port map( A => n567, B => n566, Y => rdata2(5));
   U791 : AOI22X1 port map( A => reg_7_6_port, B => n327, C => reg_6_6_port, D 
                           => n686, Y => n569);
   U792 : AOI22X1 port map( A => reg_5_6_port, B => n375, C => reg_4_6_port, D 
                           => n313, Y => n568);
   U793 : NAND2X1 port map( A => n569, B => n568, Y => n575);
   U794 : AOI22X1 port map( A => reg0_6_port, B => n294, C => reg_1_6_port, D 
                           => n1090, Y => n573);
   U795 : NAND2X1 port map( A => reg_3_6_port, B => n367, Y => n572);
   U796 : NAND2X1 port map( A => n570, B => reg_2_6_port, Y => n571);
   U797 : NAND3X1 port map( A => n573, B => n572, C => n571, Y => n574);
   U798 : NOR2X1 port map( A => n575, B => n574, Y => n585);
   U799 : AOI22X1 port map( A => reg_11_6_port, B => n291, C => reg_10_6_port, 
                           D => n372, Y => n577);
   U800 : AOI22X1 port map( A => reg_9_6_port, B => n257, C => reg_8_6_port, D 
                           => n698, Y => n576);
   U801 : NAND2X1 port map( A => n577, B => n576, Y => n583);
   U802 : NAND2X1 port map( A => reg_15_6_port, B => n1072, Y => n581);
   U803 : NAND2X1 port map( A => reg_14_6_port, B => n578, Y => n580);
   U804 : AOI22X1 port map( A => reg_12_6_port, B => n283, C => reg_13_6_port, 
                           D => n1036, Y => n579);
   U805 : NAND3X1 port map( A => n581, B => n580, C => n579, Y => n582);
   U806 : NOR2X1 port map( A => n583, B => n582, Y => n584);
   U807 : NAND2X1 port map( A => n585, B => n584, Y => rdata2(6));
   U808 : AOI22X1 port map( A => reg_7_7_port, B => n327, C => reg_6_7_port, D 
                           => n686, Y => n587);
   U809 : AOI22X1 port map( A => reg_5_7_port, B => n374, C => reg_4_7_port, D 
                           => n313, Y => n586);
   U810 : NAND2X1 port map( A => n586, B => n587, Y => n593);
   U811 : AOI22X1 port map( A => reg0_7_port, B => n315, C => reg_1_7_port, D 
                           => n1090, Y => n591);
   U812 : NAND2X1 port map( A => reg_3_7_port, B => n367, Y => n590);
   U813 : NAND2X1 port map( A => n588, B => reg_2_7_port, Y => n589);
   U814 : NAND3X1 port map( A => n589, B => n590, C => n591, Y => n592);
   U815 : NOR2X1 port map( A => n593, B => n592, Y => n602);
   U816 : AOI22X1 port map( A => reg_11_7_port, B => n291, C => reg_10_7_port, 
                           D => n372, Y => n595);
   U817 : AOI22X1 port map( A => reg_9_7_port, B => n334, C => reg_8_7_port, D 
                           => n343, Y => n594);
   U818 : NAND2X1 port map( A => n594, B => n595, Y => n600);
   U819 : NAND2X1 port map( A => reg_15_7_port, B => n1072, Y => n598);
   U820 : NAND2X1 port map( A => reg_14_7_port, B => n560, Y => n597);
   U821 : AOI22X1 port map( A => reg_12_7_port, B => n284, C => reg_13_7_port, 
                           D => n1036, Y => n596);
   U822 : NAND3X1 port map( A => n598, B => n597, C => n596, Y => n599);
   U823 : NOR2X1 port map( A => n600, B => n599, Y => n601);
   U824 : NAND2X1 port map( A => n601, B => n602, Y => rdata2(7));
   U825 : AOI22X1 port map( A => n272, B => reg_7_8_port, C => reg_6_8_port, D 
                           => n309, Y => n604);
   U826 : AOI22X1 port map( A => n373, B => reg_5_8_port, C => reg_4_8_port, D 
                           => n313, Y => n603);
   U827 : NAND2X1 port map( A => n604, B => n603, Y => n610);
   U828 : AOI22X1 port map( A => n294, B => reg0_8_port, C => reg_1_8_port, D 
                           => n1090, Y => n608);
   U829 : NAND2X1 port map( A => reg_3_8_port, B => n367, Y => n607);
   U830 : NAND2X1 port map( A => n605, B => reg_2_8_port, Y => n606);
   U831 : NAND3X1 port map( A => n607, B => n606, C => n608, Y => n609);
   U832 : NOR2X1 port map( A => n610, B => n609, Y => n618);
   U833 : AOI22X1 port map( A => reg_11_8_port, B => n381, C => reg_10_8_port, 
                           D => n371, Y => n612);
   U834 : AOI22X1 port map( A => reg_9_8_port, B => n334, C => reg_8_8_port, D 
                           => n698, Y => n611);
   U835 : NAND2X1 port map( A => reg_15_8_port, B => n701, Y => n616);
   U836 : NAND2X1 port map( A => reg_14_8_port, B => n613, Y => n615);
   U837 : AOI22X1 port map( A => reg_12_8_port, B => n702, C => n274, D => 
                           reg_13_8_port, Y => n614);
   U838 : NAND3X1 port map( A => n614, B => n615, C => n616, Y => n617);
   U839 : AOI22X1 port map( A => reg_6_9_port, B => n326, C => reg_7_9_port, D 
                           => n272, Y => n620);
   U840 : AOI22X1 port map( A => reg_4_9_port, B => n687, C => n373, D => 
                           reg_5_9_port, Y => n619);
   U841 : NAND2X1 port map( A => n619, B => n620, Y => n625);
   U842 : NAND2X1 port map( A => reg_3_9_port, B => n367, Y => n622);
   U843 : AOI22X1 port map( A => reg_1_9_port, B => n310, C => reg0_9_port, D 
                           => n294, Y => n621);
   U844 : NAND3X1 port map( A => n623, B => n622, C => n621, Y => n624);
   U845 : NOR2X1 port map( A => n625, B => n624, Y => n634);
   U846 : AOI22X1 port map( A => reg_10_9_port, B => n370, C => reg_11_9_port, 
                           D => n381, Y => n627);
   U847 : AOI22X1 port map( A => reg_8_9_port, B => n698, C => reg_9_9_port, D 
                           => n334, Y => n626);
   U848 : NAND2X1 port map( A => n626, B => n627, Y => n632);
   U849 : AOI22X1 port map( A => reg_13_9_port, B => n274, C => reg_12_9_port, 
                           D => n702, Y => n630);
   U850 : AOI21X1 port map( A => reg_15_9_port, B => n701, C => n628, Y => n629
                           );
   U851 : NAND2X1 port map( A => n630, B => n629, Y => n631);
   U852 : NOR2X1 port map( A => n631, B => n632, Y => n633);
   U853 : NAND2X1 port map( A => n634, B => n633, Y => rdata2(9));
   U854 : AOI22X1 port map( A => n272, B => reg_7_10_port, C => reg_6_10_port, 
                           D => n686, Y => n636);
   U855 : AOI22X1 port map( A => n373, B => reg_5_10_port, C => reg_4_10_port, 
                           D => n312, Y => n635);
   U856 : NAND2X1 port map( A => n636, B => n635, Y => n641);
   U857 : NAND2X1 port map( A => reg_3_10_port, B => n367, Y => n638);
   U858 : NAND2X1 port map( A => n286, B => reg_2_10_port, Y => n637);
   U859 : NAND3X1 port map( A => n637, B => n638, C => n639, Y => n640);
   U860 : NOR2X1 port map( A => n641, B => n640, Y => n651);
   U861 : AOI22X1 port map( A => reg_11_10_port, B => n381, C => reg_10_10_port
                           , D => n278, Y => n643);
   U862 : AOI22X1 port map( A => reg_9_10_port, B => n334, C => reg_8_10_port, 
                           D => n698, Y => n642);
   U863 : NAND2X1 port map( A => n643, B => n642, Y => n649);
   U864 : NAND2X1 port map( A => reg_15_10_port, B => n701, Y => n647);
   U865 : NAND2X1 port map( A => reg_14_10_port, B => n644, Y => n646);
   U866 : AOI22X1 port map( A => reg_12_10_port, B => n283, C => n1036, D => 
                           reg_13_10_port, Y => n645);
   U867 : NAND3X1 port map( A => n647, B => n646, C => n645, Y => n648);
   U868 : NOR2X1 port map( A => n649, B => n648, Y => n650);
   U869 : NAND2X1 port map( A => n651, B => n650, Y => rdata2(10));
   U870 : AOI22X1 port map( A => reg_7_11_port, B => n327, C => reg_6_11_port, 
                           D => n309, Y => n653);
   U871 : AOI22X1 port map( A => n374, B => reg_5_11_port, C => reg_4_11_port, 
                           D => n312, Y => n652);
   U872 : NAND2X1 port map( A => n652, B => n653, Y => n658);
   U873 : AOI22X1 port map( A => n294, B => reg0_11_port, C => n1090, D => 
                           reg_1_11_port, Y => n656);
   U874 : NAND2X1 port map( A => reg_3_11_port, B => n367, Y => n655);
   U875 : NAND2X1 port map( A => n570, B => reg_2_11_port, Y => n654);
   U876 : NAND3X1 port map( A => n656, B => n655, C => n654, Y => n657);
   U877 : NOR2X1 port map( A => n658, B => n657, Y => n667);
   U878 : AOI22X1 port map( A => n291, B => reg_11_11_port, C => reg_10_11_port
                           , D => n371, Y => n660);
   U879 : AOI22X1 port map( A => reg_9_11_port, B => n257, C => reg_8_11_port, 
                           D => n343, Y => n659);
   U880 : NAND2X1 port map( A => n660, B => n659, Y => n665);
   U881 : NAND2X1 port map( A => reg_15_11_port, B => n1072, Y => n663);
   U882 : NAND2X1 port map( A => reg_14_11_port, B => n578, Y => n662);
   U883 : AOI22X1 port map( A => reg_12_11_port, B => n283, C => n1036, D => 
                           reg_13_11_port, Y => n661);
   U884 : NAND3X1 port map( A => n663, B => n662, C => n661, Y => n664);
   U885 : NOR2X1 port map( A => n665, B => n664, Y => n666);
   U886 : NAND2X1 port map( A => n667, B => n666, Y => rdata2(11));
   U887 : AOI22X1 port map( A => n272, B => reg_7_12_port, C => reg_6_12_port, 
                           D => n309, Y => n669);
   U888 : AOI22X1 port map( A => n373, B => reg_5_12_port, C => reg_4_12_port, 
                           D => n312, Y => n668);
   U889 : NAND2X1 port map( A => n669, B => n668, Y => n674);
   U890 : AOI22X1 port map( A => reg0_12_port, B => n294, C => reg_1_12_port, D
                           => n1090, Y => n672);
   U891 : NAND2X1 port map( A => reg_3_12_port, B => n367, Y => n671);
   U892 : NAND2X1 port map( A => n286, B => reg_2_12_port, Y => n670);
   U893 : NAND3X1 port map( A => n670, B => n671, C => n672, Y => n673);
   U894 : NOR2X1 port map( A => n674, B => n673, Y => n685);
   U895 : AOI22X1 port map( A => reg_11_12_port, B => n291, C => reg_10_12_port
                           , D => n371, Y => n676);
   U896 : AOI22X1 port map( A => reg_9_12_port, B => n334, C => reg_8_12_port, 
                           D => n343, Y => n675);
   U897 : NAND2X1 port map( A => n675, B => n676, Y => n683);
   U898 : NAND2X1 port map( A => reg_15_12_port, B => n701, Y => n681);
   U899 : NAND2X1 port map( A => reg_14_12_port, B => n644, Y => n680);
   U900 : AOI22X1 port map( A => reg_12_12_port, B => n284, C => reg_13_12_port
                           , D => n1036, Y => n677);
   U901 : NAND3X1 port map( A => n681, B => n680, C => n677, Y => n682);
   U902 : NOR2X1 port map( A => n683, B => n682, Y => n684);
   U903 : NAND2X1 port map( A => n685, B => n684, Y => rdata2(12));
   U904 : AOI22X1 port map( A => reg_7_13_port, B => n329, C => reg_6_13_port, 
                           D => n288, Y => n689);
   U905 : AOI22X1 port map( A => reg_5_13_port, B => n273, C => reg_4_13_port, 
                           D => n312, Y => n688);
   U906 : NAND2X1 port map( A => n689, B => n688, Y => n696);
   U907 : AOI22X1 port map( A => reg0_13_port, B => n322, C => reg_1_13_port, D
                           => n324, Y => n694);
   U908 : NAND2X1 port map( A => reg_3_13_port, B => n282, Y => n693);
   U909 : NAND2X1 port map( A => n286, B => reg_2_13_port, Y => n692);
   U910 : NAND3X1 port map( A => n694, B => n693, C => n692, Y => n695);
   U911 : NOR2X1 port map( A => n696, B => n695, Y => n709);
   U912 : AOI22X1 port map( A => reg_11_13_port, B => n307, C => reg_10_13_port
                           , D => n371, Y => n700);
   U913 : AOI22X1 port map( A => reg_9_13_port, B => n258, C => reg_8_13_port, 
                           D => n343, Y => n699);
   U914 : NAND2X1 port map( A => n700, B => n699, Y => n707);
   U915 : NAND2X1 port map( A => reg_15_13_port, B => n1072, Y => n705);
   U916 : NAND2X1 port map( A => reg_14_13_port, B => n1071, Y => n704);
   U917 : AOI22X1 port map( A => reg_12_13_port, B => n284, C => reg_13_13_port
                           , D => n293, Y => n703);
   U918 : NAND3X1 port map( A => n705, B => n704, C => n703, Y => n706);
   U919 : NOR2X1 port map( A => n707, B => n706, Y => n708);
   U920 : NAND2X1 port map( A => n709, B => n708, Y => rdata2(13));
   U921 : INVX2 port map( A => rsel1(3), Y => n717);
   U922 : NAND2X1 port map( A => rsel1(2), B => n717, Y => n711);
   U923 : INVX2 port map( A => n711, Y => n713);
   U924 : NAND2X1 port map( A => reg_7_0_port, B => n340, Y => n716);
   U925 : NAND3X1 port map( A => n713, B => n306, C => n325, Y => n710);
   U926 : NAND2X1 port map( A => reg_6_0_port, B => n1024, Y => n715);
   U927 : NOR2X1 port map( A => rsel1(1), B => n711, Y => n712);
   U928 : NAND2X1 port map( A => n712, B => n325, Y => n1022);
   U929 : NAND3X1 port map( A => n713, B => n378, C => n731, Y => n1023);
   U930 : AOI22X1 port map( A => reg_4_0_port, B => n301, C => reg_5_0_port, D 
                           => n967, Y => n714);
   U931 : NAND3X1 port map( A => n716, B => n715, C => n714, Y => n726);
   U932 : INVX2 port map( A => rsel1(2), Y => n727);
   U933 : NAND2X1 port map( A => n717, B => n727, Y => n721);
   U934 : INVX2 port map( A => n721, Y => n719);
   U935 : NAND3X1 port map( A => n306, B => n719, C => n325, Y => n718);
   U936 : NAND2X1 port map( A => reg_2_0_port, B => n1021, Y => n724);
   U937 : NAND2X1 port map( A => reg_3_0_port, B => n319, Y => n723);
   U938 : NAND2X1 port map( A => n378, B => n719, Y => n720);
   U939 : NOR3X1 port map( A => n378, B => rsel1(1), C => n721, Y => n1020);
   U940 : AOI22X1 port map( A => reg_1_0_port, B => n387, C => reg0_0_port, D 
                           => n389, Y => n722);
   U941 : NAND3X1 port map( A => n724, B => n723, C => n722, Y => n725);
   U942 : NOR2X1 port map( A => n726, B => n725, Y => n746);
   U943 : NAND2X1 port map( A => rsel1(3), B => n727, Y => n729);
   U944 : INVX2 port map( A => n729, Y => n732);
   U945 : NAND2X1 port map( A => reg_11_0_port, B => n346, Y => n735);
   U946 : NAND3X1 port map( A => n732, B => n306, C => n325, Y => n728);
   U947 : NAND2X1 port map( A => reg_10_0_port, B => n1008, Y => n734);
   U948 : NOR2X1 port map( A => rsel1(1), B => n729, Y => n730);
   U949 : NAND3X1 port map( A => n732, B => n378, C => n731, Y => n1007);
   U950 : AOI22X1 port map( A => reg_8_0_port, B => n285, C => reg_9_0_port, D 
                           => n977, Y => n733);
   U951 : NAND3X1 port map( A => n735, B => n734, C => n733, Y => n744);
   U952 : NAND2X1 port map( A => rsel1(3), B => rsel1(2), Y => n739);
   U953 : INVX2 port map( A => n739, Y => n737);
   U954 : NAND3X1 port map( A => n737, B => n306, C => n325, Y => n736);
   U955 : NAND2X1 port map( A => reg_14_0_port, B => n1006, Y => n742);
   U956 : NAND2X1 port map( A => reg_15_0_port, B => n297, Y => n741);
   U957 : NAND2X1 port map( A => n737, B => n308, Y => n738);
   U958 : NOR3X1 port map( A => n378, B => rsel1(1), C => n739, Y => n1005);
   U959 : AOI22X1 port map( A => reg_13_0_port, B => n391, C => reg_12_0_port, 
                           D => n393, Y => n740);
   U960 : NAND3X1 port map( A => n742, B => n741, C => n740, Y => n743);
   U961 : NOR2X1 port map( A => n744, B => n743, Y => n745);
   U962 : NAND2X1 port map( A => n746, B => n745, Y => rdata1(0));
   U963 : NAND2X1 port map( A => reg_7_1_port, B => n340, Y => n749);
   U964 : NAND2X1 port map( A => reg_6_1_port, B => n1024, Y => n748);
   U965 : AOI22X1 port map( A => reg_4_1_port, B => n968, C => reg_5_1_port, D 
                           => n967, Y => n747);
   U966 : NAND3X1 port map( A => n749, B => n748, C => n747, Y => n754);
   U967 : NAND2X1 port map( A => reg_2_1_port, B => n1021, Y => n752);
   U968 : NAND2X1 port map( A => reg_3_1_port, B => n319, Y => n751);
   U969 : AOI22X1 port map( A => reg_1_1_port, B => n386, C => reg0_1_port, D 
                           => n390, Y => n750);
   U970 : NAND3X1 port map( A => n752, B => n751, C => n750, Y => n753);
   U971 : NOR2X1 port map( A => n754, B => n753, Y => n764);
   U972 : NAND2X1 port map( A => reg_11_1_port, B => n346, Y => n757);
   U973 : NAND2X1 port map( A => reg_10_1_port, B => n1008, Y => n756);
   U974 : AOI22X1 port map( A => reg_8_1_port, B => n275, C => reg_9_1_port, D 
                           => n977, Y => n755);
   U975 : NAND3X1 port map( A => n757, B => n756, C => n755, Y => n762);
   U976 : NAND2X1 port map( A => reg_14_1_port, B => n1006, Y => n760);
   U977 : NAND2X1 port map( A => reg_15_1_port, B => n297, Y => n759);
   U978 : AOI22X1 port map( A => reg_13_1_port, B => n311, C => reg_12_1_port, 
                           D => n394, Y => n758);
   U979 : NAND3X1 port map( A => n760, B => n759, C => n758, Y => n761);
   U980 : NOR2X1 port map( A => n762, B => n761, Y => n763);
   U981 : NAND2X1 port map( A => n764, B => n763, Y => rdata1(1));
   U982 : NAND2X1 port map( A => reg_7_2_port, B => n340, Y => n767);
   U983 : NAND2X1 port map( A => reg_6_2_port, B => n1024, Y => n766);
   U984 : AOI22X1 port map( A => reg_4_2_port, B => n301, C => reg_5_2_port, D 
                           => n967, Y => n765);
   U985 : NAND3X1 port map( A => n767, B => n766, C => n765, Y => n772);
   U986 : NAND2X1 port map( A => reg_2_2_port, B => n1021, Y => n770);
   U987 : NAND2X1 port map( A => reg_3_2_port, B => n319, Y => n769);
   U988 : AOI22X1 port map( A => reg_1_2_port, B => n387, C => reg0_2_port, D 
                           => n389, Y => n768);
   U989 : NAND3X1 port map( A => n770, B => n769, C => n768, Y => n771);
   U990 : NOR2X1 port map( A => n772, B => n771, Y => n782);
   U991 : NAND2X1 port map( A => reg_11_2_port, B => n346, Y => n775);
   U992 : NAND2X1 port map( A => reg_10_2_port, B => n1008, Y => n774);
   U993 : AOI22X1 port map( A => reg_8_2_port, B => n275, C => reg_9_2_port, D 
                           => n977, Y => n773);
   U994 : NAND3X1 port map( A => n775, B => n774, C => n773, Y => n780);
   U995 : NAND2X1 port map( A => reg_14_2_port, B => n1006, Y => n778);
   U996 : NAND2X1 port map( A => reg_15_2_port, B => n350, Y => n777);
   U997 : AOI22X1 port map( A => reg_13_2_port, B => n311, C => reg_12_2_port, 
                           D => n393, Y => n776);
   U998 : NAND3X1 port map( A => n778, B => n777, C => n776, Y => n779);
   U999 : NOR2X1 port map( A => n780, B => n779, Y => n781);
   U1000 : NAND2X1 port map( A => n782, B => n781, Y => rdata1(2));
   U1001 : NAND2X1 port map( A => reg_7_3_port, B => n340, Y => n785);
   U1002 : NAND2X1 port map( A => reg_6_3_port, B => n1024, Y => n784);
   U1003 : AOI22X1 port map( A => reg_4_3_port, B => n301, C => reg_5_3_port, D
                           => n967, Y => n783);
   U1004 : NAND3X1 port map( A => n785, B => n784, C => n783, Y => n790);
   U1005 : NAND2X1 port map( A => reg_2_3_port, B => n1021, Y => n788);
   U1006 : NAND2X1 port map( A => reg_3_3_port, B => n318, Y => n787);
   U1007 : AOI22X1 port map( A => reg_1_3_port, B => n386, C => reg0_3_port, D 
                           => n390, Y => n786);
   U1008 : NAND3X1 port map( A => n788, B => n786, C => n787, Y => n789);
   U1009 : NOR2X1 port map( A => n790, B => n789, Y => n800);
   U1010 : NAND2X1 port map( A => reg_11_3_port, B => n346, Y => n793);
   U1011 : NAND2X1 port map( A => reg_10_3_port, B => n1008, Y => n792);
   U1012 : AOI22X1 port map( A => n275, B => reg_8_3_port, C => reg_9_3_port, D
                           => n977, Y => n791);
   U1013 : NAND3X1 port map( A => n793, B => n792, C => n791, Y => n798);
   U1014 : NAND2X1 port map( A => reg_14_3_port, B => n1006, Y => n796);
   U1015 : NAND2X1 port map( A => reg_15_3_port, B => n350, Y => n795);
   U1016 : AOI22X1 port map( A => reg_13_3_port, B => n391, C => reg_12_3_port,
                           D => n394, Y => n794);
   U1017 : NAND3X1 port map( A => n796, B => n795, C => n794, Y => n797);
   U1018 : NOR2X1 port map( A => n798, B => n797, Y => n799);
   U1019 : NAND2X1 port map( A => n800, B => n799, Y => rdata1(3));
   U1020 : NAND2X1 port map( A => reg_7_4_port, B => n340, Y => n803);
   U1021 : NAND2X1 port map( A => reg_6_4_port, B => n1024, Y => n802);
   U1022 : AOI22X1 port map( A => reg_4_4_port, B => n968, C => reg_5_4_port, D
                           => n967, Y => n801);
   U1023 : NAND3X1 port map( A => n803, B => n802, C => n801, Y => n808);
   U1024 : NAND2X1 port map( A => reg_2_4_port, B => n1021, Y => n806);
   U1025 : NAND2X1 port map( A => reg_3_4_port, B => n319, Y => n805);
   U1026 : AOI22X1 port map( A => reg_1_4_port, B => n387, C => reg0_4_port, D 
                           => n389, Y => n804);
   U1027 : NAND3X1 port map( A => n806, B => n805, C => n804, Y => n807);
   U1028 : NOR2X1 port map( A => n808, B => n807, Y => n818);
   U1029 : NAND2X1 port map( A => reg_11_4_port, B => n346, Y => n811);
   U1030 : NAND2X1 port map( A => reg_10_4_port, B => n1008, Y => n810);
   U1031 : AOI22X1 port map( A => n275, B => reg_8_4_port, C => reg_9_4_port, D
                           => n977, Y => n809);
   U1032 : NAND3X1 port map( A => n811, B => n810, C => n809, Y => n816);
   U1033 : NAND2X1 port map( A => reg_14_4_port, B => n1006, Y => n814);
   U1034 : NAND2X1 port map( A => reg_15_4_port, B => n351, Y => n813);
   U1035 : AOI22X1 port map( A => reg_13_4_port, B => n391, C => reg_12_4_port,
                           D => n393, Y => n812);
   U1036 : NAND3X1 port map( A => n814, B => n813, C => n812, Y => n815);
   U1037 : NOR2X1 port map( A => n816, B => n815, Y => n817);
   U1038 : NAND2X1 port map( A => n818, B => n817, Y => rdata1(4));
   U1039 : NAND2X1 port map( A => reg_7_5_port, B => n340, Y => n821);
   U1040 : NAND2X1 port map( A => reg_6_5_port, B => n1024, Y => n820);
   U1041 : AOI22X1 port map( A => reg_4_5_port, B => n968, C => reg_5_5_port, D
                           => n967, Y => n819);
   U1042 : NAND3X1 port map( A => n821, B => n820, C => n819, Y => n826);
   U1043 : NAND2X1 port map( A => reg_2_5_port, B => n1021, Y => n824);
   U1044 : NAND2X1 port map( A => reg_3_5_port, B => n319, Y => n823);
   U1045 : AOI22X1 port map( A => reg_1_5_port, B => n386, C => reg0_5_port, D 
                           => n390, Y => n822);
   U1046 : NAND3X1 port map( A => n824, B => n823, C => n822, Y => n825);
   U1047 : NOR2X1 port map( A => n826, B => n825, Y => n836);
   U1048 : NAND2X1 port map( A => reg_11_5_port, B => n346, Y => n829);
   U1049 : NAND2X1 port map( A => reg_10_5_port, B => n1008, Y => n828);
   U1050 : AOI22X1 port map( A => reg_8_5_port, B => n295, C => reg_9_5_port, D
                           => n977, Y => n827);
   U1051 : NAND3X1 port map( A => n829, B => n828, C => n827, Y => n834);
   U1052 : NAND2X1 port map( A => reg_14_5_port, B => n1006, Y => n832);
   U1053 : NAND2X1 port map( A => reg_15_5_port, B => n297, Y => n831);
   U1054 : AOI22X1 port map( A => reg_13_5_port, B => n311, C => reg_12_5_port,
                           D => n394, Y => n830);
   U1055 : NAND3X1 port map( A => n832, B => n831, C => n830, Y => n833);
   U1056 : NOR2X1 port map( A => n834, B => n833, Y => n835);
   U1057 : NAND2X1 port map( A => n836, B => n835, Y => rdata1(5));
   U1058 : NAND2X1 port map( A => reg_7_6_port, B => n340, Y => n839);
   U1059 : NAND2X1 port map( A => reg_6_6_port, B => n1024, Y => n838);
   U1060 : AOI22X1 port map( A => reg_4_6_port, B => n968, C => reg_5_6_port, D
                           => n967, Y => n837);
   U1061 : NAND3X1 port map( A => n839, B => n838, C => n837, Y => n844);
   U1062 : NAND2X1 port map( A => reg_2_6_port, B => n1021, Y => n842);
   U1063 : NAND2X1 port map( A => reg_3_6_port, B => n319, Y => n841);
   U1064 : AOI22X1 port map( A => reg_1_6_port, B => n386, C => reg0_6_port, D 
                           => n389, Y => n840);
   U1065 : NAND3X1 port map( A => n842, B => n841, C => n840, Y => n843);
   U1066 : NOR2X1 port map( A => n844, B => n843, Y => n854);
   U1067 : NAND2X1 port map( A => reg_11_6_port, B => n346, Y => n847);
   U1068 : NAND2X1 port map( A => reg_10_6_port, B => n1008, Y => n846);
   U1069 : AOI22X1 port map( A => reg_8_6_port, B => n295, C => reg_9_6_port, D
                           => n977, Y => n845);
   U1070 : NAND3X1 port map( A => n847, B => n846, C => n845, Y => n852);
   U1071 : NAND2X1 port map( A => reg_14_6_port, B => n1006, Y => n850);
   U1072 : NAND2X1 port map( A => reg_15_6_port, B => n351, Y => n849);
   U1073 : AOI22X1 port map( A => reg_13_6_port, B => n311, C => reg_12_6_port,
                           D => n393, Y => n848);
   U1074 : NAND3X1 port map( A => n850, B => n849, C => n848, Y => n851);
   U1075 : NOR2X1 port map( A => n852, B => n851, Y => n853);
   U1076 : NAND2X1 port map( A => n854, B => n853, Y => rdata1(6));
   U1077 : NAND2X1 port map( A => reg_7_7_port, B => n340, Y => n857);
   U1078 : NAND2X1 port map( A => reg_6_7_port, B => n1024, Y => n856);
   U1079 : AOI22X1 port map( A => reg_4_7_port, B => n301, C => reg_5_7_port, D
                           => n967, Y => n855);
   U1080 : NAND3X1 port map( A => n857, B => n856, C => n855, Y => n862);
   U1081 : NAND2X1 port map( A => reg_2_7_port, B => n1021, Y => n860);
   U1082 : NAND2X1 port map( A => reg_3_7_port, B => n319, Y => n859);
   U1083 : AOI22X1 port map( A => reg_1_7_port, B => n387, C => reg0_7_port, D 
                           => n390, Y => n858);
   U1084 : NAND3X1 port map( A => n860, B => n859, C => n858, Y => n861);
   U1085 : NOR2X1 port map( A => n862, B => n861, Y => n872);
   U1086 : NAND2X1 port map( A => reg_11_7_port, B => n346, Y => n865);
   U1087 : NAND2X1 port map( A => reg_10_7_port, B => n1008, Y => n864);
   U1088 : AOI22X1 port map( A => reg_8_7_port, B => n285, C => reg_9_7_port, D
                           => n977, Y => n863);
   U1089 : NAND3X1 port map( A => n865, B => n864, C => n863, Y => n870);
   U1090 : NAND2X1 port map( A => reg_14_7_port, B => n1006, Y => n868);
   U1091 : NAND2X1 port map( A => reg_15_7_port, B => n351, Y => n867);
   U1092 : AOI22X1 port map( A => reg_13_7_port, B => n311, C => reg_12_7_port,
                           D => n394, Y => n866);
   U1093 : NAND3X1 port map( A => n868, B => n867, C => n866, Y => n869);
   U1097 : NOR2X1 port map( A => n870, B => n869, Y => n871);
   U1098 : NAND2X1 port map( A => n872, B => n871, Y => rdata1(7));
   U1099 : NAND2X1 port map( A => reg_7_8_port, B => n340, Y => n875);
   U1100 : NAND2X1 port map( A => reg_6_8_port, B => n1024, Y => n874);
   U1101 : AOI22X1 port map( A => reg_4_8_port, B => n968, C => reg_5_8_port, D
                           => n967, Y => n873);
   U1102 : NAND3X1 port map( A => n875, B => n874, C => n873, Y => n880);
   U1103 : NAND2X1 port map( A => reg_2_8_port, B => n1021, Y => n878);
   U1104 : NAND2X1 port map( A => reg_3_8_port, B => n318, Y => n877);
   U1105 : AOI22X1 port map( A => reg_1_8_port, B => n386, C => reg0_8_port, D 
                           => n389, Y => n876);
   U1106 : NAND3X1 port map( A => n878, B => n877, C => n876, Y => n879);
   U1107 : NOR2X1 port map( A => n880, B => n879, Y => n890);
   U1108 : NAND2X1 port map( A => reg_11_8_port, B => n346, Y => n883);
   U1109 : NAND2X1 port map( A => reg_10_8_port, B => n1008, Y => n882);
   U1110 : AOI22X1 port map( A => reg_8_8_port, B => n295, C => reg_9_8_port, D
                           => n977, Y => n881);
   U1114 : NAND3X1 port map( A => n883, B => n882, C => n881, Y => n888);
   U1115 : NAND2X1 port map( A => reg_14_8_port, B => n1006, Y => n886);
   U1116 : NAND2X1 port map( A => reg_15_8_port, B => n351, Y => n885);
   U1117 : AOI22X1 port map( A => reg_13_8_port, B => n311, C => reg_12_8_port,
                           D => n393, Y => n884);
   U1118 : NAND3X1 port map( A => n886, B => n885, C => n884, Y => n887);
   U1119 : NOR2X1 port map( A => n888, B => n887, Y => n889);
   U1120 : NAND2X1 port map( A => n889, B => n890, Y => rdata1(8));
   U1121 : NAND2X1 port map( A => reg_7_9_port, B => n340, Y => n893);
   U1122 : NAND2X1 port map( A => reg_6_9_port, B => n1024, Y => n892);
   U1123 : AOI22X1 port map( A => reg_4_9_port, B => n968, C => reg_5_9_port, D
                           => n967, Y => n891);
   U1124 : NAND3X1 port map( A => n893, B => n892, C => n891, Y => n900);
   U1125 : NAND2X1 port map( A => reg_2_9_port, B => n1021, Y => n898);
   U1126 : NAND2X1 port map( A => reg_3_9_port, B => n318, Y => n897);
   U1127 : AOI22X1 port map( A => reg_1_9_port, B => n386, C => reg0_9_port, D 
                           => n390, Y => n896);
   U1131 : NAND3X1 port map( A => n898, B => n896, C => n897, Y => n899);
   U1132 : NOR2X1 port map( A => n900, B => n899, Y => n912);
   U1133 : NAND2X1 port map( A => reg_11_9_port, B => n346, Y => n903);
   U1134 : NAND2X1 port map( A => reg_10_9_port, B => n1008, Y => n902);
   U1135 : AOI22X1 port map( A => reg_8_9_port, B => n285, C => reg_9_9_port, D
                           => n977, Y => n901);
   U1136 : NAND3X1 port map( A => n903, B => n902, C => n901, Y => n910);
   U1137 : NAND2X1 port map( A => reg_14_9_port, B => n1006, Y => n908);
   U1138 : NAND2X1 port map( A => reg_15_9_port, B => n350, Y => n905);
   U1139 : AOI22X1 port map( A => n311, B => reg_13_9_port, C => reg_12_9_port,
                           D => n394, Y => n904);
   U1140 : NAND3X1 port map( A => n905, B => n908, C => n904, Y => n909);
   U1141 : NOR2X1 port map( A => n910, B => n909, Y => n911);
   U1142 : NAND2X1 port map( A => n911, B => n912, Y => rdata1(9));
   U1143 : NAND2X1 port map( A => reg_7_10_port, B => n340, Y => n915);
   U1144 : NAND2X1 port map( A => reg_6_10_port, B => n1024, Y => n914);
   U1148 : AOI22X1 port map( A => reg_4_10_port, B => n968, C => reg_5_10_port,
                           D => n967, Y => n913);
   U1149 : NAND3X1 port map( A => n915, B => n914, C => n913, Y => n920);
   U1150 : NAND2X1 port map( A => reg_2_10_port, B => n1021, Y => n918);
   U1151 : NAND2X1 port map( A => reg_3_10_port, B => n319, Y => n917);
   U1152 : AOI22X1 port map( A => reg_1_10_port, B => n386, C => reg0_10_port, 
                           D => n389, Y => n916);
   U1153 : NAND3X1 port map( A => n918, B => n916, C => n917, Y => n919);
   U1154 : NOR2X1 port map( A => n920, B => n919, Y => n930);
   U1155 : NAND2X1 port map( A => reg_11_10_port, B => n346, Y => n923);
   U1156 : NAND2X1 port map( A => reg_10_10_port, B => n1008, Y => n922);
   U1157 : AOI22X1 port map( A => reg_8_10_port, B => n285, C => reg_9_10_port,
                           D => n977, Y => n921);
   U1158 : NAND3X1 port map( A => n923, B => n922, C => n921, Y => n928);
   U1159 : NAND2X1 port map( A => reg_14_10_port, B => n1006, Y => n926);
   U1160 : NAND2X1 port map( A => n351, B => reg_15_10_port, Y => n925);
   U1161 : AOI22X1 port map( A => reg_13_10_port, B => n391, C => 
                           reg_12_10_port, D => n393, Y => n924);
   U1166 : NAND3X1 port map( A => n926, B => n925, C => n924, Y => n927);
   U1167 : NOR2X1 port map( A => n928, B => n927, Y => n929);
   U1168 : NAND2X1 port map( A => n929, B => n930, Y => rdata1(10));
   U1169 : NAND2X1 port map( A => reg_7_11_port, B => n340, Y => n933);
   U1170 : NAND2X1 port map( A => reg_6_11_port, B => n1024, Y => n932);
   U1171 : AOI22X1 port map( A => reg_4_11_port, B => n968, C => reg_5_11_port,
                           D => n967, Y => n931);
   U1172 : NAND3X1 port map( A => n933, B => n932, C => n931, Y => n938);
   U1173 : NAND2X1 port map( A => reg_2_11_port, B => n1021, Y => n936);
   U1174 : NAND2X1 port map( A => reg_3_11_port, B => n319, Y => n935);
   U1175 : AOI22X1 port map( A => reg_1_11_port, B => n387, C => reg0_11_port, 
                           D => n390, Y => n934);
   U1176 : NAND3X1 port map( A => n936, B => n935, C => n934, Y => n937);
   U1177 : NOR2X1 port map( A => n938, B => n937, Y => n948);
   U1178 : NAND2X1 port map( A => reg_11_11_port, B => n346, Y => n941);
   U1179 : NAND2X1 port map( A => reg_10_11_port, B => n1008, Y => n940);
   U1183 : AOI22X1 port map( A => reg_8_11_port, B => n285, C => reg_9_11_port,
                           D => n977, Y => n939);
   U1184 : NAND3X1 port map( A => n941, B => n940, C => n939, Y => n946);
   U1185 : NAND2X1 port map( A => reg_14_11_port, B => n1006, Y => n944);
   U1186 : NAND2X1 port map( A => reg_15_11_port, B => n351, Y => n943);
   U1187 : AOI22X1 port map( A => reg_13_11_port, B => n391, C => 
                           reg_12_11_port, D => n394, Y => n942);
   U1188 : NAND3X1 port map( A => n944, B => n943, C => n942, Y => n945);
   U1189 : NOR2X1 port map( A => n946, B => n945, Y => n947);
   U1190 : NAND2X1 port map( A => n948, B => n947, Y => rdata1(11));
   U1191 : NAND2X1 port map( A => reg_7_12_port, B => n340, Y => n951);
   U1192 : NAND2X1 port map( A => reg_6_12_port, B => n1024, Y => n950);
   U1193 : AOI22X1 port map( A => reg_4_12_port, B => n301, C => reg_5_12_port,
                           D => n967, Y => n949);
   U1194 : NAND3X1 port map( A => n951, B => n950, C => n949, Y => n956);
   U1195 : NAND2X1 port map( A => reg_2_12_port, B => n1021, Y => n954);
   U1196 : NAND2X1 port map( A => reg_3_12_port, B => n319, Y => n953);
   U1197 : AOI22X1 port map( A => reg_1_12_port, B => n387, C => reg0_12_port, 
                           D => n389, Y => n952);
   U1201 : NAND3X1 port map( A => n954, B => n953, C => n952, Y => n955);
   U1202 : NOR2X1 port map( A => n956, B => n955, Y => n966);
   U1203 : NAND2X1 port map( A => reg_11_12_port, B => n346, Y => n959);
   U1204 : NAND2X1 port map( A => reg_10_12_port, B => n1008, Y => n958);
   U1205 : AOI22X1 port map( A => reg_8_12_port, B => n295, C => reg_9_12_port,
                           D => n977, Y => n957);
   U1206 : NAND3X1 port map( A => n959, B => n958, C => n957, Y => n964);
   U1207 : NAND2X1 port map( A => reg_14_12_port, B => n1006, Y => n962);
   U1208 : NAND2X1 port map( A => reg_15_12_port, B => n297, Y => n961);
   U1209 : AOI22X1 port map( A => reg_13_12_port, B => n391, C => 
                           reg_12_12_port, D => n393, Y => n960);
   U1210 : NAND3X1 port map( A => n962, B => n961, C => n960, Y => n963);
   U1211 : NOR2X1 port map( A => n963, B => n964, Y => n965);
   U1212 : NAND2X1 port map( A => n966, B => n965, Y => rdata1(12));
   U1213 : NAND2X1 port map( A => reg_7_13_port, B => n340, Y => n971);
   U1214 : NAND2X1 port map( A => reg_6_13_port, B => n1024, Y => n970);
   U1218 : AOI22X1 port map( A => reg_4_13_port, B => n301, C => reg_5_13_port,
                           D => n967, Y => n969);
   U1219 : NAND3X1 port map( A => n971, B => n970, C => n969, Y => n976);
   U1220 : NAND2X1 port map( A => reg_2_13_port, B => n280, Y => n974);
   U1221 : NAND2X1 port map( A => reg_3_13_port, B => n319, Y => n973);
   U1222 : AOI22X1 port map( A => reg_1_13_port, B => n387, C => reg0_13_port, 
                           D => n390, Y => n972);
   U1223 : NAND3X1 port map( A => n974, B => n973, C => n972, Y => n975);
   U1224 : NOR2X1 port map( A => n976, B => n975, Y => n987);
   U1225 : NAND2X1 port map( A => reg_11_13_port, B => n346, Y => n980);
   U1226 : NAND2X1 port map( A => reg_10_13_port, B => n1008, Y => n979);
   U1227 : AOI22X1 port map( A => reg_8_13_port, B => n275, C => reg_9_13_port,
                           D => n977, Y => n978);
   U1228 : NAND3X1 port map( A => n980, B => n979, C => n978, Y => n985);
   U1229 : NAND2X1 port map( A => reg_14_13_port, B => n1006, Y => n983);
   U1230 : NAND2X1 port map( A => reg_15_13_port, B => n297, Y => n982);
   U1231 : AOI22X1 port map( A => reg_13_13_port, B => n391, C => 
                           reg_12_13_port, D => n394, Y => n981);
   U1232 : NAND3X1 port map( A => n983, B => n982, C => n981, Y => n984);
   U1233 : NOR2X1 port map( A => n985, B => n984, Y => n986);
   U1234 : NAND2X1 port map( A => n987, B => n986, Y => rdata1(13));
   U1235 : NAND2X1 port map( A => n262, B => n264, Y => n1119);
   U1236 : INVX2 port map( A => wsel(1), Y => n988);
   U1237 : NAND2X1 port map( A => n262, B => n266, Y => n1102);
   U1238 : NAND2X1 port map( A => n262, B => n265, Y => n1084);
   U1239 : NAND2X1 port map( A => n262, B => n267, Y => n1066);
   U1240 : NAND2X1 port map( A => n260, B => n264, Y => n1049);
   U1241 : NAND2X1 port map( A => n260, B => n266, Y => n1030);
   U1242 : NAND2X1 port map( A => n260, B => n265, Y => n1013);
   U1243 : NAND2X1 port map( A => n260, B => n267, Y => n995);
   U1244 : AOI22X1 port map( A => n269, B => reg_13_14_port, C => n393, D => 
                           reg_12_14_port, Y => n998);
   U1245 : AOI22X1 port map( A => n351, B => reg_15_14_port, C => n1006, D => 
                           reg_14_14_port, Y => n993);
   U1246 : INVX2 port map( A => reg_9_14_port, Y => n1038);
   U1247 : INVX2 port map( A => reg_8_14_port, Y => n1037);
   U1248 : OAI22X1 port map( A => n1038, B => n300, C => n1037, D => n333, Y =>
                           n991);
   U1249 : INVX2 port map( A => reg_11_14_port, Y => n1040);
   U1250 : NAND2X1 port map( A => n1008, B => reg_10_14_port, Y => n989);
   U1251 : OAI21X1 port map( A => n1040, B => n1010, C => n989, Y => n990);
   U1252 : NOR2X1 port map( A => n991, B => n990, Y => n992);
   U1253 : NAND3X1 port map( A => n998, B => n993, C => n992, Y => n906);
   U1254 : AOI22X1 port map( A => n387, B => reg_1_14_port, C => n389, D => 
                           reg0_14_port, Y => n1004);
   U1255 : AOI22X1 port map( A => n319, B => reg_3_14_port, C => n280, D => 
                           reg_2_14_port, Y => n1003);
   U1256 : INVX2 port map( A => reg_5_14_port, Y => n1054);
   U1257 : INVX2 port map( A => reg_4_14_port, Y => n1053);
   U1258 : OAI22X1 port map( A => n1054, B => n299, C => n1053, D => n298, Y =>
                           n1001);
   U1259 : INVX2 port map( A => reg_7_14_port, Y => n1057);
   U1260 : NAND2X1 port map( A => n1024, B => reg_6_14_port, Y => n999);
   U1261 : OAI21X1 port map( A => n1057, B => n1026, C => n999, Y => n1000);
   U1262 : NOR2X1 port map( A => n1001, B => n1000, Y => n1002);
   U1263 : NAND3X1 port map( A => n1004, B => n1003, C => n1002, Y => n907);
   U1264 : AOI22X1 port map( A => n269, B => reg_13_15_port, C => n394, D => 
                           reg_12_15_port, Y => n1019);
   U1265 : AOI22X1 port map( A => n351, B => reg_15_15_port, C => n1006, D => 
                           reg_14_15_port, Y => n1018);
   U1266 : INVX2 port map( A => reg_9_15_port, Y => n1075);
   U1267 : INVX2 port map( A => reg_8_15_port, Y => n1073);
   U1268 : OAI22X1 port map( A => n1075, B => n300, C => n1073, D => n333, Y =>
                           n1016);
   U1269 : INVX2 port map( A => reg_11_15_port, Y => n1079);
   U1270 : NAND2X1 port map( A => n1008, B => reg_10_15_port, Y => n1009);
   U1271 : OAI21X1 port map( A => n1079, B => n1010, C => n1009, Y => n1011);
   U1272 : NOR2X1 port map( A => n1016, B => n1011, Y => n1017);
   U1273 : NAND3X1 port map( A => n1019, B => n1018, C => n1017, Y => n894);
   U1274 : AOI22X1 port map( A => n387, B => reg_1_15_port, C => n390, D => 
                           reg0_15_port, Y => n1035);
   U1275 : AOI22X1 port map( A => n319, B => reg_3_15_port, C => n280, D => 
                           reg_2_15_port, Y => n1034);
   U1276 : INVX2 port map( A => reg_5_15_port, Y => n1095);
   U1277 : INVX2 port map( A => reg_4_15_port, Y => n1094);
   U1278 : OAI22X1 port map( A => n1095, B => n299, C => n1094, D => n298, Y =>
                           n1028);
   U1279 : INVX2 port map( A => reg_7_15_port, Y => n1100);
   U1280 : NAND2X1 port map( A => n1024, B => reg_6_15_port, Y => n1025);
   U1281 : OAI21X1 port map( A => n1100, B => n1026, C => n1025, Y => n1027);
   U1282 : NOR2X1 port map( A => n1028, B => n1027, Y => n1033);
   U1283 : NAND3X1 port map( A => n1035, B => n1034, C => n1033, Y => n895);
   U1284 : AOI22X1 port map( A => reg_13_14_port, B => n293, C => 
                           reg_12_14_port, D => n283, Y => n1045);
   U1285 : AOI22X1 port map( A => reg_15_14_port, B => n701, C => n1071, D => 
                           reg_14_14_port, Y => n1044);
   U1286 : OAI22X1 port map( A => n335, B => n1038, C => n320, D => n1037, Y =>
                           n1042);
   U1287 : INVX2 port map( A => reg_10_14_port, Y => n1039);
   U1288 : OAI22X1 port map( A => n382, B => n1040, C => n345, D => n1039, Y =>
                           n1041);
   U1289 : NOR2X1 port map( A => n1042, B => n1041, Y => n1043);
   U1290 : NAND3X1 port map( A => n1045, B => n1044, C => n1043, Y => n690);
   U1291 : AOI22X1 port map( A => reg_1_14_port, B => n324, C => reg0_14_port, 
                           D => n322, Y => n1062);
   U1292 : INVX2 port map( A => reg_2_14_port, Y => n1046);
   U1293 : NOR2X1 port map( A => n296, B => n1046, Y => n1052);
   U1294 : AOI21X1 port map( A => reg_3_14_port, B => n282, C => n1052, Y => 
                           n1061);
   U1295 : OAI22X1 port map( A => n1096, B => n1054, C => n330, D => n1053, Y 
                           => n1059);
   U1296 : INVX2 port map( A => reg_6_14_port, Y => n1055);
   U1297 : OR2X2 port map( A => n348, B => n1055, Y => n1056);
   U1298 : OAI21X1 port map( A => n328, B => n1057, C => n1056, Y => n1058);
   U1299 : NOR2X1 port map( A => n1059, B => n1058, Y => n1060);
   U1300 : NAND3X1 port map( A => n1062, B => n1061, C => n1060, Y => n691);
   U1301 : AOI22X1 port map( A => reg_13_15_port, B => n293, C => 
                           reg_12_15_port, D => n283, Y => n1089);
   U1302 : AOI22X1 port map( A => reg_15_15_port, B => n1072, C => n1071, D => 
                           reg_14_15_port, Y => n1088);
   U1303 : OAI22X1 port map( A => n335, B => n1075, C => n320, D => n1073, Y =>
                           n1082);
   U1304 : INVX2 port map( A => reg_10_15_port, Y => n1077);
   U1305 : OAI22X1 port map( A => n382, B => n1079, C => n345, D => n1077, Y =>
                           n1081);
   U1306 : NOR2X1 port map( A => n1082, B => n1081, Y => n1087);
   U1307 : NAND3X1 port map( A => n1089, B => n1088, C => n1087, Y => n678);
   U1308 : AOI22X1 port map( A => reg_1_15_port, B => n324, C => reg0_15_port, 
                           D => n322, Y => n1109);
   U1309 : NOR2X1 port map( A => n296, B => n1091, Y => n1093);
   U1310 : AOI21X1 port map( A => reg_3_15_port, B => n282, C => n1093, Y => 
                           n1108);
   U1311 : OAI22X1 port map( A => n1096, B => n1095, C => n330, D => n1094, Y 
                           => n1106);
   U1312 : INVX2 port map( A => reg_6_15_port, Y => n1097);
   U1313 : OR2X2 port map( A => n348, B => n1097, Y => n1099);
   U1314 : OAI21X1 port map( A => n328, B => n1100, C => n1099, Y => n1105);
   U1315 : NOR2X1 port map( A => n1106, B => n1105, Y => n1107);
   U1316 : NAND3X1 port map( A => n1109, B => n1108, C => n1107, Y => n679);
   U1317 : INVX2 port map( A => reg0_0_port, Y => n1110);
   U1318 : MUX2X1 port map( B => n1110, A => n1604, S => n359, Y => n1140);
   U1319 : INVX2 port map( A => reg0_1_port, Y => n1111);
   U1320 : MUX2X1 port map( B => n1111, A => n1595, S => n359, Y => n1141);
   U1321 : MUX2X1 port map( B => reg0_2_port, A => n396, S => n359, Y => n1112)
                           ;
   U1322 : INVX2 port map( A => n1112, Y => n1142);
   U1323 : MUX2X1 port map( B => reg0_3_port, A => n399, S => n359, Y => n1113)
                           ;
   U1324 : INVX2 port map( A => n1113, Y => n1143);
   U1325 : MUX2X1 port map( B => reg0_4_port, A => n402, S => n359, Y => n1114)
                           ;
   U1326 : MUX2X1 port map( B => reg0_5_port, A => n405, S => n359, Y => n1115)
                           ;
   U1327 : INVX2 port map( A => n1115, Y => n1145);
   U1328 : MUX2X1 port map( B => reg0_6_port, A => n408, S => n359, Y => n1116)
                           ;
   U1329 : MUX2X1 port map( B => reg0_7_port, A => n410, S => n359, Y => n1117)
                           ;
   U1330 : MUX2X1 port map( B => reg0_8_port, A => n413, S => n359, Y => n1122)
                           ;
   U1331 : INVX2 port map( A => n1122, Y => n1148);
   U1332 : MUX2X1 port map( B => reg0_9_port, A => n416, S => n359, Y => n1123)
                           ;
   U1333 : MUX2X1 port map( B => reg0_10_port, A => n418, S => n359, Y => n1124
                           );
   U1334 : MUX2X1 port map( B => reg0_11_port, A => n420, S => n359, Y => n1125
                           );
   U1335 : MUX2X1 port map( B => reg0_12_port, A => n423, S => n359, Y => n1126
                           );
   U1336 : MUX2X1 port map( B => reg0_13_port, A => n425, S => n359, Y => n1127
                           );
   U1337 : MUX2X1 port map( B => reg0_14_port, A => wdata(14), S => n359, Y => 
                           n1128);
   U1338 : MUX2X1 port map( B => reg0_15_port, A => wdata(15), S => n359, Y => 
                           n1129);
   U1339 : INVX2 port map( A => reg_1_0_port, Y => n1130);
   U1340 : MUX2X1 port map( B => n1130, A => n1604, S => n360, Y => n1156);
   U1341 : INVX2 port map( A => reg_1_1_port, Y => n1131);
   U1342 : MUX2X1 port map( B => n1131, A => n1595, S => n360, Y => n1157);
   U1343 : MUX2X1 port map( B => reg_1_2_port, A => n397, S => n360, Y => n1132
                           );
   U1344 : INVX2 port map( A => n1132, Y => n1158);
   U1345 : MUX2X1 port map( B => reg_1_3_port, A => n400, S => n360, Y => n1133
                           );
   U1346 : INVX2 port map( A => n1133, Y => n1159);
   U1347 : MUX2X1 port map( B => reg_1_4_port, A => n403, S => n360, Y => n1134
                           );
   U1348 : MUX2X1 port map( B => reg_1_5_port, A => n406, S => n360, Y => n1135
                           );
   U1349 : INVX2 port map( A => n1135, Y => n1161);
   U1350 : MUX2X1 port map( B => reg_1_6_port, A => n408, S => n360, Y => n1136
                           );
   U1351 : MUX2X1 port map( B => reg_1_7_port, A => n411, S => n360, Y => n1137
                           );
   U1352 : MUX2X1 port map( B => reg_1_8_port, A => n414, S => n360, Y => n1139
                           );
   U1353 : INVX2 port map( A => n1139, Y => n1164);
   U1354 : MUX2X1 port map( B => reg_1_9_port, A => n416, S => n360, Y => n1268
                           );
   U1355 : MUX2X1 port map( B => reg_1_10_port, A => n418, S => n360, Y => 
                           n1269);
   U1356 : MUX2X1 port map( B => reg_1_11_port, A => n421, S => n360, Y => 
                           n1270);
   U1357 : MUX2X1 port map( B => reg_1_12_port, A => n423, S => n360, Y => 
                           n1271);
   U1358 : MUX2X1 port map( B => reg_1_13_port, A => n426, S => n360, Y => 
                           n1272);
   U1359 : MUX2X1 port map( B => reg_1_14_port, A => wdata(14), S => n360, Y =>
                           n1273);
   U1360 : MUX2X1 port map( B => reg_1_15_port, A => wdata(15), S => n360, Y =>
                           n1274);
   U1361 : MUX2X1 port map( B => n1275, A => n1604, S => n361, Y => n1172);
   U1362 : MUX2X1 port map( B => n1276, A => n1595, S => n361, Y => n1173);
   U1363 : MUX2X1 port map( B => reg_2_2_port, A => n396, S => n361, Y => n1277
                           );
   U1364 : INVX2 port map( A => n1277, Y => n1174);
   U1365 : MUX2X1 port map( B => reg_2_3_port, A => n399, S => n361, Y => n1278
                           );
   U1366 : INVX2 port map( A => n1278, Y => n1175);
   U1367 : MUX2X1 port map( B => reg_2_4_port, A => n402, S => n361, Y => n1279
                           );
   U1368 : MUX2X1 port map( B => reg_2_5_port, A => n405, S => n361, Y => n1280
                           );
   U1369 : INVX2 port map( A => n1280, Y => n1177);
   U1370 : MUX2X1 port map( B => reg_2_6_port, A => n408, S => n361, Y => n1281
                           );
   U1371 : MUX2X1 port map( B => reg_2_7_port, A => n410, S => n361, Y => n1282
                           );
   U1372 : MUX2X1 port map( B => reg_2_8_port, A => n413, S => n361, Y => n1283
                           );
   U1373 : INVX2 port map( A => n1283, Y => n1180);
   U1374 : MUX2X1 port map( B => reg_2_9_port, A => n416, S => n361, Y => n1284
                           );
   U1375 : MUX2X1 port map( B => reg_2_10_port, A => n418, S => n361, Y => 
                           n1285);
   U1376 : MUX2X1 port map( B => reg_2_11_port, A => n270, S => n361, Y => 
                           n1286);
   U1377 : MUX2X1 port map( B => reg_2_12_port, A => n423, S => n361, Y => 
                           n1287);
   U1378 : MUX2X1 port map( B => reg_2_13_port, A => n425, S => n361, Y => 
                           n1288);
   U1379 : MUX2X1 port map( B => reg_2_14_port, A => wdata(14), S => n361, Y =>
                           n1289);
   U1380 : MUX2X1 port map( B => reg_2_15_port, A => wdata(15), S => n361, Y =>
                           n1290);
   U1381 : INVX2 port map( A => reg_3_0_port, Y => n1291);
   U1382 : MUX2X1 port map( B => n1291, A => n1604, S => n362, Y => n1188);
   U1383 : INVX2 port map( A => reg_3_1_port, Y => n1292);
   U1384 : MUX2X1 port map( B => n1292, A => n1595, S => n362, Y => n1189);
   U1385 : MUX2X1 port map( B => reg_3_2_port, A => n397, S => n362, Y => n1293
                           );
   U1386 : INVX2 port map( A => n1293, Y => n1190);
   U1387 : MUX2X1 port map( B => reg_3_3_port, A => n400, S => n362, Y => n1294
                           );
   U1388 : INVX2 port map( A => n1294, Y => n1191);
   U1389 : MUX2X1 port map( B => reg_3_4_port, A => n403, S => n362, Y => n1295
                           );
   U1390 : MUX2X1 port map( B => reg_3_5_port, A => n406, S => n362, Y => n1296
                           );
   U1391 : INVX2 port map( A => n1296, Y => n1193);
   U1392 : MUX2X1 port map( B => reg_3_6_port, A => n408, S => n362, Y => n1297
                           );
   U1393 : MUX2X1 port map( B => reg_3_7_port, A => n411, S => n362, Y => n1298
                           );
   U1394 : MUX2X1 port map( B => reg_3_8_port, A => n414, S => n362, Y => n1299
                           );
   U1395 : INVX2 port map( A => n1299, Y => n1196);
   U1396 : MUX2X1 port map( B => reg_3_9_port, A => n416, S => n362, Y => n1300
                           );
   U1397 : MUX2X1 port map( B => reg_3_10_port, A => n418, S => n362, Y => 
                           n1301);
   U1398 : MUX2X1 port map( B => reg_3_11_port, A => n421, S => n362, Y => 
                           n1302);
   U1399 : INVX2 port map( A => n1302, Y => n1199);
   U1400 : MUX2X1 port map( B => reg_3_12_port, A => n423, S => n362, Y => 
                           n1303);
   U1401 : MUX2X1 port map( B => reg_3_13_port, A => n426, S => n362, Y => 
                           n1304);
   U1402 : MUX2X1 port map( B => reg_3_14_port, A => wdata(14), S => n362, Y =>
                           n1305);
   U1403 : MUX2X1 port map( B => reg_3_15_port, A => wdata(15), S => n362, Y =>
                           n1306);
   U1404 : MUX2X1 port map( B => reg_4_3_port, A => n399, S => n1475, Y => 
                           n1307);
   U1405 : INVX2 port map( A => n1307, Y => n1579);
   U1406 : MUX2X1 port map( B => reg_4_4_port, A => n402, S => n1475, Y => 
                           n1308);
   U1407 : MUX2X1 port map( B => reg_4_5_port, A => n405, S => n1475, Y => 
                           n1309);
   U1408 : INVX2 port map( A => n1309, Y => n1563);
   U1409 : MUX2X1 port map( B => reg_4_6_port, A => n408, S => n1475, Y => 
                           n1310);
   U1410 : MUX2X1 port map( B => reg_4_7_port, A => n410, S => n1475, Y => 
                           n1311);
   U1411 : MUX2X1 port map( B => reg_4_8_port, A => n413, S => n1475, Y => 
                           n1312);
   U1412 : INVX2 port map( A => n1312, Y => n1539);
   U1413 : MUX2X1 port map( B => reg_4_9_port, A => n416, S => n1475, Y => 
                           n1313);
   U1414 : MUX2X1 port map( B => reg_4_10_port, A => n418, S => n1475, Y => 
                           n1314);
   U1415 : MUX2X1 port map( B => reg_4_11_port, A => n420, S => n1475, Y => 
                           n1315);
   U1416 : MUX2X1 port map( B => reg_4_12_port, A => n423, S => n1475, Y => 
                           n1316);
   U1417 : MUX2X1 port map( B => reg_4_13_port, A => n425, S => n1475, Y => 
                           n1317);
   U1418 : MUX2X1 port map( B => reg_4_14_port, A => wdata(14), S => n1475, Y 
                           => n1318);
   U1419 : MUX2X1 port map( B => reg_4_15_port, A => wdata(15), S => n1475, Y 
                           => n1319);
   U1420 : MUX2X1 port map( B => reg_5_3_port, A => n400, S => n1476, Y => 
                           n1320);
   U1421 : INVX2 port map( A => n1320, Y => n1580);
   U1422 : MUX2X1 port map( B => reg_5_4_port, A => n403, S => n1476, Y => 
                           n1321);
   U1423 : MUX2X1 port map( B => reg_5_5_port, A => n406, S => n1476, Y => 
                           n1322);
   U1424 : INVX2 port map( A => n1322, Y => n1564);
   U1425 : MUX2X1 port map( B => reg_5_6_port, A => n408, S => n1476, Y => 
                           n1323);
   U1426 : MUX2X1 port map( B => reg_5_7_port, A => n411, S => n1476, Y => 
                           n1324);
   U1427 : MUX2X1 port map( B => reg_5_8_port, A => n414, S => n1476, Y => 
                           n1325);
   U1428 : INVX2 port map( A => n1325, Y => n1540);
   U1429 : MUX2X1 port map( B => reg_5_9_port, A => n416, S => n1476, Y => 
                           n1326);
   U1430 : MUX2X1 port map( B => reg_5_10_port, A => n418, S => n1476, Y => 
                           n1327);
   U1431 : MUX2X1 port map( B => reg_5_11_port, A => n421, S => n1476, Y => 
                           n1328);
   U1432 : MUX2X1 port map( B => reg_5_12_port, A => n423, S => n1476, Y => 
                           n1329);
   U1433 : MUX2X1 port map( B => reg_5_13_port, A => n426, S => n1476, Y => 
                           n1330);
   U1434 : MUX2X1 port map( B => reg_5_14_port, A => wdata(14), S => n1476, Y 
                           => n1331);
   U1435 : MUX2X1 port map( B => reg_5_15_port, A => wdata(15), S => n1476, Y 
                           => n1332);
   U1436 : MUX2X1 port map( B => reg_6_3_port, A => n399, S => n1477, Y => 
                           n1333);
   U1437 : INVX2 port map( A => n1333, Y => n1581);
   U1438 : MUX2X1 port map( B => reg_6_4_port, A => n402, S => n1477, Y => 
                           n1334);
   U1439 : MUX2X1 port map( B => reg_6_5_port, A => n405, S => n1477, Y => 
                           n1335);
   U1440 : INVX2 port map( A => n1335, Y => n1565);
   U1441 : MUX2X1 port map( B => reg_6_6_port, A => n408, S => n1477, Y => 
                           n1336);
   U1442 : MUX2X1 port map( B => reg_6_7_port, A => n410, S => n1477, Y => 
                           n1337);
   U1443 : MUX2X1 port map( B => reg_6_8_port, A => n413, S => n1477, Y => 
                           n1338);
   U1444 : INVX2 port map( A => n1338, Y => n1541);
   U1445 : MUX2X1 port map( B => reg_6_9_port, A => n416, S => n1477, Y => 
                           n1339);
   U1446 : MUX2X1 port map( B => reg_6_10_port, A => n418, S => n1477, Y => 
                           n1340);
   U1447 : MUX2X1 port map( B => reg_6_11_port, A => n271, S => n1477, Y => 
                           n1341);
   U1448 : MUX2X1 port map( B => reg_6_12_port, A => n423, S => n1477, Y => 
                           n1342);
   U1449 : MUX2X1 port map( B => reg_6_13_port, A => n425, S => n1477, Y => 
                           n1343);
   U1450 : MUX2X1 port map( B => reg_6_14_port, A => wdata(14), S => n1477, Y 
                           => n1344);
   U1451 : MUX2X1 port map( B => reg_6_15_port, A => wdata(15), S => n1477, Y 
                           => n1345);
   U1452 : MUX2X1 port map( B => reg_7_3_port, A => n400, S => n1478, Y => 
                           n1346);
   U1453 : INVX2 port map( A => n1346, Y => n1582);
   U1454 : MUX2X1 port map( B => reg_7_4_port, A => n403, S => n1478, Y => 
                           n1347);
   U1455 : MUX2X1 port map( B => reg_7_5_port, A => n406, S => n1478, Y => 
                           n1348);
   U1456 : INVX2 port map( A => n1348, Y => n1566);
   U1457 : MUX2X1 port map( B => reg_7_6_port, A => n408, S => n1478, Y => 
                           n1349);
   U1458 : MUX2X1 port map( B => reg_7_7_port, A => n411, S => n1478, Y => 
                           n1350);
   U1459 : MUX2X1 port map( B => reg_7_8_port, A => n414, S => n1478, Y => 
                           n1351);
   U1460 : INVX2 port map( A => n1351, Y => n1542);
   U1461 : MUX2X1 port map( B => reg_7_9_port, A => n416, S => n1478, Y => 
                           n1352);
   U1462 : MUX2X1 port map( B => reg_7_10_port, A => n418, S => n1478, Y => 
                           n1353);
   U1463 : MUX2X1 port map( B => reg_7_11_port, A => n421, S => n1478, Y => 
                           n1354);
   U1464 : MUX2X1 port map( B => reg_7_12_port, A => n423, S => n1478, Y => 
                           n1355);
   U1465 : MUX2X1 port map( B => reg_7_13_port, A => n426, S => n1478, Y => 
                           n1356);
   U1466 : MUX2X1 port map( B => reg_7_14_port, A => wdata(14), S => n1478, Y 
                           => n1357);
   U1467 : MUX2X1 port map( B => reg_7_15_port, A => wdata(15), S => n1478, Y 
                           => n1358);
   U1468 : MUX2X1 port map( B => reg_8_3_port, A => n399, S => n1479, Y => 
                           n1359);
   U1469 : INVX2 port map( A => n1359, Y => n1583);
   U1470 : MUX2X1 port map( B => reg_8_4_port, A => n402, S => n1479, Y => 
                           n1360);
   U1471 : MUX2X1 port map( B => reg_8_5_port, A => n405, S => n1479, Y => 
                           n1361);
   U1472 : INVX2 port map( A => n1361, Y => n1567);
   U1473 : MUX2X1 port map( B => reg_8_6_port, A => n408, S => n1479, Y => 
                           n1362);
   U1474 : MUX2X1 port map( B => reg_8_7_port, A => n410, S => n1479, Y => 
                           n1363);
   U1475 : MUX2X1 port map( B => reg_8_8_port, A => n413, S => n1479, Y => 
                           n1364);
   U1476 : INVX2 port map( A => n1364, Y => n1543);
   U1477 : MUX2X1 port map( B => reg_8_9_port, A => n416, S => n1479, Y => 
                           n1365);
   U1478 : MUX2X1 port map( B => reg_8_10_port, A => n418, S => n1479, Y => 
                           n1366);
   U1479 : MUX2X1 port map( B => reg_8_11_port, A => n270, S => n1479, Y => 
                           n1367);
   U1480 : MUX2X1 port map( B => reg_8_12_port, A => n423, S => n1479, Y => 
                           n1368);
   U1481 : MUX2X1 port map( B => reg_8_13_port, A => n425, S => n1479, Y => 
                           n1369);
   U1482 : MUX2X1 port map( B => reg_8_14_port, A => wdata(14), S => n1479, Y 
                           => n1370);
   U1483 : MUX2X1 port map( B => reg_8_15_port, A => wdata(15), S => n1479, Y 
                           => n1371);
   U1484 : MUX2X1 port map( B => reg_9_3_port, A => n400, S => n1480, Y => 
                           n1372);
   U1485 : INVX2 port map( A => n1372, Y => n1584);
   U1486 : MUX2X1 port map( B => reg_9_4_port, A => n403, S => n1480, Y => 
                           n1373);
   U1487 : MUX2X1 port map( B => reg_9_5_port, A => n406, S => n1480, Y => 
                           n1374);
   U1488 : INVX2 port map( A => n1374, Y => n1568);
   U1489 : MUX2X1 port map( B => reg_9_6_port, A => n408, S => n1480, Y => 
                           n1375);
   U1490 : MUX2X1 port map( B => reg_9_7_port, A => n411, S => n1480, Y => 
                           n1376);
   U1491 : MUX2X1 port map( B => reg_9_8_port, A => n414, S => n1480, Y => 
                           n1377);
   U1492 : INVX2 port map( A => n1377, Y => n1544);
   U1493 : MUX2X1 port map( B => reg_9_9_port, A => n416, S => n1480, Y => 
                           n1378);
   U1494 : MUX2X1 port map( B => reg_9_10_port, A => n418, S => n1480, Y => 
                           n1379);
   U1495 : MUX2X1 port map( B => reg_9_11_port, A => n271, S => n1480, Y => 
                           n1380);
   U1496 : MUX2X1 port map( B => reg_9_12_port, A => n423, S => n1480, Y => 
                           n1381);
   U1497 : MUX2X1 port map( B => reg_9_13_port, A => n426, S => n1480, Y => 
                           n1382);
   U1498 : MUX2X1 port map( B => reg_9_14_port, A => wdata(14), S => n1480, Y 
                           => n1383);
   U1499 : MUX2X1 port map( B => reg_9_15_port, A => wdata(15), S => n1480, Y 
                           => n1384);
   U1500 : MUX2X1 port map( B => reg_10_3_port, A => n399, S => n1481, Y => 
                           n1385);
   U1501 : INVX2 port map( A => n1385, Y => n1585);
   U1502 : MUX2X1 port map( B => reg_10_4_port, A => n402, S => n1481, Y => 
                           n1386);
   U1503 : MUX2X1 port map( B => reg_10_5_port, A => n405, S => n1481, Y => 
                           n1387);
   U1504 : INVX2 port map( A => n1387, Y => n1569);
   U1505 : MUX2X1 port map( B => reg_10_6_port, A => n408, S => n1481, Y => 
                           n1388);
   U1506 : MUX2X1 port map( B => reg_10_7_port, A => n410, S => n1481, Y => 
                           n1389);
   U1507 : MUX2X1 port map( B => reg_10_8_port, A => n413, S => n1481, Y => 
                           n1390);
   U1508 : INVX2 port map( A => n1390, Y => n1545);
   U1509 : MUX2X1 port map( B => reg_10_9_port, A => n416, S => n1481, Y => 
                           n1391);
   U1510 : MUX2X1 port map( B => reg_10_10_port, A => n418, S => n1481, Y => 
                           n1392);
   U1511 : MUX2X1 port map( B => reg_10_11_port, A => n420, S => n1481, Y => 
                           n1393);
   U1512 : MUX2X1 port map( B => reg_10_12_port, A => n423, S => n1481, Y => 
                           n1394);
   U1513 : MUX2X1 port map( B => reg_10_13_port, A => n425, S => n1481, Y => 
                           n1395);
   U1514 : MUX2X1 port map( B => reg_10_14_port, A => wdata(14), S => n1481, Y 
                           => n1396);
   U1515 : MUX2X1 port map( B => reg_10_15_port, A => wdata(15), S => n1481, Y 
                           => n1397);
   U1516 : MUX2X1 port map( B => reg_11_3_port, A => n400, S => n1482, Y => 
                           n1398);
   U1517 : INVX2 port map( A => n1398, Y => n1586);
   U1518 : MUX2X1 port map( B => reg_11_4_port, A => n403, S => n1482, Y => 
                           n1399);
   U1519 : MUX2X1 port map( B => reg_11_5_port, A => n406, S => n1482, Y => 
                           n1400);
   U1520 : INVX2 port map( A => n1400, Y => n1570);
   U1521 : MUX2X1 port map( B => reg_11_6_port, A => n408, S => n1482, Y => 
                           n1401);
   U1522 : MUX2X1 port map( B => reg_11_7_port, A => n411, S => n1482, Y => 
                           n1402);
   U1523 : MUX2X1 port map( B => reg_11_8_port, A => n414, S => n1482, Y => 
                           n1403);
   U1524 : INVX2 port map( A => n1403, Y => n1546);
   U1525 : MUX2X1 port map( B => reg_11_9_port, A => n416, S => n1482, Y => 
                           n1404);
   U1526 : MUX2X1 port map( B => reg_11_10_port, A => n418, S => n1482, Y => 
                           n1405);
   U1527 : MUX2X1 port map( B => reg_11_11_port, A => n270, S => n1482, Y => 
                           n1406);
   U1528 : MUX2X1 port map( B => reg_11_12_port, A => n423, S => n1482, Y => 
                           n1407);
   U1529 : MUX2X1 port map( B => reg_11_13_port, A => n426, S => n1482, Y => 
                           n1408);
   U1530 : MUX2X1 port map( B => reg_11_14_port, A => wdata(14), S => n1482, Y 
                           => n1409);
   U1531 : MUX2X1 port map( B => reg_11_15_port, A => wdata(15), S => n1482, Y 
                           => n1410);
   U1532 : INVX2 port map( A => reg_12_0_port, Y => n1411);
   U1533 : MUX2X1 port map( B => n1411, A => n1604, S => n366, Y => n1204);
   U1534 : INVX2 port map( A => reg_12_1_port, Y => n1412);
   U1535 : MUX2X1 port map( B => n1412, A => n1595, S => n366, Y => n1205);
   U1536 : MUX2X1 port map( B => reg_12_2_port, A => n396, S => n366, Y => 
                           n1413);
   U1537 : INVX2 port map( A => n1413, Y => n1206);
   U1538 : MUX2X1 port map( B => reg_12_3_port, A => n399, S => n366, Y => 
                           n1414);
   U1539 : INVX2 port map( A => n1414, Y => n1207);
   U1540 : MUX2X1 port map( B => reg_12_4_port, A => n402, S => n366, Y => 
                           n1415);
   U1541 : MUX2X1 port map( B => reg_12_5_port, A => n405, S => n366, Y => 
                           n1416);
   U1542 : INVX2 port map( A => n1416, Y => n1209);
   U1543 : MUX2X1 port map( B => reg_12_6_port, A => n408, S => n366, Y => 
                           n1417);
   U1544 : MUX2X1 port map( B => reg_12_7_port, A => n410, S => n366, Y => 
                           n1418);
   U1545 : MUX2X1 port map( B => reg_12_8_port, A => n413, S => n366, Y => 
                           n1419);
   U1546 : INVX2 port map( A => n1419, Y => n1212);
   U1547 : MUX2X1 port map( B => reg_12_9_port, A => n416, S => n366, Y => 
                           n1420);
   U1548 : MUX2X1 port map( B => reg_12_10_port, A => n418, S => n366, Y => 
                           n1421);
   U1549 : MUX2X1 port map( B => reg_12_11_port, A => n271, S => n366, Y => 
                           n1422);
   U1550 : MUX2X1 port map( B => reg_12_12_port, A => n423, S => n366, Y => 
                           n1423);
   U1551 : MUX2X1 port map( B => reg_12_13_port, A => n425, S => n366, Y => 
                           n1424);
   U1552 : MUX2X1 port map( B => reg_12_14_port, A => wdata(14), S => n366, Y 
                           => n1425);
   U1553 : MUX2X1 port map( B => reg_12_15_port, A => wdata(15), S => n366, Y 
                           => n1426);
   U1554 : INVX2 port map( A => reg_13_0_port, Y => n1427);
   U1555 : MUX2X1 port map( B => n1427, A => n1604, S => n364, Y => n1220);
   U1556 : INVX2 port map( A => reg_13_1_port, Y => n1428);
   U1557 : MUX2X1 port map( B => n1428, A => n1595, S => n364, Y => n1221);
   U1558 : MUX2X1 port map( B => reg_13_2_port, A => n397, S => n364, Y => 
                           n1429);
   U1559 : INVX2 port map( A => n1429, Y => n1222);
   U1560 : MUX2X1 port map( B => reg_13_3_port, A => n400, S => n364, Y => 
                           n1430);
   U1561 : INVX2 port map( A => n1430, Y => n1223);
   U1562 : MUX2X1 port map( B => reg_13_4_port, A => n403, S => n364, Y => 
                           n1431);
   U1563 : MUX2X1 port map( B => reg_13_5_port, A => n406, S => n364, Y => 
                           n1432);
   U1564 : INVX2 port map( A => n1432, Y => n1225);
   U1565 : MUX2X1 port map( B => reg_13_6_port, A => n408, S => n364, Y => 
                           n1433);
   U1566 : MUX2X1 port map( B => reg_13_7_port, A => n411, S => n364, Y => 
                           n1434);
   U1567 : MUX2X1 port map( B => reg_13_8_port, A => n414, S => n364, Y => 
                           n1435);
   U1568 : INVX2 port map( A => n1435, Y => n1228);
   U1569 : MUX2X1 port map( B => reg_13_9_port, A => n416, S => n364, Y => 
                           n1436);
   U1570 : MUX2X1 port map( B => reg_13_10_port, A => n418, S => n364, Y => 
                           n1437);
   U1571 : MUX2X1 port map( B => reg_13_11_port, A => n420, S => n364, Y => 
                           n1438);
   U1572 : MUX2X1 port map( B => reg_13_12_port, A => n423, S => n364, Y => 
                           n1439);
   U1573 : MUX2X1 port map( B => reg_13_13_port, A => n426, S => n364, Y => 
                           n1440);
   U1574 : MUX2X1 port map( B => reg_13_14_port, A => wdata(14), S => n364, Y 
                           => n1441);
   U1575 : MUX2X1 port map( B => reg_13_15_port, A => wdata(15), S => n364, Y 
                           => n1442);
   U1576 : MUX2X1 port map( B => n1443, A => n1604, S => n365, Y => n1236);
   U1577 : MUX2X1 port map( B => n1444, A => n1595, S => n365, Y => n1237);
   U1578 : MUX2X1 port map( B => reg_14_2_port, A => n396, S => n365, Y => 
                           n1445);
   U1579 : INVX2 port map( A => n1445, Y => n1238);
   U1580 : MUX2X1 port map( B => reg_14_3_port, A => n399, S => n365, Y => 
                           n1446);
   U1581 : INVX2 port map( A => n1446, Y => n1239);
   U1582 : MUX2X1 port map( B => reg_14_4_port, A => n402, S => n365, Y => 
                           n1447);
   U1583 : MUX2X1 port map( B => reg_14_5_port, A => n405, S => n365, Y => 
                           n1448);
   U1584 : INVX2 port map( A => n1448, Y => n1241);
   U1585 : MUX2X1 port map( B => reg_14_6_port, A => n408, S => n365, Y => 
                           n1449);
   U1586 : MUX2X1 port map( B => reg_14_7_port, A => n410, S => n365, Y => 
                           n1450);
   U1587 : MUX2X1 port map( B => reg_14_8_port, A => n413, S => n365, Y => 
                           n1451);
   U1588 : INVX2 port map( A => n1451, Y => n1244);
   U1589 : MUX2X1 port map( B => reg_14_9_port, A => n416, S => n365, Y => 
                           n1452);
   U1590 : MUX2X1 port map( B => reg_14_10_port, A => n418, S => n365, Y => 
                           n1453);
   U1591 : MUX2X1 port map( B => reg_14_11_port, A => n270, S => n365, Y => 
                           n1454);
   U1592 : INVX2 port map( A => n1454, Y => n1247);
   U1593 : MUX2X1 port map( B => reg_14_12_port, A => n423, S => n365, Y => 
                           n1455);
   U1594 : MUX2X1 port map( B => reg_14_13_port, A => n425, S => n365, Y => 
                           n1456);
   U1595 : MUX2X1 port map( B => reg_14_14_port, A => wdata(14), S => n365, Y 
                           => n1457);
   U1596 : MUX2X1 port map( B => reg_14_15_port, A => wdata(15), S => n365, Y 
                           => n1458);
   U1597 : INVX2 port map( A => reg_15_0_port, Y => n1459);
   U1598 : MUX2X1 port map( B => n1459, A => n1604, S => n363, Y => n1252);
   U1599 : INVX2 port map( A => reg_15_1_port, Y => n1460);
   U1600 : MUX2X1 port map( B => n1460, A => n1595, S => n363, Y => n1253);
   U1601 : MUX2X1 port map( B => reg_15_2_port, A => n397, S => n363, Y => 
                           n1461);
   U1602 : INVX2 port map( A => n1461, Y => n1254);
   U1603 : MUX2X1 port map( B => reg_15_3_port, A => n400, S => n363, Y => 
                           n1462);
   U1604 : INVX2 port map( A => n1462, Y => n1255);
   U1605 : MUX2X1 port map( B => reg_15_4_port, A => n403, S => n363, Y => 
                           n1463);
   U1606 : MUX2X1 port map( B => reg_15_5_port, A => n406, S => n363, Y => 
                           n1464);
   U1607 : INVX2 port map( A => n1464, Y => n1257);
   U1608 : MUX2X1 port map( B => reg_15_6_port, A => n408, S => n363, Y => 
                           n1465);
   U1609 : MUX2X1 port map( B => reg_15_7_port, A => n411, S => n363, Y => 
                           n1466);
   U1610 : MUX2X1 port map( B => reg_15_8_port, A => n414, S => n363, Y => 
                           n1467);
   U1611 : INVX2 port map( A => n1467, Y => n1260);
   U1612 : MUX2X1 port map( B => reg_15_9_port, A => n416, S => n363, Y => 
                           n1468);
   U1613 : MUX2X1 port map( B => reg_15_10_port, A => n418, S => n363, Y => 
                           n1469);
   U1614 : MUX2X1 port map( B => reg_15_11_port, A => n271, S => n363, Y => 
                           n1470);
   U1615 : INVX2 port map( A => n1470, Y => n1263);
   U1616 : MUX2X1 port map( B => reg_15_12_port, A => n423, S => n363, Y => 
                           n1471);
   U1617 : MUX2X1 port map( B => reg_15_13_port, A => n426, S => n363, Y => 
                           n1472);
   U1618 : MUX2X1 port map( B => reg_15_14_port, A => wdata(14), S => n363, Y 
                           => n1473);
   U1619 : MUX2X1 port map( B => reg_15_15_port, A => wdata(15), S => n363, Y 
                           => n1474);
   U1620 : INVX2 port map( A => n997, Y => n1587);
   U1621 : INVX2 port map( A => n1015, Y => n1588);
   U1622 : INVX2 port map( A => n1032, Y => n1589);
   U1623 : INVX2 port map( A => n1051, Y => n1590);
   U1624 : INVX2 port map( A => n1068, Y => n1591);
   U1625 : INVX2 port map( A => n1086, Y => n1592);
   U1626 : INVX2 port map( A => n1104, Y => n1593);
   U1627 : INVX2 port map( A => n1121, Y => n1594);
   U1628 : INVX2 port map( A => wdata(1), Y => n1595);
   U1629 : INVX2 port map( A => n996, Y => n1596);
   U1630 : INVX2 port map( A => n1014, Y => n1597);
   U1631 : INVX2 port map( A => n1031, Y => n1598);
   U1632 : INVX2 port map( A => n1050, Y => n1599);
   U1633 : INVX2 port map( A => n1067, Y => n1600);
   U1634 : INVX2 port map( A => n1085, Y => n1601);
   U1635 : INVX2 port map( A => n1103, Y => n1602);
   U1636 : INVX2 port map( A => n1120, Y => n1603);
   U1637 : INVX2 port map( A => wdata(0), Y => n1604);
   U1638 : INVX2 port map( A => n994, Y => n1605);
   U1639 : INVX2 port map( A => n1012, Y => n1606);
   U1640 : INVX2 port map( A => n1029, Y => n1607);
   U1641 : INVX2 port map( A => n1048, Y => n1608);
   U1642 : INVX2 port map( A => n1065, Y => n1609);
   U1643 : INVX2 port map( A => n1083, Y => n1610);
   U1644 : INVX2 port map( A => n1101, Y => n1611);
   U1645 : INVX2 port map( A => n1118, Y => n1612);
   U1646 : INVX2 port map( A => wen, Y => n1613);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity datapath_ctrl is

   port( op : in std_logic_vector (1 downto 0);  sel, wen, add : out std_logic
         );

end datapath_ctrl;

architecture SYN_behav of datapath_ctrl is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INVX1 port map( A => op(1), Y => n1);
   U2 : AND2X2 port map( A => op(0), B => op(1), Y => add);
   U3 : OR2X2 port map( A => op(1), B => op(0), Y => wen);
   U4 : NOR2X1 port map( A => op(0), B => n1, Y => sel);

end SYN_behav;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity sync is

   port( clk, nReset, A : in std_logic;  A_sync : out std_logic);

end sync;

architecture SYN_bSync of sync is

   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal reg1, n1, n2 : std_logic;

begin
   
   reg1_reg : DFFSR port map( D => A, CLK => clk, R => nReset, S => n2, Q => 
                           reg1);
   A_sync_reg : DFFSR port map( D => reg1, CLK => clk, R => nReset, S => n1, Q 
                           => A_sync);
   n1 <= '1';
   n2 <= '1';

end SYN_bSync;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

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
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
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
      N9, N10, N11, N12, N13, N14, N15, N16, N17, N19, n5_port, n7_port, 
      n10_port, n11_port, n13_port, n15_port, n16_port, n18, n20, n21, n23, n25
      , n26, n28, n30, n31, n33, n35, n36, n38, n40, n41, n43, n45, n46, n48, 
      n50, n51, n53, n55, n56, n58, n60, n61, n63, n65, n66, n68, n70, n71, n73
      , n75, n76, n78, n80, n81, n83, n84, n85, n86, n87, n88, n89, n90, n91, 
      n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, 
      n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, 
      n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, 
      n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, 
      n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, 
      n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, 
      add_35_carry_3_port, add_35_carry_4_port, add_35_carry_5_port, 
      add_35_carry_6_port, add_35_carry_7_port, add_35_carry_8_port, 
      add_35_carry_9_port, add_35_carry_10_port, add_35_carry_11_port, 
      add_35_carry_12_port, add_35_carry_13_port, add_35_carry_14_port, n1, n2,
      n3, n4_port, n6_port, n8_port, n9_port, n12_port, n14_port, n17_port, 
      n19_port, n22, n24, n27, n29, n32, n34, n37, n39, n42, n44, n47, n49, n52
      , n54, n57, n59, n62, n64, n67, n69, n72, n74, n77, n79, n82, n165, n166,
      n167, n168, n169, n170, n171, n172, n173 : std_logic;

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
   U3 : OAI21X1 port map( A => n27, B => n17_port, C => n5_port, Y => n85);
   U5 : NAND2X1 port map( A => count_out_0_port, B => n22, Y => n5_port);
   U7 : OAI21X1 port map( A => n172, B => n9_port, C => n7_port, Y => n86);
   U8 : NAND2X1 port map( A => count_out_15_port, B => n22, Y => n7_port);
   U10 : OAI21X1 port map( A => n6_port, B => n173, C => n10_port, Y => n88);
   U11 : NAND2X1 port map( A => currentCount_15_port, B => n6_port, Y => 
                           n10_port);
   U12 : OAI21X1 port map( A => n8_port, B => n173, C => n11_port, Y => n90);
   U13 : NAND2X1 port map( A => N19, B => n8_port, Y => n11_port);
   U15 : OAI21X1 port map( A => n170, B => n9_port, C => n13_port, Y => n91);
   U16 : NAND2X1 port map( A => count_out_14_port, B => n19_port, Y => n13_port
                           );
   U18 : OAI21X1 port map( A => n6_port, B => n171, C => n15_port, Y => n93);
   U19 : NAND2X1 port map( A => currentCount_14_port, B => n6_port, Y => 
                           n15_port);
   U20 : OAI21X1 port map( A => n8_port, B => n171, C => n16_port, Y => n95);
   U23 : OAI21X1 port map( A => n168, B => n9_port, C => n18, Y => n96);
   U24 : NAND2X1 port map( A => count_out_13_port, B => n19_port, Y => n18);
   U26 : OAI21X1 port map( A => n6_port, B => n169, C => n20, Y => n98);
   U27 : NAND2X1 port map( A => currentCount_13_port, B => n6_port, Y => n20);
   U28 : OAI21X1 port map( A => n8_port, B => n169, C => n21, Y => n100);
   U29 : NAND2X1 port map( A => N17, B => n8_port, Y => n21);
   U31 : OAI21X1 port map( A => n166, B => n12_port, C => n23, Y => n101);
   U32 : NAND2X1 port map( A => count_out_12_port, B => n19_port, Y => n23);
   U34 : OAI21X1 port map( A => n6_port, B => n167, C => n25, Y => n103);
   U35 : NAND2X1 port map( A => currentCount_12_port, B => n6_port, Y => n25);
   U36 : OAI21X1 port map( A => n8_port, B => n167, C => n26, Y => n105);
   U37 : NAND2X1 port map( A => N16, B => n8_port, Y => n26);
   U39 : OAI21X1 port map( A => n82, B => n12_port, C => n28, Y => n106);
   U40 : NAND2X1 port map( A => count_out_11_port, B => n19_port, Y => n28);
   U42 : OAI21X1 port map( A => n6_port, B => n165, C => n30, Y => n108);
   U43 : NAND2X1 port map( A => currentCount_11_port, B => n6_port, Y => n30);
   U44 : OAI21X1 port map( A => n8_port, B => n165, C => n31, Y => n110);
   U45 : NAND2X1 port map( A => N15, B => n8_port, Y => n31);
   U47 : OAI21X1 port map( A => n77, B => n12_port, C => n33, Y => n111);
   U48 : NAND2X1 port map( A => count_out_10_port, B => n19_port, Y => n33);
   U50 : OAI21X1 port map( A => n6_port, B => n79, C => n35, Y => n113);
   U51 : NAND2X1 port map( A => currentCount_10_port, B => n6_port, Y => n35);
   U52 : OAI21X1 port map( A => n8_port, B => n79, C => n36, Y => n115);
   U53 : NAND2X1 port map( A => N14, B => n8_port, Y => n36);
   U55 : OAI21X1 port map( A => n72, B => n14_port, C => n38, Y => n116);
   U56 : NAND2X1 port map( A => count_out_9_port, B => n19_port, Y => n38);
   U58 : OAI21X1 port map( A => n6_port, B => n74, C => n40, Y => n118);
   U59 : NAND2X1 port map( A => currentCount_9_port, B => n6_port, Y => n40);
   U60 : OAI21X1 port map( A => n8_port, B => n74, C => n41, Y => n120);
   U61 : NAND2X1 port map( A => N13, B => n8_port, Y => n41);
   U63 : OAI21X1 port map( A => n67, B => n14_port, C => n43, Y => n121);
   U64 : NAND2X1 port map( A => count_out_8_port, B => n19_port, Y => n43);
   U66 : OAI21X1 port map( A => n6_port, B => n69, C => n45, Y => n123);
   U67 : NAND2X1 port map( A => currentCount_8_port, B => n6_port, Y => n45);
   U68 : OAI21X1 port map( A => n8_port, B => n69, C => n46, Y => n125);
   U69 : NAND2X1 port map( A => N12, B => n8_port, Y => n46);
   U71 : OAI21X1 port map( A => n62, B => n14_port, C => n48, Y => n126);
   U72 : NAND2X1 port map( A => count_out_7_port, B => n19_port, Y => n48);
   U74 : OAI21X1 port map( A => n6_port, B => n64, C => n50, Y => n128);
   U75 : NAND2X1 port map( A => currentCount_7_port, B => n6_port, Y => n50);
   U76 : OAI21X1 port map( A => n8_port, B => n64, C => n51, Y => n130);
   U77 : NAND2X1 port map( A => N11, B => n8_port, Y => n51);
   U79 : OAI21X1 port map( A => n57, B => n17_port, C => n53, Y => n131);
   U80 : NAND2X1 port map( A => count_out_6_port, B => n17_port, Y => n53);
   U82 : OAI21X1 port map( A => n6_port, B => n59, C => n55, Y => n133);
   U83 : NAND2X1 port map( A => currentCount_6_port, B => n6_port, Y => n55);
   U84 : OAI21X1 port map( A => n8_port, B => n59, C => n56, Y => n135);
   U85 : NAND2X1 port map( A => N10, B => n8_port, Y => n56);
   U87 : OAI21X1 port map( A => n52, B => n17_port, C => n58, Y => n136);
   U88 : NAND2X1 port map( A => count_out_5_port, B => n19_port, Y => n58);
   U90 : OAI21X1 port map( A => n6_port, B => n54, C => n60, Y => n138);
   U91 : NAND2X1 port map( A => currentCount_5_port, B => n6_port, Y => n60);
   U92 : OAI21X1 port map( A => n8_port, B => n54, C => n61, Y => n140);
   U93 : NAND2X1 port map( A => N9, B => n8_port, Y => n61);
   U95 : OAI21X1 port map( A => n47, B => n17_port, C => n63, Y => n141);
   U96 : NAND2X1 port map( A => count_out_4_port, B => n19_port, Y => n63);
   U98 : OAI21X1 port map( A => n6_port, B => n49, C => n65, Y => n143);
   U99 : NAND2X1 port map( A => currentCount_4_port, B => n6_port, Y => n65);
   U100 : OAI21X1 port map( A => n8_port, B => n49, C => n66, Y => n145);
   U101 : NAND2X1 port map( A => N8, B => n8_port, Y => n66);
   U103 : OAI21X1 port map( A => n42, B => n17_port, C => n68, Y => n146);
   U104 : NAND2X1 port map( A => count_out_3_port, B => n19_port, Y => n68);
   U106 : OAI21X1 port map( A => n6_port, B => n44, C => n70, Y => n148);
   U107 : NAND2X1 port map( A => currentCount_3_port, B => n6_port, Y => n70);
   U108 : OAI21X1 port map( A => n8_port, B => n44, C => n71, Y => n150);
   U109 : NAND2X1 port map( A => N7, B => n8_port, Y => n71);
   U111 : OAI21X1 port map( A => n37, B => n17_port, C => n73, Y => n151);
   U112 : NAND2X1 port map( A => count_out_2_port, B => n22, Y => n73);
   U114 : OAI21X1 port map( A => n6_port, B => n39, C => n75, Y => n153);
   U115 : NAND2X1 port map( A => currentCount_2_port, B => n6_port, Y => n75);
   U116 : OAI21X1 port map( A => n8_port, B => n39, C => n76, Y => n155);
   U117 : NAND2X1 port map( A => N6, B => n8_port, Y => n76);
   U119 : OAI21X1 port map( A => n32, B => n17_port, C => n78, Y => n156);
   U120 : NAND2X1 port map( A => count_out_1_port, B => n22, Y => n78);
   U123 : OAI21X1 port map( A => n6_port, B => n34, C => n80, Y => n158);
   U124 : NAND2X1 port map( A => currentCount_1_port, B => n6_port, Y => n80);
   U125 : OAI21X1 port map( A => n8_port, B => n34, C => n81, Y => n160);
   U126 : NAND2X1 port map( A => N5, B => n8_port, Y => n81);
   U128 : OAI21X1 port map( A => n6_port, B => n29, C => n83, Y => n162);
   U129 : NAND2X1 port map( A => N4, B => n6_port, Y => n83);
   U131 : OAI21X1 port map( A => n8_port, B => n29, C => n84, Y => n164);
   U132 : NAND2X1 port map( A => N4, B => n8_port, Y => n84);
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
   U4 : AND2X2 port map( A => add_35_carry_8_port, B => currentCount_8_port, Y 
                           => n1);
   U6 : AND2X2 port map( A => n1, B => n2, Y => add_35_carry_11_port);
   U9 : AND2X2 port map( A => currentCount_10_port, B => currentCount_9_port, Y
                           => n2);
   U14 : NAND2X1 port map( A => n3, B => cnt_up, Y => n16_port);
   U17 : XOR2X1 port map( A => add_35_carry_14_port, B => currentCount_14_port,
                           Y => n3);
   U21 : INVX2 port map( A => cnt_up, Y => n6_port);
   U22 : BUFX2 port map( A => cnt_up, Y => n8_port);
   U25 : BUFX2 port map( A => n24, Y => n17_port);
   U30 : BUFX2 port map( A => n24, Y => n19_port);
   U33 : BUFX2 port map( A => n24, Y => n14_port);
   U38 : BUFX2 port map( A => n24, Y => n12_port);
   U41 : BUFX2 port map( A => n24, Y => n9_port);
   U46 : BUFX2 port map( A => n24, Y => n22);
   U49 : XNOR2X1 port map( A => n4_port, B => currentCount_15_port, Y => N19);
   U54 : NAND2X1 port map( A => currentCount_14_port, B => add_35_carry_14_port
                           , Y => n4_port);
   U57 : INVX2 port map( A => nReset, Y => n24);
   U62 : INVX1 port map( A => currentCount_1_port, Y => N5);
   U65 : AND2X2 port map( A => currentCount_2_port, B => currentCount_1_port, Y
                           => add_35_carry_3_port);
   U70 : AND2X2 port map( A => currentCount_13_port, B => add_35_carry_13_port,
                           Y => add_35_carry_14_port);
   U73 : AND2X2 port map( A => currentCount_12_port, B => add_35_carry_12_port,
                           Y => add_35_carry_13_port);
   U78 : XOR2X1 port map( A => add_35_carry_13_port, B => currentCount_13_port,
                           Y => N17);
   U81 : XOR2X1 port map( A => add_35_carry_12_port, B => currentCount_12_port,
                           Y => N16);
   U86 : AND2X1 port map( A => currentCount_11_port, B => add_35_carry_11_port,
                           Y => add_35_carry_12_port);
   U89 : XOR2X1 port map( A => add_35_carry_11_port, B => currentCount_11_port,
                           Y => N15);
   U94 : XOR2X1 port map( A => add_35_carry_10_port, B => currentCount_10_port,
                           Y => N14);
   U97 : AND2X1 port map( A => currentCount_9_port, B => add_35_carry_9_port, Y
                           => add_35_carry_10_port);
   U102 : XOR2X1 port map( A => add_35_carry_9_port, B => currentCount_9_port, 
                           Y => N13);
   U105 : AND2X1 port map( A => currentCount_8_port, B => add_35_carry_8_port, 
                           Y => add_35_carry_9_port);
   U110 : XOR2X1 port map( A => add_35_carry_8_port, B => currentCount_8_port, 
                           Y => N12);
   U113 : AND2X1 port map( A => currentCount_7_port, B => add_35_carry_7_port, 
                           Y => add_35_carry_8_port);
   U118 : XOR2X1 port map( A => add_35_carry_7_port, B => currentCount_7_port, 
                           Y => N11);
   U121 : AND2X1 port map( A => currentCount_6_port, B => add_35_carry_6_port, 
                           Y => add_35_carry_7_port);
   U122 : XOR2X1 port map( A => add_35_carry_6_port, B => currentCount_6_port, 
                           Y => N10);
   U127 : AND2X1 port map( A => currentCount_5_port, B => add_35_carry_5_port, 
                           Y => add_35_carry_6_port);
   U130 : XOR2X1 port map( A => add_35_carry_5_port, B => currentCount_5_port, 
                           Y => N9);
   U133 : AND2X1 port map( A => currentCount_4_port, B => add_35_carry_4_port, 
                           Y => add_35_carry_5_port);
   U166 : XOR2X1 port map( A => add_35_carry_4_port, B => currentCount_4_port, 
                           Y => N8);
   U167 : AND2X1 port map( A => currentCount_3_port, B => add_35_carry_3_port, 
                           Y => add_35_carry_4_port);
   U168 : XOR2X1 port map( A => add_35_carry_3_port, B => currentCount_3_port, 
                           Y => N7);
   U169 : XOR2X1 port map( A => currentCount_1_port, B => currentCount_2_port, 
                           Y => N6);
   U170 : INVX2 port map( A => n162, Y => n27);
   U171 : INVX2 port map( A => nextCount_0_port, Y => n29);
   U172 : INVX2 port map( A => n158, Y => n32);
   U173 : INVX2 port map( A => nextCount_1_port, Y => n34);
   U174 : INVX2 port map( A => n153, Y => n37);
   U175 : INVX2 port map( A => nextCount_2_port, Y => n39);
   U176 : INVX2 port map( A => n148, Y => n42);
   U177 : INVX2 port map( A => nextCount_3_port, Y => n44);
   U178 : INVX2 port map( A => n143, Y => n47);
   U179 : INVX2 port map( A => nextCount_4_port, Y => n49);
   U180 : INVX2 port map( A => n138, Y => n52);
   U181 : INVX2 port map( A => nextCount_5_port, Y => n54);
   U182 : INVX2 port map( A => n133, Y => n57);
   U183 : INVX2 port map( A => nextCount_6_port, Y => n59);
   U184 : INVX2 port map( A => n128, Y => n62);
   U185 : INVX2 port map( A => nextCount_7_port, Y => n64);
   U186 : INVX2 port map( A => n123, Y => n67);
   U187 : INVX2 port map( A => nextCount_8_port, Y => n69);
   U188 : INVX2 port map( A => n118, Y => n72);
   U189 : INVX2 port map( A => nextCount_9_port, Y => n74);
   U190 : INVX2 port map( A => n113, Y => n77);
   U191 : INVX2 port map( A => nextCount_10_port, Y => n79);
   U192 : INVX2 port map( A => n108, Y => n82);
   U193 : INVX2 port map( A => nextCount_11_port, Y => n165);
   U194 : INVX2 port map( A => n103, Y => n166);
   U195 : INVX2 port map( A => nextCount_12_port, Y => n167);
   U196 : INVX2 port map( A => n98, Y => n168);
   U197 : INVX2 port map( A => nextCount_13_port, Y => n169);
   U198 : INVX2 port map( A => n93, Y => n170);
   U199 : INVX2 port map( A => nextCount_14_port, Y => n171);
   U200 : INVX2 port map( A => n88, Y => n172);
   U201 : INVX2 port map( A => nextCount_15_port, Y => n173);

end SYN_cob;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity controller is

   port( clk, nReset, dr, V : in std_logic;  cnt_up, modwait : out std_logic;  
         op : out std_logic_vector (1 downto 0);  A, B, C : out 
         std_logic_vector (3 downto 0);  err : out std_logic);

end controller;

architecture SYN_cb of controller is

   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component BUFX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal X_Logic0_port, n71, A_1_port, A_0_port, B_1_port, C_0_port, 
      state_3_port, state_2_port, state_1_port, state_0_port, nextState_3_port,
      nextState_2_port, nextState_1_port, nextState_0_port, N53, n1, n2, n3, n4
      , B_2_port, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, op_1_port, 
      n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, B_0_port, 
      op_0_port, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53_port, n54, n55, n56
      , n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, C_2_port, 
      C_1_port : std_logic;

begin
   cnt_up <= C_2_port;
   op <= ( op_1_port, op_0_port );
   A <= ( X_Logic0_port, X_Logic0_port, A_1_port, A_0_port );
   B <= ( X_Logic0_port, B_2_port, B_1_port, B_0_port );
   C <= ( X_Logic0_port, C_2_port, C_1_port, C_0_port );
   
   X_Logic0_port <= '0';
   state_reg_0_inst : DFFSR port map( D => nextState_0_port, CLK => clk, R => 
                           nReset, S => n4, Q => state_0_port);
   state_reg_2_inst : DFFSR port map( D => nextState_2_port, CLK => clk, R => 
                           nReset, S => n3, Q => state_2_port);
   state_reg_3_inst : DFFSR port map( D => nextState_3_port, CLK => clk, R => 
                           nReset, S => n2, Q => state_3_port);
   state_reg_1_inst : DFFSR port map( D => nextState_1_port, CLK => clk, R => 
                           nReset, S => n1, Q => state_1_port);
   modwait_reg : LATCH port map( CLK => N53, D => C_2_port, Q => modwait);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   U7 : AND2X2 port map( A => n47, B => n17, Y => n5);
   U8 : BUFX2 port map( A => n23, Y => n6);
   U9 : INVX2 port map( A => n9, Y => B_1_port);
   U10 : INVX1 port map( A => n22, Y => n7);
   U11 : INVX2 port map( A => n7, Y => n8);
   U12 : INVX1 port map( A => n31, Y => n71);
   U13 : NAND2X1 port map( A => n55, B => n71, Y => n9);
   U14 : INVX1 port map( A => n47, Y => n26);
   U15 : INVX1 port map( A => n43, Y => n10);
   U16 : INVX2 port map( A => n10, Y => n11);
   U17 : INVX1 port map( A => n57, Y => n12);
   U18 : INVX1 port map( A => n12, Y => n13);
   U19 : INVX1 port map( A => n24, Y => n14);
   U20 : INVX2 port map( A => n14, Y => n15);
   U21 : BUFX2 port map( A => n71, Y => op_1_port);
   U22 : INVX1 port map( A => state_3_port, Y => n63);
   U23 : INVX1 port map( A => state_3_port, Y => n17);
   U24 : BUFX2 port map( A => state_1_port, Y => n33);
   U25 : INVX1 port map( A => A_1_port, Y => n18);
   U26 : NAND2X1 port map( A => n41, B => n62, Y => n19);
   U27 : INVX1 port map( A => n26, Y => n20);
   U28 : INVX1 port map( A => n34, Y => n21);
   U29 : NAND2X1 port map( A => n39, B => n24, Y => n22);
   U30 : INVX2 port map( A => n36, Y => n24);
   U31 : INVX1 port map( A => n39, Y => n23);
   U32 : NAND2X1 port map( A => n42, B => n5, Y => n49);
   U33 : INVX1 port map( A => n41, Y => n42);
   U34 : INVX1 port map( A => n49, Y => C_2_port);
   U35 : INVX1 port map( A => n37, Y => n25);
   U36 : INVX2 port map( A => state_2_port, Y => n47);
   U37 : INVX4 port map( A => n28, Y => B_0_port);
   U38 : NAND2X1 port map( A => state_2_port, B => n63, Y => n27);
   U39 : OR2X2 port map( A => n22, B => n27, Y => n28);
   U40 : INVX2 port map( A => C_2_port, Y => n35);
   U41 : AND2X2 port map( A => n46, B => n21, Y => op_0_port);
   U42 : NAND2X1 port map( A => state_2_port, B => n63, Y => n31);
   U43 : INVX4 port map( A => n32, Y => n39);
   U44 : BUFX4 port map( A => state_0_port, Y => n32);
   U45 : INVX1 port map( A => n40, Y => C_1_port);
   U46 : BUFX2 port map( A => state_3_port, Y => n34);
   U47 : INVX1 port map( A => n19, Y => n37);
   U48 : INVX4 port map( A => n52, Y => A_1_port);
   U49 : INVX1 port map( A => state_1_port, Y => n36);
   U50 : NAND2X1 port map( A => n36, B => n32, Y => n41);
   U51 : NAND2X1 port map( A => n39, B => n33, Y => n62);
   U52 : NAND2X1 port map( A => n62, B => n41, Y => n55);
   U53 : NAND2X1 port map( A => n32, B => n33, Y => n57);
   U54 : NAND2X1 port map( A => n37, B => n13, Y => n46);
   U55 : INVX2 port map( A => n46, Y => n38);
   U56 : NAND3X1 port map( A => n34, B => n38, C => n20, Y => n54);
   U57 : INVX2 port map( A => n54, Y => err);
   U58 : NAND3X1 port map( A => n17, B => n33, C => n47, Y => n40);
   U59 : OAI21X1 port map( A => n27, B => n24, C => n40, Y => n43);
   U60 : NAND2X1 port map( A => n11, B => n39, Y => n65);
   U61 : INVX2 port map( A => n65, Y => C_0_port);
   U62 : NOR2X1 port map( A => n31, B => n57, Y => B_2_port);
   U63 : NAND2X1 port map( A => n23, B => n43, Y => n44);
   U64 : NAND2X1 port map( A => n49, B => n44, Y => A_0_port);
   U65 : NOR2X1 port map( A => n26, B => n34, Y => n45);
   U66 : NAND2X1 port map( A => n45, B => n19, Y => n52);
   U67 : NOR2X1 port map( A => n15, B => n6, Y => n48);
   U68 : NAND2X1 port map( A => n48, B => n20, Y => n60);
   U69 : NAND2X1 port map( A => n60, B => n35, Y => N53);
   U70 : NOR2X1 port map( A => V, B => n34, Y => n50);
   U71 : NAND2X1 port map( A => n50, B => n25, Y => n51);
   U72 : NAND2X1 port map( A => n18, B => n51, Y => nextState_1_port);
   U73 : NAND3X1 port map( A => n26, B => op_0_port, C => V, Y => n53_port);
   U74 : OAI21X1 port map( A => dr, B => n54, C => n53_port, Y => 
                           nextState_3_port);
   U75 : NAND2X1 port map( A => V, B => n25, Y => n56);
   U76 : NAND3X1 port map( A => n13, B => op_1_port, C => n56, Y => n59);
   U77 : NAND2X1 port map( A => C_1_port, B => n6, Y => n58);
   U78 : NAND2X1 port map( A => n59, B => n58, Y => nextState_2_port);
   U79 : INVX2 port map( A => n60, Y => n61);
   U80 : NAND2X1 port map( A => dr, B => n61, Y => n67);
   U81 : NOR2X1 port map( A => V, B => n8, Y => n64);
   U82 : NAND2X1 port map( A => n64, B => n21, Y => n66);
   U83 : NAND3X1 port map( A => n67, B => n66, C => n65, Y => nextState_0_port)
                           ;

end SYN_cb;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity datapath is

   port( clk, nReset : in std_logic;  A, B, C : in std_logic_vector (3 downto 
         0);  data : in std_logic_vector (15 downto 0);  op : in 
         std_logic_vector (1 downto 0);  V : out std_logic;  outreg : out 
         std_logic_vector (15 downto 0));

end datapath;

architecture SYN_struct of datapath is

   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX2X1
      port( B, A, S : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component alu
      port( A, B : in std_logic_vector (15 downto 0);  add : in std_logic;  res
            : out std_logic_vector (15 downto 0);  V : out std_logic);
   end component;
   
   component regfile
      port( clk, nReset : in std_logic;  wsel, rsel1, rsel2 : in 
            std_logic_vector (3 downto 0);  wdata : in std_logic_vector (15 
            downto 0);  wen : in std_logic;  rdata1, rdata2, reg0 : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component datapath_ctrl
      port( op : in std_logic_vector (1 downto 0);  sel, wen, add : out 
            std_logic);
   end component;
   
   component AOI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   signal sel, wen, add, rdata1_15_port, rdata1_14_port, rdata1_13_port, 
      rdata1_12_port, rdata1_11_port, rdata1_10_port, rdata1_9_port, 
      rdata1_8_port, rdata1_7_port, rdata1_6_port, rdata1_5_port, rdata1_4_port
      , rdata1_3_port, rdata1_2_port, rdata1_1_port, rdata1_0_port, 
      rdata2_15_port, rdata2_14_port, rdata2_13_port, rdata2_12_port, 
      rdata2_11_port, rdata2_10_port, rdata2_9_port, rdata2_8_port, 
      rdata2_7_port, rdata2_6_port, rdata2_5_port, rdata2_4_port, rdata2_3_port
      , rdata2_2_port, rdata2_1_port, rdata2_0_port, res_15_port, res_14_port, 
      res_13_port, res_12_port, res_11_port, res_10_port, res_9_port, 
      res_8_port, res_7_port, res_6_port, res_5_port, res_4_port, res_3_port, 
      res_2_port, res_1_port, res_0_port, n26, n33, n1, n2, n3, n4, n5, n6, n7,
      n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, 
      n23, n24, n25, n27, n28, n29, n30, n31, n32, n34, n35, n36, n37, n38, n39
      , n40, n41, n42, n43, n44, n45 : std_logic;

begin
   
   U30 : AOI22X1 port map( A => data(1), B => n5, C => res_1_port, D => n1, Y 
                           => n26);
   U37 : AOI22X1 port map( A => data(0), B => n5, C => res_0_port, D => n1, Y 
                           => n33);
   U1 : datapath_ctrl port map( op(1) => op(1), op(0) => op(0), sel => sel, wen
                           => wen, add => add);
   U2 : regfile port map( clk => clk, nReset => nReset, wsel(3) => C(3), 
                           wsel(2) => C(2), wsel(1) => C(1), wsel(0) => C(0), 
                           rsel1(3) => A(3), rsel1(2) => A(2), rsel1(1) => A(1)
                           , rsel1(0) => A(0), rsel2(3) => B(3), rsel2(2) => 
                           B(2), rsel2(1) => B(1), rsel2(0) => B(0), wdata(15) 
                           => n29, wdata(14) => n30, wdata(13) => n31, 
                           wdata(12) => n32, wdata(11) => n34, wdata(10) => n35
                           , wdata(9) => n36, wdata(8) => n37, wdata(7) => n38,
                           wdata(6) => n39, wdata(5) => n40, wdata(4) => n41, 
                           wdata(3) => n42, wdata(2) => n43, wdata(1) => n44, 
                           wdata(0) => n45, wen => wen, rdata1(15) => 
                           rdata1_15_port, rdata1(14) => rdata1_14_port, 
                           rdata1(13) => rdata1_13_port, rdata1(12) => 
                           rdata1_12_port, rdata1(11) => rdata1_11_port, 
                           rdata1(10) => rdata1_10_port, rdata1(9) => 
                           rdata1_9_port, rdata1(8) => rdata1_8_port, rdata1(7)
                           => rdata1_7_port, rdata1(6) => rdata1_6_port, 
                           rdata1(5) => rdata1_5_port, rdata1(4) => 
                           rdata1_4_port, rdata1(3) => rdata1_3_port, rdata1(2)
                           => rdata1_2_port, rdata1(1) => rdata1_1_port, 
                           rdata1(0) => rdata1_0_port, rdata2(15) => 
                           rdata2_15_port, rdata2(14) => rdata2_14_port, 
                           rdata2(13) => rdata2_13_port, rdata2(12) => 
                           rdata2_12_port, rdata2(11) => rdata2_11_port, 
                           rdata2(10) => rdata2_10_port, rdata2(9) => 
                           rdata2_9_port, rdata2(8) => rdata2_8_port, rdata2(7)
                           => rdata2_7_port, rdata2(6) => rdata2_6_port, 
                           rdata2(5) => rdata2_5_port, rdata2(4) => 
                           rdata2_4_port, rdata2(3) => rdata2_3_port, rdata2(2)
                           => rdata2_2_port, rdata2(1) => rdata2_1_port, 
                           rdata2(0) => rdata2_0_port, reg0(15) => outreg(15), 
                           reg0(14) => outreg(14), reg0(13) => outreg(13), 
                           reg0(12) => outreg(12), reg0(11) => outreg(11), 
                           reg0(10) => outreg(10), reg0(9) => outreg(9), 
                           reg0(8) => outreg(8), reg0(7) => outreg(7), reg0(6) 
                           => outreg(6), reg0(5) => outreg(5), reg0(4) => 
                           outreg(4), reg0(3) => outreg(3), reg0(2) => 
                           outreg(2), reg0(1) => outreg(1), reg0(0) => 
                           outreg(0));
   U3 : alu port map( A(15) => rdata1_15_port, A(14) => rdata1_14_port, A(13) 
                           => rdata1_13_port, A(12) => rdata1_12_port, A(11) =>
                           rdata1_11_port, A(10) => rdata1_10_port, A(9) => 
                           rdata1_9_port, A(8) => rdata1_8_port, A(7) => 
                           rdata1_7_port, A(6) => rdata1_6_port, A(5) => 
                           rdata1_5_port, A(4) => rdata1_4_port, A(3) => 
                           rdata1_3_port, A(2) => rdata1_2_port, A(1) => 
                           rdata1_1_port, A(0) => rdata1_0_port, B(15) => 
                           rdata2_15_port, B(14) => rdata2_14_port, B(13) => 
                           rdata2_13_port, B(12) => rdata2_12_port, B(11) => 
                           rdata2_11_port, B(10) => rdata2_10_port, B(9) => 
                           rdata2_9_port, B(8) => rdata2_8_port, B(7) => 
                           rdata2_7_port, B(6) => rdata2_6_port, B(5) => 
                           rdata2_5_port, B(4) => rdata2_4_port, B(3) => 
                           rdata2_3_port, B(2) => rdata2_2_port, B(1) => 
                           rdata2_1_port, B(0) => rdata2_0_port, add => add, 
                           res(15) => res_15_port, res(14) => res_14_port, 
                           res(13) => res_13_port, res(12) => res_12_port, 
                           res(11) => res_11_port, res(10) => res_10_port, 
                           res(9) => res_9_port, res(8) => res_8_port, res(7) 
                           => res_7_port, res(6) => res_6_port, res(5) => 
                           res_5_port, res(4) => res_4_port, res(3) => 
                           res_3_port, res(2) => res_2_port, res(1) => 
                           res_1_port, res(0) => res_0_port, V => V);
   U5 : INVX2 port map( A => sel, Y => n1);
   U6 : INVX4 port map( A => n4, Y => n30);
   U7 : INVX4 port map( A => n3, Y => n29);
   U8 : MUX2X1 port map( B => data(14), A => res_14_port, S => n1, Y => n4);
   U9 : MUX2X1 port map( B => data(15), A => res_15_port, S => n1, Y => n3);
   U10 : MUX2X1 port map( B => res_9_port, A => data(9), S => sel, Y => n2);
   U11 : INVX2 port map( A => n2, Y => n36);
   U12 : INVX2 port map( A => n1, Y => n5);
   U13 : INVX2 port map( A => res_2_port, Y => n7);
   U14 : INVX2 port map( A => data(2), Y => n6);
   U15 : MUX2X1 port map( B => n7, A => n6, S => n5, Y => n43);
   U16 : INVX2 port map( A => res_3_port, Y => n9);
   U17 : INVX2 port map( A => data(3), Y => n8);
   U18 : MUX2X1 port map( B => n9, A => n8, S => n5, Y => n42);
   U19 : INVX2 port map( A => res_4_port, Y => n11);
   U20 : INVX2 port map( A => data(4), Y => n10);
   U21 : MUX2X1 port map( B => n11, A => n10, S => n5, Y => n41);
   U22 : INVX2 port map( A => res_5_port, Y => n13);
   U23 : INVX2 port map( A => data(5), Y => n12);
   U24 : MUX2X1 port map( B => n13, A => n12, S => n5, Y => n40);
   U25 : INVX2 port map( A => res_6_port, Y => n15);
   U26 : INVX2 port map( A => data(6), Y => n14);
   U27 : MUX2X1 port map( B => n15, A => n14, S => n5, Y => n39);
   U28 : INVX2 port map( A => res_7_port, Y => n17);
   U29 : INVX2 port map( A => data(7), Y => n16);
   U31 : MUX2X1 port map( B => n17, A => n16, S => n5, Y => n38);
   U32 : INVX2 port map( A => res_8_port, Y => n19);
   U33 : INVX2 port map( A => data(8), Y => n18);
   U34 : MUX2X1 port map( B => n19, A => n18, S => n5, Y => n37);
   U35 : INVX2 port map( A => res_10_port, Y => n21);
   U36 : INVX2 port map( A => data(10), Y => n20);
   U38 : MUX2X1 port map( B => n21, A => n20, S => sel, Y => n35);
   U39 : INVX2 port map( A => res_11_port, Y => n23);
   U40 : INVX2 port map( A => data(11), Y => n22);
   U41 : MUX2X1 port map( B => n23, A => n22, S => sel, Y => n34);
   U42 : INVX2 port map( A => res_12_port, Y => n25);
   U43 : INVX2 port map( A => data(12), Y => n24);
   U44 : MUX2X1 port map( B => n25, A => n24, S => sel, Y => n32);
   U45 : INVX2 port map( A => res_13_port, Y => n28);
   U46 : INVX2 port map( A => data(13), Y => n27);
   U47 : MUX2X1 port map( B => n28, A => n27, S => sel, Y => n31);
   U48 : INVX2 port map( A => n26, Y => n44);
   U49 : INVX2 port map( A => n33, Y => n45);

end SYN_struct;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_avg_four.all;

entity avg_four is

   port( clk : in std_logic;  data : in std_logic_vector (15 downto 0);  
         data_ready, nReset : in std_logic;  avg_out, count_out : out 
         std_logic_vector (15 downto 0);  err, modwait : out std_logic);

end avg_four;

architecture SYN_struct of avg_four is

   component sync
      port( clk, nReset, A : in std_logic;  A_sync : out std_logic);
   end component;
   
   component counter
      port( clk, nReset, cnt_up : in std_logic;  count_out : out 
            std_logic_vector (15 downto 0));
   end component;
   
   component controller
      port( clk, nReset, dr, V : in std_logic;  cnt_up, modwait : out std_logic
            ;  op : out std_logic_vector (1 downto 0);  A, B, C : out 
            std_logic_vector (3 downto 0);  err : out std_logic);
   end component;
   
   component datapath
      port( clk, nReset : in std_logic;  A, B, C : in std_logic_vector (3 
            downto 0);  data : in std_logic_vector (15 downto 0);  op : in 
            std_logic_vector (1 downto 0);  V : out std_logic;  outreg : out 
            std_logic_vector (15 downto 0));
   end component;
   
   signal X_Logic0_port, avg_out_13_port, avg_out_12_port, avg_out_11_port, 
      avg_out_10_port, avg_out_9_port, avg_out_8_port, avg_out_7_port, 
      avg_out_6_port, avg_out_5_port, avg_out_4_port, avg_out_3_port, 
      avg_out_2_port, avg_out_1_port, avg_out_0_port, A_3_port, A_2_port, 
      A_1_port, A_0_port, B_3_port, B_2_port, B_1_port, B_0_port, C_3_port, 
      C_2_port, C_1_port, C_0_port, op_1_port, op_0_port, V, dr, cnt_up, n_1005
      , n_1006, n_1007, n_1008, n_1009, n_1010 : std_logic;

begin
   avg_out <= ( X_Logic0_port, X_Logic0_port, avg_out_13_port, avg_out_12_port,
      avg_out_11_port, avg_out_10_port, avg_out_9_port, avg_out_8_port, 
      avg_out_7_port, avg_out_6_port, avg_out_5_port, avg_out_4_port, 
      avg_out_3_port, avg_out_2_port, avg_out_1_port, avg_out_0_port );
   
   X_Logic0_port <= '0';
   U_3 : datapath port map( clk => clk, nReset => nReset, A(3) => A_3_port, 
                           A(2) => A_2_port, A(1) => A_1_port, A(0) => A_0_port
                           , B(3) => B_3_port, B(2) => B_2_port, B(1) => 
                           B_1_port, B(0) => B_0_port, C(3) => C_3_port, C(2) 
                           => C_2_port, C(1) => C_1_port, C(0) => C_0_port, 
                           data(15) => data(15), data(14) => data(14), data(13)
                           => data(13), data(12) => data(12), data(11) => 
                           data(11), data(10) => data(10), data(9) => data(9), 
                           data(8) => data(8), data(7) => data(7), data(6) => 
                           data(6), data(5) => data(5), data(4) => data(4), 
                           data(3) => data(3), data(2) => data(2), data(1) => 
                           data(1), data(0) => data(0), op(1) => op_1_port, 
                           op(0) => op_0_port, V => V, outreg(15) => 
                           avg_out_13_port, outreg(14) => avg_out_12_port, 
                           outreg(13) => avg_out_11_port, outreg(12) => 
                           avg_out_10_port, outreg(11) => avg_out_9_port, 
                           outreg(10) => avg_out_8_port, outreg(9) => 
                           avg_out_7_port, outreg(8) => avg_out_6_port, 
                           outreg(7) => avg_out_5_port, outreg(6) => 
                           avg_out_4_port, outreg(5) => avg_out_3_port, 
                           outreg(4) => avg_out_2_port, outreg(3) => 
                           avg_out_1_port, outreg(2) => avg_out_0_port, 
                           outreg(1) => n_1005, outreg(0) => n_1006);
   U_2 : controller port map( clk => clk, nReset => nReset, dr => dr, V => V, 
                           cnt_up => cnt_up, modwait => modwait, op(1) => 
                           op_1_port, op(0) => op_0_port, A(3) => n_1007, A(2) 
                           => n_1008, A(1) => A_1_port, A(0) => A_0_port, B(3) 
                           => n_1009, B(2) => B_2_port, B(1) => B_1_port, B(0) 
                           => B_0_port, C(3) => n_1010, C(2) => C_2_port, C(1) 
                           => C_1_port, C(0) => C_0_port, err => err);
   U_1 : counter port map( clk => clk, nReset => nReset, cnt_up => cnt_up, 
                           count_out(15) => count_out(15), count_out(14) => 
                           count_out(14), count_out(13) => count_out(13), 
                           count_out(12) => count_out(12), count_out(11) => 
                           count_out(11), count_out(10) => count_out(10), 
                           count_out(9) => count_out(9), count_out(8) => 
                           count_out(8), count_out(7) => count_out(7), 
                           count_out(6) => count_out(6), count_out(5) => 
                           count_out(5), count_out(4) => count_out(4), 
                           count_out(3) => count_out(3), count_out(2) => 
                           count_out(2), count_out(1) => count_out(1), 
                           count_out(0) => count_out(0));
   U_0 : sync port map( clk => clk, nReset => nReset, A => data_ready, A_sync 
                           => dr);
   C_3_port <= '0';
   B_3_port <= '0';
   A_2_port <= '0';
   A_3_port <= '0';

end SYN_struct;
