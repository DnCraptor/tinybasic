10 REM "Test the different random number settings"
100 SET 22,"Microsoft"
110 PRINT "Microsoft mode"
120 FOR I=1 TO 10: PRINT RND(8): NEXT
130 PRINT "**"
140 PRINT RND(-18)
150 PRINT "**"
160 FOR I=1 TO 10: PRINT RND(0): NEXT
170 PRINT "**"
180 FOR I=1 TO 10: PRINT RND(1): NEXT
200 SET 22, "Apple"
210 PRINT "Apple mode"
220 FOR I=1 TO 10
230 PRINT RND(8)
240 NEXT
300 SET 22, "PaloAlto"
310 PRINT "Palo Alto mode"
320 FOR I=1 TO 10
330 PRINT RND(8)
340 NEXT

