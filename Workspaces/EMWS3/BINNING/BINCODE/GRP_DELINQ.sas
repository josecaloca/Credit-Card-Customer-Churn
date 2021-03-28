 
*------------------------------------------------------------*;
* Variable: DELINQ;
*------------------------------------------------------------*;
LABEL GRP_DELINQ = "Grouped: DELINQ";
 
if MISSING(DELINQ) then do;
GRP_DELINQ = 1;
end;
else if NOT MISSING(DELINQ) then do;
if (DELINQ eq 0
) then do;
GRP_DELINQ = 2;
end;
else
if (DELINQ eq 1
) then do;
GRP_DELINQ = 3;
end;
else
if (DELINQ eq 2
) then do;
GRP_DELINQ = 4;
end;
else
if (DELINQ eq 3
) then do;
GRP_DELINQ = 5;
end;
else
if (DELINQ eq 4
) then do;
GRP_DELINQ = 6;
end;
else
if (DELINQ eq 5
) then do;
GRP_DELINQ = 7;
end;
else
if (DELINQ eq 6
) then do;
GRP_DELINQ = 8;
end;
else
if (DELINQ eq 10 OR DELINQ eq 11 OR DELINQ eq 12 OR DELINQ eq 13 OR DELINQ eq 15 OR DELINQ eq 7 OR DELINQ eq 8
) then do;
GRP_DELINQ = 9;
end;
else do;
GRP_DELINQ = 1;
end;
end;
