length IMP_NINQ 8;
label IMP_NINQ = 'Imputed NINQ';
IMP_NINQ = NINQ;
if missing(NINQ) then IMP_NINQ = 0;
