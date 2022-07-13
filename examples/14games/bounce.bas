10 REM "BOUNCE"
20 REM "Ported by Stefan in 2022"
30 REM
40 REM "Set the TAB command to MS style"
50 SET 11,1
90 DIM T(100)
100 PRINT "THIS SIMULATION LETS YOU SPECIFY THE INITIAL VELOCITY"
110 PRINT "OF A BALL THROWN STRAIGHT UP, AND THE COEFFICIENT OF"
120 PRINT "ELASTICITY OF THE BALL.  PLEASE USE A DECIMAL FRACTION"
130 PRINT "COEFFICIENCY (LESS THAN 1)."
131 PRINT
132 PRINT "YOU ALSO SPECIFY THE TIME INCREMENT TO BE USED IN"
133 PRINT "'STROBING' THE BALL'S FLIGHT (TRY .1 INITIALLY)."
134 PRINT
135 INPUT "TIME INCREMENT (SEC) ";S2
140 PRINT
150 INPUT "VELOCITY (FPS) ";V
160 PRINT
170 INPUT "COEFFICIENT ";C
180 PRINT
182 PRINT "FEET"
184 PRINT
186 S1=INT(70/(V/(16*S2)))
190 FOR I=1 TO S1
200 T(I)=V*POW(C,I-1)/16
210 NEXT I
220 FOR H=INT(-16*POW(V/32,2)+POW(V,2)/32+.5) TO 0 STEP -.5
221 IF INT(H)<>H THEN 225
222 PRINT H;
225 L=0
230 FOR I=1 TO S1
240 FOR T=0 TO T(I) STEP S2
245 L=L+S2
250 IF ABS(H-(.5*(-32)*POW(T,2)+V*POW(C,(I-1))*T))>.25 THEN 270
260 TAB L/S2: PRINT "0";
270 NEXT T
275 T=T(I+1)/2
276 IF -16*POW(T,2)+V*POW(C,I-1)*T<H THEN 290
280 NEXT I
290 PRINT
300 NEXT H
310 TAB 1
320 FOR I=1 TO INT(L+1)/S2+1
330 PRINT ".";
340 NEXT I
350 PRINT
355 PRINT " 0";
360 FOR I=1 TO INT(L+.9995)
380 TAB INT(I/S2): PRINT I;
390 NEXT I
400 PRINT
410 TAB INT(L+1)/(2*S2)-2: PRINT "SECONDS"
420 PRINT
430 GOTO 135
440 END
