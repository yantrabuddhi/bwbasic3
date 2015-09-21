10 REM        LIGHT-CURVE PROGRAM
20 REM         APPLE II VERSION
30 GOSUB 1500
32 SCREEN 0: SCREEN 1: COLOR ,1           : REM 
40 PRINT "TYPE OF BINARY SYSTEM:"
50 PRINT "  1. BINARY DWARF"
60 PRINT "  2. CONTACT BINARY"
70 PRINT "  3. SEMI-DETACHED"
80 PRINT "  4. DETACHED BINARY"
90 X1=0: INPUT "CHOICE ";Q
200 IF Q<>1 THEN 210
205 X1=.6: X2=.6: E=.1
210 IF Q<>2 THEN 220
215 X1=.8: X2=.4: E=.05
220 IF Q<>3 THEN 230
225 X1=.8: X2=.4: E=.02
230 IF Q<>4 THEN 240
235 X1=.8: X2=.4: E=0
240 IF X1=0 THEN 90
250 GOSUB 1500
260 PRINT "LIMB-DARKENING COEFFS:"
265 PRINT "  FOR LARGER STAR  ";X1
270 PRINT "  FOR SECONDARY    ";X2
280 PRINT
290 PRINT "OBLATENESS COEFF:  ";E
300 PRINT
320 INPUT "CHANGES (Y OR N) ";A$
330 IF A$<>"Y" THEN 460
340 PRINT "ENTER NEW LIMB-DARKEN-"
341 PRINT "ING COEFFICIENTS:"
350 INPUT "  FOR LARGER STAR  ";X1
360 INPUT "  FOR SECONDARY    ";X2
410 PRINT: PRINT
430 INPUT "OBLATENESS COEFF ";E
450 REM
460 REM  GET CHARACTERISTICS
480 GOSUB 1500
490 INPUT "ORBITAL RADIUS ";R
500 INPUT "INCLINATION    ";I
520 INPUT "PRIMARY'S RADIUS ";R1
530 INPUT "      LUMINOSITY ";L1
540 INPUT "SECONDARY RADIUS ";R2
560 INPUT "      LUMINOSITY ";L2
570 P=100
580 REM                              : REM  HGR:  HCOLOR=3
582 GOSUB 1500: LOCATE 21            : REM  GOSUB 1500: VTAB 21
590 REM
600 REM      PLOT AXES
620 LINE (35,159)-(235,159)          : REM  HPLOT 35,159 TO 235,159
630 FOR J=0 TO 10
640 PSET (20*J+35,158)               : REM  HPLOT (20*J)+35,158
650 NEXT J
660 LINE (35,159)-(35,9)             : REM  HPLOT 35,159 TO 35,9
670 FOR K=0 TO 10
680 PSET (36,159-15*K)               : REM  HPLOT 36,159-(15*K)
690 NEXT K
700 PI=3.14159: RD=180/PI: DR=1/RD
710 REM
720 REM  COMPUTE STAR POSITION
740 FOR V=1.8 TO 360 STEP 1.8
750 D=R*SIN(V*DR)
760 IF V>=180 THEN D=ABS(D)
770 REM
780 REM  COMPUTE LUMINOSITIES FOR 
781 REM   TOTAL & ANNULAR ECLIPSES
800 IF I<90 THEN GOSUB 1250
810 GOSUB 1320
820 IF D>=(R1-R2) THEN 850
830 IF V>90 AND V<270 THEN B=L1-L2
835 IF V>90 AND V<270 THEN 850
840 K5=L1*(PI*R1^2-PI*R2^2)
845 B=L2+C1*K5/(PI*R1^2)
850 IF D>=(R1+R2) THEN B=L1+L2
860 IF D<(R1+R2) THEN GOSUB 970
870 PV=(V/1.8)+35
880 GOSUB 1380: GOSUB 1430
900 B0=139
905 B=B0-((B*OL)-DL)*P
910 B=INT(B+.5)
920 IF V<>1.8 THEN 930
925 PSET (PV,B): GOTO 940                : REM  HPLOT PV,B: GOTO 940
930 LINE -(PV,B)                         : REM  HPLOT TO PV,B
940 NEXT V
950 GOTO 1530
960 REM
970 REM  COMPUTE OBSCUR'N ANGLES
980 K0=(R2^2)/(2*D*R1)
990 C5=K0*((D/R2)^2+(R1/R2)^2-1)
1000 D1=R1*C5: D2=D-D1
1020 H=SQR(R1*R1-D1*D1): S5=H/R1
1050 A1=ABS(ATN(S5/C5))*RD
1060 C6=D2/R2: S6=H/R2
1090 A2=ABS(ATN(S6/C6))*RD
1100 REM
1110 REM  COMPUTE SECTOR AREAS &
1120 REM    PARTIAL ECLIPSES
1130 T1=(H*D1)/2: T2=(H*D2)/2
1150 S2=PI*R2^2*2*A2/360
1160 S1=PI*R1^2*2*A1/360
1170 OB=(S1-T1)+(S2-T2)
1180 IF V>90 AND V<270 THEN 1205
1190 K1=L1*C1*(PI*R1^2-OB)
1195 B=L2+K1/(PI*R1^2)
1200 GOTO 1230
1205 K2=L2*C2*(PI*R2^2-OB)
1210 B=L1+K2/(PI*R2^2)
1220 IF V=360 THEN 1530
1230 RETURN
1240 REM
1250 REM  CORRECT FOR INCLINATION
1260 K3=SIN((90-I)*DR)
1270 OP=R*SIN((V-90)*DR)*K3
1280 S=SQR(OP^2+D^2): D=S
1300 RETURN
1310 REM
1320 REM  CORRECT FOR L-DARKENING
1340 C1=1-X1+X1*ABS(COS(V*DR))
1350 C2=1-X2+X2*ABS(COS(V*DR))
1360 RETURN
1370 REM
1380 REM  CORRECT FOR OBLATENESS
1390 K4=(SIN(I*DR))^2*(COS(V*DR))^2
1400 OL=1-E*K4
1410 RETURN
1420 REM
1430 REM  CORRECT FOR REFLECTION
1440 REM    AND RERADIATION
1450 SH=.4*L1*R2^2: SC=.4*L2*R1^2
1460 SI=SIN(I*DR): CV=ABS(COS(V*DR))
1470 DL=.5*(SC+SH)+(SC-SH)*SI*CV
1471 DL=DL+.5*(SC+SH)*SI^2*CV^2
1475 DL=DL/3
1480 RETURN
1490 REM
1500 REM  BLANK THE SCREEN
1510 CLS: RETURN                         : REM  HOME: RETURN
1530 END
1540 REM ************************************
1550 REM APPEARED IN ASTRONOMICAL COMPUTING
1560 REM SKY & TELESCOPE - OCTOBER 1989 ISSUE
1570 REM ************************************