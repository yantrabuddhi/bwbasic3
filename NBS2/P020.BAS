10 PRINT "PROGRAM FILE 20: ERROR - IF-THEN STATEMENT WITH A STRING AND"
20 PRINT "        NUMERIC OPERAND."
30 PRINT "    ANSI STANDARD 10.2"
40 PRINT
50 PRINT "SECTION 20.1: ERROR - IF-THEN STATEMENT WITH A STRING AND"
60 PRINT "        NUMERIC OPERAND."
70 PRINT
80 PRINT "THIS PROGRAM ATTEMPTS TO COMPARE A STRING VARIABLE WITH A"
90 PRINT "NUMERIC VARIABLE IN AN IF-THEN STATEMENT."
100 PRINT
110 PRINT "THIS IS A TEST OF A NON-STANDARD FEATURE OF MINIMAL BASIC."
120 PRINT "TO PASS THIS TEST, THE PROCESSOR MUST EITHER:"
130 PRINT
140 PRINT "   1) ACCEPT THE PROGRAM AND BE ACCOMPANIED BY DOCUMENTATION"
150 PRINT "      ACCURATELY DESCRIBING THE FEATURE'S INTERPRETATION"
160 PRINT "      BY THE PROCESSOR, OR"
170 PRINT
180 PRINT "   2) REJECT THE PROGRAM WITH AN APPROPRIATE ERROR MESSAGE"
190 PRINT
200 PRINT "SEE THE NBS MINIMAL BASIC TEST PROGRAMS USER'S MANUAL"
210 PRINT "FOR DETAILED CRITERIA."
220 PRINT
230 PRINT "                    BEGIN TEST."
240 PRINT
250 PRINT "SETTING A$='123' AND X=123"
260 LET A$="123"
270 LET X=123
280 PRINT "ABOUT TO EXECUTE: IF A$ = X..."
290 PRINT
300 IF A$=X THEN 330
310 PRINT "IF TESTED FALSE."
320 GOTO 340
330 PRINT "IF TESTED TRUE."
340 PRINT
350 PRINT "                     END TEST."
360 PRINT
370 PRINT "END PROGRAM 20"
380 END
