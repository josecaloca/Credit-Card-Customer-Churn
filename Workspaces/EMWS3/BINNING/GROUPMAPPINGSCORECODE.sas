 length _LABEL_ $200;
 label _LABEL_="%sysfunc(sasmsg(sashelp.dmine, rpt_groupvalues_vlabel , NOQUOTE))";
 
if DISPLAY_VAR='CLAGE' and _GROUP_ = 2 then do;
_LABEL_='CLAGE< 116.22';
UB=116.22;
end;
else
if DISPLAY_VAR='CLAGE' and _GROUP_ = 3 then do;
_LABEL_='116.22<= CLAGE< 175.17';
UB=175.17;
end;
else
if DISPLAY_VAR='CLAGE' and _GROUP_ = 4 then do;
_LABEL_='175.17<= CLAGE< 230.93';
UB=230.93;
end;
else
if DISPLAY_VAR='CLAGE' and _GROUP_ = 5 then do;
_LABEL_='230.93<= CLAGE';
UB=.;
end;
 
if DISPLAY_VAR='CLNO' and _GROUP_ = 2 then do;
_LABEL_='CLNO< 14';
UB=14;
end;
else
if DISPLAY_VAR='CLNO' and _GROUP_ = 3 then do;
_LABEL_='14<= CLNO< 20';
UB=20;
end;
else
if DISPLAY_VAR='CLNO' and _GROUP_ = 4 then do;
_LABEL_='20<= CLNO< 26';
UB=26;
end;
else
if DISPLAY_VAR='CLNO' and _GROUP_ = 5 then do;
_LABEL_='26<= CLNO';
UB=.;
end;
 
if DISPLAY_VAR='DEBTINC' and _GROUP_ = 2 then do;
_LABEL_='DEBTINC< 28.87';
UB=28.87;
end;
else
if DISPLAY_VAR='DEBTINC' and _GROUP_ = 3 then do;
_LABEL_='28.87<= DEBTINC< 34.73';
UB=34.73;
end;
else
if DISPLAY_VAR='DEBTINC' and _GROUP_ = 4 then do;
_LABEL_='34.73<= DEBTINC< 39.2';
UB=39.2;
end;
else
if DISPLAY_VAR='DEBTINC' and _GROUP_ = 5 then do;
_LABEL_='39.2<= DEBTINC';
UB=.;
end;
 
if DISPLAY_VAR='LOAN' and _GROUP_ = 2 then do;
_LABEL_='LOAN< 11100';
UB=11100;
end;
else
if DISPLAY_VAR='LOAN' and _GROUP_ = 3 then do;
_LABEL_='11100<= LOAN< 16200';
UB=16200;
end;
else
if DISPLAY_VAR='LOAN' and _GROUP_ = 4 then do;
_LABEL_='16200<= LOAN< 23200';
UB=23200;
end;
else
if DISPLAY_VAR='LOAN' and _GROUP_ = 5 then do;
_LABEL_='23200<= LOAN';
UB=.;
end;
 
if DISPLAY_VAR='MORTDUE' and _GROUP_ = 2 then do;
_LABEL_='MORTDUE< 46406';
UB=46406;
end;
else
if DISPLAY_VAR='MORTDUE' and _GROUP_ = 3 then do;
_LABEL_='46406<= MORTDUE< 64674';
UB=64674;
end;
else
if DISPLAY_VAR='MORTDUE' and _GROUP_ = 4 then do;
_LABEL_='64674<= MORTDUE< 93520';
UB=93520;
end;
else
if DISPLAY_VAR='MORTDUE' and _GROUP_ = 5 then do;
_LABEL_='93520<= MORTDUE';
UB=.;
end;
 
if DISPLAY_VAR='VALUE' and _GROUP_ = 2 then do;
_LABEL_='VALUE< 66345';
UB=66345;
end;
else
if DISPLAY_VAR='VALUE' and _GROUP_ = 3 then do;
_LABEL_='66345<= VALUE< 89107';
UB=89107;
end;
else
if DISPLAY_VAR='VALUE' and _GROUP_ = 4 then do;
_LABEL_='89107<= VALUE< 121714';
UB=121714;
end;
else
if DISPLAY_VAR='VALUE' and _GROUP_ = 5 then do;
_LABEL_='121714<= VALUE';
UB=.;
end;
 
if DISPLAY_VAR='YOJ' and _GROUP_ = 2 then do;
_LABEL_='YOJ< 3';
UB=3;
end;
else
if DISPLAY_VAR='YOJ' and _GROUP_ = 3 then do;
_LABEL_='3<= YOJ< 7';
UB=7;
end;
else
if DISPLAY_VAR='YOJ' and _GROUP_ = 4 then do;
_LABEL_='7<= YOJ< 13';
UB=13;
end;
else
if DISPLAY_VAR='YOJ' and _GROUP_ = 5 then do;
_LABEL_='13<= YOJ';
UB=.;
end;
 
if DISPLAY_VAR='DELINQ' and _GROUP_ = 2 then
_LABEL_='0';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 3 then
_LABEL_='1';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 4 then
_LABEL_='2';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 5 then
_LABEL_='3';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 6 then
_LABEL_='4';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 7 then
_LABEL_='5';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 8 then
_LABEL_='6';
else
if DISPLAY_VAR='DELINQ' and _GROUP_ = 9 then
_LABEL_='10, 11, 12, 13, 15, 7, 8';
 
if DISPLAY_VAR='DEROG' and _GROUP_ = 2 then
_LABEL_='0';
else
if DISPLAY_VAR='DEROG' and _GROUP_ = 3 then
_LABEL_='1';
else
if DISPLAY_VAR='DEROG' and _GROUP_ = 4 then
_LABEL_='2';
else
if DISPLAY_VAR='DEROG' and _GROUP_ = 5 then
_LABEL_='3';
else
if DISPLAY_VAR='DEROG' and _GROUP_ = 6 then
_LABEL_='10, 4, 5, 6, 7, 8, 9';
 
if DISPLAY_VAR='JOB' and _GROUP_ = 2 then
_LABEL_='OTHER';
else
if DISPLAY_VAR='JOB' and _GROUP_ = 3 then
_LABEL_='PROFEXE';
else
if DISPLAY_VAR='JOB' and _GROUP_ = 4 then
_LABEL_='OFFICE';
else
if DISPLAY_VAR='JOB' and _GROUP_ = 5 then
_LABEL_='MGR';
else
if DISPLAY_VAR='JOB' and _GROUP_ = 6 then
_LABEL_='SELF';
else
if DISPLAY_VAR='JOB' and _GROUP_ = 7 then
_LABEL_='SALES';
 
if DISPLAY_VAR='NINQ' and _GROUP_ = 2 then
_LABEL_='0';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 3 then
_LABEL_='1';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 4 then
_LABEL_='2';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 5 then
_LABEL_='3';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 6 then
_LABEL_='4';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 7 then
_LABEL_='5';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 8 then
_LABEL_='6';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 9 then
_LABEL_='7';
else
if DISPLAY_VAR='NINQ' and _GROUP_ = 10 then
_LABEL_='10, 11, 12, 13, 14, 8, 9';
 
if DISPLAY_VAR='REASON' and _GROUP_ = 2 then
_LABEL_='DEBTCON';
else
if DISPLAY_VAR='REASON' and _GROUP_ = 3 then
_LABEL_='HOMEIMP';
