-- $Id: $
-- File name:   controller.vhd
-- Created:     9/9/2010
-- Author:      Gloria Budiman
-- Lab Section: 337-02
-- Version:     1.0  Initial Design Entry
-- Description: Control Unit for 4PAV


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY controller IS
	PORT(clk: IN STD_LOGIC;
		nReset: IN STD_LOGIC;
		dr: IN STD_LOGIC;
		V: IN STD_LOGIC;
		cnt_up: OUT STD_LOGIC;
		modwait: OUT STD_LOGIC;
		op: OUT STD_LOGIC_VECTOR (1 downto 0);
		A: OUT STD_LOGIC_VECTOR (3 downto 0);
		B: OUT STD_LOGIC_VECTOR (3 downto 0);
		C: OUT STD_LOGIC_VECTOR (3 downto 0);
		err: OUT STD_LOGIC);
END controller;

ARCHITECTURE cb OF controller IS
	TYPE sState IS (idle, sort1, sort2, sort3, 
					store, add1, add2, add3, eidle);
	SIGNAL state, nextState: sState;
BEGIN
	StateReg: process(nReset, clk)
	BEGIN
		IF nReset = '0' THEN 
		  state <= idle;
		ELSIF RISING_EDGE(clk) THEN state <= nextState;
		END IF;
	END process StateReg;

	StateAct: process(state)
	BEGIN
	  err <= '0';
	  op <= "00";
	  A <= "0000";
	  B <= "0000";
	  C <= "0000";
	  cnt_up <= '0';
	  --modwait <= '0';
		CASE state IS
			WHEN idle =>
				modwait <= '0';
				op <= "00";
				cnt_up <= '0';
				err <= '0';
				A <= "0000"; B <= "0000"; C <= "0000";
			WHEN sort1 =>
			  modwait <= '1';
				op <= "01";
    				cnt_up <= '1';
				A <= "0011"; B <= "0000"; C <= "0100";
				err <= '0';
			WHEN sort2 =>
				--modwait <= '1';
				op <= "01";
				cnt_up <= '0';
				A <= "0010"; B <= "0000"; C <= "0011";
			WHEN sort3 =>
			  --modwait <= '1';
				op <= "01";
				A <= "0001"; B <= "0000"; C <= "0010";
			WHEN store =>
			  --modwait <= '1';
				op <= "10";
				A <= "0000"; B <= "0000"; C <= "0001";
			WHEN add1 =>
			  --modwait <= '1';
				op <= "11";
				A <= "0001"; B <= "0010"; C <= "0000";
			WHEN add2 =>
			  --modwait <= '1';
				op <= "11";
				A <= "0000"; B <= "0011"; C <= "0000";
			WHEN add3 =>
			  --modwait <= '1';
				op <= "11";
				A <= "0000"; B <= "0100"; C <= "0000";
			WHEN eidle =>
				modwait <= '0';
				err <= '1';
				op <= "00";
				A <= "0000"; B <= "0000"; C <= "0000";
		END CASE;
	END process StateAct;

	NextStateLogic: process(state, dr, V)
	BEGIN
	  nextState <= state;
		CASE state IS
			WHEN idle =>
				IF (dr = '0') THEN			 nextState <= idle;
				ELSIF	(dr = '1') THEN  nextState <= sort1;
				ELSE                  nextState <= idle;
				END IF;
			WHEN sort1 =>					nextState <= sort2;
			WHEN sort2 =>					nextState <= sort3;
			WHEN sort3 =>					nextState <= store;
			WHEN store =>					nextState <= add1;
			WHEN add1 =>
				IF (V = '1') 
				  THEN				      nextState <= eidle;
				ELSE	           nextState <= add2;
				END IF;
			WHEN add2 =>
				IF (V = '1') 
				  THEN				      nextState <= eidle;
				ELSE						    nextState <= add3;
				END IF;
			WHEN add3 =>
				IF (V = '1') 
				  THEN				      nextState <= eidle;
				ELSE						    nextState <= idle;
				END IF;
			WHEN eidle =>
				IF (dr = '1') 
				  THEN			       nextState <= sort1;
				ELSE						    nextState <= eidle;
				END IF;
			WHEN OTHERS =>    nextState <= idle;
		END CASE;
	END process NextStateLogic;
END cb;
