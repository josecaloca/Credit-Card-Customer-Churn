*------------------------------------------------------------*;
* Generating Bins for interval variables;
*------------------------------------------------------------*;
if IMP_DEBTINC eq . then BIN_IMP_DEBTINC= .;
else do;
if IMP_DEBTINC < 28.87 then BIN_IMP_DEBTINC=1;
else if IMP_DEBTINC < 34.75 then BIN_IMP_DEBTINC=2;
else if IMP_DEBTINC < 39.23 then BIN_IMP_DEBTINC=3;
else if IMP_DEBTINC >= 39.23 then BIN_IMP_DEBTINC=4;
end;
if IMP_MORTDUE eq . then BIN_IMP_MORTDUE= .;
else do;
if IMP_MORTDUE < 46609 then BIN_IMP_MORTDUE=1;
else if IMP_MORTDUE < 65017 then BIN_IMP_MORTDUE=2;
else if IMP_MORTDUE < 93520 then BIN_IMP_MORTDUE=3;
else if IMP_MORTDUE >= 93520 then BIN_IMP_MORTDUE=4;
end;
if IMP_YOJ eq . then BIN_IMP_YOJ= .;
else do;
if IMP_YOJ < 3 then BIN_IMP_YOJ=1;
else if IMP_YOJ < 7 then BIN_IMP_YOJ=2;
else if IMP_YOJ < 13 then BIN_IMP_YOJ=3;
else if IMP_YOJ >= 13 then BIN_IMP_YOJ=4;
end;
drop
IMP_DEBTINC
IMP_MORTDUE
IMP_YOJ
;
