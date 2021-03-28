label M_DELINQ = "Imputation Indicator for DELINQ";
if missing(DELINQ) then M_DELINQ = 1;
else M_DELINQ= 0;
