length IMP_JOB $7;
label IMP_JOB = 'Imputed JOB';
IMP_JOB = JOB;
if JOB = '' then IMP_JOB = 'Other';
