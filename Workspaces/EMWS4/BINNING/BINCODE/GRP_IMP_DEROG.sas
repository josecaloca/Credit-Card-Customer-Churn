 
*------------------------------------------------------------*;
* Variable: IMP_DEROG;
*------------------------------------------------------------*;
LABEL GRP_IMP_DEROG =
'Grouped: Imputed DEROG';
 
if MISSING(IMP_DEROG) then do;
GRP_IMP_DEROG = 1;
end;
else if NOT MISSING(IMP_DEROG) then do;
if (IMP_DEROG eq 0
) then do;
GRP_IMP_DEROG = 2;
end;
else
if (IMP_DEROG eq 1
) then do;
GRP_IMP_DEROG = 3;
end;
else
if (IMP_DEROG eq 10 OR IMP_DEROG eq 2 OR IMP_DEROG eq 3 OR IMP_DEROG eq 4 OR IMP_DEROG eq 5 OR IMP_DEROG eq 6 OR IMP_DEROG eq 7 OR IMP_DEROG eq 8 OR IMP_DEROG eq 9
) then do;
GRP_IMP_DEROG = 4;
end;
else do;
GRP_IMP_DEROG = 1;
end;
end;
