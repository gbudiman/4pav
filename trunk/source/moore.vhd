-- $Id: $
-- File name:   moore.vhd
-- Created:     9/7/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: 1101 Detector - Moore


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY moore IS
	PORT (
		clk, rst: IN STD_LOGIC;
		I: IN STD_LOGIC;
		O: OUT STD_LOGIC);
END moore;

ARCHITECTURE mooreB OF moore IS
	TYPE stateType IS (waiting, rcv1, rcv11, rcv110, rcv1101);
	SIGNAL state, nextState: stateType;
	BEGIN 
	StateReg: process(clk, rst)
   	BEGIN
    		IF (rst = '1') THEN
     			state <= waiting;
    		ELSIF (RISING_EDGE(clk)) THEN
    	 		state <= nextState;
    		END IF;
   	END PROCESS StateReg;
		
  NextStateLogic: process(state, I)
    BEGIN
    		CASE state IS
    			 WHEN waiting =>
    			  	IF (I = '1') THEN			nextState <= rcv1;
    			   		ELSE					nextState <= waiting;
    			  	END IF;
    			 WHEN rcv1 =>
    			 	 IF (I = '1') THEN			nextState <= rcv11;
    			 	  	ELSE					nextState <= waiting;
    			 	 END IF;
    			 WHEN rcv11 =>
    			 	 IF (I = '0') THEN			nextState <= rcv110;
    			 	  	ELSE					nextState <= rcv11;
    			 	 END IF;
    			 WHEN rcv110 =>
    			 	 IF (I = '1') THEN			nextState <= rcv1101;
    			 	  	ELSE					nextState <= waiting;
    			 	 END IF;
    			 WHEN rcv1101 =>
   			 	  IF (I = '1') THEN			nextState <= rcv11;
    			 	  	ELSE					nextState <= waiting;
    			 	 END IF;
    		 END CASE;
  	END PROCESS NextStateLogic;
	
	O <= '1' WHEN state = rcv1101
	  ELSE '0';
	    
END mooreB;
