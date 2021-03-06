10 PRINT "PROGRAM FILE 13: FORMAT AND ROUNDING OF PRINTED"
20 PRINT "        NUMERIC CONSTANTS."
30 PRINT "    ANSI STANDARD 12.4, 5.2, 5.4"
40 PRINT
50 PRINT "SECTION 13.1: PRINTED REPRESENTATION OF CONSTANTS."
60 PRINT
70 PRINT "THE FORMAT OF A PRINTED CONSTANT IS DETERMINED BY THE VALUE"
80 PRINT "OF THE CONSTANT RATHER THAN BY ITS ORIGINAL REPRESENTATION."
90 PRINT "THE SUPPRESSION OF LEADING INSIGNIFICANT ZEROS IN THE EXRAD"
100 PRINT "OR TRAILING INSIGNIFICANT ZEROS IN THE SIGNIFICAND"
110 PRINT "IS OPTIONAL. "
120 PRINT
130 PRINT "                                BEGIN TEST."
140 PRINT
150 PRINT "     #","CONSTANT","NR1","NR2","NR3"
160 PRINT
170 PRINT "     1"," 76767",76767
180 PRINT "     2"," 76767.0",76767.0
190 PRINT "     3"," 767.670E2",767.67E2
200 PRINT "     4","-.987789",,-.987789
210 PRINT "     5","-.0009877E9E3",,-.000987789E3
220 PRINT "     6","-9.87789E-1",,-9.87789E-1
230 PRINT "     7"," 1230000000",,,1230000000
240 PRINT "     8"," .0000012345",,,.0000012345
250 PRINT "     9"," 2.3E9",,,2.3E9
260 PRINT
270 PRINT "*** TEST PASSED IF THE CONSTANTS IN ROWS 1, 2 AND 3 PRINTED"
280 PRINT "    IN NR1 FORMAT; IN ROWS 4, 5 AND 6 IN NR2 FORMAT; AND IN"
290 PRINT "    ROWS 7, 8 AND 9 IN NR3 FORMAT  ***"
300 PRINT
310 PRINT "EXCEPT: IF SIGNIFICANCE-WIDTH FOR THIS IMPLEMENTATION IS"
320 PRINT "GREATER THAN 9, ROWS 7, 8, AND 9 MUST BE IN NR1, NR3,"
330 PRINT "AND NR1 FORMAT, RESPECTIVELY."
340 PRINT
350 PRINT "                                 END TEST."
360 PRINT
370 PRINT "SECTION 13.2: ROUNDING RESULTS."
380 PRINT
390 PRINT "THE NUMBER OF SIGNIFICANT DIGITS PRINTED IS IMPLEMENTATION"
400 PRINT "DEFINED; HOWEVER, NR2 AND NR3 CONSTANTS WHICH CONTAIN EXCESS"
410 PRINT "DIGITS SHOULD BE PRINTED IN A STANDARD REPRESENTATION."
420 PRINT
430 PRINT "                                    BEGIN TEST."
440 PRINT
450 LET T1=30
460 PRINT "SOURCE CONSTANTS";TAB(T1);"PROCESSOR OUTPUT"
470 PRINT
480 PRINT "1  1234567886";TAB(T1);1234567886
490 PRINT "2  .000001234567886";TAB(T1);.000001234567886
500 PRINT "3  9.999999999";TAB(T1);9.999999999
510 PRINT "4  923456.7886";TAB(T1);923456.7886
520 PRINT "5 -0.09234567886";TAB(T1);-0.09234567886
530 PRINT "6  .04444444444";TAB(T1);.04444444444
540 PRINT "7  .001200000004";TAB(T1);.001200000004
550 PRINT
560 PRINT "CORRECT REPRESENTATION FOR PROCESSORS PRINTING FROM 6 TO 9"
570 PRINT "SIGNIFICANT DIGITS"
580 PRINT
590 PRINT "D = 6","D = 7","D = 8","D = 9"
600 PRINT
610 PRINT "1  1.23457E+9","1.234568E+9","1.2345679E+9","1.23456789E+9"
620 PRINT "2  1.23457E-6","1.234568E-6","1.2345679E-6","1.23456789E-6"
630 PRINT "3  10","10","10","10"
640 PRINT "  (10.)","(10.)","(10.)","(10.)"
650 PRINT "4  923457.","923456.8","923456.79","923456.789"
660 PRINT "  (923457)"
670 PRINT "5 -9.23457E-2","-9.234568E-2",
680 PRINT   "-9.2345679E-2","-9.23456789E-2"
690 PRINT "6  4.44444E-2","4.444444E-2","4.4444444E-2","4.44444444E-2"
700 PRINT "7  .001200",".0012000",".00120000",".001200000"
710 PRINT
720 PRINT "*** TEST PASSED IF THE PROCESSOR OUTPUT IN THE FIRST SET"
730 PRINT "    OF NUMBERED ROWS MATCHES THE COLUMN CORRESPONDING"
740 PRINT "    TO THE IMPLEMENTATION-DEFINED SIGNIFICANCE-WIDTH"
750 PRINT "    (ALLOWING FOR OPTIONAL TRAILING ZEROS IN THE"
755 PRINT "    SIGNIFICAND AND LEADING ZEROS IN THE EXRAD) ***"
760 PRINT
762 PRINT "                              END TEST."
765 PRINT
770 PRINT "END PROGRAM 13"
780 END
