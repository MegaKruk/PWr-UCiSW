VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL PS2_Clk
        SIGNAL PS2_Data
        SIGNAL Clk_50MHz
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_97
        SIGNAL XLXN_98(7:0)
        SIGNAL XLXN_99
        SIGNAL XLXN_100
        SIGNAL XLXN_101(7:0)
        SIGNAL BTN_SOUTH
        SIGNAL XLXN_172
        SIGNAL XLXN_171
        SIGNAL SF_CE
        SIGNAL LCD_D(3:0)
        SIGNAL LCD_RW
        SIGNAL LCD_RS
        SIGNAL LCD_E
        PORT Input PS2_Clk
        PORT Input PS2_Data
        PORT Input Clk_50MHz
        PORT Input BTN_SOUTH
        PORT Output SF_CE
        PORT BiDirectional LCD_D(3:0)
        PORT Output LCD_RW
        PORT Output LCD_RS
        PORT Output LCD_E
        BEGIN BLOCKDEF PS2_Kbd
            TIMESTAMP 2008 9 19 9 9 35
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF LCDWrite
            TIMESTAMP 2008 9 18 10 4 38
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -160 0 -160 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 64 -512 320 0 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF KbdDecode
            TIMESTAMP 2008 9 19 10 21 41
            RECTANGLE N 32 -256 320 0 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            LINE N 32 -160 -32 -160 
            LINE N 32 -96 -32 -96 
            LINE N 32 -32 -32 -32 
            RECTANGLE N -32 -236 32 -212 
            LINE N 32 -224 -32 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 PS2_Kbd
            PIN PS2_Clk PS2_Clk
            PIN PS2_Data PS2_Data
            PIN Clk_50MHz Clk_50MHz
            PIN E0 XLXN_95
            PIN F0 XLXN_96
            PIN DO_Rdy XLXN_97
            PIN DO(7:0) XLXN_98(7:0)
            PIN Clk_Sys Clk_50MHz
        END BLOCK
        BEGIN BLOCK XLXI_36 KbdDecode
            PIN LCD_WE XLXN_99
            PIN LCD_DnI XLXN_100
            PIN LCD_DI(7:0) XLXN_101(7:0)
            PIN KbdE0 XLXN_95
            PIN KbdF0 XLXN_96
            PIN KbdDataRdy XLXN_97
            PIN KbdDO(7:0) XLXN_98(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_38 vcc
            PIN P XLXN_172
        END BLOCK
        BEGIN BLOCK XLXI_37 vcc
            PIN P XLXN_171
        END BLOCK
        BEGIN BLOCK XLXI_33 LCDWrite
            PIN WE XLXN_99
            PIN DnI XLXN_100
            PIN Reset BTN_SOUTH
            PIN Cursor XLXN_171
            PIN Blink XLXN_172
            PIN DI(7:0) XLXN_101(7:0)
            PIN LCD_E LCD_E
            PIN LCD_RS LCD_RS
            PIN LCD_RW LCD_RW
            PIN LCD_D(3:0) LCD_D(3:0)
            PIN SF_CE SF_CE
            PIN Busy
            PIN Clk_50MHz Clk_50MHz
            PIN Clk_Sys Clk_50MHz
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN DISPLAY 2696 2332 TEXT "J.Sugier  2008"
            FONT 64 "Arial"
        END DISPLAY
        BEGIN DISPLAY 2696 2236 TEXT Test_KbdLCD
            FONT 64 "Arial"
        END DISPLAY
        BEGIN BRANCH PS2_Clk
            WIRE 688 960 864 960
        END BRANCH
        BEGIN BRANCH PS2_Data
            WIRE 688 1024 864 1024
        END BRANCH
        BEGIN BRANCH Clk_50MHz
            WIRE 688 1408 832 1408
            WIRE 832 1408 2352 1408
            WIRE 2352 1408 2384 1408
            WIRE 832 1088 864 1088
            WIRE 832 1088 832 1152
            WIRE 832 1152 864 1152
            WIRE 832 1152 832 1408
            WIRE 2352 1344 2352 1408
            WIRE 2352 1344 2384 1344
        END BRANCH
        BEGIN BRANCH XLXN_95
            WIRE 1248 1024 1536 1024
        END BRANCH
        BEGIN BRANCH XLXN_96
            WIRE 1248 1088 1536 1088
        END BRANCH
        BEGIN BRANCH XLXN_97
            WIRE 1248 1152 1536 1152
        END BRANCH
        BEGIN BRANCH XLXN_98(7:0)
            WIRE 1248 960 1536 960
        END BRANCH
        BEGIN BRANCH XLXN_99
            WIRE 1952 960 1968 960
            WIRE 1968 960 2384 960
        END BRANCH
        BEGIN BRANCH XLXN_100
            WIRE 1952 1024 1968 1024
            WIRE 1968 1024 2384 1024
        END BRANCH
        BEGIN INSTANCE XLXI_1 864 1184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_36 1568 1184 R0
        END INSTANCE
        IOMARKER 688 960 PS2_Clk R180 28
        IOMARKER 688 1024 PS2_Data R180 28
        IOMARKER 688 1280 BTN_SOUTH R180 28
        IOMARKER 688 1408 Clk_50MHz R180 28
        BEGIN BRANCH XLXN_101(7:0)
            WIRE 1952 1088 1968 1088
            WIRE 1968 1088 2384 1088
        END BRANCH
        BEGIN BRANCH BTN_SOUTH
            WIRE 688 1280 704 1280
            WIRE 704 1280 2368 1280
            WIRE 2368 1280 2384 1280
        END BRANCH
        INSTANCE XLXI_38 2352 1280 R270
        INSTANCE XLXI_37 2352 1216 R270
        IOMARKER 2880 1216 SF_CE R0 28
        IOMARKER 2880 1152 LCD_D(3:0) R0 28
        IOMARKER 2880 1088 LCD_RW R0 28
        IOMARKER 2880 1024 LCD_RS R0 28
        IOMARKER 2880 960 LCD_E R0 28
        BEGIN INSTANCE XLXI_33 2384 1440 R0
        END INSTANCE
        BEGIN BRANCH XLXN_172
            WIRE 2352 1216 2384 1216
        END BRANCH
        BEGIN BRANCH XLXN_171
            WIRE 2352 1152 2384 1152
        END BRANCH
        BEGIN BRANCH SF_CE
            WIRE 2768 1216 2880 1216
        END BRANCH
        BEGIN BRANCH LCD_D(3:0)
            WIRE 2768 1152 2880 1152
        END BRANCH
        BEGIN BRANCH LCD_RW
            WIRE 2768 1088 2880 1088
        END BRANCH
        BEGIN BRANCH LCD_RS
            WIRE 2768 1024 2880 1024
        END BRANCH
        BEGIN BRANCH LCD_E
            WIRE 2768 960 2880 960
        END BRANCH
    END SHEET
END SCHEMATIC
