-- Vhdl test bench created from schematic C:\MazurKoziel\lab3\lab3schem.sch - Tue Nov 14 15:26:25 2017
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
ENTITY lab3schem_lab3schem_sch_tb IS
END lab3schem_lab3schem_sch_tb;
ARCHITECTURE behavioral OF lab3schem_lab3schem_sch_tb IS 

   COMPONENT lab3schem
   PORT( X	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          D7S_S	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   SIGNAL X	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL D7S_S	:	STD_LOGIC_VECTOR (6 DOWNTO 0);

   SIGNAL VECTOR : std_logic_vector(3 downto 0);

BEGIN

   UUT: lab3schem PORT MAP(
		X => X, 
		D7S_S => D7S_S
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      VECTOR <= "0000";
      
      for i in 0 to 16 loop
         VECTOR <= std_logic_vector(to_unsigned(i, 4));
         X <= VECTOR;
         WAIT FOR 100ns;
      END loop;
   
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
