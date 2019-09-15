VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_6
        SIGNAL XLXN_8
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        PORT Input XLXN_2
        PORT Input XLXN_3
        PORT Output XLXN_6
        PORT Input XLXN_8
        PORT Output XLXN_11
        PORT Input XLXN_14
        PORT Input XLXN_15
        BEGIN BLOCKDEF and2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b2
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 64 -48 64 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2001 2 2 12 53 52
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 XLXN_3
            PIN I1 XLXN_2
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 or2
            PIN I0 XLXN_13
            PIN I1 XLXN_1
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_3 and2b2
            PIN I0 XLXN_8
            PIN I1 XLXN_13
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_4 and2b1
            PIN I0 XLXN_15
            PIN I1 XLXN_14
            PIN O XLXN_13
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1232 1008 R0
        BEGIN BRANCH XLXN_2
            WIRE 1200 880 1232 880
        END BRANCH
        IOMARKER 1200 880 XLXN_2 R180 28
        BEGIN BRANCH XLXN_3
            WIRE 1200 944 1232 944
        END BRANCH
        IOMARKER 1200 944 XLXN_3 R180 28
        BEGIN BRANCH XLXN_6
            WIRE 1952 1104 2288 1104
        END BRANCH
        IOMARKER 2288 1104 XLXN_6 R0 28
        BEGIN BRANCH XLXN_8
            WIRE 1200 1344 1648 1344
        END BRANCH
        IOMARKER 1200 1344 XLXN_8 R180 28
        INSTANCE XLXI_3 1648 1408 R0
        BEGIN BRANCH XLXN_11
            WIRE 1904 1312 1920 1312
            WIRE 1920 1312 2288 1312
        END BRANCH
        IOMARKER 2288 1312 XLXN_11 R0 28
        INSTANCE XLXI_2 1696 1200 R0
        BEGIN BRANCH XLXN_1
            WIRE 1488 912 1504 912
            WIRE 1504 912 1504 1072
            WIRE 1504 1072 1696 1072
        END BRANCH
        INSTANCE XLXI_4 1232 1248 R0
        BEGIN BRANCH XLXN_13
            WIRE 1488 1152 1584 1152
            WIRE 1584 1136 1584 1152
            WIRE 1584 1136 1600 1136
            WIRE 1600 1136 1696 1136
            WIRE 1600 1136 1600 1280
            WIRE 1600 1280 1648 1280
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1200 1120 1232 1120
        END BRANCH
        IOMARKER 1200 1120 XLXN_14 R180 28
        BEGIN BRANCH XLXN_15
            WIRE 1200 1184 1232 1184
        END BRANCH
        IOMARKER 1200 1184 XLXN_15 R180 28
    END SHEET
END SCHEMATIC
