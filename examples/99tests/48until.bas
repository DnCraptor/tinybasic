10 REM "Repeat until test code"
110 A=10
120 REPEAT
130 PRINT A
140 A=A-1
150 UNTIL A=0
200 REM "Break test code"
210 A=10
220 REPEAT
230 PRINT A
240 A=A-1
250 IF A%5=0 THEN BREAK
260 UNTIL A=0
300 REM "Cont test code"
310 A=10
320 REPEAT
330 A=A-1
340 IF A%2=0 THEN CONT
350 PRINT A
360 UNTIL A=0
