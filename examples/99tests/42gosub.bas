10 REM "GOSUB and RETURN"
20 GOSUB 40
30 GOTO 100
40 RETURN
50 PRINT "FAIL": END
100 REM "Return without a GOSUB"
110 ERROR GOTO 140
120 RETURN
130 PRINT "FAIL": END
140 PRINT "ERROR", ERROR
200 REM "Many GOSUBs (1)"
210 ERROR GOTO 240
220 GOSUB 220
230 PRINT "FAIL": END
240 PRINT "ERROR", ERROR
300 REM "Many GOSUBs (2)"
310 ERROR GOTO 350
320 GOSUB 330
330 GOSUB 320
340 PRINT "FAIL": END
350 PRINT "ERROR", ERROR
