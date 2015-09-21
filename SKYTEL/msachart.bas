10 REM Chart number for
20 REM The Millennium Star Atlas
30 REM by Laurent Corp
40 CLS
50 PRINT : PRINT "Enter 2000.0 position"
60 PRINT : INPUT "R.A. (h,m,s)";H,M,S
70 IF H<0 OR H>=24 THEN 60
80 IF M<0 OR M>=60 THEN 60
90 IF S<0 OR S>=60 THEN 60
100 HM=H
110 H=H+M/60+S/3600
120 PRINT : INPUT "Dec. (d,m,s)";D$,M,S
130 D=ABS(VAL(D$))
140 IF D>90 THEN 120
150 IF M<0 OR M>=60 THEN 120
160 IF S<0 OR S>=60 THEN 120
170 D=D+M/60+S/3600
180 IF LEFT$(D$,1)="-" THEN D=-D
190 PRINT: PRINT "Millennium Star Atlas"
200 IF ABS(D)>87 THEN H=0
210 IF H>=0 AND H<=8 THEN V$="Volume I": VL=0
220 IF H>8 AND H<=16 THEN V$="Volume II": VL=1
230 IF H>16 AND H<24 THEN V$="Volume III": VL=2
240 QT=0 : PA=0 : QN=0
250 IF ABS(D)>90 THEN D=90
260 IF ABS(D)<=90 THEN PA=240: QT=QT+2: QN=2
270 IF ABS(D)<87 THEN PA=120: QT=QT+4: QN=4
280 IF ABS(D)<81 THEN PA=60: QT=QT+8: QN=8
290 IF ABS(D)<75 THEN PA=48: QT=QT+10: QN=10
300 IF ABS(D)<69 THEN PA=40: QT=QT+12: QN=12
310 IF ABS(D)<63 THEN PA=480/14: QT=QT+14: QN=14
320 IF ABS(D)<57 THEN PA=30: QT=QT+16: QN=16
330 IF ABS(D)<51 THEN PA=24: QT=QT+20: QN=20
340 IF ABS(D)<45 THEN PA=24: QT=QT+20: QN=20
350 IF ABS(D)<39 THEN PA=480/22: QT=QT+22: QN=22
360 IF ABS(D)<33 THEN PA=480/22: QT=QT+22: QN=22
370 IF ABS(D)<27 THEN PA=20: QT=QT+24: QN=24
380 IF ABS(D)<21 THEN PA=20: QT=QT+24: QN=24
390 IF ABS(D)<15 THEN PA=20: QT=QT+24: QN=24
400 IF ABS(D)<9 THEN PA=20: QT=QT+24: QN=24
410 IF ABS(D)<3 THEN PA=20: QT=QT+24: QN=24
420 IF H=8 THEN H=7.99
430 IF H=16 THEN H=15.99
440 IF H=24 THEN H=23.99
450 IF H>VL*8 THEN H=H-(VL*8)
460 CA=INT((H*60)/PA)
470 IF ABS(D)>87 AND (HM>4 AND HM<16) THEN QT=1: QN=0
480 CH=QT-CA+(VL*516)
490 IF LEFT$(D$,1)="-" THEN CH=(516+(VL*516)-QT+QN-CA)
500 PRINT "Chart ";CH;"in ";V$
510 END
900 REM  ---------------------------
910 REM  APPEARED IN ASTRONOMICAL
920 REM  COMPUTING, SKY & TELESCOPE,
930 REM  OCTOBER 1998, PAGE 63
940 REM  ---------------------------
