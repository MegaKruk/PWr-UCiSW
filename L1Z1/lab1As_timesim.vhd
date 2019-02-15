--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: lab1As_timesim.vhd
-- /___/   /\     Timestamp: Tue Oct 17 16:35:30 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm lab1As -w -dir netgen/fit -ofmt vhdl -sim lab1As.nga lab1As_timesim.vhd 
-- Device	: XC9572XL-10-PC44 (Speed File: Version 3.0)
-- Input file	: lab1As.nga
-- Output file	: C:\MazurKoziel\lab1A\netgen\fit\lab1As_timesim.vhd
-- # of Entities	: 1
-- Design Name	: lab1As.nga
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

entity lab1As is
  port (
    K2 : in STD_LOGIC := 'X'; 
    K3 : in STD_LOGIC := 'X'; 
    K1 : in STD_LOGIC := 'X'; 
    K0 : in STD_LOGIC := 'X'; 
    LED3 : out STD_LOGIC; 
    LED2 : out STD_LOGIC; 
    LED1 : out STD_LOGIC; 
    LED0 : out STD_LOGIC 
  );
end lab1As;

architecture Structure of lab1As is
  signal K2_IBUF_1 : STD_LOGIC; 
  signal K3_IBUF_3 : STD_LOGIC; 
  signal K1_IBUF_5 : STD_LOGIC; 
  signal K0_IBUF_7 : STD_LOGIC; 
  signal LED3_OBUF_9 : STD_LOGIC; 
  signal LED2_OBUF_11 : STD_LOGIC; 
  signal LED1_OBUF_13 : STD_LOGIC; 
  signal LED0_OBUF_15 : STD_LOGIC; 
  signal LED3_OBUF_Q_16 : STD_LOGIC; 
  signal LED3_OBUF_D_17 : STD_LOGIC; 
  signal LED3_OBUF_D1_18 : STD_LOGIC; 
  signal LED3_OBUF_D2_19 : STD_LOGIC; 
  signal LED3_OBUF_D2_PT_0_20 : STD_LOGIC; 
  signal LED3_OBUF_D2_PT_1_21 : STD_LOGIC; 
  signal LED3_OBUF_D2_PT_2_22 : STD_LOGIC; 
  signal LED3_OBUF_D2_PT_3_23 : STD_LOGIC; 
  signal LED2_OBUF_Q_24 : STD_LOGIC; 
  signal LED2_OBUF_D_25 : STD_LOGIC; 
  signal LED2_OBUF_D1_26 : STD_LOGIC; 
  signal LED2_OBUF_D2_27 : STD_LOGIC; 
  signal LED2_OBUF_D2_PT_0_28 : STD_LOGIC; 
  signal LED2_OBUF_D2_PT_1_29 : STD_LOGIC; 
  signal LED2_OBUF_D2_PT_2_30 : STD_LOGIC; 
  signal LED1_OBUF_Q_31 : STD_LOGIC; 
  signal LED1_OBUF_D_32 : STD_LOGIC; 
  signal LED1_OBUF_D1_33 : STD_LOGIC; 
  signal LED1_OBUF_D2_34 : STD_LOGIC; 
  signal LED0_OBUF_Q_35 : STD_LOGIC; 
  signal LED0_OBUF_D_36 : STD_LOGIC; 
  signal LED0_OBUF_D1_37 : STD_LOGIC; 
  signal LED0_OBUF_D2_38 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_LED3_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED2_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_LED1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED1_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED1_OBUF_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED1_OBUF_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED1_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED1_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_LED0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED3_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED3_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED3_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED3_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED3_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_LED2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED2_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED2_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_LED2_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_LED1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_LED0_OBUF_D2_IN1 : STD_LOGIC; 
begin
  K2_IBUF : X_BUF
    port map (
      I => K2,
      O => K2_IBUF_1
    );
  K3_IBUF : X_BUF
    port map (
      I => K3,
      O => K3_IBUF_3
    );
  K1_IBUF : X_BUF
    port map (
      I => K1,
      O => K1_IBUF_5
    );
  K0_IBUF : X_BUF
    port map (
      I => K0,
      O => K0_IBUF_7
    );
  LED3_10 : X_BUF
    port map (
      I => LED3_OBUF_9,
      O => LED3
    );
  LED2_12 : X_BUF
    port map (
      I => LED2_OBUF_11,
      O => LED2
    );
  LED1_14 : X_BUF
    port map (
      I => LED1_OBUF_13,
      O => LED1
    );
  LED0_16 : X_BUF
    port map (
      I => LED0_OBUF_15,
      O => LED0
    );
  LED3_OBUF : X_BUF
    port map (
      I => LED3_OBUF_Q_16,
      O => LED3_OBUF_9
    );
  LED3_OBUF_Q : X_BUF
    port map (
      I => LED3_OBUF_D_17,
      O => LED3_OBUF_Q_16
    );
  LED3_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_LED3_OBUF_D_IN0,
      I1 => NlwBufferSignal_LED3_OBUF_D_IN1,
      O => LED3_OBUF_D_17
    );
  LED3_OBUF_D1 : X_ZERO
    port map (
      O => LED3_OBUF_D1_18
    );
  LED3_OBUF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_LED3_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_LED3_OBUF_D2_PT_0_IN1,
      O => LED3_OBUF_D2_PT_0_20
    );
  LED3_OBUF_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_LED3_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_LED3_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_LED3_OBUF_D2_PT_1_IN2,
      O => LED3_OBUF_D2_PT_1_21
    );
  LED3_OBUF_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_LED3_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_LED3_OBUF_D2_PT_2_IN1,
      I2 => NlwBufferSignal_LED3_OBUF_D2_PT_2_IN2,
      O => LED3_OBUF_D2_PT_2_22
    );
  LED3_OBUF_D2_PT_3 : X_AND3
    port map (
      I0 => NlwBufferSignal_LED3_OBUF_D2_PT_3_IN0,
      I1 => NlwInverterSignal_LED3_OBUF_D2_PT_3_IN1,
      I2 => NlwInverterSignal_LED3_OBUF_D2_PT_3_IN2,
      O => LED3_OBUF_D2_PT_3_23
    );
  LED3_OBUF_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_LED3_OBUF_D2_IN0,
      I1 => NlwBufferSignal_LED3_OBUF_D2_IN1,
      I2 => NlwBufferSignal_LED3_OBUF_D2_IN2,
      I3 => NlwBufferSignal_LED3_OBUF_D2_IN3,
      O => LED3_OBUF_D2_19
    );
  LED2_OBUF : X_BUF
    port map (
      I => LED2_OBUF_Q_24,
      O => LED2_OBUF_11
    );
  LED2_OBUF_Q : X_BUF
    port map (
      I => LED2_OBUF_D_25,
      O => LED2_OBUF_Q_24
    );
  LED2_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_LED2_OBUF_D_IN0,
      I1 => NlwBufferSignal_LED2_OBUF_D_IN1,
      O => LED2_OBUF_D_25
    );
  LED2_OBUF_D1 : X_ZERO
    port map (
      O => LED2_OBUF_D1_26
    );
  LED2_OBUF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_LED2_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_LED2_OBUF_D2_PT_0_IN1,
      O => LED2_OBUF_D2_PT_0_28
    );
  LED2_OBUF_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_LED2_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_LED2_OBUF_D2_PT_1_IN1,
      O => LED2_OBUF_D2_PT_1_29
    );
  LED2_OBUF_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_LED2_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_LED2_OBUF_D2_PT_2_IN1,
      I2 => NlwInverterSignal_LED2_OBUF_D2_PT_2_IN2,
      O => LED2_OBUF_D2_PT_2_30
    );
  LED2_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_LED2_OBUF_D2_IN0,
      I1 => NlwBufferSignal_LED2_OBUF_D2_IN1,
      I2 => NlwBufferSignal_LED2_OBUF_D2_IN2,
      O => LED2_OBUF_D2_27
    );
  LED1_OBUF : X_BUF
    port map (
      I => LED1_OBUF_Q_31,
      O => LED1_OBUF_13
    );
  LED1_OBUF_Q : X_BUF
    port map (
      I => LED1_OBUF_D_32,
      O => LED1_OBUF_Q_31
    );
  LED1_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_LED1_OBUF_D_IN0,
      I1 => NlwBufferSignal_LED1_OBUF_D_IN1,
      O => LED1_OBUF_D_32
    );
  LED1_OBUF_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_LED1_OBUF_D1_IN0,
      I1 => NlwBufferSignal_LED1_OBUF_D1_IN1,
      O => LED1_OBUF_D1_33
    );
  LED1_OBUF_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_LED1_OBUF_D2_IN0,
      I1 => NlwBufferSignal_LED1_OBUF_D2_IN1,
      O => LED1_OBUF_D2_34
    );
  LED0_OBUF : X_BUF
    port map (
      I => LED0_OBUF_Q_35,
      O => LED0_OBUF_15
    );
  LED0_OBUF_Q : X_BUF
    port map (
      I => LED0_OBUF_D_36,
      O => LED0_OBUF_Q_35
    );
  LED0_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_LED0_OBUF_D_IN0,
      I1 => NlwBufferSignal_LED0_OBUF_D_IN1,
      O => LED0_OBUF_D_36
    );
  LED0_OBUF_D1 : X_ZERO
    port map (
      O => LED0_OBUF_D1_37
    );
  LED0_OBUF_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_LED0_OBUF_D2_IN0,
      I1 => NlwInverterSignal_LED0_OBUF_D2_IN1,
      O => LED0_OBUF_D2_38
    );
  NlwBufferBlock_LED3_OBUF_D_IN0 : X_BUF
    port map (
      I => LED3_OBUF_D1_18,
      O => NlwBufferSignal_LED3_OBUF_D_IN0
    );
  NlwBufferBlock_LED3_OBUF_D_IN1 : X_BUF
    port map (
      I => LED3_OBUF_D2_19,
      O => NlwBufferSignal_LED3_OBUF_D_IN1
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => K2_IBUF_1,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => K3_IBUF_3,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => K2_IBUF_1,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => K3_IBUF_3,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => K1_IBUF_5,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => K2_IBUF_1,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => K3_IBUF_3,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_3_IN0 : X_BUF
    port map (
      I => K3_IBUF_3,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_3_IN0
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_3_IN1 : X_BUF
    port map (
      I => K1_IBUF_5,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_3_IN1
    );
  NlwBufferBlock_LED3_OBUF_D2_PT_3_IN2 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED3_OBUF_D2_PT_3_IN2
    );
  NlwBufferBlock_LED3_OBUF_D2_IN0 : X_BUF
    port map (
      I => LED3_OBUF_D2_PT_0_20,
      O => NlwBufferSignal_LED3_OBUF_D2_IN0
    );
  NlwBufferBlock_LED3_OBUF_D2_IN1 : X_BUF
    port map (
      I => LED3_OBUF_D2_PT_1_21,
      O => NlwBufferSignal_LED3_OBUF_D2_IN1
    );
  NlwBufferBlock_LED3_OBUF_D2_IN2 : X_BUF
    port map (
      I => LED3_OBUF_D2_PT_2_22,
      O => NlwBufferSignal_LED3_OBUF_D2_IN2
    );
  NlwBufferBlock_LED3_OBUF_D2_IN3 : X_BUF
    port map (
      I => LED3_OBUF_D2_PT_3_23,
      O => NlwBufferSignal_LED3_OBUF_D2_IN3
    );
  NlwBufferBlock_LED2_OBUF_D_IN0 : X_BUF
    port map (
      I => LED2_OBUF_D1_26,
      O => NlwBufferSignal_LED2_OBUF_D_IN0
    );
  NlwBufferBlock_LED2_OBUF_D_IN1 : X_BUF
    port map (
      I => LED2_OBUF_D2_27,
      O => NlwBufferSignal_LED2_OBUF_D_IN1
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => K2_IBUF_1,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => K1_IBUF_5,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => K2_IBUF_1,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => K2_IBUF_1,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => K1_IBUF_5,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_LED2_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED2_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_LED2_OBUF_D2_IN0 : X_BUF
    port map (
      I => LED2_OBUF_D2_PT_0_28,
      O => NlwBufferSignal_LED2_OBUF_D2_IN0
    );
  NlwBufferBlock_LED2_OBUF_D2_IN1 : X_BUF
    port map (
      I => LED2_OBUF_D2_PT_1_29,
      O => NlwBufferSignal_LED2_OBUF_D2_IN1
    );
  NlwBufferBlock_LED2_OBUF_D2_IN2 : X_BUF
    port map (
      I => LED2_OBUF_D2_PT_2_30,
      O => NlwBufferSignal_LED2_OBUF_D2_IN2
    );
  NlwBufferBlock_LED1_OBUF_D_IN0 : X_BUF
    port map (
      I => LED1_OBUF_D1_33,
      O => NlwBufferSignal_LED1_OBUF_D_IN0
    );
  NlwBufferBlock_LED1_OBUF_D_IN1 : X_BUF
    port map (
      I => LED1_OBUF_D2_34,
      O => NlwBufferSignal_LED1_OBUF_D_IN1
    );
  NlwBufferBlock_LED1_OBUF_D1_IN0 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED1_OBUF_D1_IN0
    );
  NlwBufferBlock_LED1_OBUF_D1_IN1 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED1_OBUF_D1_IN1
    );
  NlwBufferBlock_LED1_OBUF_D2_IN0 : X_BUF
    port map (
      I => K1_IBUF_5,
      O => NlwBufferSignal_LED1_OBUF_D2_IN0
    );
  NlwBufferBlock_LED1_OBUF_D2_IN1 : X_BUF
    port map (
      I => K1_IBUF_5,
      O => NlwBufferSignal_LED1_OBUF_D2_IN1
    );
  NlwBufferBlock_LED0_OBUF_D_IN0 : X_BUF
    port map (
      I => LED0_OBUF_D1_37,
      O => NlwBufferSignal_LED0_OBUF_D_IN0
    );
  NlwBufferBlock_LED0_OBUF_D_IN1 : X_BUF
    port map (
      I => LED0_OBUF_D2_38,
      O => NlwBufferSignal_LED0_OBUF_D_IN1
    );
  NlwBufferBlock_LED0_OBUF_D2_IN0 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED0_OBUF_D2_IN0
    );
  NlwBufferBlock_LED0_OBUF_D2_IN1 : X_BUF
    port map (
      I => K0_IBUF_7,
      O => NlwBufferSignal_LED0_OBUF_D2_IN1
    );
  NlwInverterBlock_LED3_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_LED3_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_LED3_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_LED3_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_LED3_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_LED3_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_LED3_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_LED3_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_LED3_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_LED3_OBUF_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_LED3_OBUF_D2_PT_3_IN1,
      O => NlwInverterSignal_LED3_OBUF_D2_PT_3_IN1
    );
  NlwInverterBlock_LED3_OBUF_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_LED3_OBUF_D2_PT_3_IN2,
      O => NlwInverterSignal_LED3_OBUF_D2_PT_3_IN2
    );
  NlwInverterBlock_LED2_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_LED2_OBUF_D_IN0,
      O => NlwInverterSignal_LED2_OBUF_D_IN0
    );
  NlwInverterBlock_LED2_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_LED2_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_LED2_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_LED2_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_LED2_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_LED2_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_LED2_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_LED2_OBUF_D2_PT_2_IN2,
      O => NlwInverterSignal_LED2_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_LED1_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_LED1_OBUF_D_IN0,
      O => NlwInverterSignal_LED1_OBUF_D_IN0
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

