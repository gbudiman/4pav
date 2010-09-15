
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_controller is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_controller;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_controller.all;

entity controller is

   port( clk, nReset, dr, V : in std_logic;  cnt_up, modwait : out std_logic;  
         op : out std_logic_vector (1 downto 0);  A, B, C : out 
         std_logic_vector (3 downto 0);  err : out std_logic);

end controller;

architecture SYN_cb of controller is

   component NOR2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND3X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component AOI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI21X1
      port( A, B, C : in std_logic;  Y : out std_logic);
   end component;
   
   component NAND2X1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component OAI22X1
      port( A, B, C, D : in std_logic;  Y : out std_logic);
   end component;
   
   component INVX2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component OR2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component AND2X2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component LATCH
      port( CLK, D : in std_logic;  Q : out std_logic);
   end component;
   
   component DFFSR
      port( D, CLK, R, S : in std_logic;  Q : out std_logic);
   end component;
   
   signal X_Logic0_port, op_1_port, op_0_port, A_1_port, A_0_port, B_1_port, 
      C_0_port, state_3_port, state_2_port, state_1_port, state_0_port, 
      nextState_3_port, nextState_2_port, nextState_1_port, nextState_0_port, 
      N53, n1, n2, n3, n4, n6, cnt_up_port, C_1_port, n9, n10, n11, n12, n13, 
      n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28
      , n29, n30, n31, n32, B_2_port, B_0_port : std_logic;

begin
   cnt_up <= cnt_up_port;
   op <= ( op_1_port, op_0_port );
   A <= ( X_Logic0_port, X_Logic0_port, A_1_port, A_0_port );
   B <= ( X_Logic0_port, B_2_port, B_1_port, B_0_port );
   C <= ( X_Logic0_port, cnt_up_port, C_1_port, C_0_port );
   
   X_Logic0_port <= '0';
   state_reg_0_inst : DFFSR port map( D => nextState_0_port, CLK => clk, R => 
                           nReset, S => n4, Q => state_0_port);
   state_reg_2_inst : DFFSR port map( D => nextState_2_port, CLK => clk, R => 
                           nReset, S => n3, Q => state_2_port);
   state_reg_3_inst : DFFSR port map( D => nextState_3_port, CLK => clk, R => 
                           nReset, S => n2, Q => state_3_port);
   state_reg_1_inst : DFFSR port map( D => nextState_1_port, CLK => clk, R => 
                           nReset, S => n1, Q => state_1_port);
   modwait_reg : LATCH port map( CLK => N53, D => cnt_up_port, Q => modwait);
   n1 <= '1';
   n2 <= '1';
   n3 <= '1';
   n4 <= '1';
   U7 : AND2X2 port map( A => op_1_port, B => n27, Y => B_0_port);
   U8 : OR2X2 port map( A => n22, B => state_3_port, Y => n19);
   U9 : INVX2 port map( A => n17, Y => err);
   U10 : INVX2 port map( A => A_1_port, Y => n6);
   U11 : INVX2 port map( A => n29, Y => cnt_up_port);
   U12 : INVX2 port map( A => n32, Y => C_1_port);
   U13 : INVX2 port map( A => state_3_port, Y => n9);
   U14 : INVX2 port map( A => op_1_port, Y => n10);
   U15 : INVX2 port map( A => state_2_port, Y => n11);
   U16 : INVX2 port map( A => n23, Y => n12);
   U17 : INVX2 port map( A => state_1_port, Y => n13);
   U18 : INVX2 port map( A => state_0_port, Y => n14);
   U19 : INVX2 port map( A => dr, Y => n15);
   U20 : INVX2 port map( A => V, Y => n16);
   U21 : OAI21X1 port map( A => dr, B => n17, C => n18, Y => nextState_3_port);
   U22 : NAND3X1 port map( A => state_2_port, B => op_0_port, C => V, Y => n18)
                           ;
   U23 : NAND2X1 port map( A => n19, B => n20, Y => op_0_port);
   U24 : OAI22X1 port map( A => state_2_port, B => n20, C => n10, D => n21, Y 
                           => nextState_2_port);
   U25 : OAI21X1 port map( A => n22, B => n16, C => n12, Y => n21);
   U26 : NAND2X1 port map( A => n23, B => n9, Y => n20);
   U27 : OAI21X1 port map( A => V, B => n19, C => n6, Y => nextState_1_port);
   U28 : OAI21X1 port map( A => n24, B => n15, C => n25, Y => nextState_0_port)
                           ;
   U29 : AOI21X1 port map( A => n26, B => n27, C => C_0_port, Y => n25);
   U30 : NOR2X1 port map( A => state_3_port, B => V, Y => n26);
   U31 : NAND3X1 port map( A => state_3_port, B => n22, C => n28, Y => n17);
   U32 : NOR2X1 port map( A => state_2_port, B => n23, Y => n28);
   U33 : NOR2X1 port map( A => n12, B => n10, Y => B_2_port);
   U34 : NOR2X1 port map( A => n13, B => n14, Y => n23);
   U35 : NAND2X1 port map( A => n29, B => n24, Y => N53);
   U36 : NAND3X1 port map( A => n13, B => n11, C => n14, Y => n24);
   U37 : NOR2X1 port map( A => n30, B => state_0_port, Y => C_0_port);
   U38 : NOR2X1 port map( A => n22, B => n10, Y => B_1_port);
   U39 : NOR2X1 port map( A => n19, B => state_2_port, Y => A_1_port);
   U40 : AOI21X1 port map( A => n13, B => state_0_port, C => n27, Y => n22);
   U41 : NOR2X1 port map( A => n13, B => state_0_port, Y => n27);
   U42 : OAI21X1 port map( A => n30, B => n14, C => n29, Y => A_0_port);
   U43 : NAND3X1 port map( A => state_0_port, B => n13, C => n31, Y => n29);
   U44 : NOR2X1 port map( A => state_3_port, B => state_2_port, Y => n31);
   U45 : AOI21X1 port map( A => n13, B => op_1_port, C => C_1_port, Y => n30);
   U46 : NAND3X1 port map( A => n11, B => n9, C => state_1_port, Y => n32);
   U47 : NOR2X1 port map( A => n11, B => state_3_port, Y => op_1_port);

end SYN_cb;
