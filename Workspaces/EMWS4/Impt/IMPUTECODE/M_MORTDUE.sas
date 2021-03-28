label M_MORTDUE = "Imputation Indicator for MORTDUE";
if missing(MORTDUE) then M_MORTDUE = 1;
else M_MORTDUE= 0;
