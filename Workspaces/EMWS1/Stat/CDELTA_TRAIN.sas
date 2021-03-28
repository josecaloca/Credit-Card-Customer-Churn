if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'CLAGE'
'CLNO'
'DEBTINC'
'DELINQ'
'DEROG'
'JOB'
'LOAN'
'MORTDUE'
'NINQ'
'REASON'
'VALUE'
'YOJ'
) then ROLE='INPUT';
else delete;
end;
