 
*------------------------------------------------------------*;
* Variable: IMP_NINQ;
*------------------------------------------------------------*;
LABEL GRP_IMP_NINQ =
'Grouped: Imputed NINQ';
 
if MISSING(IMP_NINQ) then do;
GRP_IMP_NINQ = 1;
end;
else if NOT MISSING(IMP_NINQ) then do;
if (IMP_NINQ eq 0
) then do;
GRP_IMP_NINQ = 2;
end;
else
if (IMP_NINQ eq 1
) then do;
GRP_IMP_NINQ = 3;
end;
else
if (IMP_NINQ eq 2
) then do;
GRP_IMP_NINQ = 4;
end;
else
if (IMP_NINQ eq 3
) then do;
GRP_IMP_NINQ = 5;
end;
else
if (IMP_NINQ eq 10 OR IMP_NINQ eq 11 OR IMP_NINQ eq 12 OR IMP_NINQ eq 13 OR IMP_NINQ eq 14 OR IMP_NINQ eq 4 OR IMP_NINQ eq 5 OR IMP_NINQ eq 6 OR IMP_NINQ eq 7 OR IMP_NINQ eq 8 OR IMP_NINQ eq 9
) then do;
GRP_IMP_NINQ = 6;
end;
else do;
GRP_IMP_NINQ = 1;
end;
end;
