 length _LABEL_ $200;
 label _LABEL_="%sysfunc(sasmsg(sashelp.dmine, rpt_groupvalues_vlabel , NOQUOTE))";
 
if DISPLAY_VAR='age' and _GROUP_ = 2 then do;
_LABEL_='age< 27';
UB=27;
end;
else
if DISPLAY_VAR='age' and _GROUP_ = 3 then do;
_LABEL_='27<= age< 33';
UB=33;
end;
else
if DISPLAY_VAR='age' and _GROUP_ = 4 then do;
_LABEL_='33<= age< 42';
UB=42;
end;
else
if DISPLAY_VAR='age' and _GROUP_ = 5 then do;
_LABEL_='42<= age';
UB=.;
end;
 
if DISPLAY_VAR='duration' and _GROUP_ = 2 then do;
_LABEL_='duration< 12';
UB=12;
end;
else
if DISPLAY_VAR='duration' and _GROUP_ = 3 then do;
_LABEL_='12<= duration< 18';
UB=18;
end;
else
if DISPLAY_VAR='duration' and _GROUP_ = 4 then do;
_LABEL_='18<= duration< 24';
UB=24;
end;
else
if DISPLAY_VAR='duration' and _GROUP_ = 5 then do;
_LABEL_='24<= duration';
UB=.;
end;
 
if DISPLAY_VAR='acc_status' and _GROUP_ = 2 then
_LABEL_='A14';
else
if DISPLAY_VAR='acc_status' and _GROUP_ = 3 then
_LABEL_='A12';
else
if DISPLAY_VAR='acc_status' and _GROUP_ = 4 then
_LABEL_='A11';
else
if DISPLAY_VAR='acc_status' and _GROUP_ = 5 then
_LABEL_='A13';
 
if DISPLAY_VAR='credit_history' and _GROUP_ = 2 then
_LABEL_='A32';
else
if DISPLAY_VAR='credit_history' and _GROUP_ = 3 then
_LABEL_='A34';
else
if DISPLAY_VAR='credit_history' and _GROUP_ = 4 then
_LABEL_='A33';
else
if DISPLAY_VAR='credit_history' and _GROUP_ = 5 then
_LABEL_='A31';
else
if DISPLAY_VAR='credit_history' and _GROUP_ = 6 then
_LABEL_='A30';
 
if DISPLAY_VAR='employment' and _GROUP_ = 2 then
_LABEL_='A73';
else
if DISPLAY_VAR='employment' and _GROUP_ = 3 then
_LABEL_='A75';
else
if DISPLAY_VAR='employment' and _GROUP_ = 4 then
_LABEL_='A74';
else
if DISPLAY_VAR='employment' and _GROUP_ = 5 then
_LABEL_='A72';
else
if DISPLAY_VAR='employment' and _GROUP_ = 6 then
_LABEL_='A71';
 
if DISPLAY_VAR='instalment' and _GROUP_ = 2 then
_LABEL_='4';
else
if DISPLAY_VAR='instalment' and _GROUP_ = 3 then
_LABEL_='2';
else
if DISPLAY_VAR='instalment' and _GROUP_ = 4 then
_LABEL_='3';
else
if DISPLAY_VAR='instalment' and _GROUP_ = 5 then
_LABEL_='1';
 
if DISPLAY_VAR='job' and _GROUP_ = 2 then
_LABEL_='A173';
else
if DISPLAY_VAR='job' and _GROUP_ = 3 then
_LABEL_='A172';
else
if DISPLAY_VAR='job' and _GROUP_ = 4 then
_LABEL_='A174';
else
if DISPLAY_VAR='job' and _GROUP_ = 5 then
_LABEL_='A171';
 
if DISPLAY_VAR='other_instalments' and _GROUP_ = 2 then
_LABEL_='A143';
else
if DISPLAY_VAR='other_instalments' and _GROUP_ = 3 then
_LABEL_='A141';
else
if DISPLAY_VAR='other_instalments' and _GROUP_ = 4 then
_LABEL_='A142';
 
if DISPLAY_VAR='personal_status' and _GROUP_ = 2 then
_LABEL_='A93';
else
if DISPLAY_VAR='personal_status' and _GROUP_ = 3 then
_LABEL_='A92';
else
if DISPLAY_VAR='personal_status' and _GROUP_ = 4 then
_LABEL_='A94';
else
if DISPLAY_VAR='personal_status' and _GROUP_ = 5 then
_LABEL_='A91';
 
if DISPLAY_VAR='pourpose' and _GROUP_ = 2 then
_LABEL_='A43';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 3 then
_LABEL_='A40';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 4 then
_LABEL_='A42';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 5 then
_LABEL_='A49';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 6 then
_LABEL_='A41';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 7 then
_LABEL_='A46';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 8 then
_LABEL_='A45';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 9 then
_LABEL_='A44';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 10 then
_LABEL_='A410';
else
if DISPLAY_VAR='pourpose' and _GROUP_ = 11 then
_LABEL_='A48';
 
if DISPLAY_VAR='residence' and _GROUP_ = 2 then
_LABEL_='4';
else
if DISPLAY_VAR='residence' and _GROUP_ = 3 then
_LABEL_='2';
else
if DISPLAY_VAR='residence' and _GROUP_ = 4 then
_LABEL_='3';
else
if DISPLAY_VAR='residence' and _GROUP_ = 5 then
_LABEL_='1';
 
if DISPLAY_VAR='savings' and _GROUP_ = 2 then
_LABEL_='A61';
else
if DISPLAY_VAR='savings' and _GROUP_ = 3 then
_LABEL_='A65';
else
if DISPLAY_VAR='savings' and _GROUP_ = 4 then
_LABEL_='A62';
else
if DISPLAY_VAR='savings' and _GROUP_ = 5 then
_LABEL_='A63';
else
if DISPLAY_VAR='savings' and _GROUP_ = 6 then
_LABEL_='A64';
