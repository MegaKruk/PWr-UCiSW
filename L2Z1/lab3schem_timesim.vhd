--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: lab3schem_timesim.vhd
-- /___/   /\     Timestamp: Tue Nov 14 15:46:31 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm lab3schem -w -dir netgen/fit -ofmt vhdl -sim lab3schem.nga lab3schem_timesim.vhd 
-- Device	: XC9572XL-5-PC44 (Speed File: Version 3.0)
-- Input file	: lab3schem.nga
-- Output file	: C:\MazurKoziel\lab3\netgen\fit\lab3schem_timesim.vhd
-- # of Entities	: 1
-- Design Name	: lab3schem.nga
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

entity lab3schem is
  port (
    X : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    D7S_S : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end lab3schem;

architecture Structure of lab3schem is
  signal X_1_IBUF_3 : STD_LOGIC; 
  signal X_2_IBUF_5 : STD_LOGIC; 
  signal X_3_IBUF_7 : STD_LOGIC; 
  signal D7S_S_1_OBUF_9 : STD_LOGIC; 
  signal D7S_S_2_OBUF_11 : STD_LOGIC; 
  signal D7S_S_3_OBUF_13 : STD_LOGIC; 
  signal D7S_S_0_OBUF_15 : STD_LOGIC; 
  signal D7S_S_4_OBUF_17 : STD_LOGIC; 
  signal D7S_S_5_OBUF_19 : STD_LOGIC; 
  signal D7S_S_6_OBUF_21 : STD_LOGIC; 
  signal D7S_S_1_OBUF_Q_22 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D_23 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D1_24 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D2_25 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D2_PT_0_26 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D2_PT_1_27 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D2_PT_2_28 : STD_LOGIC; 
  signal D7S_S_1_OBUF_D2_PT_3_29 : STD_LOGIC; 
  signal D7S_S_2_OBUF_Q_30 : STD_LOGIC; 
  signal D7S_S_2_OBUF_D_31 : STD_LOGIC; 
  signal D7S_S_2_OBUF_D1_32 : STD_LOGIC; 
  signal D7S_S_2_OBUF_D2_33 : STD_LOGIC; 
  signal D7S_S_2_OBUF_D2_PT_0_34 : STD_LOGIC; 
  signal D7S_S_2_OBUF_D2_PT_1_35 : STD_LOGIC; 
  signal D7S_S_2_OBUF_D2_PT_2_36 : STD_LOGIC; 
  signal D7S_S_3_OBUF_Q_37 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D_38 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D1_39 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D2_40 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D2_PT_0_41 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D2_PT_1_42 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D2_PT_2_43 : STD_LOGIC; 
  signal D7S_S_3_OBUF_D2_PT_3_44 : STD_LOGIC; 
  signal D7S_S_0_OBUF_Q_45 : STD_LOGIC; 
  signal D7S_S_0_OBUF_D_46 : STD_LOGIC; 
  signal D7S_S_0_OBUF_D1_47 : STD_LOGIC; 
  signal D7S_S_0_OBUF_D2_48 : STD_LOGIC; 
  signal D7S_S_0_OBUF_D2_PT_0_49 : STD_LOGIC; 
  signal D7S_S_0_OBUF_D2_PT_1_50 : STD_LOGIC; 
  signal D7S_S_0_OBUF_D2_PT_2_51 : STD_LOGIC; 
  signal D7S_S_4_OBUF_Q_52 : STD_LOGIC; 
  signal D7S_S_4_OBUF_D_53 : STD_LOGIC; 
  signal D7S_S_4_OBUF_D1_54 : STD_LOGIC; 
  signal D7S_S_4_OBUF_D2_55 : STD_LOGIC; 
  signal D7S_S_4_OBUF_D2_PT_0_56 : STD_LOGIC; 
  signal D7S_S_4_OBUF_D2_PT_1_57 : STD_LOGIC; 
  signal D7S_S_4_OBUF_D2_PT_2_58 : STD_LOGIC; 
  signal D7S_S_5_OBUF_Q_59 : STD_LOGIC; 
  signal D7S_S_5_OBUF_D_60 : STD_LOGIC; 
  signal D7S_S_5_OBUF_D1_61 : STD_LOGIC; 
  signal D7S_S_5_OBUF_D2_62 : STD_LOGIC; 
  signal D7S_S_5_OBUF_D2_PT_0_63 : STD_LOGIC; 
  signal D7S_S_5_OBUF_D2_PT_1_64 : STD_LOGIC; 
  signal D7S_S_5_OBUF_D2_PT_2_65 : STD_LOGIC; 
  signal D7S_S_6_OBUF_Q_66 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D_67 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D1_68 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D2_69 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D2_PT_0_70 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D2_PT_1_71 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D2_PT_2_72 : STD_LOGIC; 
  signal D7S_S_6_OBUF_D2_PT_3_73 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_1_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_2_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_3_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_0_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_4_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_5_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_D7S_S_6_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_1_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_1_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_2_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_2_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_4_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_4_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_4_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_4_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_5_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_5_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN3 : STD_LOGIC; 
  signal XLXN_4 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  XLXN_4_0_Q : X_BUF
    port map (
      I => X(0),
      O => XLXN_4(0)
    );
  X_1_IBUF : X_BUF
    port map (
      I => X(1),
      O => X_1_IBUF_3
    );
  X_2_IBUF : X_BUF
    port map (
      I => X(2),
      O => X_2_IBUF_5
    );
  X_3_IBUF : X_BUF
    port map (
      I => X(3),
      O => X_3_IBUF_7
    );
  D7S_S_1_Q : X_BUF
    port map (
      I => D7S_S_1_OBUF_9,
      O => D7S_S(1)
    );
  D7S_S_2_Q : X_BUF
    port map (
      I => D7S_S_2_OBUF_11,
      O => D7S_S(2)
    );
  D7S_S_3_Q : X_BUF
    port map (
      I => D7S_S_3_OBUF_13,
      O => D7S_S(3)
    );
  D7S_S_0_Q : X_BUF
    port map (
      I => D7S_S_0_OBUF_15,
      O => D7S_S(0)
    );
  D7S_S_4_Q : X_BUF
    port map (
      I => D7S_S_4_OBUF_17,
      O => D7S_S(4)
    );
  D7S_S_5_Q : X_BUF
    port map (
      I => D7S_S_5_OBUF_19,
      O => D7S_S(5)
    );
  D7S_S_6_Q : X_BUF
    port map (
      I => D7S_S_6_OBUF_21,
      O => D7S_S(6)
    );
  D7S_S_1_OBUF : X_BUF
    port map (
      I => D7S_S_1_OBUF_Q_22,
      O => D7S_S_1_OBUF_9
    );
  D7S_S_1_OBUF_Q : X_BUF
    port map (
      I => D7S_S_1_OBUF_D_23,
      O => D7S_S_1_OBUF_Q_22
    );
  D7S_S_1_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_1_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_1_OBUF_D_IN1,
      O => D7S_S_1_OBUF_D_23
    );
  D7S_S_1_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_1_OBUF_D1_24
    );
  D7S_S_1_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN2,
      O => D7S_S_1_OBUF_D2_PT_0_26
    );
  D7S_S_1_OBUF_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_1_IN2,
      O => D7S_S_1_OBUF_D2_PT_1_27
    );
  D7S_S_1_OBUF_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN1,
      I2 => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN2,
      O => D7S_S_1_OBUF_D2_PT_2_28
    );
  D7S_S_1_OBUF_D2_PT_3 : X_AND4
    port map (
      I0 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN0,
      I1 => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_3_IN1,
      I2 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN2,
      I3 => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN3,
      O => D7S_S_1_OBUF_D2_PT_3_29
    );
  D7S_S_1_OBUF_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_D7S_S_1_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_1_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_1_OBUF_D2_IN2,
      I3 => NlwBufferSignal_D7S_S_1_OBUF_D2_IN3,
      O => D7S_S_1_OBUF_D2_25
    );
  D7S_S_2_OBUF : X_BUF
    port map (
      I => D7S_S_2_OBUF_Q_30,
      O => D7S_S_2_OBUF_11
    );
  D7S_S_2_OBUF_Q : X_BUF
    port map (
      I => D7S_S_2_OBUF_D_31,
      O => D7S_S_2_OBUF_Q_30
    );
  D7S_S_2_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_2_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_2_OBUF_D_IN1,
      O => D7S_S_2_OBUF_D_31
    );
  D7S_S_2_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_2_OBUF_D1_32
    );
  D7S_S_2_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN2,
      O => D7S_S_2_OBUF_D2_PT_0_34
    );
  D7S_S_2_OBUF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN2,
      I3 => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN3,
      O => D7S_S_2_OBUF_D2_PT_1_35
    );
  D7S_S_2_OBUF_D2_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN1,
      I2 => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN2,
      I3 => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN3,
      O => D7S_S_2_OBUF_D2_PT_2_36
    );
  D7S_S_2_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_D7S_S_2_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_2_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_2_OBUF_D2_IN2,
      O => D7S_S_2_OBUF_D2_33
    );
  D7S_S_3_OBUF : X_BUF
    port map (
      I => D7S_S_3_OBUF_Q_37,
      O => D7S_S_3_OBUF_13
    );
  D7S_S_3_OBUF_Q : X_BUF
    port map (
      I => D7S_S_3_OBUF_D_38,
      O => D7S_S_3_OBUF_Q_37
    );
  D7S_S_3_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_3_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_3_OBUF_D_IN1,
      O => D7S_S_3_OBUF_D_38
    );
  D7S_S_3_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_3_OBUF_D1_39
    );
  D7S_S_3_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN2,
      O => D7S_S_3_OBUF_D2_PT_0_41
    );
  D7S_S_3_OBUF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_1_IN2,
      I3 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN3,
      O => D7S_S_3_OBUF_D2_PT_1_42
    );
  D7S_S_3_OBUF_D2_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN0,
      I1 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN1,
      I2 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN2,
      I3 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN3,
      O => D7S_S_3_OBUF_D2_PT_2_43
    );
  D7S_S_3_OBUF_D2_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN0,
      I1 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN1,
      I2 => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN2,
      I3 => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN3,
      O => D7S_S_3_OBUF_D2_PT_3_44
    );
  D7S_S_3_OBUF_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_D7S_S_3_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_3_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_3_OBUF_D2_IN2,
      I3 => NlwBufferSignal_D7S_S_3_OBUF_D2_IN3,
      O => D7S_S_3_OBUF_D2_40
    );
  D7S_S_0_OBUF : X_BUF
    port map (
      I => D7S_S_0_OBUF_Q_45,
      O => D7S_S_0_OBUF_15
    );
  D7S_S_0_OBUF_Q : X_BUF
    port map (
      I => D7S_S_0_OBUF_D_46,
      O => D7S_S_0_OBUF_Q_45
    );
  D7S_S_0_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_0_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_0_OBUF_D_IN1,
      O => D7S_S_0_OBUF_D_46
    );
  D7S_S_0_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_0_OBUF_D1_47
    );
  D7S_S_0_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN2,
      O => D7S_S_0_OBUF_D2_PT_0_49
    );
  D7S_S_0_OBUF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN2,
      I3 => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN3,
      O => D7S_S_0_OBUF_D2_PT_1_50
    );
  D7S_S_0_OBUF_D2_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN1,
      I2 => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN2,
      I3 => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN3,
      O => D7S_S_0_OBUF_D2_PT_2_51
    );
  D7S_S_0_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_D7S_S_0_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_0_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_0_OBUF_D2_IN2,
      O => D7S_S_0_OBUF_D2_48
    );
  D7S_S_4_OBUF : X_BUF
    port map (
      I => D7S_S_4_OBUF_Q_52,
      O => D7S_S_4_OBUF_17
    );
  D7S_S_4_OBUF_Q : X_BUF
    port map (
      I => D7S_S_4_OBUF_D_53,
      O => D7S_S_4_OBUF_Q_52
    );
  D7S_S_4_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_4_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_4_OBUF_D_IN1,
      O => D7S_S_4_OBUF_D_53
    );
  D7S_S_4_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_4_OBUF_D1_54
    );
  D7S_S_4_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN1,
      I2 => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_0_IN2,
      O => D7S_S_4_OBUF_D2_PT_0_56
    );
  D7S_S_4_OBUF_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_1_IN2,
      O => D7S_S_4_OBUF_D2_PT_1_57
    );
  D7S_S_4_OBUF_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_2_IN1,
      I2 => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN2,
      O => D7S_S_4_OBUF_D2_PT_2_58
    );
  D7S_S_4_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_D7S_S_4_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_4_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_4_OBUF_D2_IN2,
      O => D7S_S_4_OBUF_D2_55
    );
  D7S_S_5_OBUF : X_BUF
    port map (
      I => D7S_S_5_OBUF_Q_59,
      O => D7S_S_5_OBUF_19
    );
  D7S_S_5_OBUF_Q : X_BUF
    port map (
      I => D7S_S_5_OBUF_D_60,
      O => D7S_S_5_OBUF_Q_59
    );
  D7S_S_5_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_5_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_5_OBUF_D_IN1,
      O => D7S_S_5_OBUF_D_60
    );
  D7S_S_5_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_5_OBUF_D1_61
    );
  D7S_S_5_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN2,
      O => D7S_S_5_OBUF_D2_PT_0_63
    );
  D7S_S_5_OBUF_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_D7S_S_5_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN2,
      O => D7S_S_5_OBUF_D2_PT_1_64
    );
  D7S_S_5_OBUF_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_D7S_S_5_OBUF_D2_PT_2_IN1,
      I2 => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN2,
      O => D7S_S_5_OBUF_D2_PT_2_65
    );
  D7S_S_5_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_D7S_S_5_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_5_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_5_OBUF_D2_IN2,
      O => D7S_S_5_OBUF_D2_62
    );
  D7S_S_6_OBUF : X_BUF
    port map (
      I => D7S_S_6_OBUF_Q_66,
      O => D7S_S_6_OBUF_21
    );
  D7S_S_6_OBUF_Q : X_BUF
    port map (
      I => D7S_S_6_OBUF_D_67,
      O => D7S_S_6_OBUF_Q_66
    );
  D7S_S_6_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_D7S_S_6_OBUF_D_IN0,
      I1 => NlwBufferSignal_D7S_S_6_OBUF_D_IN1,
      O => D7S_S_6_OBUF_D_67
    );
  D7S_S_6_OBUF_D1 : X_ZERO
    port map (
      O => D7S_S_6_OBUF_D1_68
    );
  D7S_S_6_OBUF_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN1,
      I2 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_0_IN2,
      I3 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN3,
      O => D7S_S_6_OBUF_D2_PT_0_70
    );
  D7S_S_6_OBUF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN2,
      I3 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_1_IN3,
      O => D7S_S_6_OBUF_D2_PT_1_71
    );
  D7S_S_6_OBUF_D2_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_2_IN1,
      I2 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN2,
      I3 => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN3,
      O => D7S_S_6_OBUF_D2_PT_2_72
    );
  D7S_S_6_OBUF_D2_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN0,
      I1 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN1,
      I2 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN2,
      I3 => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN3,
      O => D7S_S_6_OBUF_D2_PT_3_73
    );
  D7S_S_6_OBUF_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_D7S_S_6_OBUF_D2_IN0,
      I1 => NlwBufferSignal_D7S_S_6_OBUF_D2_IN1,
      I2 => NlwBufferSignal_D7S_S_6_OBUF_D2_IN2,
      I3 => NlwBufferSignal_D7S_S_6_OBUF_D2_IN3,
      O => D7S_S_6_OBUF_D2_69
    );
  NlwBufferBlock_D7S_S_1_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_1_OBUF_D1_24,
      O => NlwBufferSignal_D7S_S_1_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_1_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_1_OBUF_D2_25,
      O => NlwBufferSignal_D7S_S_1_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_3_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN0
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_3_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN1
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_3_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN2
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_PT_3_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN3
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_1_OBUF_D2_PT_0_26,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_1_OBUF_D2_PT_1_27,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_1_OBUF_D2_PT_2_28,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_1_OBUF_D2_IN3 : X_BUF
    port map (
      I => D7S_S_1_OBUF_D2_PT_3_29,
      O => NlwBufferSignal_D7S_S_1_OBUF_D2_IN3
    );
  NlwBufferBlock_D7S_S_2_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_2_OBUF_D1_32,
      O => NlwBufferSignal_D7S_S_2_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_2_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_2_OBUF_D2_33,
      O => NlwBufferSignal_D7S_S_2_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_PT_2_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN3
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_2_OBUF_D2_PT_0_34,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_2_OBUF_D2_PT_1_35,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_2_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_2_OBUF_D2_PT_2_36,
      O => NlwBufferSignal_D7S_S_2_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_3_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_3_OBUF_D1_39,
      O => NlwBufferSignal_D7S_S_3_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_3_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_3_OBUF_D2_40,
      O => NlwBufferSignal_D7S_S_3_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_2_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN3
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_3_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN0
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_3_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN1
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_3_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN2
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_PT_3_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN3
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_3_OBUF_D2_PT_0_41,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_3_OBUF_D2_PT_1_42,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_3_OBUF_D2_PT_2_43,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_3_OBUF_D2_IN3 : X_BUF
    port map (
      I => D7S_S_3_OBUF_D2_PT_3_44,
      O => NlwBufferSignal_D7S_S_3_OBUF_D2_IN3
    );
  NlwBufferBlock_D7S_S_0_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_0_OBUF_D1_47,
      O => NlwBufferSignal_D7S_S_0_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_0_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_0_OBUF_D2_48,
      O => NlwBufferSignal_D7S_S_0_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_PT_2_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN3
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_0_OBUF_D2_PT_0_49,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_0_OBUF_D2_PT_1_50,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_0_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_0_OBUF_D2_PT_2_51,
      O => NlwBufferSignal_D7S_S_0_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_4_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_4_OBUF_D1_54,
      O => NlwBufferSignal_D7S_S_4_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_4_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_4_OBUF_D2_55,
      O => NlwBufferSignal_D7S_S_4_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_4_OBUF_D2_PT_0_56,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_4_OBUF_D2_PT_1_57,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_4_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_4_OBUF_D2_PT_2_58,
      O => NlwBufferSignal_D7S_S_4_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_5_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_5_OBUF_D1_61,
      O => NlwBufferSignal_D7S_S_5_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_5_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_5_OBUF_D2_62,
      O => NlwBufferSignal_D7S_S_5_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_5_OBUF_D2_PT_0_63,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_5_OBUF_D2_PT_1_64,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_5_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_5_OBUF_D2_PT_2_65,
      O => NlwBufferSignal_D7S_S_5_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_6_OBUF_D_IN0 : X_BUF
    port map (
      I => D7S_S_6_OBUF_D1_68,
      O => NlwBufferSignal_D7S_S_6_OBUF_D_IN0
    );
  NlwBufferBlock_D7S_S_6_OBUF_D_IN1 : X_BUF
    port map (
      I => D7S_S_6_OBUF_D2_69,
      O => NlwBufferSignal_D7S_S_6_OBUF_D_IN1
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_0_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN3
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_2_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN3
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_3_IN0 : X_BUF
    port map (
      I => XLXN_4(0),
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN0
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_3_IN1 : X_BUF
    port map (
      I => X_1_IBUF_3,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN1
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_3_IN2 : X_BUF
    port map (
      I => X_2_IBUF_5,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN2
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_PT_3_IN3 : X_BUF
    port map (
      I => X_3_IBUF_7,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN3
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_IN0 : X_BUF
    port map (
      I => D7S_S_6_OBUF_D2_PT_0_70,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_IN0
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_IN1 : X_BUF
    port map (
      I => D7S_S_6_OBUF_D2_PT_1_71,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_IN1
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_IN2 : X_BUF
    port map (
      I => D7S_S_6_OBUF_D2_PT_2_72,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_IN2
    );
  NlwBufferBlock_D7S_S_6_OBUF_D2_IN3 : X_BUF
    port map (
      I => D7S_S_6_OBUF_D2_PT_3_73,
      O => NlwBufferSignal_D7S_S_6_OBUF_D2_IN3
    );
  NlwInverterBlock_D7S_S_1_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_D7S_S_1_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_1_IN2,
      O => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_D7S_S_1_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_D7S_S_1_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_D7S_S_1_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_2_IN2,
      O => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_D7S_S_1_OBUF_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_1_OBUF_D2_PT_3_IN1,
      O => NlwInverterSignal_D7S_S_1_OBUF_D2_PT_3_IN1
    );
  NlwInverterBlock_D7S_S_2_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_D7S_S_2_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_D7S_S_2_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_D7S_S_2_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_D7S_S_2_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN2,
      O => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_D7S_S_2_OBUF_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_2_OBUF_D2_PT_2_IN3,
      O => NlwInverterSignal_D7S_S_2_OBUF_D2_PT_2_IN3
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_0_IN1,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_1_IN2,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN2,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_2_IN3,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_2_IN3
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN0,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN0
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN1,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN1
    );
  NlwInverterBlock_D7S_S_3_OBUF_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_3_OBUF_D2_PT_3_IN2,
      O => NlwInverterSignal_D7S_S_3_OBUF_D2_PT_3_IN2
    );
  NlwInverterBlock_D7S_S_0_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_D7S_S_0_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN2,
      O => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_D7S_S_0_OBUF_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_1_IN3,
      O => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_1_IN3
    );
  NlwInverterBlock_D7S_S_0_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_D7S_S_0_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_D7S_S_0_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_0_OBUF_D2_PT_2_IN2,
      O => NlwInverterSignal_D7S_S_0_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_D7S_S_4_OBUF_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_0_IN2,
      O => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_0_IN2
    );
  NlwInverterBlock_D7S_S_4_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_1_IN2,
      O => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_D7S_S_4_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_D7S_S_4_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_4_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_D7S_S_4_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_D7S_S_5_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_D7S_S_5_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_D7S_S_5_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_5_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_D7S_S_5_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_0_IN2,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_0_IN2
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_1_IN3,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_1_IN3
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN0,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN0
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN1,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN1
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN2,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN2
    );
  NlwInverterBlock_D7S_S_6_OBUF_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_D7S_S_6_OBUF_D2_PT_3_IN3,
      O => NlwInverterSignal_D7S_S_6_OBUF_D2_PT_3_IN3
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

