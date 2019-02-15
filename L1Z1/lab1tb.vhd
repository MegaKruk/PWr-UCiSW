-- Vhdl test bench created from schematic C:\MazurKoziel\lab1\lab1schem.sch - Tue Oct 17 14:37:08 2017
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
ENTITY lab1schem_lab1schem_sch_tb IS
END lab1schem_lab1schem_sch_tb;
ARCHITECTURE behavioral OF lab1schem_lab1schem_sch_tb IS 

   COMPONENT lab1schem
   PORT( K0	:	IN	STD_LOGIC; 
          K1	:	IN	STD_LOGIC; 
          LED0	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL K0	:	STD_LOGIC;
   SIGNAL K1	:	STD_LOGIC;
   SIGNAL LED0	:	STD_LOGIC;

BEGIN

   UUT: lab1schem PORT MAP(
		K0 => K0, 
		K1 => K1, 
		LED0 => LED0
   );

-- *** Test Bench - User Defined Section ***
   K0 <= '0', '1' after 100 ns, '0' after 300 ns;
   K1 <= '0', '1' after 200 ns, '0' after 400 ns;
   --LED0 <= K0 or K1;
-- *** End Test Bench - User Defined Section ***

END;
