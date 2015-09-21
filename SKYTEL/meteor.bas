10 REM          METEOR FLIGHT
12 PRINT
14 INPUT "INITIAL MASS (KG)";MM
16 INPUT "DENSITY (KG PER CUBIC METER)";D
18 INPUT "SPEED AT ENTRY (KM/S)";V
20 INPUT "ZENITH ANGLE (DEG)";Z
22 A=1: L=0.001: G=0.75: H0=0.2: H1=500000
24 H=150000: T=0: T9=0.01: T0=0: T1=0.1
26 M=MM: Z=COS(Z*3.1416/180): V=V*1000
28 PRINT: GOSUB 64   
30 R=EXP(-H/6500): IF H<=130000 THEN GOTO 34   
32 R=2E-9*EXP(-(H-130000)/40000)
34 A2=G*A*R*V*V/((M^0.33333)*(D^0.66667))
36 M0=H0*A*R*V*V*V*((M/D)^0.66667)/(2*H1)
38 V9=A2*T9: M9=M0*T9: T=T+T9: H=H-V*T9*Z
40 V=V-V9: M=M-M9
42 IF V<100 OR M<0 OR H<0 THEN GOTO 82   
44 IF M0/M<0.1 AND T0=0 THEN GOTO 30   
46 IF (T-T0)<T1 THEN GOTO 30   
48 PRINT INT(T*100)/100;: REM  TIME
50 PRINT TAB(9);INT(H/100)/10;: REM  HEIGHT
52 PRINT TAB(18);INT(V/100)/10;: REM  SPEED
54 PRINT TAB(27);INT(A2);: REM  DECELERATION
56 PRINT TAB(36);INT(M*10000/MM)/100;: REM  PERCENT OF MASS
58 MV=6.8-1.086*LOG(0.5*V*V*M0*L*1E10/(H*H))
60 PRINT TAB(45);INT(10*MV)/10: REM  VISUAL MAGNITUDE
62 T0=T: GOTO 30   
64 REM   HEADING
66 PRINT " TIME    HEIGHT    SPEED    DECEL    MASS     VISUAL"
68 PRINT "  (S)     (KM)    (KM/S)   (M/S/S)    (%)      MAG"
70 RETURN
71 REM ***********************************************
72 REM  FROM "SKY & TELESCOPE" ASTRONOMICAL COMPUTING
73 REM  JANUARY, 1987, PAGE 83
74 REM *********************************************** 
82 END
