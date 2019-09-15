VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL IN_0
        SIGNAL IN_1
        SIGNAL IN_2
        SIGNAL IN_3
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL IN_4
        SIGNAL OUT_0
        SIGNAL OUT_1
        PORT Input IN_0
        PORT Input IN_1
        PORT Input IN_2
        PORT Input IN_3
        PORT Input IN_4
        PORT Output OUT_0
        PORT Output OUT_1
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
        BEGIN BLOCK XLXI_1 and2b1
            PIN I0 IN_3
            PIN I1 IN_2
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_2 and2b2
            PIN I0 IN_4
            PIN I1 XLXN_6
            PIN O OUT_1
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 IN_1
            PIN I1 IN_0
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_4 or2
            PIN I0 XLXN_6
            PIN I1 XLXN_7
            PIN O OUT_0
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_3 960 768 R0
        INSTANCE XLXI_1 960 928 R0
        BEGIN BRANCH IN_0
            WIRE 928 640 960 640
        END BRANCH
        IOMARKER 928 640 IN_0 R180 28
        BEGIN BRANCH IN_1
            WIRE 928 704 960 704
        END BRANCH
        IOMARKER 928 704 IN_1 R180 28
        BEGIN BRANCH IN_2
            WIRE 928 800 960 800
        END BRANCH
        IOMARKER 928 800 IN_2 R180 28
        BEGIN BRANCH IN_3
            WIRE 928 864 960 864
        END BRANCH
        IOMARKER 928 864 IN_3 R180 28
        INSTANCE XLXI_2 1392 1088 R0
        INSTANCE XLXI_4 1408 880 R0
        BEGIN BRANCH XLXN_6
            WIRE 1216 832 1296 832
            WIRE 1296 832 1296 960
            WIRE 1296 960 1392 960
            WIRE 1296 816 1408 816
            WIRE 1296 816 1296 832
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1216 672 1312 672
            WIRE 1312 672 1312 752
            WIRE 1312 752 1408 752
        END BRANCH
        BEGIN BRANCH IN_4
            WIRE 928 1024 1376 1024
            WIRE 1376 1024 1392 1024
        END BRANCH
        BEGIN BRANCH OUT_0
            WIRE 1664 784 1680 784
        END BRANCH
        BEGIN BRANCH OUT_1
            WIRE 1648 992 1664 992
            WIRE 1664 992 1680 992
        END BRANCH
        IOMARKER 928 1024 IN_4 R180 28
        IOMARKER 1680 992 OUT_1 R0 28
        IOMARKER 1680 784 OUT_0 R0 28
    END SHEET
END SCHEMATIC
