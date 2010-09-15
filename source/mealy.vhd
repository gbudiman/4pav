-- $Id: $
-- File name:   mealy.vhd
-- Created:     9/7/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: 1101 Detector - Mealy


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mealy IS
	PORT (
		clk, rst: IN STD_LOGIC;
		I: IN STD_LOGIC;
		O: OUT STD_LOGIC);
END mealy;

ARCHITECTURE mealyB OF mealy IS
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
		IF state = waiting AND I = '1' THEN nextState <= rcv1;
 		  ELSIF state = waiting AND I = '0' THEN nextState <= waiting;
  
  	 	 ELSIF state = rcv1 AND I = '1' THEN nextState <= rcv11;
  	 	 ELSIF state = rcv1 AND I = '0' THEN nextState <= waiting;
    
    		ELSIF state = rcv11 AND I = '1' THEN nextState <= rcv11;
  	 	 ELSIF state = rcv11 AND I = '0' THEN nextState <= rcv110;
  
  		  ELSIF state = rcv110 AND I = '1' THEN nextState <= rcv1101;
  		  ELSIF state = rcv110 AND I = '0' THEN nextState <= waiting;
  
  		  ELSIF state = rcv1101 AND I = '1' THEN nextState <= rcv11;
  		  ELSIF state = rcv1101 AND I = '0' THEN nextState <= waiting;
 	   END IF;
 	 END PROCESS NextStateLogic;
	
	O <= '1' WHEN state = rcv1101
	  ELSE '0';
	    
END mealyB;
