-- Vhdl test bench created from schematic C:\MazurKoziel\lab1A\lab1As.sch - Tue Oct 17 16:32:57 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY lab1As_lab1As_sch_tb IS
END lab1As_lab1As_sch_tb;
ARCHITECTURE behavioral OF lab1As_lab1As_sch_tb IS 

   COMPONENT lab1As
   PORT( K1	:	IN	STD_LOGIC; 
          K0	:	IN	STD_LOGIC; 
          K2	:	IN	STD_LOGIC; 
          LED0	:	OUT	STD_LOGIC; 
          LED1	:	OUT	STD_LOGIC; 
          LED2	:	OUT	STD_LOGIC; 
          K3	:	IN	STD_LOGIC; 
          LED3	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL K1	:	STD_LOGIC;
   SIGNAL K0	:	STD_LOGIC;
   SIGNAL K2	:	STD_LOGIC;
   SIGNAL LED0	:	STD_LOGIC;
   SIGNAL LED1	:	STD_LOGIC;
   SIGNAL LED2	:	STD_LOGIC;
   SIGNAL K3	:	STD_LOGIC;
   SIGNAL LED3	:	STD_LOGIC;

BEGIN

   UUT: lab1As PORT MAP(
		K1 => K1, 
		K0 => K0, 
		K2 => K2, 
		LED0 => LED0, 
		LED1 => LED1, 
		LED2 => LED2, 
		K3 => K3, 
		LED3 => LED3
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
