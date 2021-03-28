 length _LABEL_ $200;
 label _LABEL_="%sysfunc(sasmsg(sashelp.dmine, rpt_groupvalues_vlabel , NOQUOTE))";
 
if DISPLAY_VAR='IMP_DEBTINC' and _GROUP_ = 2 then do;
_LABEL_='IMP_DEBTINC< 28.87';
UB=28.87;
end;
else
if DISPLAY_VAR='IMP_DEBTINC' and _GROUP_ = 3 then do;
_LABEL_='28.87<= IMP_DEBTINC< 34.75';
UB=34.75;
end;
else
if DISPLAY_VAR='IMP_DEBTINC' and _GROUP_ = 4 then do;
_LABEL_='34.75<= IMP_DEBTINC< 39.23';
UB=39.23;
end;
else
if DISPLAY_VAR='IMP_DEBTINC' and _GROUP_ = 5 then do;
_LABEL_='39.23<= IMP_DEBTINC';
UB=.;
end;
 
if DISPLAY_VAR='IMP_MORTDUE' and _GROUP_ = 2 then do;
_LABEL_='IMP_MORTDUE< 46609';
UB=46609;
end;
else
if DISPLAY_VAR='IMP_MORTDUE' and _GROUP_ = 3 then do;
_LABEL_='46609<= IMP_MORTDUE< 65017';
UB=65017;
end;
else
if DISPLAY_VAR='IMP_MORTDUE' and _GROUP_ = 4 then do;
_LABEL_='65017<= IMP_MORTDUE< 93520';
UB=93520;
end;
else
if DISPLAY_VAR='IMP_MORTDUE' and _GROUP_ = 5 then do;
_LABEL_='93520<= IMP_MORTDUE';
UB=.;
end;
 
if DISPLAY_VAR='IMP_YOJ' and _GROUP_ = 2 then do;
_LABEL_='IMP_YOJ< 3';
UB=3;
end;
else
if DISPLAY_VAR='IMP_YOJ' and _GROUP_ = 3 then do;
_LABEL_='3<= IMP_YOJ< 7';
UB=7;
end;
else
if DISPLAY_VAR='IMP_YOJ' and _GROUP_ = 4 then do;
_LABEL_='7<= IMP_YOJ< 13';
UB=13;
end;
else
if DISPLAY_VAR='IMP_YOJ' and _GROUP_ = 5 then do;
_LABEL_='13<= IMP_YOJ';
UB=.;
end;
 
if DISPLAY_VAR='IMP_DELINQ' and _GROUP_ = 2 then
_LABEL_='0';
else
if DISPLAY_VAR='IMP_DELINQ' and _GROUP_ = 3 then
_LABEL_='1';
else
if DISPLAY_VAR='IMP_DELINQ' and _GROUP_ = 4 then
_LABEL_='10, 11, 12, 13, 15, 2, 3, 4, 5, 6, 7, 8';
 
if DISPLAY_VAR='IMP_DEROG' and _GROUP_ = 2 then
_LABEL_='0';
else
if DISPLAY_VAR='IMP_DEROG' and _GROUP_ = 3 then
_LABEL_='1';
else
if DISPLAY_VAR='IMP_DEROG' and _GROUP_ = 4 then
_LABEL_='10, 2, 3, 4, 5, 6, 7, 8, 9';
 
if DISPLAY_VAR='IMP_JOB' and _GROUP_ = 2 then
_LABEL_='OTHER';
else
if DISPLAY_VAR='IMP_JOB' and _GROUP_ = 3 then
_LABEL_='PROFEXE';
else
if DISPLAY_VAR='IMP_JOB' and _GROUP_ = 4 then
_LABEL_='OFFICE';
else
if DISPLAY_VAR='IMP_JOB' and _GROUP_ = 5 then
_LABEL_='MGR';
else
if DISPLAY_VAR='IMP_JOB' and _GROUP_ = 6 then
_LABEL_='SALES, SELF';
 
if DISPLAY_VAR='IMP_NINQ' and _GROUP_ = 2 then
_LABEL_='0';
else
if DISPLAY_VAR='IMP_NINQ' and _GROUP_ = 3 then
_LABEL_='1';
else
if DISPLAY_VAR='IMP_NINQ' and _GROUP_ = 4 then
_LABEL_='2';
else
if DISPLAY_VAR='IMP_NINQ' and _GROUP_ = 5 then
_LABEL_='3';
else
if DISPLAY_VAR='IMP_NINQ' and _GROUP_ = 6 then
_LABEL_='10, 11, 12, 13, 14, 4, 5, 6, 7, 8, 9';
 
if DISPLAY_VAR='IMP_REASON' and _GROUP_ = 2 then
_LABEL_='DEBTCON';
else
if DISPLAY_VAR='IMP_REASON' and _GROUP_ = 3 then
_LABEL_='HOMEIMP';
