--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: lab1schem_timesim.vhd
-- /___/   /\     Timestamp: Tue Oct 17 15:41:25 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm lab1schem -w -dir netgen/fit -ofmt vhdl -sim lab1schem.nga lab1schem_timesim.vhd 
-- Device	: XC9572XL-10-PC44 (Speed File: Version 3.0)
-- Input file	: lab1schem.nga
-- Output file	: C:\MazurKoziel\lab1\netgen\fit\lab1schem_timesim.vhd
-- # of Entities	: 1
-- Design Name	: lab1schem.nga
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity lab1schem is
  port (
    K1 : in STD_LOGIC := 'X'; 
    K0 : in STD_LOGIC := 'X'; 
    LED0 : out STD_LOGIC 
  );
end lab1schem;

architecture Structure of lab1schem is
  signal K1_IBUF_1 : STD_LOGIC; 
  signal K0_IBUF_3 : STD_LOGIC; 
  signal LED0_OBUF_5 : STD_LOGIC; 
  signal LED0_OBUF_Q_6 : STD_LOGIC; 
  signal LED0_OBUF_D_7 : STD_LOGIC; 
  signal LED0_OBUF_D1_8 : STD_LOGIC; 
  signal LED0_OBUF_D2_9 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED0_OBUF_D2_IN1 : STD_LOGIC; 
begin
  K1_IBUF : X_BUF
    port map (
      I => K1,
      O => K1_IBUF_1
    );
  K0_IBUF : X_BUF
    port map (
      I => K0,
      O => K0_IBUF_3
    );
  LED0_6 : X_BUF
    port map (
      I => LED0_OBUF_5,
      O => LED0
    );
  LED0_OBUF : X_BUF
    port map (
      I => LED0_OBUF_Q_6,
      O => LED0_OBUF_5
    );
  LED0_OBUF_Q : X_BUF
    port map (
      I => LED0_OBUF_D_7,
      O => LED0_OBUF_Q_6
    );
  LED0_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_LED0_OBUF_D_IN0,
      I1 => NlwBufferSignal_LED0_OBUF_D_IN1,
      O => LED0_OBUF_D_7
    );
  LED0_OBUF_D1 : X_ZERO
    port map (
      O => LED0_OBUF_D1_8
    );
  LED0_OBUF_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_LED0_OBUF_D2_IN0,
      I1 => NlwInverterSignal_LED0_OBUF_D2_IN1,
      O => LED0_OBUF_D2_9
    );
  NlwBufferBlock_LED0_OBUF_D_IN0 : X_BUF
    port map (
      I => LED0_OBUF_D1_8,
      O => NlwBufferSignal_LED0_OBUF_D_IN0
    );
  NlwBufferBlock_LED0_OBUF_D_IN1 : X_BUF
    port map (
      I => LED0_OBUF_D2_9,
      O => NlwBufferSignal_LED0_OBUF_D_IN1
    );
  NlwBufferBlock_LED0_OBUF_D2_IN0 : X_BUF
    port map (
      I => K1_IBUF_1,
      O => NlwBufferSignal_LED0_OBUF_D2_IN0
    );
  NlwBufferBlock_LED0_OBUF_D2_IN1 : X_BUF
    port map (
      I => K0_IBUF_3,
      O => NlwBufferSignal_LED0_OBUF_D2_IN1
    );
  NlwInverterBlock_LED0_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_LED0_OBUF_D_IN0,
      O => NlwInverterSignal_LED0_OBUF_D_IN0
    );
  NlwInverterBlock_LED0_OBUF_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_LED0_OBUF_D2_IN0,
      O => NlwInverterSignal_LED0_OBUF_D2_IN0
    );
  NlwInverterBlock_LED0_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_LED0_OBUF_D2_IN1,
      O => NlwInverterSignal_LED0_OBUF_D2_IN1
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

