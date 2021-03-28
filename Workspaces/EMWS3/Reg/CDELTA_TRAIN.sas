if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'CLAGE'
'CLNO'
'DEBTINC'
'DELINQ'
'DEROG'
'LOAN'
'NINQ'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg: Rechazado usando selección paso a paso";
end;
end;
