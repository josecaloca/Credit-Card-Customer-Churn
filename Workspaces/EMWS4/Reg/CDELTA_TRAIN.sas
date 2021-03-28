if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'GRP_IMP_DELINQ'
'GRP_IMP_DEROG'
) then ROLE='INPUT';
else do;
ROLE='REJECTED';
COMMENT = "Reg: Rejected using stepwise selection";
end;
end;
