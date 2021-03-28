label M_DEBTINC = "Imputation Indicator for DEBTINC";
if missing(DEBTINC) then M_DEBTINC = 1;
else M_DEBTINC= 0;
