length _UFormat200 $200;
drop _UFormat200;
_UFormat200='';
 
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
