*;
*MOST FREQUENT VALUE (COUNT);
*;
length IMP_DELINQ 8;
label IMP_DELINQ = 'Imputed DELINQ';
IMP_DELINQ = DELINQ;
if missing(DELINQ) then IMP_DELINQ = 0;
length IMP_DEROG 8;
label IMP_DEROG = 'Imputed DEROG';
IMP_DEROG = DEROG;
if missing(DEROG) then IMP_DEROG = 0;
length IMP_JOB $7;
label IMP_JOB = 'Imputed JOB';
IMP_JOB = JOB;
if JOB = '' then IMP_JOB = 'Other';
length IMP_NINQ 8;
label IMP_NINQ = 'Imputed NINQ';
IMP_NINQ = NINQ;
if missing(NINQ) then IMP_NINQ = 0;
length IMP_REASON $7;
label IMP_REASON = 'Imputed REASON';
IMP_REASON = REASON;
if REASON = '' then IMP_REASON = 'DebtCon';
*;
*DISTRIBUTION-BASED IMPUTATION: Interval VARIABLES;
*;
*;
* IMPUTE VARIABLE: DEBTINC;
*;
label IMP_DEBTINC = 'Imputed DEBTINC';
IMP_DEBTINC = DEBTINC;
IF missing(DEBTINC) THEN DO;
_random_ = DMRAN(12345);
if _random_ <= 0.01 then IMP_DEBTINC = 0.52449921542988;
else if _random_ <= 0.1 then IMP_DEBTINC = 12.391235037074;
else if _random_ <= 0.10 then IMP_DEBTINC = 23.8759461858942;
else if _random_ <= 0.20 then IMP_DEBTINC = 27.5737365036382;
else if _random_ <= 0.25 then IMP_DEBTINC = 28.8724263899319;
else if _random_ <= 0.30 then IMP_DEBTINC = 30.0627923226322;
else if _random_ <= 0.40 then IMP_DEBTINC = 32.7403684932786;
else if _random_ <= 0.50 then IMP_DEBTINC = 34.7310761753172;
else if _random_ <= 0.60 then IMP_DEBTINC = 36.6692786120713;
else if _random_ <= 0.75 then IMP_DEBTINC = 39.2048627164516;
else if _random_ <= 0.80 then IMP_DEBTINC = 39.9901883613924;
else if _random_ <= 0.90 then IMP_DEBTINC = 41.4250413900451;
else if _random_ <= 0.99 then IMP_DEBTINC = 48.2775912244234;
else IMP_DEBTINC = 203.312148691165;
END;
*;
* IMPUTE VARIABLE: MORTDUE;
*;
label IMP_MORTDUE = 'Imputed MORTDUE';
IMP_MORTDUE = MORTDUE;
IF missing(MORTDUE) THEN DO;
_random_ = DMRAN(12345);
if _random_ <= 0.01 then IMP_MORTDUE = 2063;
else if _random_ <= 0.1 then IMP_MORTDUE = 8723;
else if _random_ <= 0.10 then IMP_MORTDUE = 26743;
else if _random_ <= 0.20 then IMP_MORTDUE = 41700;
else if _random_ <= 0.25 then IMP_MORTDUE = 46406;
else if _random_ <= 0.30 then IMP_MORTDUE = 50031;
else if _random_ <= 0.40 then IMP_MORTDUE = 57439;
else if _random_ <= 0.50 then IMP_MORTDUE = 64674;
else if _random_ <= 0.60 then IMP_MORTDUE = 73339;
else if _random_ <= 0.75 then IMP_MORTDUE = 93520;
else if _random_ <= 0.80 then IMP_MORTDUE = 100145;
else if _random_ <= 0.90 then IMP_MORTDUE = 128413;
else if _random_ <= 0.99 then IMP_MORTDUE = 233000;
else IMP_MORTDUE = 399550;
END;
*;
* IMPUTE VARIABLE: YOJ;
*;
label IMP_YOJ = 'Imputed YOJ';
IMP_YOJ = YOJ;
IF missing(YOJ) THEN DO;
_random_ = DMRAN(12345);
if _random_ <= 0.01 then IMP_YOJ = 0;
else if _random_ <= 0.1 then IMP_YOJ = 0;
else if _random_ <= 0.10 then IMP_YOJ = 1;
else if _random_ <= 0.20 then IMP_YOJ = 2;
else if _random_ <= 0.25 then IMP_YOJ = 3;
else if _random_ <= 0.30 then IMP_YOJ = 4;
else if _random_ <= 0.40 then IMP_YOJ = 5;
else if _random_ <= 0.50 then IMP_YOJ = 7;
else if _random_ <= 0.60 then IMP_YOJ = 9;
else if _random_ <= 0.75 then IMP_YOJ = 13;
else if _random_ <= 0.80 then IMP_YOJ = 15;
else if _random_ <= 0.90 then IMP_YOJ = 21;
else if _random_ <= 0.99 then IMP_YOJ = 30;
else IMP_YOJ = 41;
END;
drop _random_;
