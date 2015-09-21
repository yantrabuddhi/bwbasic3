100 REM Purpose: Verify ON ERROR GOTO & ON ERROR GOSUB
110 REM  Author: Howard Wulf, AF5NE
120 REM    Date: 2015-05-08
130 REM
140 goto 200
DIM a!(20),b@(20),c#(20),d$(20),e%(20),f&(20)
vars
print "-----------------------------------"
let a!(0) = 1
let b@(0) = 1
let c#(0) = 1
let d$(0) = "1"
let e%(0) = 1
let f&(0) = 1
vars
print "-----------------------------------"
let a!(b@(c#(e%(f&(0))))) = 2
vars
200 print "-----------------------------------"
REM test ON ERROR GOTO
OPTION ERROR GOTO
error 0
on error goto Hell
print "A"
print "B":ERROR 1:print "C"
print "D"
goto NextItem
stop
Hell:
print "ERR=";ERR
resume next
STOP
NextItem:
300 print "-----------------------------------"
rem test on ERROR GOSUB
error 0
OPTION ERROR GOSUB
on error gosub Handler
print "A"
print "B":ERROR 2:print "C"
print "D"
goto LastItem
stop
Handler:
print "ERR=";ERR
return
STOP
LastItem:
400 print "-----------------------------------"
rem EOF
