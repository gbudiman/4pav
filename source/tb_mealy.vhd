-- $Id: $
-- File name:   tb_mealy.vhd
-- Created:     9/7/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Test Bench

library ieee;
--library gold_lib;   --UNCOMMENT if you're using a GOLD model
use ieee.std_logic_1164.all;
--use gold_lib.all;   --UNCOMMENT if you're using a GOLD model

entity tb_mealy is
end tb_mealy;

architecture TEST of tb_mealy is

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

  component mealy
    PORT(
         clk : IN STD_LOGIC;
         rst : IN STD_LOGIC;
         I : IN STD_LOGIC;
         O : OUT STD_LOGIC
    );
  end component;

-- Insert signals Declarations here
  signal clk : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal I : STD_LOGIC;
  signal O : STD_LOGIC;

-- signal <name> : <type>;

begin
  DUT: mealy port map(
                clk => clk,
                rst => rst,
                I => I,
                O => O
                );

--   GOLD: <GOLD_NAME> port map(<put mappings here>);

process

  begin

-- Insert TEST BENCH Code Here

    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;

    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 2 ns;
    rst <= '1';
    wait for 3 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    rst <= '1';
    wait for 2 ns;
    rst <= '0';
    wait for 1 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
        
    clk <= '0';
    rst <= '0';
    I <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '1';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    clk <= '0';
    rst <= '0';
    I <= '0';
    wait for 5 ns;
    clk <= '1';
    wait for 5 ns;
    
    wait;

  end process;
end TEST;