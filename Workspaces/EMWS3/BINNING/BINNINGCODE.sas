*------------------------------------------------------------*;
* Generando clases para las variables de intervalo;
*------------------------------------------------------------*;
if CLAGE eq . then BIN_CLAGE= .;
else do;
if CLAGE < 116.22 then BIN_CLAGE=1;
else if CLAGE < 175.17 then BIN_CLAGE=2;
else if CLAGE < 230.93 then BIN_CLAGE=3;
else if CLAGE >= 230.93 then BIN_CLAGE=4;
end;
if CLNO eq . then BIN_CLNO= .;
else do;
if CLNO < 14 then BIN_CLNO=1;
else if CLNO < 20 then BIN_CLNO=2;
else if CLNO < 26 then BIN_CLNO=3;
else if CLNO >= 26 then BIN_CLNO=4;
end;
if DEBTINC eq . then BIN_DEBTINC= .;
else do;
if DEBTINC < 28.87 then BIN_DEBTINC=1;
else if DEBTINC < 34.73 then BIN_DEBTINC=2;
else if DEBTINC < 39.2 then BIN_DEBTINC=3;
else if DEBTINC >= 39.2 then BIN_DEBTINC=4;
end;
if LOAN eq . then BIN_LOAN= .;
else do;
if LOAN < 11100 then BIN_LOAN=1;
else if LOAN < 16200 then BIN_LOAN=2;
else if LOAN < 23200 then BIN_LOAN=3;
else if LOAN >= 23200 then BIN_LOAN=4;
end;
if MORTDUE eq . then BIN_MORTDUE= .;
else do;
if MORTDUE < 46406 then BIN_MORTDUE=1;
else if MORTDUE < 64674 then BIN_MORTDUE=2;
else if MORTDUE < 93520 then BIN_MORTDUE=3;
else if MORTDUE >= 93520 then BIN_MORTDUE=4;
end;
if VALUE eq . then BIN_VALUE= .;
else do;
if VALUE < 66345 then BIN_VALUE=1;
else if VALUE < 89107 then BIN_VALUE=2;
else if VALUE < 121714 then BIN_VALUE=3;
else if VALUE >= 121714 then BIN_VALUE=4;
end;
if YOJ eq . then BIN_YOJ= .;
else do;
if YOJ < 3 then BIN_YOJ=1;
else if YOJ < 7 then BIN_YOJ=2;
else if YOJ < 13 then BIN_YOJ=3;
else if YOJ >= 13 then BIN_YOJ=4;
end;
drop
CLAGE
CLNO
DEBTINC
LOAN
MORTDUE
VALUE
YOJ
;
