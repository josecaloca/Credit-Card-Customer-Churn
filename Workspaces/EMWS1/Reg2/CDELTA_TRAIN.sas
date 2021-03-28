if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'IMP_DEBTINC'
'IMP_DELINQ'
'IMP_DEROG'
'IMP_JOB'
'IMP_NINQ'
'IMP_REASON'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg2: Rechazado usando selección paso a paso";
end;
end;
