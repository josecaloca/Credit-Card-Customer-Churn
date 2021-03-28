label M_VALUE = "Imputation Indicator for VALUE";
if missing(VALUE) then M_VALUE = 1;
else M_VALUE= 0;
