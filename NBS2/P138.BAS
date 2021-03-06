10 PRINT "PROGRAM FILE 138: COUPON COLLECTOR TEST OF RND FUNCTION."
20 PRINT "    ANSI STANDARD 8.4"
30 PRINT
40 PRINT "SECTION 138.1: COUPON COLLECTOR TEST OF RND FUNCTION."
50 PRINT
60 PRINT "THIS PROGRAM TESTS HOW MANY RANDOM NUMBERS MUST BE GENERATED"
70 PRINT "(UP TO A MAXIMUM) TO GET AT LEAST ONE OF EACH TYPE. A TYPE IS"
80 PRINT "DETERMINED BY WHICH FRACTION OF THE 0 - 1 SEGMENT THE VALUE"
90 PRINT "OF THE NUMBER FALLS WITHIN. CHI-SQUARE IS COMPUTED AND"
110 PRINT "DISPLAYED TO SEE WHETHER IT IS COMPATIBLE WITH THE"
120 PRINT "EXPECTED DISTRIBUTION FOR UNIFORM RANDOM NUMBERS."
130 PRINT
140 PRINT "***** THIS TEST IS INFORMATIVE ONLY *****"
150 PRINT
160 PRINT "                 BEGIN TEST"
170 DIM C(30)
180 DIM O(20)
190 REM SET #TRIALS
200 LET N=2000
210 REM SET #TYPES
220 LET D=5
230 REM SET MAX LENGTH
240 LET T=25
250 REM C-ARRAY COUNTS HOW MANY SEARCHES OF EACH LENGTH WERE DONE
260 FOR I=1 TO T
270 LET C(I)=0
280 NEXT I
290 FOR N1=1 TO N
300 REM R COUNTS LENGTH OF SEARCH
310 LET R=0
320 REM Q COUNTS NUMBER OF DISTINCT TYPES SO FAR
330 LET Q=0
340 REM O-ARRAY KEEPS TRACK OF WHICH TYPES HAVE BEEN HIT SO FAR
350 FOR I=0 TO D-1
360 LET O(I)=0
370 NEXT I
380 LET R=R+1
390 LET X=INT(RND*D)
400 IF O(X)=1 THEN 380
410 LET O(X)=1
420 LET Q=Q+1
430 IF Q<D THEN 380
440 IF R<=T THEN 460
450 LET R=T
460 LET C(R)=C(R)+1
470 NEXT N1
480 LET D1=1
490 FOR I=1 TO D
500 LET D1=D1*I
510 NEXT I
520 LET S=0
530 PRINT
540 PRINT "SEARCH LENGTH","ACTUAL COUNT","EXPECTED COUNT"
550 PRINT
560 FOR I=D TO T-1
570 LET K9=I-1
580 LET R9=D-1
590 REM GET STIRLING NUMBER FOR K9,R9 - RETURN RESULT IN A9
600 GOSUB 890
610 REM P=PROB OF SEARCH LENGTH I
620 LET P=(D1*A9)/(D^I)
630 PRINT I,C(I),N*P
640 LET S=S+(C(I)*C(I))/P
650 NEXT I
660 LET K9=T-1
670 LET R9=D
680 REM STIRLING NUMBER
690 GOSUB 890
700 LET P=1-((D1*A9)/(D^(T-1)))
710 PRINT ">=";T,C(T),N*P
720 LET S=S+(C(T)*C(T))/P
730 LET V=(S/N) - N
735 PRINT
740 PRINT "FOR 20 D.F., SHOULD HAVE 10.8508 <= CHI-SQ <= 31.4104"
750 PRINT "(5% TAIL AT EACH END.)"
760 PRINT
770 PRINT "ACTUAL CHI-SQ = ";V
780 PRINT
790 IF V<10.8508 THEN 830
800 IF V>31.4104 THEN 830
810 PRINT "*** INFORMATIVE TEST PASSED ***"
820 GOTO 840
830 PRINT "*** INFORMATIVE TEST FAILED ***"
840 PRINT
850 PRINT "                 END TEST"
860 PRINT
870 PRINT "END PROGRAM 138"
880 STOP
890 REM GIVEN K9,R9, COMPUTE STIRLING NUMBER AND RETURN IN A9
900 IF R9>K9 THEN 950
910 IF R9=K9 THEN 970
920 IF R9=1 THEN 970
930 IF R9=0 THEN 950
940 GOTO 990
950 LET A9=0
960 GOTO 1170
970 LET A9=1
980 GOTO 1170
990 DIM A(20)
1000 REM THIS LIMITS RANGE OF ROUTINE TO R9<=20 (K9 UNCONSTRAINED)
1010 FOR I8=1 TO 20
1020 LET A(I8)=1
1030 NEXT I8
1040 LET K8=K9-R9
1050 FOR K1=3 TO K9
1060 LET M1=R9
1070 IF R9<K1-1 THEN 1090
1080 LET M1=K1-1
1090 LET M2=2
1100 IF 2>K1-K8 THEN 1120
1110 LET M2=K1-K8
1120 FOR R1=M1 TO M2 STEP -1
1130 LET A(R1)=R1*A(R1)+A(R1-1)
1140 NEXT R1
1150 NEXT K1
1160 LET A9=A(R9)
1170 RETURN
1180 END
