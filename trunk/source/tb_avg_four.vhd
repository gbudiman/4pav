-- $Id: $
-- File name:   tb_avg_four.vhd
-- Created:     9/9/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_avg_four is
  generic (Period : Time := 5 ns);
end tb_avg_four;

architecture TEST of tb_avg_four is

  function INT_TO_STD_LOGIC( X: INTEGER; NumBits: INTEGER )
     return STD_LOGIC_VECTOR is
    variable RES : STD_LOGIC_VECTOR(NumBits-1 downto 0);
    variable tmp : INTEGER;
  begin
    tmp := X;
    for i in 0 to NumBits-1 loop
      if (tmp mod 2)=1 then
        res(i) := '1';
      else
        res(i) := '0';
      end if;
      tmp := tmp/2;
    end loop;
    return res;
  end;

  component avg_four
    PORT(
         clk : IN STD_LOGIC;
         data : IN std_logic_vector (15 DOWNTO 0);
         data_ready : IN STD_LOGIC;
         nReset : IN STD_LOGIC;
         avg_out : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
         count_out : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
         err : OUT STD_LOGIC;
         modwait : OUT STD_LOGIC
    );
  end component;
  
  component GOLD_avg_four
      PORT(
           clk : IN STD_LOGIC;
           data : IN std_logic_vector (15 DOWNTO 0);
           data_ready : IN STD_LOGIC;
           nReset : IN STD_LOGIC;
           avg_out : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
           count_out : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
           err : OUT STD_LOGIC;
           modwait : OUT STD_LOGIC
      );
    end component;

-- Insert signals Declarations here
  signal clk : STD_LOGIC;
  signal data : std_logic_vector (15 DOWNTO 0);
  signal data_ready : STD_LOGIC;
  signal nReset : STD_LOGIC;
  signal avg_out : STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal count_out : STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal err : STD_LOGIC;
  signal modwait : STD_LOGIC;

-- signal <name> : <type>;

  signal comp_count_out: STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal comp_avg_out : STD_LOGIC_VECTOR (15 DOWNTO 0);
  signal comp_err: STD_LOGIC;
  signal comp_modwait: STD_LOGIC;

begin
  DUT: avg_four port map(
                clk => clk,
                data => data,
                data_ready => data_ready,
                nReset => nReset,
                avg_out => avg_out,
                count_out => count_out,
                err => err,
                modwait => modwait
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);
  GOLD: GOLD_avg_four port map(
                clk => clk,
                data => data,
                data_ready => data_ready,
                nReset => nReset,
                avg_out => comp_avg_out,
                count_out => comp_count_out,
                err => comp_err,
                modwait => comp_modwait
                );

autoClock: process
  BEGIN
    clk <= '0';
    wait for period/2;
    clk <= '1';
    wait for period/2;
  END process autoClock;

process

  begin
    
-- Insert TEST BENCH Code Here
    
    --clk <= 
    --data <= 
    --data_ready <= 
    --nReset <= 
    nReset <= '1';
    data <= X"AAAA";
    data_ready <= '1';
    wait for 5 ns;
    data_ready <= '0';
    wait for 10 ns;
    
    nReset <= '0';
    wait for 10 ns;
    nReset <= '1';
    
    wait for 40 ns;
    
    data <= X"0000";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"0FFF";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"1000";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"FFFF";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"0001";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"01FF";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"0F00";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"00FF";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"0000";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"A000";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"4000";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"1000";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"0FFF";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    data <= X"00FF";
    data_ready <= '1';
    wait for 20 ns;
    data_ready <= '0';
    wait for 80 ns;
    
    WAIT;
  end process;
end TEST;