length IMP_DEROG 8;
label IMP_DEROG = 'Imputed DEROG';
IMP_DEROG = DEROG;
if missing(DEROG) then IMP_DEROG = 0;
