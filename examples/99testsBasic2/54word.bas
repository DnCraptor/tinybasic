2 REM "WORD FROM 101 BASIC GAMES"
3 REM "Ported by Stefan in 2022"
4 REM
5 DIM S(7),A(7),L(7),D(7),P(7)
10 PRINT "I AM THINKING OF A WORD -- YOU GUESS IT.  I WILL GIVE YOU"
15 PRINT "CLUES TO HELP YOU GET IT.  GOOD LUCK!!": PRINT
20 REM
30 PRINT "YOU ARE STARTING A NEW GAME..."
35 RESTORE
40 READ N
50 C=INT(RND(1)*N+1)
60 FOR I=1 TO C
70 READ S$
80 NEXT I
90 G=0
95 S0=LEN(S$)
100 FOR I=1 TO LEN(S$): S(I)=S$(I): NEXT I
110 FOR I=1 TO 5
120 A(I)=45
130 NEXT I
140 FOR J=1 TO 5
144 P(J)=0
146 NEXT J
150 PRINT "GUESS A FIVE LETTER WORD";
160 INPUT L$
162 T$=L$
164 FOR I=1 TO LEN(T$)
166 IF (T$(I))>96 THEN L$(I)=(T$(I))-32 ELSE L$(I)=T$(I)
168 NEXT
170 G=G+1
172 IF S$=G$ THEN 500
173 FOR I=1 TO 7: P(I)=0: NEXT I
175 L0=LEN(L$)
180 FOR I=1 TO LEN(L$): L(I)=L$(I): NEXT I
190 IF L(1)=63 THEN 300
200 IF L0<>5 THEN 400
205 M=0: Q=1
210 FOR I=1 TO 5
220 FOR J=1 TO 5
230 IF S(I)<>L(J) THEN 260
231 P(Q)=L(J)
232 Q=Q+1
233 IF I<>J THEN 250
240 A(J)=L(J)
250 M=M+1
260 NEXT J
265 NEXT I
270 A0=5
272 P0=M
275 A$="": FOR I=1 TO A0: A$(I)=A(I): NEXT I
277 P$="": FOR I=1 TO P0: P$(I)=P(I): NEXT I
280 PRINT "THERE WERE",M,"MATCHES AND THE COMMON LETTERS WERE...";P$
285 PRINT "FROM THE EXACT LETTER MATCHES, YOU KNOW................";A$
286 IF A$=S$ THEN 500
287 IF M>1 THEN 289
288 PRINT: PRINT "IF YOU GIVE UP, TYPE '?' FOR YOUR NEXT GUESS."
289 PRINT
290 GOTO 150
300 S$="": FOR I=1 TO 7: S$(I)=S(I): NEXT I
310 PRINT "THE SECRET WORD IS ";S$: PRINT
320 GOTO 30
400 PRINT "YOU MUST GUESS A 5 LETTER WORD.  START AGAIN."
410 PRINT: G=G-1: GOTO 150
500 PRINT "YOU HAVE GUESSED THE WORD.  IT TOOK",G,"GUESSES!": PRINT
510 INPUT "WANT TO PLAY AGAIN? ",Q$
520 IF Q$="YES" OR Q$="yes" THEN 30
530 DATA 12,"DINKY","SMOKE","WATER","GRASS","TRAIN","MIGHT","FIRST"
540 DATA "CANDY","CHAMP","WOULD","CLUMP","DOPEY"
999 END