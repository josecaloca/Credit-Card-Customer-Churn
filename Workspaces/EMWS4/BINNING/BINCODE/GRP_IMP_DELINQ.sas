 
*------------------------------------------------------------*;
* Variable: IMP_DELINQ;
*------------------------------------------------------------*;
LABEL GRP_IMP_DELINQ =
'Grouped: Imputed DELINQ';
 
if MISSING(IMP_DELINQ) then do;
GRP_IMP_DELINQ = 1;
end;
else if NOT MISSING(IMP_DELINQ) then do;
if (IMP_DELINQ eq 0
) then do;
GRP_IMP_DELINQ = 2;
end;
else
if (IMP_DELINQ eq 1
) then do;
GRP_IMP_DELINQ = 3;
end;
else
if (IMP_DELINQ eq 10 OR IMP_DELINQ eq 11 OR IMP_DELINQ eq 12 OR IMP_DELINQ eq 13 OR IMP_DELINQ eq 15 OR IMP_DELINQ eq 2 OR IMP_DELINQ eq 3 OR IMP_DELINQ eq 4 OR IMP_DELINQ eq 5
) then do;
GRP_IMP_DELINQ = 4;
end;
else
if (IMP_DELINQ eq 6 OR IMP_DELINQ eq 7 OR IMP_DELINQ eq 8
) then do;
GRP_IMP_DELINQ = 4;
end;
else do;
GRP_IMP_DELINQ = 1;
end;
end;
