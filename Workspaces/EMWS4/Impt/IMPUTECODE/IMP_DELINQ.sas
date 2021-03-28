length IMP_DELINQ 8;
label IMP_DELINQ = 'Imputed DELINQ';
IMP_DELINQ = DELINQ;
if missing(DELINQ) then IMP_DELINQ = 0;
