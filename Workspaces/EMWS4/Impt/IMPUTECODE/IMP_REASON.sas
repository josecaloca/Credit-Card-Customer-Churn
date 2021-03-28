length IMP_REASON $7;
label IMP_REASON = 'Imputed REASON';
IMP_REASON = REASON;
if REASON = '' then IMP_REASON = 'DebtCon';
