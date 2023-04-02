100 REM "Setup of engine variables"
110 REM "I1-4: drive control, EA, EB speed of engine A and B"
110 I1=13: I2=12: I3=11: I4=10
130 EA=2: EB=3
140 V0=255
200 REM "Servo variables - AS is the servo angles
210 REM "Calibration AZ is zero point, AF is multiplicator for full 180"
220 AZ=50: AF=200
230 AS=90
300 REM "Echo variables"
310 REM "TP is trigger pin, EP is echo pin"
320 TP=5: EP=6
1000 REM "Test code for serial"
1010 INPUT EC
1020 GOSUB 10000
1030 GOSUB 13000
1040 PRINT E
1050 GOTO 1000
9999 END
10000 REM "Process an engine command"
10010 IF EC<1 OR EC=10 THEN GOSUB 11000: RETURN
10020 ON EC GOSUB 11100, 11200, 11300, 11400
10030 DELAY 500
10040 GOSUB 11000
10050 RETURN
11000 REM "Reset engines, all off"
11010 PINM I1,1: DWRITE I1,0
11020 PINM I2,1: DWRITE I2,0
11030 PINM I3,1: DWRITE I3,0
11040 PINM I4,1 DWRITE I4,0
11050 PINM EA,1: AWRITE EA,0
11060 PINM EB,1: AWRITE EB,0
11070 RETURN
11100 REM "Drive backward - speed v0"
11110 DWRITE I1,1: DWRITE I2,0: DWRITE I3,1: DWRITE I4,0
11120 AWRITE EA,V0: AWRITE EB,V0
11130 RETURN
11200 REM "Drive forward - speed v0"
11210 DWRITE I1,0: DWRITE I2,1: DWRITE I3,0: DWRITE I4,1
11220 AWRITE EA,V0: AWRITE EB,V0
11230 RETURN
11300 REM "turn left"
11310 DWRITE I1,0: DWRITE I2,1: DWRITE I3,1: DWRITE I4,0
11320 AWRITE EA,V0: AWRITE EB,V0
11330 RETURN
11400 REM "turn right"
11410 DWRITE I1,1: DWRITE I2,0: DWRITE I3,0: DWRITE I4,1
11420 AWRITE EA,V0: AWRITE EB,V0
11430 RETURN
12000 REM "Servo action code - AS is servo angle"
12010 REM "Calibration AZ zero point, AF angle factor"
12020 PINM 4,1
12030 DWRITE 4,0
12040 P=AZ+AS*AF/180
12050 FOR I=1 TO 40: DELAY 20: PULSE 4,P: NEXT
12060 RETURN
13000 REM "Sensor code, return value in E"
13010 PINM TP,1: PINM EP,0
13020 DWRITE TP,0
13030 PULSE TP,10
13040 E=PULSE(EP,1,100)
13050 E=E/29*100/2
13060 RETURN


