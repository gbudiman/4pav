-- $Id: $
-- File name:   sync.vhd
-- Created:     9/9/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Synchronizer for 4PAV


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY sync IS
	PORT(clk: IN STD_LOGIC;
		nReset: IN STD_LOGIC;
		A: IN STD_LOGIC;
		A_sync: OUT STD_LOGIC);
END sync;

ARCHITECTURE bSync OF sync IS
	TYPE dffState IS (s0, s1);
	SIGNAL state: dffState;
	SIGNAL reg1: STD_LOGIC;
BEGIN
  Sync: PROCESS(A, clk, nReset, state)
  BEGIN
    IF (nReset = '0') THEN
      A_sync <= '0';
      reg1 <= '0';
    ELSIF (RISING_EDGE(clk)) THEN
      reg1 <= A;
      A_Sync <= reg1;
    END IF;
    --IF (nReset = '0') THEN 
--      state <= s0;
--      reg1 <= '0';
--      A_sync <= '0';
--    ELSIF (RISING_EDGE(clk)) THEN
--      IF (state = s0) THEN
--        state <= s1;
--        reg1 <= A;
--        A_sync <= reg1;
--      ELSIF (state = s1) THEN
--        state <= s0;
--        reg1 <= A;
--        A_sync <= reg1;
--      END IF;
--    END IF;
  END PROCESS Sync;
	--dff: PROCESS(A, clk, nReset)
--	BEGIN
--		IF (nReset = '0') THEN sint <= '0';
--		ELSIF (RISING_EDGE(clk)) THEN
--		  sint <= A;
--		END IF;
--	END PROCESS dff;
--	
--	dsf: PROCESS(sint, clk, nReset)
--	BEGIN
--	  IF (nReset = '0') THEN A_sync <= '0';
--	  ELSIF (RISING_EDGE(clk)) THEN
--	    A_sync <= sint;
--	  END IF;
--	END PROCESS dsf;
	
	-- A_sync <= '1' WHEN state = s1 ELSE '0';
END bSync;
