10 PRINT "PROGRAM FILE 19: THE IF-THEN STATEMENT WITH NUMERIC OPERANDS"
20 PRINT "    ANSI STANDARD 10.2, 10.4"
30 PRINT
40 PRINT "SECTION 19.1: THE IF-THEN STATEMENT WITH NUMERIC OPERANDS."
50 PRINT
60 PRINT "THIS SECTION TESTS THE COMPARISON OF NUMERIC VARIABLES AND"
70 PRINT "CONSTANTS WITH A VARIETY OF NUMERIC VALUES. ALL RELATIONSHIPS"
80 PRINT "(=, <, >, <>, <=, >=) ARE TESTED FOR EACH PAIR OF VALUES."
85 PRINT "THE 'V' OR 'C' FOLLOWING THE COMPARAND VALUE INDICATES"
90 PRINT "WHETHER IT IS A VARIABLE OR A CONSTANT."
95 PRINT
100 PRINT "'T' OR 'F' IS PRINTED TO SHOW THE OUTCOME OF THE"
105 PRINT "COMPARISON. FOR INCORRECT COMPARES, AN '*' IS PRINTED"
110 PRINT "NEXT TO THE ERRONEOUS RESULT."
115 PRINT
120 PRINT "                 BEGIN TEST."
125 PRINT
130 PRINT "LEFT                RIGHT            ";
135 PRINT "=   <   >   <>  <=  >=  RESULT"
140 PRINT "COMPARAND           COMPARAND  "
145 REM TEST VARIABLE:CONSTANT
150 PRINT
155 LET R$="PASSED"
160 LET A0=3.14159
170 GOSUB 1000
180 GOSUB 4000
190 LET A0=5.4321E-22
200 GOSUB 2000
210 GOSUB 4000
220 LET A0=3.14159E-26
230 GOSUB 3000
240 GOSUB 4000
250 LET A0=-00.0E3
260 GOSUB 3000
270 GOSUB 4000
280 LET A0=-3.14159E-26
290 GOSUB 3000
300 GOSUB 4000
310 LET A0=-3.14159
320 GOSUB 3000
330 GOSUB 4000
335 REM NOW DO CONSTANT:VARIABLE
340 LET B0=-98765500000
350 GOSUB 1000
360 GOSUB 4200
370 LET B0=-98765400000
380 GOSUB 2000
390 GOSUB 4200
400 LET B0=-3
410 GOSUB 3000
420 GOSUB 4200
430 LET B0=1.23456E-30
440 GOSUB 3000
450 GOSUB 4200
460 LET B0=456.789
470 GOSUB 3000
480 GOSUB 4200
490 REM TEST CONSTANT:CONSTANT
500 GOSUB 1000
510 IF -1.23456E-15 = -.011E-13 THEN 530
520 LET A$=G$
530 IF -1.23456E-15 < -.011E-13 THEN 550
540 LET B$=H$
550 IF -1.23456E-15 > -.011E-13 THEN 570
560 LET C$=I$
570 IF -1.23456E-15 <> -.011E-13 THEN 590
580 LET D$=J$
590 IF -1.23456E-15 <= -.011E-13 THEN 610
600 LET E$=K$
610 IF -1.23456E-15 >= -.011E-13 THEN 630
620 LET F$=L$
630 REM COMPARISON FINISHED
640 PRINT "-1.23456E-15 C";TAB(18);": -.011E-13 C";
650 GOSUB 5000
660 REM TEST VARIABLE:VARIABLE
670 LET A0=-0
680 LET B0=+0
690 GOSUB 2000
700 GOSUB 4400
710 LET A0=-3E36
720 LET B0=-3.001E36
730 GOSUB 3000
740 GOSUB 4400
750 LET A0=0E22
760 LET B0=1E-38
770 GOSUB 1000
780 GOSUB 4400
900 PRINT
910 PRINT "*** TEST ";R$;" ***"
920 PRINT
930 PRINT "                END TEST."
940 PRINT
950 PRINT "END PROGRAM 19"
960 STOP
1000 REM SUBROUTINE TO INITIALIZE FOR CASE OF <
1010 LET A$="T*"
1020 LET B$="T"
1030 LET C$="T*"
1040 LET D$="T"
1050 LET E$="T"
1060 LET F$="T*"
1070 LET G$="F"
1080 LET H$="F*"
1090 LET I$="F"
1100 LET J$="F*"
1110 LET K$="F*"
1120 LET L$="F"
1140 RETURN
2000 REM SUBROUTINE TO INITIALIZE FOR CASE OF =
2010 LET A$="T"
2020 LET B$="T*"
2030 LET C$="T*"
2040 LET D$="T*"
2050 LET E$="T"
2060 LET F$="T"
2070 LET G$="F*"
2080 LET H$="F"
2090 LET I$="F"
2100 LET J$="F"
2110 LET K$="F*"
2120 LET L$="F*"
2140 RETURN
3000 REM SUBROUTINE TO INITIALIZE FOR CASE OF >
3010 LET A$="T*"
3020 LET B$="T*"
3030 LET C$="T"
3040 LET D$="T"
3050 LET E$="T*"
3060 LET F$="T"
3070 LET G$="F"
3080 LET H$="F"
3090 LET I$="F*"
3100 LET J$="F*"
3110 LET K$="F"
3120 LET L$="F*"
3140 RETURN
4000 REM SUBROUTINE TO TEST CONSTANT:VARIABLE
4010 IF +5.4321E-22 = A0 THEN 4030
4020 LET A$=G$
4030 IF +5.4321E-22 < A0 THEN 4050
4040 LET B$=H$
4050 IF +5.4321E-22 > A0 THEN 4070
4060 LET C$=I$
4070 IF +5.4321E-22 <> A0 THEN 4090
4080 LET D$=J$
4090 IF +5.4321E-22 <= A0 THEN 4110
4100 LET E$=K$
4110 IF +5.4321E-22 >= A0 THEN 4130
4120 LET F$=L$
4130 REM COMPARISONS FINISHED
4140 PRINT "+5.4321E-22 C";TAB(18);": ";A0;"V";
4150 GOSUB 5000
4160 RETURN
4200 REM SUBROUTINE TO TEST VARIABLE:CONSTANT
4210 IF B0 = -98765400000 THEN 4230
4220 LET A$=G$
4230 IF B0 < -98765400000 THEN 4250
4240 LET B$=H$
4250 IF B0 > -98765400000 THEN 4270
4260 LET C$=I$
4270 IF B0 <> -98765400000 THEN 4290
4280 LET D$=J$
4290 IF B0 <= -98765400000 THEN 4310
4300 LET E$=K$
4310 IF B0 >= -98765400000 THEN 4330
4320 LET F$=L$
4330 REM COMPARISONS FINISHED
4340 PRINT B0;"V";TAB(18);": -98765400000 C";
4350 GOSUB 5000
4360 RETURN
4400 REM SUBROUTINE TO TEST VARIABLE:VARIABLE
4410 IF A0 = B0 THEN 4430
4420 LET A$=G$
4430 IF A0 < B0 THEN 4450
4440 LET B$=H$
4450 IF A0 > B0 THEN 4470
4460 LET C$=I$
4470 IF A0 <> B0 THEN 4490
4480 LET D$=J$
4490 IF A0 <= B0 THEN 4510
4500 LET E$=K$
4510 IF A0 >= B0 THEN 4530
4520 LET F$=L$
4530 REM COMPARISONS FINISHED
4540 PRINT A0;"V";TAB(18);": ";B0;"V";
4550 GOSUB 5000
4560 RETURN
5000 REM SUBROUTINE TO CHECK OUT AND PRINT RESULTS OF COMPARE
5010 LET N$="  OK  "
5020 IF A$="T*" THEN 5200
5025 IF A$="F*" THEN 5200
5030 IF B$="T*" THEN 5200
5035 IF B$="F*" THEN 5200
5040 IF C$="T*" THEN 5200
5045 IF C$="F*" THEN 5200
5050 IF D$="T*" THEN 5200
5055 IF D$="F*" THEN 5200
5060 IF E$="T*" THEN 5200
5065 IF E$="F*" THEN 5200
5070 IF F$="T*" THEN 5200
5075 IF F$="F*" THEN 5200
5080 GOTO 5210
5200 LET N$="FAILED"
5205 LET R$="FAILED"
5210 REM RESULTS CHECKED
5510 PRINT TAB(38);A$;TAB(42);B$;TAB(46);C$;TAB(50);D$;
5520 PRINT     TAB(54);E$;TAB(58);F$;TAB(62);N$
5530 RETURN
9999 END
