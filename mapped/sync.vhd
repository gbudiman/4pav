
library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

package CONV_PACK_sync is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_sync;

library IEEE,OSU_AMI05;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_sync.all;

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
