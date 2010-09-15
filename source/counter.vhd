-- $Id: $
-- File name:   counter.vhd
-- Created:     9/9/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Counter Unit for 4PAV


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.all;

ENTITY counter IS
	PORT(clk: IN STD_LOGIC;
		nReset: IN STD_LOGIC;
		cnt_up: IN STD_LOGIC;
		count_out: OUT STD_LOGIC_VECTOR (15 downto 0));
END counter;

ARCHITECTURE cob OF counter IS
  SIGNAL currentCount: STD_LOGIC_VECTOR (15 downto 0);
  SIGNAL nextCount: STD_LOGIC_VECTOR (15 downto 0);
BEGIN

	Add: PROCESS(cnt_up, nReset, clk)
	BEGIN
	  -- nextCount is always 1 ahead if currentCount
	  -- Make it that way when the system enters reset
		IF (nReset = '0') THEN 
		  currentCount <= X"0000";
		  nextCount <= X"0001";
		ELSIF (RISING_EDGE(clk)) THEN
		  IF (cnt_up = '1') THEN
		    count_out <= nextCount;
    		  nextCount <= currentCount + 2;
		    currentCount <= nextCount;
		  ELSE
		    count_out <= currentCount;    
		  END IF;
		END IF;
	END PROCESS Add;
	
END cob;
