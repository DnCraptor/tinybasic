1 PRINT "NAME from 101 BASIC games"
2 PRINT "Ported to Stefan's BASIC in 2021""
3 PRINT
5 DIM B(40)
10 PRINT "HELLO.": PRINT "MY NAME IS STEFAN's BASIC."
20 PRINT "WHAT'S YOUR NAME (FIRST AND LAST";: INPUT A$: L=LEN(A$)
30 PRINT: PRINT "THANK YOU, ";
40 FOR I=1 TO L: B(I)=A$(I,I): NEXT I
50 FOR I=L TO 1 STEP -1: B$=B(I) : PRINT B$;: NEXT I
60 PRINT ".": PRINT "OOPS!  I GUESS I GOT IT BACKWARDS.  A SMART"
70 PRINT "COMPUTER LIKE ME SHOULDN'T MAKE A MISTAKE LIKE THAT!": PRINT
80 PRINT "BUT I JUST NOTICED YOUR LETTERS ARE OUT OF ORDER."
90 PRINT "LET'S PUT THEM IN ORDER LIKE THIS: ";
100 FOR J=2 TO L: I=J-1: T=B(J)
110 IF T>B(I) THEN 130
120 B(I+1)=B(I): I=I-1: IF I>0 THEN 110
130 B(I+1)=T: NEXT J
140 FOR I=1 TO L: B$=B(I) : PRINT B$;: NEXT I: PRINT: PRINT
150 PRINT "DON'T YOU LIKE THAT BETTER";: INPUT D$
160 IF D$="YES" OR D$="yes" THEN 180
170 PRINT: PRINT "I'M SORRY YOU DON'T LIKE IT THAT WAY.": GOTO 200
180 PRINT: PRINT "I KNEW YOU'D AGREE!!"
200 PRINT: PRINT "I REALLY ENJOYED MEETING YOU ";A$;"."
210 PRINT "HAVE A NICE DAY!"
999 END
